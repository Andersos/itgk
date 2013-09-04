function bool = isPalindrome(string)

	reversed = reverse(string);
	bool = equal(reversed, string);
end