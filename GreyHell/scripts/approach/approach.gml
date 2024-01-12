

function approach(start, finish, shift)
{
    if (start < finish)
    {
        return min(start + shift, finish);
    }
    else
    {
        return max(start - shift, finish);
    }
}
