require_relative "../hello_vava"

def capture_stdout(&block)
  original_stdout = $stdout
  $stdout = fake = StringIO.new
  begin
    yield
  ensure
    $stdout = original_stdout
  end
  fake.string
end

describe "TASK 1: SAY HELLOOOO!!!" do
  it "hell_to_vava() should say 'Hello Vava'" do
    output =capture_stdout{
      hello_to_vava
    }
    eo = capture_stdout{
      puts "Hello Vava"
    }
    expect(output).to eq(eo)
  end
  it "hello_to_Jimmy() should say 'Hello Jimmy'" do
    output =capture_stdout{
      hello_to_jimmy
    }
    eo = capture_stdout{
      puts "Hello Jimmy"
    }
    expect(output).to eq(eo)
  end
  it "bye_to_both() should say 'Bye Vava' 'Bye Jimmy'" do
    output =capture_stdout{
      bye_to_both
    }
    eo = capture_stdout{
      puts "Bye Vava"
      puts "Bye Jimmy"
    }
    expect(output).to eq(eo)
  end
end

describe "TASK 2: Say Hello INSANELY" do
  it "hello_vava_5times() should give 'Hello Vava' 5times" do
    output = capture_stdout{
      hello_vava_5times
    }
    eo = capture_stdout{
      5.times{
        puts "Hello Vava"
      }
    }
    output.should eq(eo)
  end
  it "hello_vava_20times() should give 'Hello Vava' 20times" do
      output = capture_stdout{
        hello_vava_20times()
      }
      eo = capture_stdout{
        20.times{
          puts "Hello Vava"
        }
      }
      output.should eq(eo)
  end
  it "hello_mix_10times() should give 'Hello Vava' and then 'Hello Jimmy' 10times" do
      output = capture_stdout{
        hello_mix_10times()
      }
      eo = capture_stdout{
        10.times{
          puts "Hello Vava"
          puts "Hello Jimmy"
        }
      }
      output.should eq(eo)
  end
  it "hello_jimmy_n_times(92) should give 'Hello Vava' and then 'Hello Jimmy' 10times" do
      output = capture_stdout{
        hello_jimmy_n_times(92)
      }
      eo = capture_stdout{
        92.times{
          puts "Hello Jimmy"
        }
      }
      output.should eq(eo)
  end
  it "hello_jimmy_n_times(30) should give 'Hello Jimmy' 10times" do
      output = capture_stdout{
        hello_jimmy_n_times(30)
      }
      eo = capture_stdout{
        30.times{
          puts "Hello Jimmy"
        }
      }
      output.should eq(eo)
  end
  it "hello_jimmy_order() should give '1.Hello Jimmy' '2.Hello Jimmy' ... '5.Hello Jimmy'" do
      output = capture_stdout{
        hello_jimmy_order()
      }
      eo = capture_stdout{
        5.times do |i|
          puts (i+1).to_s + ".Hello Jimmy"
        end
      }
      output.should eq(eo)
  end
    it "hello_vava_even_order() should give '2.Hello Vava' '4.Hello Vava' ... '6.Hello Vava'" do
      output = capture_stdout{
        hello_vava_even_order()
      }
      eo = capture_stdout{
        5.times do |i|
          puts ((i+1)*2).to_s + ".Hello vava"
        end
      }
      output.should eq(eo)
  end
end

describe "TASK 3: Do some Logic" do
  it "hello_condition('jimmy') should only say hello to jimmy" do
      output = capture_stdout{
          hello_condition('jimmy')
        }
        eo = capture_stdout{
          puts "Hello Jimmy"
        }
        output.should eq(eo)
  end
  it "hello_condition('vava') should only say hello to vava" do
      output = capture_stdout{
          hello_condition('vava')
        }
        eo = capture_stdout{
          puts "Hello Vava"
        }
        output.should eq(eo)
  end
  it "hello_condition('both') should only say hello to both" do
      output = capture_stdout{
          hello_condition('both')
        }
        eo = capture_stdout{
          puts "Hello Vava"
          puts "Hello Jimmy"
        }
        output.should eq(eo)
  end
end 

describe "BOUNS: HELLO ANYONE!" do
  it "she_is_beatiful('Balloon') should say 'Balloon is Beautiful'" do
        output = capture_stdout{
          she_is_beatiful('Balloon')
        }
        eo = capture_stdout{
          puts "Balloon is Beautiful"          
        }
        output.should eq(eo)
  end
  it "she_is_beatiful('Shek Shek') should say 'Shek Shek is Beautiful'" do 
        output = capture_stdout{
          she_is_beatiful('Shek Shek')
        }
        eo = capture_stdout{
          puts "Shek Shek is Beautiful"          
        }
        output.should eq(eo)
  end
  it "she_is_beatiful('Vava') should say 'Vava is Beautiful'" do 
        output = capture_stdout{
          she_is_beatiful('Vava')
        }
        eo = capture_stdout{
          puts "Vava is Beautiful"          
        }
        output.should eq(eo)
  end
  it "x_to_y('Good Night','Jaspar') should say 'Good Night to Jaspar'" do 
        output = capture_stdout{
          x_to_y('Good Night','Jaspar')
        }
        eo = capture_stdout{
          puts "Good Night to Jaspar"          
        }
        output.should eq(eo)
  end
  it "x_to_y('Good Morning,Chilam') should say 'Good Morning to Chilam'" do 
        output = capture_stdout{
          x_to_y('Good Morning','Chilam')
        }
        eo = capture_stdout{
          puts "Good Morning to Chilam"          
        }
        output.should eq(eo)
  end
end