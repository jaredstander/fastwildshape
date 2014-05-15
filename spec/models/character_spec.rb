require "spec_helper"

describe Character do
  
  it { should_have_db_index(:name) }
  it { should_have_db_index(:druid?) }
  it { should_have_db_index(:level) }

end