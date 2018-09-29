require File.expand_path(File.dirname(__FILE__) + '/../bonus_drink')

describe BonusDrink do
    context 'トータルで飲める本数（0、1、3、11本と購入した場合）' do
      specify { expect(BonusDrink.total_count_for(0)).to eq 0 }
      specify { expect(BonusDrink.total_count_for(1)).to eq 1 }
      specify { expect(BonusDrink.total_count_for(3)).to eq 4 }
      specify { expect(BonusDrink.total_count_for(11)).to eq 16 }
    end
    context 'トータルで飲める本数（最初に100本と購入した場合）' do
      specify 'トータルで１３３本飲める' do
        @@total = 0
        expect(BonusDrink.total_count_for(100)).to eq 133
      end
    end
end
