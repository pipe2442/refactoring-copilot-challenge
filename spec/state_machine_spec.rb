# spec/state_machine_spec.rb
require_relative "../state_machine"

RSpec.describe StateMachine do
  let(:machine) { StateMachine.new }

  describe "initial state" do
    it "starts in the idle state" do
      expect(machine.state).to eq(:idle)
    end
  end

  describe "state transitions" do
    it "transitions from idle to processing on start_processing" do
      machine.start_processing
      expect(machine.state).to eq(:processing)
    end

    it "raises an error if transitioning to an invalid state" do
      expect { machine.transition_to(:completed) }.to raise_error(RuntimeError, "Invalid transition from idle to completed")
    end
  end

  describe "dynamic states and transitions" do
    it "adds a new state dynamically" do
      machine.add_state(:review)
      expect(machine.states).to include(:review)
    end

    it "adds a new transition dynamically" do
      machine.add_transition(:completed, :review)
      expect(machine.transitions[:completed]).to include(:review)
    end

    it "transitions to a dynamically added state" do
      machine.start_processing
      5.times { machine.complete_task }
      machine.complete_process
      machine.add_state(:review)
      machine.add_transition(:completed, :review)
      machine.transition_to(:review)
      expect(machine.state).to eq(:review)
    end

    it "resets to idle after transitioning to a dynamically added state" do
      machine.start_processing
      5.times { machine.complete_task }
      machine.complete_process
      machine.add_state(:review)
      machine.add_transition(:completed, :review)
      machine.transition_to(:review)
      machine.reset
      expect(machine.state).to eq(:idle)
    end
  end

  describe "guards and actions" do
    it "increments tasks_completed when complete_task is called" do
      machine.start_processing
      machine.complete_task
      expect(machine.tasks_completed).to eq(1)
    end

    it "raises an error if complete_task is called when not processing" do
      expect { machine.complete_task }.to raise_error(RuntimeError, "Cannot complete tasks unless in processing state")
    end
  end
end
