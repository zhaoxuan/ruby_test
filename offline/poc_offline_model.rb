require 'rubygems'
require 'ruby-debug'
require 'benchmark'

data = {
  'data1' => {'id' => 0, 'level' => 0, 'parent_id' => nil, children_number => 2, children_list => '1,2', 'split' => nil, 'attr1' => '*', 'attr2' => '*', 'attr3' => '*', 'value' => '*_*_*'},
  'data2' => {'id' => 1, 'level' => 1, 'parent_id' => 0, children_number => 3, children_list => '3,4,5', 'split' => 0, 'attr1' => 'a', 'attr2' => '*', 'attr3' => '*', 'value' => 'a_*_*'},
  'data3' => {'id' => 2, 'level' => 1, 'parent_id' => 0, children_number => 0, children_list => nil, 'split' => 0, 'attr1' => '#', 'attr2' => '*', 'attr3' => '*', 'value' => '#_*_*'},
  'data4' => {'id' => 3, 'level' => 2, 'parent_id' => 1, children_number => 0, children_list => nil, 'split' => 1, 'attr1' => 'a', 'attr2' => 'a', 'attr3' => '*', 'value' => 'a_a_*'},
  'data5' => {'id' => 4, 'level' => 2, 'parent_id' => 1, children_number => 0, children_list => nil, 'split' => 1, 'attr1' => 'a', 'attr2' => 'b', 'attr3' => '*', 'value' => 'a_b_*'},
  'data6' => {'id' => 5, 'level' => 3, 'parent_id' => 1, children_number => 0, children_list => nil, 'split' => 1, 'attr1' => 'a', 'attr2' => '#', 'attr3' => '*', 'value' => 'a_#_*'}
}

hash = {
  'split' => '0',
  'a' => {
    'value' => 'a_*_*',
    'split' => '2',
    'a' => {'value' => 'a_*_a'},
    'b' => {'value' => 'a,b,*'},
    '#' => {
      'split' => '1'
      'value' => 'a,#,*',
      'b' => {'value' => 'a,#,b'}
    },
    '#' => {'value' => '**_*_*'}
  }
}

def hash_look(hash, keys, split)
  key = keys[split]

  if hash.keys.include?(key)
    hash_look(hash[key], keys, hash[key]['split'])
  elsif hash.keys.include?('#')
    hash_look(hash['#'], keys)
  else
    return hash['value']
  end

end

def table2hash(data)
  
end
