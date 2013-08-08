hash_data = {
  '1' => {'value' => 'a',
    'children' => {
      '2' => {'value' => 'b',
        'children' => {
          '3' => {'value' => 'c'},
          '4' => {'value' => 'd'},
          '5' => {'value' => 'e'}
        }
      },
      '6' => {'value' => 'f',
        'children' => {
          '7' => {'value' => 'g'},
          '8' => {'value' => 'h'}
        }
      }
    }
  }
}

def recursion(hash)
  hash.keys.each do |k|
    p hash[k]['value']
    unless hash[k]['children'].nil?
      Thread.new do
        recursion(hash[k]['children'])
      end.join
    end

  end
end

recursion(hash_data)