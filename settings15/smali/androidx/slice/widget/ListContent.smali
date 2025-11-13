.class public final Landroidx/slice/widget/ListContent;
.super Landroidx/slice/widget/SliceContent;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mHeaderContent:Landroidx/slice/widget/RowContent;

.field public mPrimaryAction:Landroidx/slice/core/SliceActionImpl;

.field public mRowItems:Ljava/util/ArrayList;

.field public mSeeMoreContent:Landroidx/slice/widget/RowContent;

.field public mSliceActions:Ljava/util/List;


# direct methods
.method public static getRowType(Landroidx/slice/widget/SliceContent;ZLjava/util/List;)I
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_9

    instance-of v1, p0, Landroidx/slice/widget/GridContent;

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    check-cast p0, Landroidx/slice/widget/RowContent;

    iget-object v1, p0, Landroidx/slice/widget/RowContent;->mPrimaryAction:Landroidx/slice/SliceItem;

    if-eqz v1, :cond_1

    new-instance v2, Landroidx/slice/core/SliceActionImpl;

    invoke-direct {v2, v1}, Landroidx/slice/core/SliceActionImpl;-><init>(Landroidx/slice/SliceItem;)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    iget-object v1, p0, Landroidx/slice/widget/RowContent;->mRange:Landroidx/slice/SliceItem;

    if-eqz v1, :cond_3

    iget-object p0, v1, Landroidx/slice/SliceItem;->mFormat:Ljava/lang/String;

    const-string p1, "action"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x4

    goto :goto_1

    :cond_2
    const/4 p0, 0x5

    :goto_1
    return p0

    :cond_3
    iget-object v1, p0, Landroidx/slice/widget/RowContent;->mSelection:Landroidx/slice/SliceItem;

    if-eqz v1, :cond_4

    const/4 p0, 0x6

    return p0

    :cond_4
    const/4 v1, 0x3

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroidx/slice/core/SliceActionImpl;->isToggle()Z

    move-result v2

    if-eqz v2, :cond_5

    return v1

    :cond_5
    if-eqz p1, :cond_8

    if-eqz p2, :cond_8

    move p0, v0

    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge p0, p1, :cond_7

    invoke-interface {p2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/slice/core/SliceAction;

    invoke-interface {p1}, Landroidx/slice/core/SliceAction;->isToggle()Z

    move-result p1

    if-eqz p1, :cond_6

    return v1

    :cond_6
    add-int/lit8 p0, p0, 0x1

    goto :goto_2

    :cond_7
    return v0

    :cond_8
    iget-object p0, p0, Landroidx/slice/widget/RowContent;->mToggleItems:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-lez p0, :cond_9

    move v0, v1

    :cond_9
    return v0
.end method


# virtual methods
.method public final getHeight(Landroidx/slice/widget/SliceStyle;Landroidx/slice/widget/SliceViewPolicy;)I
    .locals 6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p2, Landroidx/slice/widget/SliceViewPolicy;->mMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Landroidx/slice/widget/ListContent;->mHeaderContent:Landroidx/slice/widget/RowContent;

    invoke-virtual {p0, p1, p2}, Landroidx/slice/widget/RowContent;->getHeight(Landroidx/slice/widget/SliceStyle;Landroidx/slice/widget/SliceViewPolicy;)I

    move-result p0

    goto :goto_2

    :cond_0
    iget v0, p2, Landroidx/slice/widget/SliceViewPolicy;->mMaxHeight:I

    iget-boolean v1, p2, Landroidx/slice/widget/SliceViewPolicy;->mScrollable:Z

    iget-object v2, p0, Landroidx/slice/widget/ListContent;->mRowItems:Ljava/util/ArrayList;

    invoke-virtual {p1, v2, p2}, Landroidx/slice/widget/SliceStyle;->getListItemsHeight(Ljava/util/List;Landroidx/slice/widget/SliceViewPolicy;)I

    move-result v2

    if-lez v0, :cond_1

    iget-object v3, p0, Landroidx/slice/widget/ListContent;->mHeaderContent:Landroidx/slice/widget/RowContent;

    invoke-virtual {v3, p1, p2}, Landroidx/slice/widget/RowContent;->getHeight(Landroidx/slice/widget/SliceStyle;Landroidx/slice/widget/SliceViewPolicy;)I

    move-result v3

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    :cond_1
    if-lez v0, :cond_2

    move v3, v0

    goto :goto_0

    :cond_2
    iget v3, p1, Landroidx/slice/widget/SliceStyle;->mListLargeHeight:I

    :goto_0
    sub-int v4, v2, v3

    iget v5, p1, Landroidx/slice/widget/SliceStyle;->mListMinScrollHeight:I

    if-lt v4, v5, :cond_3

    iget-boolean v4, p1, Landroidx/slice/widget/SliceStyle;->mExpandToAvailableHeight:Z

    if-nez v4, :cond_3

    move v2, v3

    goto :goto_1

    :cond_3
    if-gtz v0, :cond_4

    goto :goto_1

    :cond_4
    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    :goto_1
    if-nez v1, :cond_5

    invoke-virtual {p1, p0, v2, p2}, Landroidx/slice/widget/SliceStyle;->getListItemsForNonScrollingList(Landroidx/slice/widget/ListContent;ILandroidx/slice/widget/SliceViewPolicy;)Landroidx/slice/widget/DisplayedListItems;

    move-result-object p0

    iget-object p0, p0, Landroidx/slice/widget/DisplayedListItems;->mDisplayedItems:Ljava/util/List;

    invoke-virtual {p1, p0, p2}, Landroidx/slice/widget/SliceStyle;->getListItemsHeight(Ljava/util/List;Landroidx/slice/widget/SliceViewPolicy;)I

    move-result p0

    goto :goto_2

    :cond_5
    move p0, v2

    :goto_2
    return p0
.end method

.method public final getShortcut(Landroid/content/Context;)Landroidx/slice/core/SliceActionImpl;
    .locals 12

    iget-object v0, p0, Landroidx/slice/widget/ListContent;->mPrimaryAction:Landroidx/slice/core/SliceActionImpl;

    if-eqz v0, :cond_0

    goto/16 :goto_8

    :cond_0
    iget-object v0, p0, Landroidx/slice/widget/SliceContent;->mSliceItem:Landroidx/slice/SliceItem;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    :cond_1
    :goto_0
    move-object v0, v1

    goto/16 :goto_8

    :cond_2
    const-string/jumbo v2, "shortcut"

    const-string/jumbo v3, "title"

    filled-new-array {v3, v2}, [Ljava/lang/String;

    move-result-object v2

    const-string v4, "action"

    invoke-static {v0, v4, v2, v1}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/SliceItem;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v0

    const-string/jumbo v2, "text"

    const-string v5, "image"

    if-eqz v0, :cond_3

    invoke-static {v0, v5, v3}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v6

    invoke-static {v0, v2, v1}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v7

    goto :goto_1

    :cond_3
    move-object v6, v1

    move-object v7, v6

    :goto_1
    if-nez v0, :cond_4

    iget-object v0, p0, Landroidx/slice/widget/SliceContent;->mSliceItem:Landroidx/slice/SliceItem;

    invoke-static {v0, v4, v1}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v0

    :cond_4
    if-nez v6, :cond_5

    iget-object v4, p0, Landroidx/slice/widget/SliceContent;->mSliceItem:Landroidx/slice/SliceItem;

    invoke-static {v4, v5, v3}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v6

    :cond_5
    if-nez v7, :cond_6

    iget-object v4, p0, Landroidx/slice/widget/SliceContent;->mSliceItem:Landroidx/slice/SliceItem;

    invoke-static {v4, v2, v3}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v7

    :cond_6
    if-nez v6, :cond_7

    iget-object v3, p0, Landroidx/slice/widget/SliceContent;->mSliceItem:Landroidx/slice/SliceItem;

    invoke-static {v3, v5, v1}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v6

    :cond_7
    if-nez v7, :cond_8

    iget-object v3, p0, Landroidx/slice/widget/SliceContent;->mSliceItem:Landroidx/slice/SliceItem;

    invoke-static {v3, v2, v1}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v7

    :cond_8
    if-eqz v6, :cond_9

    invoke-static {v6}, Landroidx/slice/core/SliceActionImpl;->parseImageMode(Landroidx/slice/SliceItem;)I

    move-result v2

    goto :goto_2

    :cond_9
    const/4 v2, 0x5

    :goto_2
    if-eqz p1, :cond_13

    iget-object p0, p0, Landroidx/slice/widget/SliceContent;->mSliceItem:Landroidx/slice/SliceItem;

    const-string/jumbo v3, "slice"

    invoke-static {p0, v3, v1}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object p0

    if-nez p0, :cond_a

    goto :goto_0

    :cond_a
    invoke-virtual {p0}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object p0

    iget-object p0, p0, Landroidx/slice/Slice;->mUri:Ljava/lang/String;

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    if-eqz v6, :cond_b

    iget-object v3, v6, Landroidx/slice/SliceItem;->mObj:Ljava/lang/Object;

    check-cast v3, Landroidx/core/graphics/drawable/IconCompat;

    goto :goto_3

    :cond_b
    move-object v3, v1

    :goto_3
    if-eqz v7, :cond_c

    iget-object v4, v7, Landroidx/slice/SliceItem;->mObj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/CharSequence;

    goto :goto_4

    :cond_c
    move-object v4, v1

    :goto_4
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v6

    if-eqz v6, :cond_d

    iget-object v6, v6, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    goto :goto_5

    :cond_d
    move-object v6, v1

    :goto_5
    const/high16 v8, 0x4000000

    if-eqz v6, :cond_11

    if-nez v3, :cond_f

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    instance-of v3, v2, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_e

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v2}, Landroidx/core/graphics/drawable/IconCompat;->createWithBitmap(Landroid/graphics/Bitmap;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v2

    :goto_6
    move-object v3, v2

    goto :goto_7

    :cond_e
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v9, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    new-instance v9, Landroid/graphics/Canvas;

    invoke-direct {v9, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v9}, Landroid/graphics/Canvas;->getWidth()I

    move-result v10

    invoke-virtual {v9}, Landroid/graphics/Canvas;->getHeight()I

    move-result v11

    invoke-virtual {v2, v7, v7, v10, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v2, v9}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-static {v3}, Landroidx/core/graphics/drawable/IconCompat;->createWithBitmap(Landroid/graphics/Bitmap;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v2

    goto :goto_6

    :goto_7
    const/4 v2, 0x2

    :cond_f
    if-nez v4, :cond_10

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v4

    :cond_10
    if-nez v0, :cond_11

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    if-eqz v5, :cond_11

    new-instance v0, Landroidx/slice/SliceItem;

    invoke-static {p1, v7, v5, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Landroidx/slice/Slice;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v11

    new-array v11, v11, [Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    invoke-direct {v10}, Landroidx/versionedparcelable/CustomVersionedParcelable;-><init>()V

    iput-object v1, v10, Landroidx/slice/Slice;->mSpec:Landroidx/slice/SliceSpec;

    sget-object v11, Landroidx/slice/Slice;->NO_ITEMS:[Landroidx/slice/SliceItem;

    iput-object v11, v10, Landroidx/slice/Slice;->mItems:[Landroidx/slice/SliceItem;

    iput-object v1, v10, Landroidx/slice/Slice;->mUri:Ljava/lang/String;

    iput-object v9, v10, Landroidx/slice/Slice;->mHints:[Ljava/lang/String;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-array v9, v9, [Landroidx/slice/SliceItem;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroidx/slice/SliceItem;

    iput-object v6, v10, Landroidx/slice/Slice;->mItems:[Landroidx/slice/SliceItem;

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v10, Landroidx/slice/Slice;->mUri:Ljava/lang/String;

    iput-object v1, v10, Landroidx/slice/Slice;->mSpec:Landroidx/slice/SliceSpec;

    new-array p0, v7, [Ljava/lang/String;

    invoke-direct {v0, v5, v10, v1, p0}, Landroidx/slice/SliceItem;-><init>(Landroid/app/PendingIntent;Landroidx/slice/Slice;Ljava/lang/String;[Ljava/lang/String;)V

    :cond_11
    if-nez v0, :cond_12

    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    invoke-static {p1, v7, p0, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    new-instance v0, Landroidx/slice/SliceItem;

    invoke-direct {v0, p0, v1, v1, v1}, Landroidx/slice/SliceItem;-><init>(Landroid/app/PendingIntent;Landroidx/slice/Slice;Ljava/lang/String;[Ljava/lang/String;)V

    :cond_12
    if-eqz v4, :cond_1

    if-eqz v3, :cond_1

    new-instance v1, Landroidx/slice/core/SliceActionImpl;

    invoke-virtual {v0}, Landroidx/slice/SliceItem;->getAction()Landroid/app/PendingIntent;

    move-result-object p0

    invoke-direct {v1, p0, v3, v2, v4}, Landroidx/slice/core/SliceActionImpl;-><init>(Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;ILjava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_13
    if-eqz v6, :cond_1

    if-eqz v0, :cond_1

    if-eqz v7, :cond_1

    new-instance p0, Landroidx/slice/core/SliceActionImpl;

    invoke-virtual {v0}, Landroidx/slice/SliceItem;->getAction()Landroid/app/PendingIntent;

    move-result-object p1

    iget-object v0, v6, Landroidx/slice/SliceItem;->mObj:Ljava/lang/Object;

    check-cast v0, Landroidx/core/graphics/drawable/IconCompat;

    iget-object v1, v7, Landroidx/slice/SliceItem;->mObj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/CharSequence;

    invoke-direct {p0, p1, v0, v2, v1}, Landroidx/slice/core/SliceActionImpl;-><init>(Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;ILjava/lang/CharSequence;)V

    move-object v0, p0

    :goto_8
    return-object v0
.end method

.method public final isValid()Z
    .locals 1

    iget-object v0, p0, Landroidx/slice/widget/SliceContent;->mSliceItem:Landroidx/slice/SliceItem;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/slice/widget/ListContent;->mRowItems:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
