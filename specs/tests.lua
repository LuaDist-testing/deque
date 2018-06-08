local deque = require("deque")

describe("()",function()

  it("should create a new deque object, like deque.new()",function()
    assert_equal(tostring(deque()),"Deque containing 0 item(s)")
  end)

end)

describe("deque object manipulation",function()

  local d = deque()

  it("should push an object to the deque",function()
    d:pushLeft("apples")
    d:pushRight("bananas")
    assert_equal(d:popLeft(),"apples")
  end)

  it("should contain 1 object after the pop",function()
    assert_equal(d.count,1)
  end)

  it("should successfully clear the deque",function()
    d:clear()
    assert_equal(d.count,0)
    assert_equal(d:isEmpty(),true)
  end)

  it("the first and last item should be 1 and 11, respectively",function()
    for i = 10, 1, -1 do
      d:pushLeft(i)
      d:pushRight(i+10)
    end
    assert_equal(d:peekLeft(),1)
    assert_equal(d:peekRight(),11)
  end)

  it("should pop the last item",function()
    assert_equal(d:popRight(),11)
  end)

  it("should successfully get the index of the first object",function()
    assert_equal(d:getIndex(d:peekLeft()),1)
  end)

  it("should successfully iterate through the objects",function()
    local itemCount = 0

    for item in d:iter() do
      itemCount = itemCount + 1
    end

    assert_equal(d.count,itemCount)
  end)

end)
