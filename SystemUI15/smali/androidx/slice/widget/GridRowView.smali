.class public Landroidx/slice/widget/GridRowView;
.super Landroidx/slice/widget/SliceChildView;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final mForeground:Landroid/view/View;

.field public mGridContent:Landroidx/slice/widget/GridContent;

.field public final mGutter:I

.field public final mIconSize:I

.field public final mLargeImageHeight:I

.field public final mLoc:[I

.field public mMaxCellUpdateScheduled:Z

.field public mMaxCells:I

.field public final mMaxCellsUpdater:Landroidx/slice/widget/GridRowView$2;

.field public mRowCount:I

.field public mRowIndex:I

.field public final mSmallImageMinWidth:I

.field public final mSmallImageSize:I

.field public final mTextPadding:I

.field public final mViewContainer:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/slice/widget/GridRowView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroidx/slice/widget/SliceChildView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x2

    new-array p1, p1, [I

    iput-object p1, p0, Landroidx/slice/widget/GridRowView;->mLoc:[I

    const/4 p1, -0x1

    iput p1, p0, Landroidx/slice/widget/GridRowView;->mMaxCells:I

    new-instance p2, Landroidx/slice/widget/GridRowView$2;

    invoke-direct {p2, p0}, Landroidx/slice/widget/GridRowView$2;-><init>(Landroidx/slice/widget/GridRowView;)V

    iput-object p2, p0, Landroidx/slice/widget/GridRowView;->mMaxCellsUpdater:Landroidx/slice/widget/GridRowView$2;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/slice/widget/GridRowView;->mViewContainer:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, p1, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    const v0, 0x7f070019

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroidx/slice/widget/GridRowView;->mIconSize:I

    const v0, 0x7f070028

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroidx/slice/widget/GridRowView;->mSmallImageSize:I

    const v0, 0x7f070011

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroidx/slice/widget/GridRowView;->mLargeImageHeight:I

    const v0, 0x7f070010

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroidx/slice/widget/GridRowView;->mSmallImageMinWidth:I

    const v0, 0x7f07000f

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroidx/slice/widget/GridRowView;->mGutter:I

    const v0, 0x7f070018

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Landroidx/slice/widget/GridRowView;->mTextPadding:I

    new-instance p2, Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Landroidx/slice/widget/GridRowView;->mForeground:Landroid/view/View;

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, p1, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public final addCell(Landroidx/slice/widget/GridContent$CellContent;II)V
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual/range {p0 .. p0}, Landroidx/slice/widget/SliceChildView;->getMode()I

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_0

    iget-object v4, v0, Landroidx/slice/widget/GridRowView;->mGridContent:Landroidx/slice/widget/GridContent;

    iget-object v4, v4, Landroidx/slice/widget/GridContent;->mFirstImage:Landroidx/core/graphics/drawable/IconCompat;

    if-eqz v4, :cond_0

    move v4, v6

    goto :goto_0

    :cond_0
    const/4 v4, 0x2

    :goto_0
    new-instance v7, Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v7, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object v8, v1, Landroidx/slice/widget/GridContent$CellContent;->mCellItems:Ljava/util/ArrayList;

    iget-object v9, v1, Landroidx/slice/widget/GridContent$CellContent;->mContentIntent:Landroidx/slice/SliceItem;

    iget-object v10, v1, Landroidx/slice/widget/GridContent$CellContent;->mPicker:Landroidx/slice/SliceItem;

    iget-object v11, v1, Landroidx/slice/widget/GridContent$CellContent;->mToggleItem:Landroidx/slice/SliceItem;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ne v12, v6, :cond_1

    move v12, v6

    goto :goto_1

    :cond_1
    const/4 v12, 0x0

    :goto_1
    const-string/jumbo v14, "title"

    const-string v15, "large"

    const-string/jumbo v5, "text"

    if-nez v12, :cond_6

    invoke-virtual/range {p0 .. p0}, Landroidx/slice/widget/SliceChildView;->getMode()I

    move-result v13

    if-ne v13, v6, :cond_6

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_2
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_3

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v6, v18

    check-cast v6, Landroidx/slice/SliceItem;

    move-object/from16 v18, v9

    iget-object v9, v6, Landroidx/slice/SliceItem;->mFormat:Ljava/lang/String;

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    move-object/from16 v9, v18

    const/4 v6, 0x1

    goto :goto_2

    :cond_3
    move-object/from16 v18, v9

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-le v9, v4, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/slice/SliceItem;

    move-object/from16 v17, v13

    filled-new-array {v14, v15}, [Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Landroidx/slice/SliceItem;->hasAnyHints([Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    :cond_4
    move-object/from16 v13, v17

    goto :goto_3

    :cond_5
    move-object/from16 v17, v13

    goto :goto_4

    :cond_6
    move-object/from16 v18, v9

    const/4 v13, 0x0

    :goto_4
    move-object/from16 v19, v11

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/16 v17, 0x0

    :goto_5
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v11

    move-object/from16 v20, v10

    if-ge v6, v11, :cond_20

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/slice/SliceItem;

    iget-object v10, v11, Landroidx/slice/SliceItem;->mFormat:Ljava/lang/String;

    move-object/from16 v22, v8

    invoke-virtual {v0, v3}, Landroidx/slice/widget/GridRowView;->determinePadding(Landroidx/slice/SliceItem;)I

    move-result v8

    if-ge v9, v4, :cond_11

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    move/from16 v24, v4

    const-string v4, "long"

    if-nez v23, :cond_8

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    goto :goto_7

    :cond_7
    :goto_6
    move-object/from16 v23, v5

    move-object/from16 v25, v13

    move-object/from16 v16, v14

    const/4 v4, 0x1

    goto/16 :goto_10

    :cond_8
    :goto_7
    if-eqz v13, :cond_9

    invoke-interface {v13, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_9

    :goto_8
    move-object/from16 v23, v5

    move/from16 v26, v9

    move-object/from16 v25, v13

    move-object/from16 v16, v14

    goto/16 :goto_1c

    :cond_9
    iget-object v10, v11, Landroidx/slice/SliceItem;->mFormat:Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_a

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_a

    goto :goto_8

    :cond_a
    filled-new-array {v15, v14}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v3}, Landroidx/slice/core/SliceQuery;->hasAnyHints(Landroidx/slice/SliceItem;[Ljava/lang/String;)Z

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v17

    move-object/from16 v23, v5

    invoke-static/range {v17 .. v17}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    if-eqz v3, :cond_b

    const v17, 0x7f0d001a

    :goto_9
    move-object/from16 v25, v13

    move-object/from16 v16, v14

    move/from16 v13, v17

    const/4 v14, 0x0

    goto :goto_a

    :cond_b
    const v17, 0x7f0d0016

    goto :goto_9

    :goto_a
    invoke-virtual {v5, v13, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iget-object v13, v0, Landroidx/slice/widget/SliceChildView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    if-eqz v13, :cond_f

    iget-object v14, v0, Landroidx/slice/widget/SliceChildView;->mRowStyle:Landroidx/slice/widget/RowStyle;

    if-eqz v14, :cond_f

    if-eqz v3, :cond_c

    iget v13, v13, Landroidx/slice/widget/SliceStyle;->mGridTitleSize:I

    :goto_b
    int-to-float v13, v13

    const/4 v14, 0x0

    goto :goto_c

    :cond_c
    iget v13, v13, Landroidx/slice/widget/SliceStyle;->mGridSubtitleSize:I

    goto :goto_b

    :goto_c
    invoke-virtual {v5, v14, v13}, Landroid/widget/TextView;->setTextSize(IF)V

    if-eqz v3, :cond_e

    iget-object v3, v0, Landroidx/slice/widget/SliceChildView;->mRowStyle:Landroidx/slice/widget/RowStyle;

    iget-object v13, v3, Landroidx/slice/widget/RowStyle;->mTitleColor:Ljava/lang/Integer;

    if-eqz v13, :cond_d

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_d

    :cond_d
    iget-object v3, v3, Landroidx/slice/widget/RowStyle;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    iget v3, v3, Landroidx/slice/widget/SliceStyle;->mTitleColor:I

    goto :goto_d

    :cond_e
    iget-object v3, v0, Landroidx/slice/widget/SliceChildView;->mRowStyle:Landroidx/slice/widget/RowStyle;

    invoke-virtual {v3}, Landroidx/slice/widget/RowStyle;->getSubtitleColor()I

    move-result v3

    :goto_d
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_f
    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v11}, Landroidx/slice/SliceItem;->getLong()J

    move-result-wide v13

    invoke-static {v3, v13, v14}, Landroidx/slice/widget/SliceViewUtil;->getTimestampString(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v3

    goto :goto_e

    :cond_10
    invoke-virtual {v11}, Landroidx/slice/SliceItem;->getSanitizedText()Ljava/lang/CharSequence;

    move-result-object v3

    :goto_e
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v7, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const/4 v3, 0x0

    invoke-virtual {v5, v3, v8, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    add-int/lit8 v9, v9, 0x1

    move-object v3, v11

    :goto_f
    const/16 v17, 0x1

    goto/16 :goto_1d

    :cond_11
    move/from16 v24, v4

    goto/16 :goto_6

    :goto_10
    if-ge v2, v4, :cond_1f

    iget-object v4, v11, Landroidx/slice/SliceItem;->mFormat:Ljava/lang/String;

    const-string v5, "image"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f

    iget-object v4, v1, Landroidx/slice/widget/GridContent$CellContent;->mOverlayItem:Landroidx/slice/SliceItem;

    iget v8, v0, Landroidx/slice/widget/SliceChildView;->mTintColor:I

    iget-object v10, v11, Landroidx/slice/SliceItem;->mFormat:Ljava/lang/String;

    iget-object v13, v0, Landroidx/slice/widget/SliceChildView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    if-eqz v13, :cond_12

    iget v13, v13, Landroidx/slice/widget/SliceStyle;->mImageCornerRadius:F

    const/4 v14, 0x0

    cmpl-float v13, v13, v14

    if-lez v13, :cond_12

    const/4 v13, 0x1

    goto :goto_11

    :cond_12
    const/4 v13, 0x0

    :goto_11
    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1f

    iget-object v5, v11, Landroidx/slice/SliceItem;->mObj:Ljava/lang/Object;

    check-cast v5, Landroidx/core/graphics/drawable/IconCompat;

    if-nez v5, :cond_13

    goto/16 :goto_1b

    :cond_13
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v5, v10}, Landroidx/core/graphics/drawable/IconCompat;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-nez v5, :cond_14

    goto/16 :goto_1b

    :cond_14
    new-instance v3, Landroid/widget/ImageView;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v3, v10}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    if-eqz v13, :cond_15

    new-instance v10, Landroidx/slice/CornerDrawable;

    iget-object v14, v0, Landroidx/slice/widget/SliceChildView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    iget v14, v14, Landroidx/slice/widget/SliceStyle;->mImageCornerRadius:F

    invoke-direct {v10, v5, v14}, Landroidx/slice/CornerDrawable;-><init>(Landroid/graphics/drawable/Drawable;F)V

    invoke-virtual {v3, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_12

    :cond_15
    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_12
    iget-object v5, v11, Landroidx/slice/SliceItem;->mHints:[Ljava/lang/String;

    const-string v10, "raw"

    invoke-static {v5, v10}, Landroidx/slice/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    const-string v10, "no_tint"

    if-eqz v5, :cond_16

    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v13, v0, Landroidx/slice/widget/GridRowView;->mGridContent:Landroidx/slice/widget/GridContent;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroidx/slice/widget/GridContent;->getFirstImageSize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v13

    iget v13, v13, Landroid/graphics/Point;->x:I

    iget-object v14, v0, Landroidx/slice/widget/GridRowView;->mGridContent:Landroidx/slice/widget/GridContent;

    move/from16 v26, v9

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v14, v9}, Landroidx/slice/widget/GridContent;->getFirstImageSize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v9

    iget v9, v9, Landroid/graphics/Point;->y:I

    invoke-direct {v5, v13, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    :goto_13
    const/4 v9, -0x1

    goto :goto_18

    :cond_16
    move/from16 v26, v9

    iget-object v5, v11, Landroidx/slice/SliceItem;->mHints:[Ljava/lang/String;

    invoke-static {v5, v15}, Landroidx/slice/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    if-eqz v13, :cond_17

    sget-object v5, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    goto :goto_14

    :cond_17
    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    :goto_14
    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    if-eqz v12, :cond_18

    const/4 v5, -0x1

    goto :goto_15

    :cond_18
    iget v5, v0, Landroidx/slice/widget/GridRowView;->mLargeImageHeight:I

    :goto_15
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v13, -0x1

    invoke-direct {v9, v13, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object v5, v9

    move v9, v13

    goto :goto_18

    :cond_19
    iget-object v5, v11, Landroidx/slice/SliceItem;->mHints:[Ljava/lang/String;

    invoke-static {v5, v10}, Landroidx/slice/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    const/4 v9, 0x1

    xor-int/2addr v5, v9

    if-nez v5, :cond_1a

    iget v9, v0, Landroidx/slice/widget/GridRowView;->mSmallImageSize:I

    goto :goto_16

    :cond_1a
    iget v9, v0, Landroidx/slice/widget/GridRowView;->mIconSize:I

    :goto_16
    if-eqz v5, :cond_1b

    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    goto :goto_17

    :cond_1b
    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    :goto_17
    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    goto :goto_13

    :goto_18
    if-eq v8, v9, :cond_1c

    iget-object v9, v11, Landroidx/slice/SliceItem;->mHints:[Ljava/lang/String;

    invoke-static {v9, v10}, Landroidx/slice/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1c

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setColorFilter(I)V

    :cond_1c
    if-eqz v4, :cond_1e

    iget-object v8, v0, Landroidx/slice/widget/GridRowView;->mViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v8

    iget v9, v0, Landroidx/slice/widget/GridRowView;->mMaxCells:I

    const/4 v10, 0x1

    sub-int/2addr v9, v10

    if-ne v8, v9, :cond_1d

    goto :goto_19

    :cond_1d
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    const v9, 0x7f0d000b

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v7, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout;

    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v13, -0x2

    invoke-direct {v9, v13, v13}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v3, v10, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    const v3, 0x7f0a0d1d

    invoke-virtual {v8, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, v4, Landroidx/slice/SliceItem;->mObj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v3, 0x7f0a0d33

    invoke-virtual {v8, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Landroidx/slice/CornerDrawable;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f080644

    invoke-virtual {v9, v10}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    iget-object v10, v0, Landroidx/slice/widget/SliceChildView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    iget v10, v10, Landroidx/slice/widget/SliceStyle;->mImageCornerRadius:F

    invoke-direct {v4, v9, v10}, Landroidx/slice/CornerDrawable;-><init>(Landroid/graphics/drawable/Drawable;F)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v7, v8, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1a

    :cond_1e
    :goto_19
    invoke-virtual {v7, v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_1a
    add-int/lit8 v2, v2, 0x1

    move-object v3, v11

    move/from16 v9, v26

    goto/16 :goto_f

    :cond_1f
    :goto_1b
    move/from16 v26, v9

    :goto_1c
    move/from16 v9, v26

    :goto_1d
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v14, v16

    move-object/from16 v10, v20

    move-object/from16 v8, v22

    move-object/from16 v5, v23

    move/from16 v4, v24

    move-object/from16 v13, v25

    goto/16 :goto_5

    :cond_20
    if-eqz v20, :cond_22

    move-object/from16 v2, v20

    iget-object v4, v2, Landroidx/slice/SliceItem;->mSubType:Ljava/lang/String;

    const-string v5, "date_picker"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_21

    invoke-virtual {v0, v3}, Landroidx/slice/widget/GridRowView;->determinePadding(Landroidx/slice/SliceItem;)I

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v7, v3, v4}, Landroidx/slice/widget/GridRowView;->addPickerItem(Landroidx/slice/SliceItem;Landroid/view/ViewGroup;IZ)Z

    move-result v2

    goto :goto_1e

    :cond_21
    iget-object v4, v2, Landroidx/slice/SliceItem;->mSubType:Ljava/lang/String;

    const-string/jumbo v5, "time_picker"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_22

    invoke-virtual {v0, v3}, Landroidx/slice/widget/GridRowView;->determinePadding(Landroidx/slice/SliceItem;)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v7, v3, v4}, Landroidx/slice/widget/GridRowView;->addPickerItem(Landroidx/slice/SliceItem;Landroid/view/ViewGroup;IZ)Z

    move-result v2

    goto :goto_1e

    :cond_22
    move/from16 v2, v17

    :goto_1e
    if-eqz v19, :cond_23

    new-instance v2, Landroidx/slice/widget/SliceActionView;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, v0, Landroidx/slice/widget/SliceChildView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    iget-object v5, v0, Landroidx/slice/widget/SliceChildView;->mRowStyle:Landroidx/slice/widget/RowStyle;

    invoke-direct {v2, v3, v4, v5}, Landroidx/slice/widget/SliceActionView;-><init>(Landroid/content/Context;Landroidx/slice/widget/SliceStyle;Landroidx/slice/widget/RowStyle;)V

    invoke-virtual {v7, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object v8, v2

    const/4 v2, 0x1

    goto :goto_1f

    :cond_23
    const/4 v8, 0x0

    :goto_1f
    if-eqz v2, :cond_28

    iget-object v1, v1, Landroidx/slice/widget/GridContent$CellContent;->mContentDescr:Landroidx/slice/SliceItem;

    if-eqz v1, :cond_24

    iget-object v1, v1, Landroidx/slice/SliceItem;->mObj:Ljava/lang/Object;

    move-object v13, v1

    check-cast v13, Ljava/lang/CharSequence;

    goto :goto_20

    :cond_24
    const/4 v13, 0x0

    :goto_20
    if-eqz v13, :cond_25

    invoke-virtual {v7, v13}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_25
    iget-object v1, v0, Landroidx/slice/widget/GridRowView;->mViewContainer:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v5, -0x2

    invoke-direct {v2, v4, v5, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v7, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move/from16 v1, p3

    add-int/lit8 v2, v1, -0x1

    move/from16 v3, p2

    if-eq v3, v2, :cond_26

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v4, v0, Landroidx/slice/widget/GridRowView;->mGutter:I

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    invoke-virtual {v7, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_26
    if-eqz v18, :cond_27

    new-instance v2, Landroidx/slice/widget/EventInfo;

    invoke-virtual/range {p0 .. p0}, Landroidx/slice/widget/SliceChildView;->getMode()I

    move-result v4

    iget v5, v0, Landroidx/slice/widget/GridRowView;->mRowIndex:I

    const/4 v6, 0x1

    invoke-direct {v2, v4, v6, v6, v5}, Landroidx/slice/widget/EventInfo;-><init>(IIII)V

    const/4 v4, 0x2

    iput v4, v2, Landroidx/slice/widget/EventInfo;->actionPosition:I

    iput v3, v2, Landroidx/slice/widget/EventInfo;->actionIndex:I

    iput v1, v2, Landroidx/slice/widget/EventInfo;->actionCount:I

    new-instance v4, Landroid/util/Pair;

    move-object/from16 v5, v18

    invoke-direct {v4, v5, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v7, v4}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v7, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const v4, 0x101045c

    invoke-static {v4, v2}, Landroidx/slice/widget/SliceViewUtil;->getDrawable(ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v7, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 v2, 0x1

    invoke-virtual {v7, v2}, Landroid/view/View;->setClickable(Z)V

    :cond_27
    if-eqz v19, :cond_28

    new-instance v2, Landroidx/slice/widget/EventInfo;

    invoke-virtual/range {p0 .. p0}, Landroidx/slice/widget/SliceChildView;->getMode()I

    move-result v4

    const/4 v5, 0x3

    iget v6, v0, Landroidx/slice/widget/GridRowView;->mRowIndex:I

    const/4 v7, 0x0

    invoke-direct {v2, v4, v7, v5, v6}, Landroidx/slice/widget/EventInfo;-><init>(IIII)V

    new-instance v9, Landroidx/slice/core/SliceActionImpl;

    move-object/from16 v4, v19

    invoke-direct {v9, v4}, Landroidx/slice/core/SliceActionImpl;-><init>(Landroidx/slice/SliceItem;)V

    iget-object v11, v0, Landroidx/slice/widget/SliceChildView;->mObserver:Lcom/android/systemui/volume/VolumePanelDialog$$ExternalSyntheticLambda5;

    iget v12, v0, Landroidx/slice/widget/SliceChildView;->mTintColor:I

    iget-object v13, v0, Landroidx/slice/widget/SliceChildView;->mLoadingListener:Landroidx/slice/widget/SliceAdapter;

    move-object v10, v2

    invoke-virtual/range {v8 .. v13}, Landroidx/slice/widget/SliceActionView;->setAction(Landroidx/slice/core/SliceActionImpl;Landroidx/slice/widget/EventInfo;Lcom/android/systemui/volume/VolumePanelDialog$$ExternalSyntheticLambda5;ILandroidx/slice/widget/SliceAdapter;)V

    const/4 v0, 0x2

    iput v0, v2, Landroidx/slice/widget/EventInfo;->actionPosition:I

    iput v3, v2, Landroidx/slice/widget/EventInfo;->actionIndex:I

    iput v1, v2, Landroidx/slice/widget/EventInfo;->actionCount:I

    :cond_28
    return-void
.end method

.method public final addPickerItem(Landroidx/slice/SliceItem;Landroid/view/ViewGroup;IZ)Z
    .locals 11

    const-string v0, "long"

    const-string v1, "millis"

    invoke-static {p1, v0, v1}, Landroidx/slice/core/SliceQuery;->findSubtype(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Landroidx/slice/SliceItem;->getLong()J

    move-result-wide v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v4, 0x7f0d001a

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v4, p0, Landroidx/slice/widget/SliceChildView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    if-eqz v4, :cond_1

    iget v4, v4, Landroidx/slice/widget/SliceStyle;->mGridTitleSize:I

    int-to-float v4, v4

    invoke-virtual {v0, v1, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v4, p0, Landroidx/slice/widget/SliceChildView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    iget v4, v4, Landroidx/slice/widget/SliceStyle;->mTitleColor:I

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7, v2, v3}, Ljava/util/Date;-><init>(J)V

    const-string/jumbo v2, "text"

    const-string/jumbo v3, "title"

    invoke-static {p1, v2, v3}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, v2, Landroidx/slice/SliceItem;->mObj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    iget v10, p0, Landroidx/slice/widget/GridRowView;->mRowIndex:I

    new-instance v2, Landroidx/slice/widget/GridRowView$1;

    move-object v5, v2

    move-object v6, p0

    move v8, p4

    move-object v9, p1

    invoke-direct/range {v5 .. v10}, Landroidx/slice/widget/GridRowView$1;-><init>(Landroidx/slice/widget/GridRowView;Ljava/util/Date;ZLandroidx/slice/SliceItem;I)V

    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p1, 0x1

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->setClickable(Z)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    const p4, 0x101045c

    invoke-static {p4, p0}, Landroidx/slice/widget/SliceViewUtil;->getDrawable(ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v1, p3, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    return p1
.end method

.method public final determinePadding(Landroidx/slice/SliceItem;)I
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p1, Landroidx/slice/SliceItem;->mFormat:Ljava/lang/String;

    const-string v2, "image"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget p0, p0, Landroidx/slice/widget/GridRowView;->mTextPadding:I

    return p0

    :cond_1
    iget-object v1, p1, Landroidx/slice/SliceItem;->mFormat:Ljava/lang/String;

    const-string/jumbo v2, "text"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object p1, p1, Landroidx/slice/SliceItem;->mFormat:Ljava/lang/String;

    const-string v1, "long"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    return v0

    :cond_3
    :goto_0
    iget-object p0, p0, Landroidx/slice/widget/SliceChildView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    if-eqz p0, :cond_4

    iget v0, p0, Landroidx/slice/widget/SliceStyle;->mVerticalGridTextPadding:I

    :cond_4
    return v0
.end method

.method public final getExtraBottomPadding()I
    .locals 4

    iget-object v0, p0, Landroidx/slice/widget/GridRowView;->mGridContent:Landroidx/slice/widget/GridContent;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-boolean v0, v0, Landroidx/slice/widget/GridContent;->mAllImages:Z

    if-eqz v0, :cond_1

    iget v0, p0, Landroidx/slice/widget/GridRowView;->mRowIndex:I

    iget v2, p0, Landroidx/slice/widget/GridRowView;->mRowCount:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-eq v0, v2, :cond_0

    invoke-virtual {p0}, Landroidx/slice/widget/SliceChildView;->getMode()I

    move-result v0

    if-ne v0, v3, :cond_1

    :cond_0
    iget-object p0, p0, Landroidx/slice/widget/SliceChildView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    if-eqz p0, :cond_1

    iget v1, p0, Landroidx/slice/widget/SliceStyle;->mGridBottomPadding:I

    :cond_1
    return v1
.end method

.method public final getMaxCells()I
    .locals 3

    iget-object v0, p0, Landroidx/slice/widget/GridRowView;->mGridContent:Landroidx/slice/widget/GridContent;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroidx/slice/widget/GridContent;->isValid()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Landroidx/slice/widget/GridRowView;->mGridContent:Landroidx/slice/widget/GridContent;

    iget-object v0, v0, Landroidx/slice/widget/GridContent;->mGridContent:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_3

    iget-object v0, p0, Landroidx/slice/widget/GridRowView;->mGridContent:Landroidx/slice/widget/GridContent;

    iget v1, v0, Landroidx/slice/widget/GridContent;->mLargestImageMode:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    iget v0, p0, Landroidx/slice/widget/GridRowView;->mSmallImageMinWidth:I

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/slice/widget/GridContent;->getFirstImageSize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    goto :goto_0

    :cond_2
    iget v0, p0, Landroidx/slice/widget/GridRowView;->mLargeImageHeight:I

    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    iget p0, p0, Landroidx/slice/widget/GridRowView;->mGutter:I

    add-int/2addr v0, p0

    div-int/2addr v1, v0

    :cond_3
    return v1

    :cond_4
    :goto_1
    const/4 p0, -0x1

    return p0
.end method

.method public final makeEntireGridClickable(Z)V
    .locals 3

    iget-object v0, p0, Landroidx/slice/widget/GridRowView;->mViewContainer:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    move-object v2, p0

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Landroidx/slice/widget/GridRowView;->mViewContainer:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_1

    move-object v2, p0

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Landroidx/slice/widget/GridRowView;->mForeground:Landroid/view/View;

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x101030e

    invoke-static {v2, v1}, Landroidx/slice/widget/SliceViewUtil;->getDrawable(ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p0, p0, Landroidx/slice/widget/GridRowView;->mViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Pair;

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroidx/slice/SliceItem;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Landroidx/slice/widget/EventInfo;

    if-eqz v0, :cond_0

    const-string v1, "action"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0, v2, v2}, Landroidx/slice/SliceItem;->fireActionInternal(Landroid/content/Context;Landroid/content/Intent;)V

    iget-object p0, p0, Landroidx/slice/widget/SliceChildView;->mObserver:Lcom/android/systemui/volume/VolumePanelDialog$$ExternalSyntheticLambda5;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/VolumePanelDialog$$ExternalSyntheticLambda5;->onSliceAction(Landroidx/slice/widget/EventInfo;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "GridRowView"

    const-string v0, "PendingIntent for slice cannot be sent"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public final onMeasure(II)V
    .locals 2

    iget-object p2, p0, Landroidx/slice/widget/GridRowView;->mGridContent:Landroidx/slice/widget/GridContent;

    iget-object v0, p0, Landroidx/slice/widget/SliceChildView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    iget-object v1, p0, Landroidx/slice/widget/SliceChildView;->mViewPolicy:Landroidx/slice/widget/SliceViewPolicy;

    invoke-virtual {p2, v0, v1}, Landroidx/slice/widget/GridContent;->getHeight(Landroidx/slice/widget/SliceStyle;Landroidx/slice/widget/SliceViewPolicy;)I

    move-result p2

    iget v0, p0, Landroidx/slice/widget/SliceChildView;->mInsetTop:I

    add-int/2addr p2, v0

    iget v0, p0, Landroidx/slice/widget/SliceChildView;->mInsetBottom:I

    add-int/2addr p2, v0

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iget-object v1, p0, Landroidx/slice/widget/GridRowView;->mViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput p2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-super {p0, p1, v0}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    iget-object p1, p0, Landroidx/slice/widget/GridRowView;->mForeground:Landroid/view/View;

    iget-object v0, p0, Landroidx/slice/widget/GridRowView;->mLoc:[I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iget-object v0, p0, Landroidx/slice/widget/GridRowView;->mLoc:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    int-to-float v0, v0

    sub-float/2addr p1, v0

    float-to-int p1, p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iget-object v2, p0, Landroidx/slice/widget/GridRowView;->mLoc:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    int-to-float v2, v2

    sub-float/2addr v0, v2

    float-to-int v0, v0

    iget-object v2, p0, Landroidx/slice/widget/GridRowView;->mForeground:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    int-to-float p1, p1

    int-to-float v0, v0

    invoke-virtual {v2, p1, v0}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Landroidx/slice/widget/GridRowView;->mForeground:Landroid/view/View;

    invoke-virtual {p0, v3}, Landroid/view/View;->setPressed(Z)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x3

    if-eq p1, p2, :cond_1

    if-eq p1, v3, :cond_1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_2

    :cond_1
    iget-object p0, p0, Landroidx/slice/widget/GridRowView;->mForeground:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setPressed(Z)V

    :cond_2
    :goto_0
    return v1
.end method

.method public final populateViews()V
    .locals 15

    iget-object v0, p0, Landroidx/slice/widget/GridRowView;->mGridContent:Landroidx/slice/widget/GridContent;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Landroidx/slice/widget/GridContent;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_8

    :cond_0
    invoke-virtual {p0}, Landroidx/slice/widget/GridRowView;->scheduleMaxCellsUpdate()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Landroidx/slice/widget/GridRowView;->mGridContent:Landroidx/slice/widget/GridContent;

    invoke-virtual {v0}, Landroidx/slice/widget/SliceContent;->getLayoutDir()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Landroidx/slice/widget/GridRowView;->mGridContent:Landroidx/slice/widget/GridContent;

    invoke-virtual {v0}, Landroidx/slice/widget/SliceContent;->getLayoutDir()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setLayoutDirection(I)V

    :cond_2
    iget-object v0, p0, Landroidx/slice/widget/GridRowView;->mGridContent:Landroidx/slice/widget/GridContent;

    iget-object v0, v0, Landroidx/slice/widget/GridContent;->mPrimaryAction:Landroidx/slice/SliceItem;

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    new-instance v0, Landroidx/slice/widget/EventInfo;

    invoke-virtual {p0}, Landroidx/slice/widget/SliceChildView;->getMode()I

    move-result v3

    const/4 v4, 0x3

    iget v5, p0, Landroidx/slice/widget/GridRowView;->mRowIndex:I

    invoke-direct {v0, v3, v4, v2, v5}, Landroidx/slice/widget/EventInfo;-><init>(IIII)V

    new-instance v3, Landroid/util/Pair;

    iget-object v4, p0, Landroidx/slice/widget/GridRowView;->mGridContent:Landroidx/slice/widget/GridContent;

    iget-object v4, v4, Landroidx/slice/widget/GridContent;->mPrimaryAction:Landroidx/slice/SliceItem;

    invoke-direct {v3, v4, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Landroidx/slice/widget/GridRowView;->mViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p0, v2}, Landroidx/slice/widget/GridRowView;->makeEntireGridClickable(Z)V

    :cond_3
    iget-object v0, p0, Landroidx/slice/widget/GridRowView;->mGridContent:Landroidx/slice/widget/GridContent;

    iget-object v0, v0, Landroidx/slice/widget/SliceContent;->mContentDescr:Landroidx/slice/SliceItem;

    if-eqz v0, :cond_4

    iget-object v0, v0, Landroidx/slice/SliceItem;->mObj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_5

    iget-object v3, p0, Landroidx/slice/widget/GridRowView;->mViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_5
    iget-object v0, p0, Landroidx/slice/widget/GridRowView;->mGridContent:Landroidx/slice/widget/GridContent;

    iget-object v3, v0, Landroidx/slice/widget/GridContent;->mGridContent:Ljava/util/ArrayList;

    iget v0, v0, Landroidx/slice/widget/GridContent;->mLargestImageMode:I

    const/4 v4, 0x4

    const/4 v5, 0x2

    if-eq v0, v5, :cond_7

    if-ne v0, v4, :cond_6

    goto :goto_1

    :cond_6
    iget-object v0, p0, Landroidx/slice/widget/GridRowView;->mViewContainer:Landroid/widget/LinearLayout;

    const/16 v6, 0x10

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    goto :goto_2

    :cond_7
    :goto_1
    iget-object v0, p0, Landroidx/slice/widget/GridRowView;->mViewContainer:Landroid/widget/LinearLayout;

    const/16 v6, 0x30

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    :goto_2
    iget v0, p0, Landroidx/slice/widget/GridRowView;->mMaxCells:I

    iget-object v6, p0, Landroidx/slice/widget/GridRowView;->mGridContent:Landroidx/slice/widget/GridContent;

    iget-object v6, v6, Landroidx/slice/widget/GridContent;->mSeeMoreItem:Landroidx/slice/SliceItem;

    const/4 v7, 0x0

    if-eqz v6, :cond_8

    move v6, v2

    goto :goto_3

    :cond_8
    move v6, v7

    :goto_3
    move v8, v7

    :goto_4
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_f

    iget-object v9, p0, Landroidx/slice/widget/GridRowView;->mViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v9

    if-lt v9, v0, :cond_e

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v0

    if-eqz v6, :cond_f

    iget-object v0, p0, Landroidx/slice/widget/GridRowView;->mViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v6

    sub-int/2addr v6, v2

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v6, p0, Landroidx/slice/widget/GridRowView;->mViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    iget-object v6, p0, Landroidx/slice/widget/GridRowView;->mGridContent:Landroidx/slice/widget/GridContent;

    iget-object v6, v6, Landroidx/slice/widget/GridContent;->mSeeMoreItem:Landroidx/slice/SliceItem;

    iget-object v8, p0, Landroidx/slice/widget/GridRowView;->mViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v8

    iget v9, p0, Landroidx/slice/widget/GridRowView;->mMaxCells:I

    iget-object v10, v6, Landroidx/slice/SliceItem;->mFormat:Ljava/lang/String;

    const-string v11, "slice"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_9

    iget-object v10, v6, Landroidx/slice/SliceItem;->mFormat:Ljava/lang/String;

    const-string v11, "action"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    :cond_9
    invoke-virtual {v6}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object v10

    iget-object v10, v10, Landroidx/slice/Slice;->mItems:[Landroidx/slice/SliceItem;

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_a

    new-instance v0, Landroidx/slice/widget/GridContent$CellContent;

    invoke-direct {v0, v6}, Landroidx/slice/widget/GridContent$CellContent;-><init>(Landroidx/slice/SliceItem;)V

    invoke-virtual {p0, v0, v8, v9}, Landroidx/slice/widget/GridRowView;->addCell(Landroidx/slice/widget/GridContent$CellContent;II)V

    goto/16 :goto_7

    :cond_a
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v10

    iget-object v11, p0, Landroidx/slice/widget/GridRowView;->mGridContent:Landroidx/slice/widget/GridContent;

    iget-boolean v11, v11, Landroidx/slice/widget/GridContent;->mAllImages:Z

    const v12, 0x7f0a0d20

    if-eqz v11, :cond_b

    iget-object v11, p0, Landroidx/slice/widget/GridRowView;->mViewContainer:Landroid/widget/LinearLayout;

    const v13, 0x7f0d000a

    invoke-virtual {v10, v13, v11, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/FrameLayout;

    new-instance v11, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v11, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v10, v0, v7, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v10, v12}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v11, 0x7f0a08a1

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v11

    new-instance v12, Landroidx/slice/CornerDrawable;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v13

    const v14, 0x1010030

    invoke-static {v14, v13}, Landroidx/slice/widget/SliceViewUtil;->getDrawable(ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    iget-object v14, p0, Landroidx/slice/widget/SliceChildView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    iget v14, v14, Landroidx/slice/widget/SliceStyle;->mImageCornerRadius:F

    invoke-direct {v12, v13, v14}, Landroidx/slice/CornerDrawable;-><init>(Landroid/graphics/drawable/Drawable;F)V

    invoke-virtual {v11, v12}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_6

    :cond_b
    iget-object v0, p0, Landroidx/slice/widget/GridRowView;->mViewContainer:Landroid/widget/LinearLayout;

    const v11, 0x7f0d0009

    invoke-virtual {v10, v11, v0, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/widget/LinearLayout;

    invoke-virtual {v10, v12}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v11, 0x7f0a0d1f

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iget-object v12, p0, Landroidx/slice/widget/SliceChildView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    if-eqz v12, :cond_d

    iget-object v13, p0, Landroidx/slice/widget/SliceChildView;->mRowStyle:Landroidx/slice/widget/RowStyle;

    if-eqz v13, :cond_d

    iget v12, v12, Landroidx/slice/widget/SliceStyle;->mGridTitleSize:I

    int-to-float v12, v12

    invoke-virtual {v11, v7, v12}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v12, p0, Landroidx/slice/widget/SliceChildView;->mRowStyle:Landroidx/slice/widget/RowStyle;

    iget-object v13, v12, Landroidx/slice/widget/RowStyle;->mTitleColor:Ljava/lang/Integer;

    if-eqz v13, :cond_c

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v12

    goto :goto_5

    :cond_c
    iget-object v12, v12, Landroidx/slice/widget/RowStyle;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    iget v12, v12, Landroidx/slice/widget/SliceStyle;->mTitleColor:I

    :goto_5
    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_d
    :goto_6
    iget-object v11, p0, Landroidx/slice/widget/GridRowView;->mViewContainer:Landroid/widget/LinearLayout;

    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-direct {v12, v7, v1, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v11, v10, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const v7, 0x7f130024

    invoke-virtual {v1, v7, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Landroidx/slice/widget/EventInfo;

    invoke-virtual {p0}, Landroidx/slice/widget/SliceChildView;->getMode()I

    move-result v1

    iget v3, p0, Landroidx/slice/widget/GridRowView;->mRowIndex:I

    invoke-direct {v0, v1, v4, v2, v3}, Landroidx/slice/widget/EventInfo;-><init>(IIII)V

    iput v5, v0, Landroidx/slice/widget/EventInfo;->actionPosition:I

    iput v8, v0, Landroidx/slice/widget/EventInfo;->actionIndex:I

    iput v9, v0, Landroidx/slice/widget/EventInfo;->actionCount:I

    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, v6, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v10, v1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v10, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    const v0, 0x101045c

    invoke-static {v0, p0}, Landroidx/slice/widget/SliceViewUtil;->getDrawable(ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v10, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v10, v2}, Landroid/view/View;->setClickable(Z)V

    goto :goto_7

    :cond_e
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/slice/widget/GridContent$CellContent;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-static {v10, v0}, Ljava/lang/Math;->min(II)I

    move-result v10

    invoke-virtual {p0, v9, v8, v10}, Landroidx/slice/widget/GridRowView;->addCell(Landroidx/slice/widget/GridContent$CellContent;II)V

    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_4

    :cond_f
    :goto_7
    return-void

    :cond_10
    :goto_8
    invoke-virtual {p0}, Landroidx/slice/widget/GridRowView;->resetView()V

    return-void
.end method

.method public final resetView()V
    .locals 3

    iget-boolean v0, p0, Landroidx/slice/widget/GridRowView;->mMaxCellUpdateScheduled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Landroidx/slice/widget/GridRowView;->mMaxCellUpdateScheduled:Z

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v2, p0, Landroidx/slice/widget/GridRowView;->mMaxCellsUpdater:Landroidx/slice/widget/GridRowView$2;

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_0
    iget-object v0, p0, Landroidx/slice/widget/GridRowView;->mViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setLayoutDirection(I)V

    invoke-virtual {p0, v1}, Landroidx/slice/widget/GridRowView;->makeEntireGridClickable(Z)V

    return-void
.end method

.method public final scheduleMaxCellsUpdate()Z
    .locals 2

    iget-object v0, p0, Landroidx/slice/widget/GridRowView;->mGridContent:Landroidx/slice/widget/GridContent;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/slice/widget/GridContent;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    if-nez v0, :cond_1

    iput-boolean v1, p0, Landroidx/slice/widget/GridRowView;->mMaxCellUpdateScheduled:Z

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object p0, p0, Landroidx/slice/widget/GridRowView;->mMaxCellsUpdater:Landroidx/slice/widget/GridRowView$2;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return v1

    :cond_1
    invoke-virtual {p0}, Landroidx/slice/widget/GridRowView;->getMaxCells()I

    move-result v0

    iput v0, p0, Landroidx/slice/widget/GridRowView;->mMaxCells:I

    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    return v1
.end method

.method public final setInsets(IIII)V
    .locals 3

    invoke-super {p0, p1, p2, p3, p4}, Landroidx/slice/widget/SliceChildView;->setInsets(IIII)V

    iget-object v0, p0, Landroidx/slice/widget/GridRowView;->mViewContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Landroidx/slice/widget/GridRowView;->mGridContent:Landroidx/slice/widget/GridContent;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-boolean v1, v1, Landroidx/slice/widget/GridContent;->mAllImages:Z

    if-eqz v1, :cond_0

    iget v1, p0, Landroidx/slice/widget/GridRowView;->mRowIndex:I

    if-nez v1, :cond_0

    iget-object v1, p0, Landroidx/slice/widget/SliceChildView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    if-eqz v1, :cond_0

    iget v2, v1, Landroidx/slice/widget/SliceStyle;->mGridTopPadding:I

    :cond_0
    add-int/2addr v2, p2

    invoke-virtual {p0}, Landroidx/slice/widget/GridRowView;->getExtraBottomPadding()I

    move-result p0

    add-int/2addr p0, p4

    invoke-virtual {v0, p1, v2, p3, p0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    return-void
.end method

.method public final setSliceItem(Landroidx/slice/widget/SliceContent;ZIILcom/android/systemui/volume/VolumePanelDialog$$ExternalSyntheticLambda5;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/slice/widget/GridRowView;->resetView()V

    iput-object p5, p0, Landroidx/slice/widget/SliceChildView;->mObserver:Lcom/android/systemui/volume/VolumePanelDialog$$ExternalSyntheticLambda5;

    iput p3, p0, Landroidx/slice/widget/GridRowView;->mRowIndex:I

    iput p4, p0, Landroidx/slice/widget/GridRowView;->mRowCount:I

    check-cast p1, Landroidx/slice/widget/GridContent;

    iput-object p1, p0, Landroidx/slice/widget/GridRowView;->mGridContent:Landroidx/slice/widget/GridContent;

    invoke-virtual {p0}, Landroidx/slice/widget/GridRowView;->scheduleMaxCellsUpdate()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroidx/slice/widget/GridRowView;->populateViews()V

    :cond_0
    iget-object p1, p0, Landroidx/slice/widget/GridRowView;->mViewContainer:Landroid/widget/LinearLayout;

    iget p2, p0, Landroidx/slice/widget/SliceChildView;->mInsetStart:I

    iget p3, p0, Landroidx/slice/widget/SliceChildView;->mInsetTop:I

    iget-object p4, p0, Landroidx/slice/widget/GridRowView;->mGridContent:Landroidx/slice/widget/GridContent;

    const/4 p5, 0x0

    if-eqz p4, :cond_1

    iget-boolean p4, p4, Landroidx/slice/widget/GridContent;->mAllImages:Z

    if-eqz p4, :cond_1

    iget p4, p0, Landroidx/slice/widget/GridRowView;->mRowIndex:I

    if-nez p4, :cond_1

    iget-object p4, p0, Landroidx/slice/widget/SliceChildView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    if-eqz p4, :cond_1

    iget p5, p4, Landroidx/slice/widget/SliceStyle;->mGridTopPadding:I

    :cond_1
    add-int/2addr p5, p3

    iget p3, p0, Landroidx/slice/widget/SliceChildView;->mInsetEnd:I

    iget p4, p0, Landroidx/slice/widget/SliceChildView;->mInsetBottom:I

    invoke-virtual {p0}, Landroidx/slice/widget/GridRowView;->getExtraBottomPadding()I

    move-result p0

    add-int/2addr p0, p4

    invoke-virtual {p1, p2, p5, p3, p0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    return-void
.end method

.method public final setTint(I)V
    .locals 0

    iput p1, p0, Landroidx/slice/widget/SliceChildView;->mTintColor:I

    iget-object p1, p0, Landroidx/slice/widget/GridRowView;->mGridContent:Landroidx/slice/widget/GridContent;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/slice/widget/GridRowView;->resetView()V

    invoke-virtual {p0}, Landroidx/slice/widget/GridRowView;->populateViews()V

    :cond_0
    return-void
.end method
