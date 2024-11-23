# Abstract Factory assumes that you have several families of products,
# structured into separate class hierarchies (Button/Checkbox). All products of
# the same family have the common interface.
#
# This is the common interface for buttons family.
class Button
  def draw
    raise NotImplementedError,
          "#{self.class} has not implemented method '#{__method__}'"
  end
end

# All products families have the same varieties (MacOS/Windows).
#
# This is a MacOS variant of a button.
class MacOSButton < Button
  def draw
    puts 'MacOSButton has been drawn'
  end
end

# This is a Windows variant of a button.
class WindowsButton < Button
  def draw
    puts 'WindowsButton has been drawn'
  end
end

# Checkboxes is the second product family. It has the same variants as buttons.
class Checkbox
  def draw
    raise NotImplementedError,
          "#{self.class} has not implemented method '#{__method__}'"
  end
end

# This is a MacOS variant of a checkbox.
class MacOSCheckbox < Checkbox
  def draw
    puts 'MacOSCheckbox has been drawn'
  end
end

# This is a Windows variant of a checkbox.
class WindowsCheckbox < Checkbox
  def draw
    puts 'WindowsCheckbox has been drawn'
  end
end

# This is an example of abstract factory.
class GUIFactory
  def create_button
    raise NotImplementedError,
          "#{self.class} has not implemented method '#{__method__}'"
  end

  def create_checkbox
    raise NotImplementedError,
          "#{self.class} has not implemented method '#{__method__}'"
  end
end

# This is a MacOS concrete factory
class MacOSFactory < GUIFactory
  def create_button
    MacOSButton.new
  end

  def create_checkbox
    MacOSCheckbox.new
  end
end

# This is a Windwows concrete factory
class WindowsFactory < GUIFactory
  def create_button
    WindowsButton.new
  end

  def create_checkbox
    WindowsCheckbox.new
  end
end

# Factory users don't care which concrete factory they use since they work with
# factories and products through abstract interfaces.
class Application
  def initialize(factory)
    @button = factory.create_button
    @checkbox = factory.create_checkbox
  end

  def draw
    @button.draw
    @checkbox.draw
  end
end

# This is an example of usage in a real application. If the OS is MacOS we can
# ask the Application to draw using the MacOSFactory, otherwise, if the OS is
# Windows we can pass the WindowsFactory instead.
current_os = 'Windows'
factory = nil

case current_os
when 'MacOS'
  factory = MacOSFactory.new
when 'Windows'
  factory = WindowsFactory.new
end
Application.new(factory).draw
