p Time.new.strftime("%a, %d %m %Y %H:%M:%S %Z")

a = [
        ['All Interests', 'ALL'],
        ['Arts & Entertainment', '3'],
        ['Autos & Vehicles', '47'],
        ['Cosmetic, Health Care', '44'],
        ['Books & Literature', '22'],
        ['Business & Industrial', '12'],
        ['Computers & Electronics', '5'],
        ['Loan, Credit Card, Insurance, Investment', '7'],
        ['Food & Drink', '71'],
        ['Games', '8'],
        ['Hobbies & Leisure', '65'],
        ['Home & Garden', '11'],
        ['Internet & Telecom', '13'],
        ['Jobs, Education', '958'],
        ['Law & Government', '19'],
        ['News', '16'],
        ['Online Communities', '299'],
        ['People & Society', '14'],
        ['Pets & Animals', '66'],
        ['Property', '299'],
        ['Reference', '533'],
        ['Science', '174'],
        ['Apparel, Luxury Product', '18'],
        ['Sports', '20'],
        ['Travel', '67'],
        ['World Localities', '5000']
      ]
      b = a.map do |v|
        v[1]
      end
      p b