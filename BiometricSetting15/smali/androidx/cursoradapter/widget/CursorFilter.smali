.class public final Landroidx/cursoradapter/widget/CursorFilter;
.super Landroid/widget/Filter;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"


# instance fields
.field public mClient:Landroidx/cursoradapter/widget/CursorFilter$CursorFilterClient;


# virtual methods
.method public final convertResultToString(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/cursoradapter/widget/CursorFilter;->mClient:Landroidx/cursoradapter/widget/CursorFilter$CursorFilterClient;

    .line 2
    .line 3
    check-cast p1, Landroid/database/Cursor;

    .line 4
    .line 5
    check-cast p0, Landroidx/appcompat/widget/SuggestionsAdapter;

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SuggestionsAdapter;->convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public final performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 2

    .line 1
    iget-object p0, p0, Landroidx/cursoradapter/widget/CursorFilter;->mClient:Landroidx/cursoradapter/widget/CursorFilter$CursorFilterClient;

    .line 2
    .line 3
    check-cast p0, Landroidx/appcompat/widget/SuggestionsAdapter;

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const-string p1, ""

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    :goto_0
    iget-object v0, p0, Landroidx/appcompat/widget/SuggestionsAdapter;->mSearchView:Landroidx/appcompat/widget/SearchView;

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    const/4 v1, 0x0

    .line 24
    if-nez v0, :cond_2

    .line 25
    .line 26
    iget-object v0, p0, Landroidx/appcompat/widget/SuggestionsAdapter;->mSearchView:Landroidx/appcompat/widget/SearchView;

    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWindowVisibility()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    :try_start_0
    iget-object v0, p0, Landroidx/appcompat/widget/SuggestionsAdapter;->mSearchable:Landroid/app/SearchableInfo;

    .line 36
    .line 37
    invoke-virtual {p0, v0, p1}, Landroidx/appcompat/widget/SuggestionsAdapter;->getSearchManagerSuggestions(Landroid/app/SearchableInfo;Ljava/lang/String;)Landroid/database/Cursor;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    if-eqz p0, :cond_2

    .line 42
    .line 43
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    .line 45
    .line 46
    goto :goto_2

    .line 47
    :catch_0
    move-exception p0

    .line 48
    const-string p1, "SuggestionsAdapter"

    .line 49
    .line 50
    const-string v0, "Search suggestions query threw an exception."

    .line 51
    .line 52
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 53
    .line 54
    .line 55
    :cond_2
    :goto_1
    move-object p0, v1

    .line 56
    :goto_2
    new-instance p1, Landroid/widget/Filter$FilterResults;

    .line 57
    .line 58
    invoke-direct {p1}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 59
    .line 60
    .line 61
    if-eqz p0, :cond_3

    .line 62
    .line 63
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    iput v0, p1, Landroid/widget/Filter$FilterResults;->count:I

    .line 68
    .line 69
    iput-object p0, p1, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 70
    .line 71
    goto :goto_3

    .line 72
    :cond_3
    const/4 p0, 0x0

    .line 73
    iput p0, p1, Landroid/widget/Filter$FilterResults;->count:I

    .line 74
    .line 75
    iput-object v1, p1, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 76
    .line 77
    :goto_3
    return-object p1
.end method

.method public final publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/cursoradapter/widget/CursorFilter;->mClient:Landroidx/cursoradapter/widget/CursorFilter$CursorFilterClient;

    .line 2
    .line 3
    move-object p1, p0

    .line 4
    check-cast p1, Landroidx/cursoradapter/widget/CursorAdapter;

    .line 5
    .line 6
    iget-object p1, p1, Landroidx/cursoradapter/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    .line 7
    .line 8
    iget-object p2, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 9
    .line 10
    if-eqz p2, :cond_0

    .line 11
    .line 12
    if-eq p2, p1, :cond_0

    .line 13
    .line 14
    check-cast p2, Landroid/database/Cursor;

    .line 15
    .line 16
    check-cast p0, Landroidx/appcompat/widget/SuggestionsAdapter;

    .line 17
    .line 18
    invoke-virtual {p0, p2}, Landroidx/appcompat/widget/SuggestionsAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method
