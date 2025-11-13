.class public Landroid/view/NotificationTopLineView;
.super Landroid/view/ViewGroup;
.source "NotificationTopLineView.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/NotificationTopLineView$OverflowAdjuster;,
        Landroid/view/NotificationTopLineView$HeaderTouchListener;
    }
.end annotation


# instance fields
.field private blacklist mAppName:Landroid/view/View;

.field private final blacklist mChildHideWidth:I

.field private final blacklist mChildMinWidth:I

.field private blacklist mFeedbackIcon:Landroid/view/View;

.field private blacklist mFeedbackListener:Landroid/view/View$OnClickListener;

.field private final blacklist mGravityY:I

.field private blacklist mHeaderText:Landroid/view/View;

.field private blacklist mHeaderTextDivider:Landroid/view/View;

.field private blacklist mHeaderTextMarginEnd:I

.field private blacklist mMaxAscent:I

.field private blacklist mMaxDescent:I

.field private final blacklist mOverflowAdjuster:Landroid/view/NotificationTopLineView$OverflowAdjuster;

.field private blacklist mSecondaryHeaderText:Landroid/view/View;

.field private blacklist mSecondaryHeaderTextDivider:Landroid/view/View;

.field private blacklist mTitle:Landroid/view/View;

.field private blacklist mTouchListener:Landroid/view/NotificationTopLineView$HeaderTouchListener;

.field private blacklist mViewsToDisappear:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmChildHideWidth(Landroid/view/NotificationTopLineView;)I
    .locals 0

    iget p0, p0, Landroid/view/NotificationTopLineView;->mChildHideWidth:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFeedbackIcon(Landroid/view/NotificationTopLineView;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Landroid/view/NotificationTopLineView;->mFeedbackIcon:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmViewsToDisappear(Landroid/view/NotificationTopLineView;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Landroid/view/NotificationTopLineView;->mViewsToDisappear:Ljava/util/Set;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetFirstChildNotGone(Landroid/view/NotificationTopLineView;)Landroid/view/View;
    .locals 0

    invoke-direct {p0}, Landroid/view/NotificationTopLineView;->getFirstChildNotGone()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/view/NotificationTopLineView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/view/NotificationTopLineView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/view/NotificationTopLineView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 6

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance v0, Landroid/view/NotificationTopLineView$OverflowAdjuster;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/NotificationTopLineView$OverflowAdjuster;-><init>(Landroid/view/NotificationTopLineView;Landroid/view/NotificationTopLineView$OverflowAdjuster-IA;)V

    iput-object v0, p0, Landroid/view/NotificationTopLineView;->mOverflowAdjuster:Landroid/view/NotificationTopLineView$OverflowAdjuster;

    new-instance v0, Landroid/view/NotificationTopLineView$HeaderTouchListener;

    invoke-direct {v0, p0}, Landroid/view/NotificationTopLineView$HeaderTouchListener;-><init>(Landroid/view/NotificationTopLineView;)V

    iput-object v0, p0, Landroid/view/NotificationTopLineView;->mTouchListener:Landroid/view/NotificationTopLineView$HeaderTouchListener;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/view/NotificationTopLineView;->mViewsToDisappear:Ljava/util/Set;

    invoke-virtual {p0}, Landroid/view/NotificationTopLineView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105030d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Landroid/view/NotificationTopLineView;->mChildMinWidth:I

    const v1, 0x105030c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Landroid/view/NotificationTopLineView;->mChildHideWidth:I

    const v1, 0x10100af

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    and-int/lit8 v4, v3, 0x50

    const/16 v5, 0x50

    if-ne v4, v5, :cond_0

    iput v5, p0, Landroid/view/NotificationTopLineView;->mGravityY:I

    goto :goto_0

    :cond_0
    and-int/lit8 v4, v3, 0x30

    const/16 v5, 0x30

    if-ne v4, v5, :cond_1

    iput v5, p0, Landroid/view/NotificationTopLineView;->mGravityY:I

    goto :goto_0

    :cond_1
    const/16 v4, 0x10

    iput v4, p0, Landroid/view/NotificationTopLineView;->mGravityY:I

    :goto_0
    return-void
.end method

.method private blacklist getFirstChildNotGone()Landroid/view/View;
    .locals 4

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/NotificationTopLineView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Landroid/view/NotificationTopLineView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method private blacklist updateTouchListener()V
    .locals 1

    iget-object v0, p0, Landroid/view/NotificationTopLineView;->mFeedbackListener:Landroid/view/View$OnClickListener;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/NotificationTopLineView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void

    :cond_0
    iget-object v0, p0, Landroid/view/NotificationTopLineView;->mTouchListener:Landroid/view/NotificationTopLineView$HeaderTouchListener;

    invoke-virtual {p0, v0}, Landroid/view/NotificationTopLineView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Landroid/view/NotificationTopLineView;->mTouchListener:Landroid/view/NotificationTopLineView$HeaderTouchListener;

    invoke-virtual {v0}, Landroid/view/NotificationTopLineView$HeaderTouchListener;->bindTouchRects()V

    return-void
.end method


# virtual methods
.method public whitelist generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Landroid/view/NotificationTopLineView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public blacklist getHeaderTextMarginEnd()I
    .locals 1

    iget v0, p0, Landroid/view/NotificationTopLineView;->mHeaderTextMarginEnd:I

    return v0
.end method

.method public whitelist hasOverlappingRendering()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isInTouchRect(FF)Z
    .locals 1

    iget-object v0, p0, Landroid/view/NotificationTopLineView;->mFeedbackListener:Landroid/view/View$OnClickListener;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Landroid/view/NotificationTopLineView;->mTouchListener:Landroid/view/NotificationTopLineView$HeaderTouchListener;

    invoke-static {v0, p1, p2}, Landroid/view/NotificationTopLineView$HeaderTouchListener;->-$$Nest$misInside(Landroid/view/NotificationTopLineView$HeaderTouchListener;FF)Z

    move-result v0

    return v0
.end method

.method protected whitelist onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    const v0, 0x10201fa

    invoke-virtual {p0, v0}, Landroid/view/NotificationTopLineView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/view/NotificationTopLineView;->mAppName:Landroid/view/View;

    const v0, 0x1020016

    invoke-virtual {p0, v0}, Landroid/view/NotificationTopLineView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/view/NotificationTopLineView;->mTitle:Landroid/view/View;

    const v0, 0x1020346

    invoke-virtual {p0, v0}, Landroid/view/NotificationTopLineView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/view/NotificationTopLineView;->mHeaderText:Landroid/view/View;

    const v0, 0x1020347

    invoke-virtual {p0, v0}, Landroid/view/NotificationTopLineView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/view/NotificationTopLineView;->mHeaderTextDivider:Landroid/view/View;

    const v0, 0x1020348

    invoke-virtual {p0, v0}, Landroid/view/NotificationTopLineView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/view/NotificationTopLineView;->mSecondaryHeaderText:Landroid/view/View;

    const v0, 0x1020349

    invoke-virtual {p0, v0}, Landroid/view/NotificationTopLineView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/view/NotificationTopLineView;->mSecondaryHeaderTextDivider:Landroid/view/View;

    const v0, 0x10202ec

    invoke-virtual {p0, v0}, Landroid/view/NotificationTopLineView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/view/NotificationTopLineView;->mFeedbackIcon:Landroid/view/View;

    return-void
.end method

.method protected whitelist onLayout(ZIIII)V
    .locals 18

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Landroid/view/NotificationTopLineView;->getLayoutDirection()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    move v1, v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/NotificationTopLineView;->getWidth()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/NotificationTopLineView;->getPaddingStart()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/NotificationTopLineView;->getChildCount()I

    move-result v4

    sub-int v5, p5, p3

    iget v6, v0, Landroid/view/NotificationTopLineView;->mPaddingTop:I

    sub-int v6, v5, v6

    iget v7, v0, Landroid/view/NotificationTopLineView;->mPaddingBottom:I

    sub-int/2addr v6, v7

    iget v7, v0, Landroid/view/NotificationTopLineView;->mPaddingTop:I

    iget v8, v0, Landroid/view/NotificationTopLineView;->mMaxAscent:I

    iget v9, v0, Landroid/view/NotificationTopLineView;->mMaxDescent:I

    add-int/2addr v8, v9

    sub-int v8, v6, v8

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    iget v8, v0, Landroid/view/NotificationTopLineView;->mMaxAscent:I

    add-int/2addr v7, v8

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v4, :cond_9

    invoke-virtual {v0, v8}, Landroid/view/NotificationTopLineView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v10

    const/16 v11, 0x8

    if-ne v10, v11, :cond_1

    move/from16 v17, v4

    goto/16 :goto_5

    :cond_1
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v9}, Landroid/view/View;->getBaseline()I

    move-result v12

    iget v13, v0, Landroid/view/NotificationTopLineView;->mGravityY:I

    sparse-switch v13, :sswitch_data_0

    move/from16 v17, v4

    iget v15, v0, Landroid/view/NotificationTopLineView;->mPaddingTop:I

    goto :goto_2

    :sswitch_0
    iget v13, v0, Landroid/view/NotificationTopLineView;->mPaddingBottom:I

    sub-int v13, v5, v13

    sub-int v15, v13, v10

    iget v14, v11, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v15, v14

    const/4 v14, -0x1

    if-eq v12, v14, :cond_2

    sub-int v14, v10, v12

    move/from16 v17, v4

    iget v4, v0, Landroid/view/NotificationTopLineView;->mMaxDescent:I

    sub-int/2addr v4, v14

    sub-int/2addr v15, v4

    goto :goto_2

    :cond_2
    move/from16 v17, v4

    goto :goto_2

    :sswitch_1
    move/from16 v17, v4

    iget v4, v0, Landroid/view/NotificationTopLineView;->mPaddingTop:I

    iget v13, v11, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int v15, v4, v13

    const/4 v4, -0x1

    if-eq v12, v4, :cond_5

    iget v4, v0, Landroid/view/NotificationTopLineView;->mMaxAscent:I

    sub-int/2addr v4, v12

    add-int/2addr v15, v4

    goto :goto_2

    :sswitch_2
    move/from16 v17, v4

    const/4 v4, -0x1

    if-eq v12, v4, :cond_4

    sub-int v4, v6, v10

    if-lez v4, :cond_3

    sub-int v15, v7, v12

    goto :goto_2

    :cond_3
    iget v4, v0, Landroid/view/NotificationTopLineView;->mPaddingTop:I

    sub-int v13, v6, v10

    div-int/lit8 v13, v13, 0x2

    add-int v15, v4, v13

    goto :goto_2

    :cond_4
    iget v4, v0, Landroid/view/NotificationTopLineView;->mPaddingTop:I

    sub-int v13, v6, v10

    div-int/lit8 v13, v13, 0x2

    add-int/2addr v4, v13

    iget v13, v11, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v4, v13

    iget v13, v11, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int v15, v4, v13

    nop

    :cond_5
    :goto_2
    iget-object v4, v0, Landroid/view/NotificationTopLineView;->mViewsToDisappear:Ljava/util/Set;

    invoke-interface {v4, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    add-int v4, v15, v10

    invoke-virtual {v9, v3, v15, v3, v4}, Landroid/view/View;->layout(IIII)V

    goto :goto_5

    :cond_6
    invoke-virtual {v11}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v4, v3

    if-eqz v1, :cond_7

    sub-int v13, v2, v4

    goto :goto_3

    :cond_7
    move v13, v3

    :goto_3
    if-eqz v1, :cond_8

    sub-int v14, v2, v3

    goto :goto_4

    :cond_8
    move v14, v4

    :goto_4
    invoke-virtual {v11}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v16

    add-int v16, v4, v16

    add-int v3, v15, v10

    invoke-virtual {v9, v13, v15, v14, v3}, Landroid/view/View;->layout(IIII)V

    move/from16 v3, v16

    :goto_5
    add-int/lit8 v8, v8, 0x1

    move/from16 v4, v17

    goto/16 :goto_1

    :cond_9
    invoke-direct/range {p0 .. p0}, Landroid/view/NotificationTopLineView;->updateTouchListener()V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_2
        0x30 -> :sswitch_1
        0x50 -> :sswitch_0
    .end sparse-switch
.end method

.method protected whitelist onMeasure(II)V
    .locals 17

    move-object/from16 v0, p0

    const-string v1, "NotificationTopLineView#onMeasure"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    const/high16 v5, -0x80000000

    if-ne v3, v5, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-static {v1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/view/NotificationTopLineView;->getPaddingStart()I

    move-result v7

    const/4 v8, -0x1

    const/4 v9, -0x1

    iput v9, v0, Landroid/view/NotificationTopLineView;->mMaxAscent:I

    iput v9, v0, Landroid/view/NotificationTopLineView;->mMaxDescent:I

    const/4 v10, 0x0

    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/view/NotificationTopLineView;->getChildCount()I

    move-result v11

    if-ge v10, v11, :cond_3

    invoke-virtual {v0, v10}, Landroid/view/NotificationTopLineView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v12

    const/16 v13, 0x8

    if-ne v12, v13, :cond_1

    move/from16 v16, v2

    goto :goto_3

    :cond_1
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v13, v12, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v14, v12, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v13, v14

    iget v14, v12, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {v6, v13, v14}, Landroid/view/NotificationTopLineView;->getChildMeasureSpec(III)I

    move-result v13

    iget v14, v12, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v15, v12, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v14, v15

    iget v15, v12, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {v5, v14, v15}, Landroid/view/NotificationTopLineView;->getChildMeasureSpec(III)I

    move-result v14

    invoke-virtual {v11, v13, v14}, Landroid/view/View;->measure(II)V

    iget v15, v12, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v4, v12, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v15, v4

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v15, v4

    add-int/2addr v7, v15

    invoke-virtual {v11}, Landroid/view/View;->getBaseline()I

    move-result v4

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    if-eq v4, v9, :cond_2

    iget v9, v0, Landroid/view/NotificationTopLineView;->mMaxAscent:I

    invoke-static {v9, v4}, Ljava/lang/Math;->max(II)I

    move-result v9

    iput v9, v0, Landroid/view/NotificationTopLineView;->mMaxAscent:I

    iget v9, v0, Landroid/view/NotificationTopLineView;->mMaxDescent:I

    move/from16 v16, v2

    sub-int v2, v15, v4

    invoke-static {v9, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v0, Landroid/view/NotificationTopLineView;->mMaxDescent:I

    goto :goto_2

    :cond_2
    move/from16 v16, v2

    :goto_2
    invoke-static {v8, v15}, Ljava/lang/Math;->max(II)I

    move-result v2

    move v8, v2

    :goto_3
    add-int/lit8 v10, v10, 0x1

    move/from16 v2, v16

    const/4 v9, -0x1

    goto :goto_1

    :cond_3
    move/from16 v16, v2

    iget-object v2, v0, Landroid/view/NotificationTopLineView;->mViewsToDisappear:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    iget v2, v0, Landroid/view/NotificationTopLineView;->mHeaderTextMarginEnd:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/NotificationTopLineView;->getPaddingEnd()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    sub-int v4, v1, v2

    if-le v7, v4, :cond_4

    sub-int v4, v7, v1

    add-int/2addr v4, v2

    iget-object v9, v0, Landroid/view/NotificationTopLineView;->mOverflowAdjuster:Landroid/view/NotificationTopLineView$OverflowAdjuster;

    invoke-virtual {v9, v4, v5}, Landroid/view/NotificationTopLineView$OverflowAdjuster;->resetForOverflow(II)Landroid/view/NotificationTopLineView$OverflowAdjuster;

    move-result-object v9

    iget-object v10, v0, Landroid/view/NotificationTopLineView;->mAppName:Landroid/view/View;

    iget v11, v0, Landroid/view/NotificationTopLineView;->mChildMinWidth:I

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v12, v11}, Landroid/view/NotificationTopLineView$OverflowAdjuster;->adjust(Landroid/view/View;Landroid/view/View;I)Landroid/view/NotificationTopLineView$OverflowAdjuster;

    move-result-object v9

    iget-object v10, v0, Landroid/view/NotificationTopLineView;->mHeaderText:Landroid/view/View;

    iget-object v11, v0, Landroid/view/NotificationTopLineView;->mHeaderTextDivider:Landroid/view/View;

    iget v13, v0, Landroid/view/NotificationTopLineView;->mChildMinWidth:I

    invoke-virtual {v9, v10, v11, v13}, Landroid/view/NotificationTopLineView$OverflowAdjuster;->adjust(Landroid/view/View;Landroid/view/View;I)Landroid/view/NotificationTopLineView$OverflowAdjuster;

    move-result-object v9

    iget-object v10, v0, Landroid/view/NotificationTopLineView;->mSecondaryHeaderText:Landroid/view/View;

    iget-object v11, v0, Landroid/view/NotificationTopLineView;->mSecondaryHeaderTextDivider:Landroid/view/View;

    const/4 v13, 0x0

    invoke-virtual {v9, v10, v11, v13}, Landroid/view/NotificationTopLineView$OverflowAdjuster;->adjust(Landroid/view/View;Landroid/view/View;I)Landroid/view/NotificationTopLineView$OverflowAdjuster;

    move-result-object v9

    iget-object v10, v0, Landroid/view/NotificationTopLineView;->mTitle:Landroid/view/View;

    iget v11, v0, Landroid/view/NotificationTopLineView;->mChildMinWidth:I

    invoke-virtual {v9, v10, v12, v11}, Landroid/view/NotificationTopLineView$OverflowAdjuster;->adjust(Landroid/view/View;Landroid/view/View;I)Landroid/view/NotificationTopLineView$OverflowAdjuster;

    move-result-object v9

    iget-object v10, v0, Landroid/view/NotificationTopLineView;->mHeaderText:Landroid/view/View;

    iget-object v11, v0, Landroid/view/NotificationTopLineView;->mHeaderTextDivider:Landroid/view/View;

    invoke-virtual {v9, v10, v11, v13}, Landroid/view/NotificationTopLineView$OverflowAdjuster;->adjust(Landroid/view/View;Landroid/view/View;I)Landroid/view/NotificationTopLineView$OverflowAdjuster;

    move-result-object v9

    iget-object v10, v0, Landroid/view/NotificationTopLineView;->mTitle:Landroid/view/View;

    invoke-virtual {v9, v10, v12, v13}, Landroid/view/NotificationTopLineView$OverflowAdjuster;->adjust(Landroid/view/View;Landroid/view/View;I)Landroid/view/NotificationTopLineView$OverflowAdjuster;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/NotificationTopLineView$OverflowAdjuster;->finish()V

    :cond_4
    if-eqz v3, :cond_5

    move v4, v8

    goto :goto_4

    :cond_5
    move/from16 v4, v16

    :goto_4
    invoke-virtual {v0, v1, v4}, Landroid/view/NotificationTopLineView;->setMeasuredDimension(II)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public blacklist onTouchUp(FFFF)Z
    .locals 1

    iget-object v0, p0, Landroid/view/NotificationTopLineView;->mFeedbackListener:Landroid/view/View$OnClickListener;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Landroid/view/NotificationTopLineView;->mTouchListener:Landroid/view/NotificationTopLineView$HeaderTouchListener;

    invoke-static {v0, p1, p2, p3, p4}, Landroid/view/NotificationTopLineView$HeaderTouchListener;->-$$Nest$monTouchUp(Landroid/view/NotificationTopLineView$HeaderTouchListener;FFFF)Z

    move-result v0

    return v0
.end method

.method public blacklist setFeedbackOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 2

    iput-object p1, p0, Landroid/view/NotificationTopLineView;->mFeedbackListener:Landroid/view/View$OnClickListener;

    iget-object v0, p0, Landroid/view/NotificationTopLineView;->mFeedbackIcon:Landroid/view/View;

    iget-object v1, p0, Landroid/view/NotificationTopLineView;->mFeedbackListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Landroid/view/NotificationTopLineView;->updateTouchListener()V

    return-void
.end method

.method public blacklist setHeaderTextMarginEnd(I)V
    .locals 1

    iget v0, p0, Landroid/view/NotificationTopLineView;->mHeaderTextMarginEnd:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Landroid/view/NotificationTopLineView;->mHeaderTextMarginEnd:I

    invoke-virtual {p0}, Landroid/view/NotificationTopLineView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public blacklist setPaddingStart(I)V
    .locals 3

    invoke-virtual {p0}, Landroid/view/NotificationTopLineView;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/NotificationTopLineView;->getPaddingEnd()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/NotificationTopLineView;->getPaddingBottom()I

    move-result v2

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/view/NotificationTopLineView;->setPaddingRelative(IIII)V

    return-void
.end method
