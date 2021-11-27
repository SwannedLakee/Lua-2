describe("Sortedness check", function()
	local is_sorted = require("sorting.is_sorted")
	it("should work for edge cases", function()
		assert.equals(is_sorted({}), true)
		assert.equals(is_sorted({ 1 }), true)
	end)
	it("should return true for sorted lists", function()
		assert.equals(is_sorted({ 1, 2, 3 }), true)
		assert.equals(is_sorted({ 1, 1, 3 }), true)
	end)
	it("should return false for unsorted lists", function()
		assert.equals(is_sorted({ 1, 2, 1 }), false)
		assert.equals(is_sorted({ 2, 1, 1 }), false)
	end)
end)