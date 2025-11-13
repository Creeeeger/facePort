.class public Lcom/android/internal/widget/NotificationActionListLayout;
.super Landroid/widget/LinearLayout;
.source "NotificationActionListLayout.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/NotificationActionListLayout$TextViewInfo;
    }
.end annotation


# static fields
.field public static final blacklist MEASURE_ORDER_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/internal/widget/NotificationActionListLayout$TextViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "NotificationActionListLayout"


# instance fields
.field private blacklist mCollapsibleIndentDimen:I

.field private blacklist mDefaultPaddingBottom:I

.field private blacklist mDefaultPaddingTop:I

.field private blacklist mEmphasizedHeight:I

.field private blacklist mEmphasizedMode:Z

.field private blacklist mEmphasizedPaddingBottom:I

.field private blacklist mEmphasizedPaddingTop:I

.field private blacklist mEvenlyDividedMode:Z

.field private blacklist mExtraStartPadding:I

.field private final blacklist mGravity:I

.field private blacklist mMeasureOrderOther:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mMeasureOrderTextViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/NotificationActionListLayout$TextViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mNumNotGoneChildren:I

.field blacklist mNumPriorityChildren:I

.field private blacklist mRegularHeight:I

.field private blacklist mTotalWidth:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$smisPriority(Landroid/view/View;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/internal/widget/NotificationActionListLayout;->isPriority(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/internal/widget/NotificationActionListLayout$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/internal/widget/NotificationActionListLayout$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/android/internal/widget/NotificationActionListLayout;->MEASURE_ORDER_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/widget/NotificationActionListLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/widget/NotificationActionListLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mTotalWidth:I

    iput v0, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mExtraStartPadding:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureOrderTextViews:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureOrderOther:Ljava/util/ArrayList;

    const v1, 0x10502dc

    iput v1, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mCollapsibleIndentDimen:I

    const v1, 0x10100af

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    invoke-virtual {v2, v0, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mGravity:I

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private blacklist clearMeasureOrder()V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureOrderOther:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureOrderTextViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private blacklist countAndRebuildMeasureOrder()V
    .locals 7

    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationActionListLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    iput v3, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mNumNotGoneChildren:I

    iput v3, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mNumPriorityChildren:I

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    invoke-virtual {p0, v3}, Lcom/android/internal/widget/NotificationActionListLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    instance-of v5, v4, Landroid/widget/TextView;

    if-eqz v5, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    :goto_1
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_1

    iget v5, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mNumNotGoneChildren:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mNumNotGoneChildren:I

    invoke-static {v4}, Lcom/android/internal/widget/NotificationActionListLayout;->isPriority(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget v5, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mNumPriorityChildren:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mNumPriorityChildren:I

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureOrderTextViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v1, v4, :cond_3

    iget-object v4, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureOrderOther:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eq v2, v4, :cond_4

    :cond_3
    const/4 v3, 0x1

    :cond_4
    if-nez v3, :cond_6

    iget-object v4, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureOrderTextViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v4, :cond_6

    iget-object v6, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureOrderTextViews:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/widget/NotificationActionListLayout$TextViewInfo;

    invoke-virtual {v6}, Lcom/android/internal/widget/NotificationActionListLayout$TextViewInfo;->needsRebuild()Z

    move-result v6

    if-eqz v6, :cond_5

    const/4 v3, 0x1

    goto :goto_3

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_6
    :goto_3
    if-eqz v3, :cond_7

    invoke-direct {p0, v1, v2}, Lcom/android/internal/widget/NotificationActionListLayout;->rebuildMeasureOrder(II)V

    :cond_7
    return-void
.end method

.method private static blacklist isPriority(Landroid/view/View;)Z
    .locals 1

    instance-of v0, p0, Lcom/android/internal/widget/EmphasizedNotificationButton;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/android/internal/widget/EmphasizedNotificationButton;

    invoke-virtual {v0}, Lcom/android/internal/widget/EmphasizedNotificationButton;->isPriority()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic blacklist lambda$static$0(Lcom/android/internal/widget/NotificationActionListLayout$TextViewInfo;Lcom/android/internal/widget/NotificationActionListLayout$TextViewInfo;)I
    .locals 3

    iget-boolean v0, p0, Lcom/android/internal/widget/NotificationActionListLayout$TextViewInfo;->mIsPriority:Z

    iget-boolean v1, p1, Lcom/android/internal/widget/NotificationActionListLayout$TextViewInfo;->mIsPriority:Z

    invoke-static {v0, v1}, Ljava/lang/Boolean;->compare(ZZ)I

    move-result v0

    neg-int v0, v0

    if-eqz v0, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/android/internal/widget/NotificationActionListLayout$TextViewInfo;->mTextLength:I

    iget v2, p1, Lcom/android/internal/widget/NotificationActionListLayout$TextViewInfo;->mTextLength:I

    invoke-static {v1, v2}, Ljava/lang/Integer;->compare(II)I

    move-result v1

    :goto_0
    return v1
.end method

.method private blacklist measureAndGetUsedWidth(IIIZ)I
    .locals 20

    move-object/from16 v6, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/NotificationActionListLayout;->getChildCount()I

    move-result v7

    nop

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v9, v0

    iget-object v0, v6, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureOrderOther:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v11, v0

    move v12, v2

    move v13, v3

    move v14, v4

    :goto_1
    if-ge v14, v7, :cond_8

    if-ge v14, v10, :cond_1

    iget-object v0, v6, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureOrderOther:Ljava/util/ArrayList;

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/4 v2, 0x0

    move-object v15, v0

    move/from16 v16, v2

    goto :goto_2

    :cond_1
    iget-object v0, v6, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureOrderTextViews:Ljava/util/ArrayList;

    sub-int v2, v14, v10

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/NotificationActionListLayout$TextViewInfo;

    iget-object v2, v0, Lcom/android/internal/widget/NotificationActionListLayout$TextViewInfo;->mTextView:Landroid/widget/TextView;

    iget-boolean v3, v0, Lcom/android/internal/widget/NotificationActionListLayout$TextViewInfo;->mIsPriority:Z

    move-object v15, v2

    move/from16 v16, v3

    :goto_2
    invoke-virtual {v15}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_2

    move/from16 v19, v7

    goto/16 :goto_6

    :cond_2
    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    move v0, v11

    if-eqz v9, :cond_6

    sub-int v2, p3, v11

    iget v3, v6, Lcom/android/internal/widget/NotificationActionListLayout;->mNumNotGoneChildren:I

    sub-int/2addr v3, v12

    div-int v4, v2, v3

    if-eqz v16, :cond_4

    if-eqz p4, :cond_4

    if-nez v1, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/NotificationActionListLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    move/from16 v17, v0

    const v0, 0x10502d9

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_3

    :cond_3
    move/from16 v17, v0

    :goto_3
    iget v0, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v0, v1

    iget v8, v5, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int v4, v0, v8

    goto :goto_4

    :cond_4
    move/from16 v17, v0

    if-eqz v16, :cond_5

    iget v0, v6, Lcom/android/internal/widget/NotificationActionListLayout;->mNumPriorityChildren:I

    sub-int/2addr v0, v13

    sub-int v8, v3, v0

    mul-int v18, p3, v8

    div-int/lit8 v18, v18, 0x4

    sub-int v19, v2, v18

    div-int v4, v19, v0

    :cond_5
    :goto_4
    sub-int v0, p3, v4

    move/from16 v17, v0

    move v8, v1

    goto :goto_5

    :cond_6
    move/from16 v17, v0

    move v8, v1

    :goto_5
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object v1, v15

    move/from16 v2, p1

    move/from16 v3, v17

    move/from16 v4, p2

    move/from16 v19, v7

    move-object v7, v5

    move/from16 v5, v18

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/NotificationActionListLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget v1, v7, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v0, v1

    iget v1, v7, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v0, v1

    add-int/2addr v11, v0

    add-int/lit8 v12, v12, 0x1

    if-eqz v16, :cond_7

    add-int/lit8 v13, v13, 0x1

    move v1, v8

    goto :goto_6

    :cond_7
    move v1, v8

    :goto_6
    add-int/lit8 v14, v14, 0x1

    move/from16 v7, v19

    goto/16 :goto_1

    :cond_8
    move/from16 v19, v7

    iget v0, v6, Lcom/android/internal/widget/NotificationActionListLayout;->mCollapsibleIndentDimen:I

    if-nez v0, :cond_9

    const/4 v0, 0x0

    goto :goto_7

    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/NotificationActionListLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v2, v6, Lcom/android/internal/widget/NotificationActionListLayout;->mCollapsibleIndentDimen:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    :goto_7
    nop

    sub-int v2, p3, v11

    if-le v2, v0, :cond_a

    iput v0, v6, Lcom/android/internal/widget/NotificationActionListLayout;->mExtraStartPadding:I

    const/4 v2, 0x0

    goto :goto_8

    :cond_a
    const/4 v2, 0x0

    iput v2, v6, Lcom/android/internal/widget/NotificationActionListLayout;->mExtraStartPadding:I

    :goto_8
    iget-boolean v3, v6, Lcom/android/internal/widget/NotificationActionListLayout;->mEmphasizedMode:Z

    if-eqz v3, :cond_b

    iput v2, v6, Lcom/android/internal/widget/NotificationActionListLayout;->mExtraStartPadding:I

    :cond_b
    return v11
.end method

.method private blacklist measureAndReturnEvenlyDividedWidth(II)I
    .locals 9

    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationActionListLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x8

    if-ge v2, v0, :cond_1

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/NotificationActionListLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eq v5, v3, :cond_0

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v5, v6

    add-int/2addr v1, v5

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sub-int v2, p2, v1

    iget v4, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mNumNotGoneChildren:I

    div-int v4, v2, v4

    nop

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "measuring evenly divided width: numChildren = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", innerWidth = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "px, childMarginSum = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "px, innerWidthMinusChildMargins = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "px, childWidth = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "px, childWidthMeasureSpec = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v5}, Landroid/view/View$MeasureSpec;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "NotificationActionListLayout"

    invoke-static {v7, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v0, :cond_3

    invoke-virtual {p0, v6}, Lcom/android/internal/widget/NotificationActionListLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-eq v8, v3, :cond_2

    invoke-virtual {v7, v5, p1}, Landroid/view/View;->measure(II)V

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    return p2
.end method

.method private blacklist rebuildMeasureOrder(II)V
    .locals 6

    invoke-direct {p0}, Lcom/android/internal/widget/NotificationActionListLayout;->clearMeasureOrder()V

    iget-object v0, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureOrderTextViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    iget-object v0, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureOrderOther:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->ensureCapacity(I)V

    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationActionListLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/NotificationActionListLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Landroid/widget/TextView;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureOrderTextViews:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/widget/NotificationActionListLayout$TextViewInfo;

    move-object v5, v2

    check-cast v5, Landroid/widget/TextView;

    invoke-direct {v4, v5}, Lcom/android/internal/widget/NotificationActionListLayout$TextViewInfo;-><init>(Landroid/widget/TextView;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureOrderOther:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureOrderTextViews:Ljava/util/ArrayList;

    sget-object v2, Lcom/android/internal/widget/NotificationActionListLayout;->MEASURE_ORDER_COMPARATOR:Ljava/util/Comparator;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    return-void
.end method

.method private blacklist updateHeights()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationActionListLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050072

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationActionListLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10502e9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mEmphasizedPaddingTop:I

    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationActionListLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10502ea

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mEmphasizedPaddingBottom:I

    iget v1, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mEmphasizedPaddingTop:I

    iget v2, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mEmphasizedPaddingBottom:I

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationActionListLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10502d5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mEmphasizedHeight:I

    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationActionListLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10502d6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mRegularHeight:I

    return-void
.end method


# virtual methods
.method public blacklist getExtraMeasureHeight()I
    .locals 2

    iget-boolean v0, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mEmphasizedMode:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mEmphasizedHeight:I

    iget v1, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mRegularHeight:I

    sub-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isEmphasizedMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mEmphasizedMode:Z

    return v0
.end method

.method protected whitelist onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationActionListLayout;->getPaddingBottom()I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mDefaultPaddingBottom:I

    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationActionListLayout;->getPaddingTop()I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mDefaultPaddingTop:I

    invoke-direct {p0}, Lcom/android/internal/widget/NotificationActionListLayout;->updateHeights()V

    return-void
.end method

.method protected whitelist onLayout(ZIIII)V
    .locals 18

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/NotificationActionListLayout;->isLayoutRtl()Z

    move-result v1

    iget v2, v0, Lcom/android/internal/widget/NotificationActionListLayout;->mPaddingTop:I

    iget v3, v0, Lcom/android/internal/widget/NotificationActionListLayout;->mGravity:I

    const/4 v4, 0x1

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    move v3, v4

    if-eqz v3, :cond_1

    iget v4, v0, Lcom/android/internal/widget/NotificationActionListLayout;->mPaddingLeft:I

    add-int v4, v4, p2

    sub-int v5, p4, p2

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    iget v5, v0, Lcom/android/internal/widget/NotificationActionListLayout;->mTotalWidth:I

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    goto :goto_1

    :cond_1
    iget v4, v0, Lcom/android/internal/widget/NotificationActionListLayout;->mPaddingLeft:I

    const v5, 0x800003

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/NotificationActionListLayout;->getLayoutDirection()I

    move-result v6

    invoke-static {v5, v6}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v5

    const/4 v6, 0x5

    if-ne v5, v6, :cond_2

    sub-int v6, p4, p2

    iget v7, v0, Lcom/android/internal/widget/NotificationActionListLayout;->mTotalWidth:I

    sub-int/2addr v6, v7

    add-int/2addr v4, v6

    goto :goto_1

    :cond_2
    iget v6, v0, Lcom/android/internal/widget/NotificationActionListLayout;->mExtraStartPadding:I

    add-int/2addr v4, v6

    :goto_1
    sub-int v5, p5, p3

    sub-int v6, v5, v2

    iget v7, v0, Lcom/android/internal/widget/NotificationActionListLayout;->mPaddingBottom:I

    sub-int/2addr v6, v7

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/NotificationActionListLayout;->getChildCount()I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v1, :cond_3

    add-int/lit8 v8, v7, -0x1

    const/4 v9, -0x1

    const/4 v4, 0x0

    :cond_3
    const/4 v10, 0x0

    :goto_2
    if-ge v10, v7, :cond_5

    mul-int v11, v9, v10

    add-int/2addr v11, v8

    invoke-virtual {v0, v11}, Lcom/android/internal/widget/NotificationActionListLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v13

    const/16 v14, 0x8

    if-eq v13, v14, :cond_4

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/view/ViewGroup$MarginLayoutParams;

    sub-int v16, v6, v14

    div-int/lit8 v16, v16, 0x2

    add-int v16, v2, v16

    iget v0, v15, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int v16, v16, v0

    iget v0, v15, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int v0, v16, v0

    move/from16 v16, v1

    iget v1, v15, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v4, v1

    add-int v1, v4, v13

    move/from16 v17, v2

    add-int v2, v0, v14

    invoke-virtual {v12, v4, v0, v1, v2}, Landroid/view/View;->layout(IIII)V

    iget v1, v15, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v1, v13

    add-int/2addr v4, v1

    goto :goto_3

    :cond_4
    move/from16 v16, v1

    move/from16 v17, v2

    :goto_3
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    goto :goto_2

    :cond_5
    return-void
.end method

.method protected whitelist onMeasure(II)V
    .locals 4

    invoke-direct {p0}, Lcom/android/internal/widget/NotificationActionListLayout;->countAndRebuildMeasureOrder()V

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iget v1, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mPaddingLeft:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mPaddingRight:I

    sub-int/2addr v0, v1

    iget-boolean v1, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mEvenlyDividedMode:Z

    if-eqz v1, :cond_0

    invoke-direct {p0, p2, v0}, Lcom/android/internal/widget/NotificationActionListLayout;->measureAndReturnEvenlyDividedWidth(II)I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/internal/widget/NotificationActionListLayout;->measureAndGetUsedWidth(IIIZ)I

    move-result v1

    iget v2, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mNumPriorityChildren:I

    if-eqz v2, :cond_1

    if-lt v1, v0, :cond_1

    const/4 v2, 0x1

    invoke-direct {p0, p1, p2, v0, v2}, Lcom/android/internal/widget/NotificationActionListLayout;->measureAndGetUsedWidth(IIIZ)I

    move-result v1

    :cond_1
    :goto_0
    iget v2, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mPaddingRight:I

    add-int/2addr v2, v1

    iget v3, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mPaddingLeft:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mExtraStartPadding:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mTotalWidth:I

    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationActionListLayout;->getSuggestedMinimumWidth()I

    move-result v2

    invoke-static {v2, p1}, Lcom/android/internal/widget/NotificationActionListLayout;->resolveSize(II)I

    move-result v2

    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationActionListLayout;->getSuggestedMinimumHeight()I

    move-result v3

    invoke-static {v3, p2}, Lcom/android/internal/widget/NotificationActionListLayout;->resolveSize(II)I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/widget/NotificationActionListLayout;->setMeasuredDimension(II)V

    return-void
.end method

.method public whitelist onViewAdded(Landroid/view/View;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onViewAdded(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/android/internal/widget/NotificationActionListLayout;->clearMeasureOrder()V

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/RippleDrawable;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/RippleDrawable;->setForceSoftware(Z)V

    :cond_0
    return-void
.end method

.method public whitelist onViewRemoved(Landroid/view/View;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onViewRemoved(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/android/internal/widget/NotificationActionListLayout;->clearMeasureOrder()V

    return-void
.end method

.method public blacklist setCollapsibleIndentDimen(I)V
    .locals 1
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iget v0, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mCollapsibleIndentDimen:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mCollapsibleIndentDimen:I

    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationActionListLayout;->requestLayout()V

    :cond_0
    return-void
.end method

.method public blacklist setEmphasizedMode(Z)V
    .locals 4
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput-boolean p1, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mEmphasizedMode:Z

    iget-boolean v0, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mEmphasizedMode:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/NotificationActionListLayout;->setShowDividers(I)V

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationActionListLayout;->getPaddingStart()I

    move-result v0

    iget v1, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mEmphasizedPaddingTop:I

    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationActionListLayout;->getPaddingEnd()I

    move-result v2

    iget v3, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mEmphasizedPaddingBottom:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/widget/NotificationActionListLayout;->setPaddingRelative(IIII)V

    iget v0, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mEmphasizedHeight:I

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/NotificationActionListLayout;->setMinimumHeight(I)V

    const/4 v0, -0x2

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationActionListLayout;->getPaddingStart()I

    move-result v0

    iget v1, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mDefaultPaddingTop:I

    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationActionListLayout;->getPaddingEnd()I

    move-result v2

    iget v3, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mDefaultPaddingBottom:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/widget/NotificationActionListLayout;->setPaddingRelative(IIII)V

    iget v0, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mRegularHeight:I

    :goto_1
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationActionListLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/NotificationActionListLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public blacklist setEvenlyDividedMode(Z)V
    .locals 3
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    const-string v0, "NotificationActionListLayout"

    if-eqz p1, :cond_0

    invoke-static {}, Landroid/app/Flags;->evenlyDividedCallStyleActionLayout()Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "setEvenlyDividedMode(true) called with new action layout disabled; leaving evenly divided mode disabled"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mEvenlyDividedMode:Z

    if-ne p1, v1, :cond_1

    return-void

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "evenlyDividedMode changed to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; requesting layout"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mEvenlyDividedMode:Z

    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationActionListLayout;->requestLayout()V

    return-void
.end method
