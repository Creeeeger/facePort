.class public final Landroidx/slice/widget/ListContent;
.super Landroidx/slice/widget/SliceContent;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mHeaderContent:Landroidx/slice/widget/RowContent;

.field public mPrimaryAction:Landroidx/slice/core/SliceActionImpl;

.field public final mRowItems:Ljava/util/ArrayList;

.field public mSeeMoreContent:Landroidx/slice/widget/RowContent;

.field public mSliceActions:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/slice/Slice;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0, p2}, Landroidx/slice/widget/SliceContent;-><init>(Landroidx/slice/Slice;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/slice/widget/ListContent;->mRowItems:Ljava/util/ArrayList;

    iget-object p1, p0, Landroidx/slice/widget/SliceContent;->mSliceItem:Landroidx/slice/SliceItem;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p2}, Landroidx/slice/widget/ListContent;->populate(Landroidx/slice/Slice;)V

    return-void
.end method

.method public constructor <init>(Landroidx/slice/Slice;)V
    .locals 1

    invoke-direct {p0, p1}, Landroidx/slice/widget/SliceContent;-><init>(Landroidx/slice/Slice;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/slice/widget/ListContent;->mRowItems:Ljava/util/ArrayList;

    iget-object v0, p0, Landroidx/slice/widget/SliceContent;->mSliceItem:Landroidx/slice/SliceItem;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/slice/widget/ListContent;->populate(Landroidx/slice/Slice;)V

    return-void
.end method

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

.method public final getShortcut(Landroid/content/Context;)Landroidx/slice/core/SliceAction;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Landroidx/slice/widget/ListContent;->mPrimaryAction:Landroidx/slice/core/SliceActionImpl;

    if-eqz v2, :cond_0

    goto/16 :goto_8

    :cond_0
    iget-object v2, v0, Landroidx/slice/widget/SliceContent;->mSliceItem:Landroidx/slice/SliceItem;

    const/4 v3, 0x0

    if-nez v2, :cond_2

    :cond_1
    :goto_0
    move-object v2, v3

    goto/16 :goto_8

    :cond_2
    const-string v4, "shortcut"

    const-string/jumbo v5, "title"

    filled-new-array {v5, v4}, [Ljava/lang/String;

    move-result-object v4

    const-string v6, "action"

    invoke-static {v2, v6, v4, v3}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/SliceItem;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v2

    const-string/jumbo v4, "text"

    const-string v7, "image"

    if-eqz v2, :cond_3

    invoke-static {v2, v7, v5}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v8

    invoke-static {v2, v4, v3}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v9

    goto :goto_1

    :cond_3
    move-object v8, v3

    move-object v9, v8

    :goto_1
    if-nez v2, :cond_4

    iget-object v2, v0, Landroidx/slice/widget/SliceContent;->mSliceItem:Landroidx/slice/SliceItem;

    invoke-static {v2, v6, v3}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v2

    :cond_4
    if-nez v8, :cond_5

    iget-object v6, v0, Landroidx/slice/widget/SliceContent;->mSliceItem:Landroidx/slice/SliceItem;

    invoke-static {v6, v7, v5}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v8

    :cond_5
    if-nez v9, :cond_6

    iget-object v6, v0, Landroidx/slice/widget/SliceContent;->mSliceItem:Landroidx/slice/SliceItem;

    invoke-static {v6, v4, v5}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v9

    :cond_6
    if-nez v8, :cond_7

    iget-object v5, v0, Landroidx/slice/widget/SliceContent;->mSliceItem:Landroidx/slice/SliceItem;

    invoke-static {v5, v7, v3}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v8

    :cond_7
    if-nez v9, :cond_8

    iget-object v5, v0, Landroidx/slice/widget/SliceContent;->mSliceItem:Landroidx/slice/SliceItem;

    invoke-static {v5, v4, v3}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v9

    :cond_8
    if-eqz v8, :cond_9

    invoke-static {v8}, Landroidx/slice/core/SliceActionImpl;->parseImageMode(Landroidx/slice/SliceItem;)I

    move-result v4

    goto :goto_2

    :cond_9
    const/4 v4, 0x5

    :goto_2
    if-eqz v1, :cond_13

    iget-object v0, v0, Landroidx/slice/widget/SliceContent;->mSliceItem:Landroidx/slice/SliceItem;

    const-string v5, "slice"

    invoke-static {v0, v5, v3}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v0

    if-nez v0, :cond_a

    goto :goto_0

    :cond_a
    invoke-virtual {v0}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object v0

    iget-object v0, v0, Landroidx/slice/Slice;->mUri:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v8, :cond_b

    iget-object v5, v8, Landroidx/slice/SliceItem;->mObj:Ljava/lang/Object;

    check-cast v5, Landroidx/core/graphics/drawable/IconCompat;

    goto :goto_3

    :cond_b
    move-object v5, v3

    :goto_3
    if-eqz v9, :cond_c

    iget-object v6, v9, Landroidx/slice/SliceItem;->mObj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/CharSequence;

    goto :goto_4

    :cond_c
    move-object v6, v3

    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v8

    if-eqz v8, :cond_d

    iget-object v8, v8, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    goto :goto_5

    :cond_d
    move-object v8, v3

    :goto_5
    const/high16 v10, 0x4000000

    if-eqz v8, :cond_11

    if-nez v5, :cond_f

    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    instance-of v5, v4, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v5, :cond_e

    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v4}, Landroidx/core/graphics/drawable/IconCompat;->createWithBitmap(Landroid/graphics/Bitmap;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v4

    :goto_6
    move-object v5, v4

    goto :goto_7

    :cond_e
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v11

    sget-object v12, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v11, v12}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    new-instance v11, Landroid/graphics/Canvas;

    invoke-direct {v11, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v11}, Landroid/graphics/Canvas;->getWidth()I

    move-result v12

    invoke-virtual {v11}, Landroid/graphics/Canvas;->getHeight()I

    move-result v13

    invoke-virtual {v4, v9, v9, v12, v13}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v4, v11}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-static {v5}, Landroidx/core/graphics/drawable/IconCompat;->createWithBitmap(Landroid/graphics/Bitmap;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v4

    goto :goto_6

    :goto_7
    const/4 v4, 0x2

    :cond_f
    if-nez v6, :cond_10

    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v6

    :cond_10
    if-nez v2, :cond_11

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    if-eqz v7, :cond_11

    new-instance v2, Landroidx/slice/SliceItem;

    invoke-static {v1, v9, v7, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v12

    new-instance v7, Landroidx/slice/Slice$Builder;

    invoke-direct {v7, v0}, Landroidx/slice/Slice$Builder;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v7}, Landroidx/slice/Slice$Builder;->build()Landroidx/slice/Slice;

    move-result-object v13

    new-array v0, v9, [Ljava/lang/String;

    const-string v14, "action"

    const/4 v15, 0x0

    move-object v11, v2

    move-object/from16 v16, v0

    invoke-direct/range {v11 .. v16}, Landroidx/slice/SliceItem;-><init>(Landroid/app/PendingIntent;Landroidx/slice/Slice;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    :cond_11
    if-nez v2, :cond_12

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-static {v1, v9, v0, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v12

    new-instance v2, Landroidx/slice/SliceItem;

    const/4 v13, 0x0

    const-string v14, "action"

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v11, v2

    invoke-direct/range {v11 .. v16}, Landroidx/slice/SliceItem;-><init>(Landroid/app/PendingIntent;Landroidx/slice/Slice;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    :cond_12
    if-eqz v6, :cond_1

    if-eqz v5, :cond_1

    new-instance v3, Landroidx/slice/core/SliceActionImpl;

    invoke-virtual {v2}, Landroidx/slice/SliceItem;->getAction()Landroid/app/PendingIntent;

    move-result-object v0

    invoke-direct {v3, v0, v5, v4, v6}, Landroidx/slice/core/SliceActionImpl;-><init>(Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;ILjava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_13
    if-eqz v8, :cond_1

    if-eqz v2, :cond_1

    if-eqz v9, :cond_1

    new-instance v0, Landroidx/slice/core/SliceActionImpl;

    invoke-virtual {v2}, Landroidx/slice/SliceItem;->getAction()Landroid/app/PendingIntent;

    move-result-object v1

    iget-object v2, v8, Landroidx/slice/SliceItem;->mObj:Ljava/lang/Object;

    check-cast v2, Landroidx/core/graphics/drawable/IconCompat;

    iget-object v3, v9, Landroidx/slice/SliceItem;->mObj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/CharSequence;

    invoke-direct {v0, v1, v2, v4, v3}, Landroidx/slice/core/SliceActionImpl;-><init>(Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;ILjava/lang/CharSequence;)V

    move-object v2, v0

    :goto_8
    return-object v2
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

.method public final populate(Landroidx/slice/Slice;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const-string v2, "slice"

    const-string v3, "actions"

    invoke-static {v1, v2, v3}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/Slice;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v4

    const-string v5, "shortcut"

    filled-new-array {v3, v5}, [Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    if-eqz v4, :cond_1

    invoke-static {v4, v2, v6, v7}, Landroidx/slice/core/SliceQuery;->findAll(Landroidx/slice/SliceItem;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    goto :goto_0

    :cond_1
    move-object v4, v7

    :goto_0
    const/4 v6, 0x0

    if-eqz v4, :cond_2

    new-instance v8, Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    move v9, v6

    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_3

    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/slice/SliceItem;

    new-instance v11, Landroidx/slice/core/SliceActionImpl;

    invoke-direct {v11, v10}, Landroidx/slice/core/SliceActionImpl;-><init>(Landroidx/slice/SliceItem;)V

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_2
    move-object v8, v7

    :cond_3
    iput-object v8, v0, Landroidx/slice/widget/ListContent;->mSliceActions:Ljava/util/List;

    const-string v15, "horizontal"

    const-string v16, "selection_option"

    const-string v9, "list_item"

    const-string v10, "shortcut"

    const-string v11, "actions"

    const-string v12, "keywords"

    const-string/jumbo v13, "ttl"

    const-string v14, "last_updated"

    filled-new-array/range {v9 .. v16}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v7, v4}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/Slice;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v4

    const-string v8, "keywords"

    const-string v9, "see_more"

    if-eqz v4, :cond_4

    iget-object v10, v4, Landroidx/slice/SliceItem;->mFormat:Ljava/lang/String;

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    filled-new-array {v3, v8, v9}, [Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroidx/slice/SliceItem;->hasAnyHints([Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_4

    const-string/jumbo v10, "text"

    invoke-static {v4, v10, v7}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v10

    if-eqz v10, :cond_4

    goto :goto_2

    :cond_4
    move-object v4, v7

    :goto_2
    if-eqz v4, :cond_5

    new-instance v10, Landroidx/slice/widget/RowContent;

    invoke-direct {v10, v4, v6}, Landroidx/slice/widget/RowContent;-><init>(Landroidx/slice/SliceItem;I)V

    iput-object v10, v0, Landroidx/slice/widget/ListContent;->mHeaderContent:Landroidx/slice/widget/RowContent;

    iget-object v4, v0, Landroidx/slice/widget/ListContent;->mRowItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v7, v7, v4}, Landroidx/slice/core/SliceQuery;->findTopLevelItem(Landroidx/slice/Slice;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v4

    const/4 v10, 0x1

    const-string v11, "action"

    if-eqz v4, :cond_6

    iget-object v12, v4, Landroidx/slice/SliceItem;->mFormat:Ljava/lang/String;

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-virtual {v4}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object v12

    iget-object v12, v12, Landroidx/slice/Slice;->mItems:[Landroidx/slice/SliceItem;

    invoke-static {v12}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    if-ne v13, v10, :cond_7

    invoke-interface {v12, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/slice/SliceItem;

    iget-object v13, v13, Landroidx/slice/SliceItem;->mFormat:Ljava/lang/String;

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    invoke-interface {v12, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/slice/SliceItem;

    goto :goto_3

    :cond_6
    move-object v4, v7

    :cond_7
    :goto_3
    if-eqz v4, :cond_8

    new-instance v12, Landroidx/slice/widget/RowContent;

    const/4 v13, -0x1

    invoke-direct {v12, v4, v13}, Landroidx/slice/widget/RowContent;-><init>(Landroidx/slice/SliceItem;I)V

    iput-object v12, v0, Landroidx/slice/widget/ListContent;->mSeeMoreContent:Landroidx/slice/widget/RowContent;

    :cond_8
    iget-object v1, v1, Landroidx/slice/Slice;->mItems:[Landroidx/slice/SliceItem;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    move v4, v6

    :goto_4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v12

    if-ge v4, v12, :cond_d

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/slice/SliceItem;

    iget-object v13, v12, Landroidx/slice/SliceItem;->mFormat:Ljava/lang/String;

    const-string/jumbo v14, "ttl"

    const-string v15, "last_updated"

    filled-new-array {v3, v9, v8, v14, v15}, [Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Landroidx/slice/SliceItem;->hasAnyHints([Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_c

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_9

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_c

    :cond_9
    iget-object v13, v0, Landroidx/slice/widget/ListContent;->mHeaderContent:Landroidx/slice/widget/RowContent;

    const-string v14, "list_item"

    if-nez v13, :cond_a

    iget-object v13, v12, Landroidx/slice/SliceItem;->mHints:[Ljava/lang/String;

    invoke-static {v13, v14}, Landroidx/slice/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_a

    new-instance v13, Landroidx/slice/widget/RowContent;

    invoke-direct {v13, v12, v6}, Landroidx/slice/widget/RowContent;-><init>(Landroidx/slice/SliceItem;I)V

    iput-object v13, v0, Landroidx/slice/widget/ListContent;->mHeaderContent:Landroidx/slice/widget/RowContent;

    iget-object v12, v0, Landroidx/slice/widget/ListContent;->mRowItems:Ljava/util/ArrayList;

    invoke-virtual {v12, v6, v13}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_5

    :cond_a
    iget-object v13, v12, Landroidx/slice/SliceItem;->mHints:[Ljava/lang/String;

    invoke-static {v13, v14}, Landroidx/slice/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_c

    iget-object v13, v12, Landroidx/slice/SliceItem;->mHints:[Ljava/lang/String;

    const-string v14, "horizontal"

    invoke-static {v13, v14}, Landroidx/slice/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_b

    iget-object v13, v0, Landroidx/slice/widget/ListContent;->mRowItems:Ljava/util/ArrayList;

    new-instance v14, Landroidx/slice/widget/GridContent;

    invoke-direct {v14, v12, v4}, Landroidx/slice/widget/GridContent;-><init>(Landroidx/slice/SliceItem;I)V

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_b
    iget-object v13, v0, Landroidx/slice/widget/ListContent;->mRowItems:Ljava/util/ArrayList;

    new-instance v14, Landroidx/slice/widget/RowContent;

    invoke-direct {v14, v12, v4}, Landroidx/slice/widget/RowContent;-><init>(Landroidx/slice/SliceItem;I)V

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_d
    iget-object v1, v0, Landroidx/slice/widget/ListContent;->mHeaderContent:Landroidx/slice/widget/RowContent;

    if-nez v1, :cond_e

    iget-object v1, v0, Landroidx/slice/widget/ListContent;->mRowItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v1, v10, :cond_e

    iget-object v1, v0, Landroidx/slice/widget/ListContent;->mRowItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/slice/widget/RowContent;

    iput-object v1, v0, Landroidx/slice/widget/ListContent;->mHeaderContent:Landroidx/slice/widget/RowContent;

    iput-boolean v10, v1, Landroidx/slice/widget/RowContent;->mIsHeader:Z

    :cond_e
    iget-object v1, v0, Landroidx/slice/widget/ListContent;->mRowItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_f

    iget-object v1, v0, Landroidx/slice/widget/ListContent;->mRowItems:Ljava/util/ArrayList;

    invoke-static {v1, v10}, Landroidx/appcompat/app/AlertController$$ExternalSyntheticOutline0;->m(Ljava/util/ArrayList;I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Landroidx/slice/widget/GridContent;

    if-eqz v1, :cond_f

    iget-object v1, v0, Landroidx/slice/widget/ListContent;->mRowItems:Ljava/util/ArrayList;

    invoke-static {v1, v10}, Landroidx/appcompat/app/AlertController$$ExternalSyntheticOutline0;->m(Ljava/util/ArrayList;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/slice/widget/GridContent;

    iput-boolean v10, v1, Landroidx/slice/widget/GridContent;->mIsLastIndex:Z

    :cond_f
    iget-object v1, v0, Landroidx/slice/widget/ListContent;->mHeaderContent:Landroidx/slice/widget/RowContent;

    if-eqz v1, :cond_10

    iget-object v1, v1, Landroidx/slice/widget/RowContent;->mPrimaryAction:Landroidx/slice/SliceItem;

    goto :goto_6

    :cond_10
    move-object v1, v7

    :goto_6
    if-nez v1, :cond_11

    const-string/jumbo v1, "title"

    filled-new-array {v5, v1}, [Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Landroidx/slice/widget/SliceContent;->mSliceItem:Landroidx/slice/SliceItem;

    invoke-static {v2, v11, v1, v7}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/SliceItem;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v1

    :cond_11
    if-nez v1, :cond_12

    iget-object v1, v0, Landroidx/slice/widget/SliceContent;->mSliceItem:Landroidx/slice/SliceItem;

    invoke-static {v1, v11, v7}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v1

    :cond_12
    if-eqz v1, :cond_13

    new-instance v7, Landroidx/slice/core/SliceActionImpl;

    invoke-direct {v7, v1}, Landroidx/slice/core/SliceActionImpl;-><init>(Landroidx/slice/SliceItem;)V

    :cond_13
    iput-object v7, v0, Landroidx/slice/widget/ListContent;->mPrimaryAction:Landroidx/slice/core/SliceActionImpl;

    return-void
.end method
