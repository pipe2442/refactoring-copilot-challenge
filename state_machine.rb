# This is a basic state machine implementation in Ruby.

class StateMachine
  attr_reader :state, :tasks_completed, :states, :transitions

  def initialize
    @states = [:idle, :processing, :completed, :error, :paused]
    @transitions = {
      idle: [:processing],
      processing: [:completed, :paused, :error],
      paused: [:processing],
      error: [:idle]
    }
    @state = :idle
    @tasks_completed = 0
  end

  def add_state(state)
    @states << state.to_sym unless @states.include?(state.to_sym)
    @transitions[state.to_sym] ||= []
  end

  def add_transition(from_state, to_state)
    add_state(from_state)
    add_state(to_state)
    @transitions[from_state.to_sym] ||= []
    @transitions[from_state.to_sym] << to_state.to_sym unless @transitions[from_state.to_sym].include?(to_state.to_sym)
  end

  def can_transition_to?(new_state)
    @transitions[@state].include?(new_state.to_sym)
  end

  def transition_to(new_state)
    if can_transition_to?(new_state)
      @state = new_state.to_sym
      log_action("State changed to #{new_state}")
    else
      raise "Invalid transition from #{@state} to #{new_state}"
    end
  end

  def start_processing
    transition_to(:processing) if @state == :idle
  end

  def complete_process
    if @state == :processing && tasks_completed >= 5
      transition_to(:completed)
    else
      raise "Cannot complete processing. Tasks are incomplete or invalid state transition from #{@state}"
    end
  end

  def pause
    transition_to(:paused) if @state == :processing
  end

  def resume
    transition_to(:processing) if @state == :paused
  end

  def error_occurred
    transition_to(:error)
  end

  def reset
    add_transition(@state, :idle)
    transition_to(:idle)
  end

  def complete_task
    if @state == :processing
      @tasks_completed += 1
      log_action("Task completed. Total tasks: #{@tasks_completed}")
    else
      raise "Cannot complete tasks unless in processing state"
    end
  end

  private

  def log_action(action)
    puts "[LOG]: #{action}"
  end
end

# Example usage with dynamic states and transitions
machine = StateMachine.new

# Add a new dynamic state and transitions
machine.add_state(:review)
machine.add_transition(:completed, :review)
machine.add_transition(:review, :idle)

# Example transitions
machine.start_processing
5.times { machine.complete_task }
machine.complete_process
puts "Current state: #{machine.state}"

# Transition to the dynamically added review state
machine.transition_to(:review)
puts "Current state: #{machine.state}"

# Reset to idle from review
machine.reset
puts "Current state: #{machine.state}"
