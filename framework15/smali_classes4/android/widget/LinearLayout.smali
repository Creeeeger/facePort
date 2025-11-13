.class public Landroid/widget/LinearLayout;
.super Landroid/view/ViewGroup;
.source "LinearLayout.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/LinearLayout$LayoutParams;,
        Landroid/widget/LinearLayout$DividerMode;,
        Landroid/widget/LinearLayout$OrientationMode;
    }
.end annotation


# static fields
.field public static final whitelist HORIZONTAL:I = 0x0

.field private static final greylist-max-r INDEX_BOTTOM:I = 0x2

.field private static final greylist-max-o INDEX_CENTER_VERTICAL:I = 0x0

.field private static final greylist-max-o INDEX_FILL:I = 0x3

.field private static final greylist-max-r INDEX_TOP:I = 0x1

.field public static final whitelist SHOW_DIVIDER_BEGINNING:I = 0x1

.field public static final whitelist SHOW_DIVIDER_END:I = 0x4

.field public static final whitelist SHOW_DIVIDER_MIDDLE:I = 0x2

.field public static final whitelist SHOW_DIVIDER_NONE:I = 0x0

.field public static final whitelist VERTICAL:I = 0x1

.field private static final greylist-max-o VERTICAL_GRAVITY_COUNT:I = 0x4

.field private static greylist-max-o sCompatibilityDone:Z

.field private static greylist-max-o sRemeasureWeightedChildren:Z


# instance fields
.field private final greylist-max-o mAllowInconsistentMeasurement:Z

.field private greylist-max-o mBaselineAligned:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private greylist-max-o mBaselineAlignedChildIndex:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private greylist-max-o mBaselineChildTop:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "measurement"
    .end annotation
.end field

.field private greylist mDivider:Landroid/graphics/drawable/Drawable;

.field private greylist-max-o mDividerHeight:I

.field private greylist-max-o mDividerPadding:I

.field private greylist-max-o mDividerWidth:I

.field private greylist-max-p mGravity:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "measurement"
        flagMapping = {
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = -0x1
                mask = -0x1
                name = "NONE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x0
                mask = 0x0
                name = "NONE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x30
                mask = 0x30
                name = "TOP"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x50
                mask = 0x50
                name = "BOTTOM"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x3
                mask = 0x3
                name = "LEFT"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x5
                mask = 0x5
                name = "RIGHT"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x800003
                mask = 0x800003
                name = "START"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x800005
                mask = 0x800005
                name = "END"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x10
                mask = 0x10
                name = "CENTER_VERTICAL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x70
                mask = 0x70
                name = "FILL_VERTICAL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x1
                mask = 0x1
                name = "CENTER_HORIZONTAL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x7
                mask = 0x7
                name = "FILL_HORIZONTAL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x11
                mask = 0x11
                name = "CENTER"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x77
                mask = 0x77
                name = "FILL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x800000
                mask = 0x800000
                name = "RELATIVE"
            .end subannotation
        }
        formatToHexString = true
    .end annotation
.end field

.field private greylist-max-o mLayoutDirection:I

.field private greylist mMaxAscent:[I

.field private greylist mMaxDescent:[I

.field private greylist-max-o mOrientation:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "measurement"
    .end annotation
.end field

.field private greylist-max-o mShowDividers:I

.field private greylist mTotalLength:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "measurement"
    .end annotation
.end field

.field private greylist mUseLargestChild:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private greylist-max-o mWeightSum:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Landroid/widget/LinearLayout;->sCompatibilityDone:Z

    const/4 v0, 0x1

    sput-boolean v0, Landroid/widget/LinearLayout;->sRemeasureWeightedChildren:Z

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 11

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/LinearLayout;->mBaselineAligned:Z

    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    const/4 v2, 0x0

    iput v2, p0, Landroid/widget/LinearLayout;->mBaselineChildTop:I

    const v3, 0x800033

    iput v3, p0, Landroid/widget/LinearLayout;->mGravity:I

    iput v1, p0, Landroid/widget/LinearLayout;->mLayoutDirection:I

    sget-boolean v3, Landroid/widget/LinearLayout;->sCompatibilityDone:Z

    if-nez v3, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0x1c

    if-lt v3, v4, :cond_0

    move v4, v0

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    sput-boolean v4, Landroid/widget/LinearLayout;->sRemeasureWeightedChildren:Z

    sput-boolean v0, Landroid/widget/LinearLayout;->sCompatibilityDone:Z

    :cond_1
    sget-object v3, Lcom/android/internal/R$styleable;->LinearLayout:[I

    invoke-virtual {p1, p2, v3, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    sget-object v6, Lcom/android/internal/R$styleable;->LinearLayout:[I

    move-object v4, p0

    move-object v5, p1

    move-object v7, p2

    move-object v8, v3

    move v9, p3

    move v10, p4

    invoke-virtual/range {v4 .. v10}, Landroid/widget/LinearLayout;->saveAttributeDataForStyleable(Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    if-ltz v4, :cond_2

    invoke-virtual {p0, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    :cond_2
    invoke-virtual {v3, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    if-ltz v4, :cond_3

    invoke-virtual {p0, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    :cond_3
    const/4 v5, 0x2

    invoke-virtual {v3, v5, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {p0, v5}, Landroid/widget/LinearLayout;->setBaselineAligned(Z)V

    :cond_4
    const/4 v6, 0x4

    const/high16 v7, -0x40800000    # -1.0f

    invoke-virtual {v3, v6, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    iput v6, p0, Landroid/widget/LinearLayout;->mWeightSum:F

    nop

    const/4 v6, 0x3

    invoke-virtual {v3, v6, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    const/4 v1, 0x6

    invoke-virtual {v3, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroid/widget/LinearLayout;->mUseLargestChild:Z

    const/4 v1, 0x7

    invoke-virtual {v3, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/widget/LinearLayout;->mShowDividers:I

    const/16 v1, 0x8

    invoke-virtual {v3, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/widget/LinearLayout;->mDividerPadding:I

    const/4 v1, 0x5

    invoke-virtual {v3, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v6, 0x17

    if-gt v1, v6, :cond_5

    goto :goto_1

    :cond_5
    move v0, v2

    :goto_1
    iput-boolean v0, p0, Landroid/widget/LinearLayout;->mAllowInconsistentMeasurement:Z

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private blacklist allViewsAreGoneAfter(I)Z
    .locals 5

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getVirtualChildCount()I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_0

    const/4 v3, 0x0

    return v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method private greylist-max-o allViewsAreGoneBefore(I)Z
    .locals 4

    add-int/lit8 v0, p1, -0x1

    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_0

    const/4 v2, 0x0

    return v2

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private greylist-max-o forceUniformHeight(II)V
    .locals 11

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_0

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, v9, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    iget v10, v9, Landroid/widget/LinearLayout$LayoutParams;->width:I

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iput v2, v9, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, v8

    move v4, p2

    move v6, v0

    invoke-virtual/range {v2 .. v7}, Landroid/widget/LinearLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    iput v10, v9, Landroid/widget/LinearLayout$LayoutParams;->width:I

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private greylist-max-o forceUniformWidth(II)V
    .locals 11

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_0

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, v9, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    iget v10, v9, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iput v2, v9, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, v8

    move v4, v0

    move v6, p2

    invoke-virtual/range {v2 .. v7}, Landroid/widget/LinearLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    iput v10, v9, Landroid/widget/LinearLayout$LayoutParams;->height:I

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private greylist-max-o getLastNonGoneChild()Landroid/view/View;
    .locals 4

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getVirtualChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private blacklist hasDividerAfterChildAt(I)Z
    .locals 3

    iget v0, p0, Landroid/widget/LinearLayout;->mShowDividers:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;->allViewsAreGoneAfter(I)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    iget v0, p0, Landroid/widget/LinearLayout;->mShowDividers:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    move v1, v2

    :cond_1
    return v1

    :cond_2
    iget v0, p0, Landroid/widget/LinearLayout;->mShowDividers:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    move v1, v2

    :cond_3
    return v1
.end method

.method private greylist-max-o isShowingDividers()Z
    .locals 1

    iget v0, p0, Landroid/widget/LinearLayout;->mShowDividers:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/LinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private greylist-max-o setChildFrame(Landroid/view/View;IIII)V
    .locals 2

    add-int v0, p2, p4

    add-int v1, p3, p5

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/view/View;->layout(IIII)V

    return-void
.end method


# virtual methods
.method protected whitelist checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    instance-of v0, p1, Landroid/widget/LinearLayout$LayoutParams;

    return v0
.end method

.method greylist-max-o drawDividersHorizontal(Landroid/graphics/Canvas;)V
    .locals 7

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getVirtualChildCount()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isLayoutRtl()Z

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_1

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v1, :cond_0

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v5

    iget v6, v4, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v5, v6

    goto :goto_1

    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v5

    iget v6, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v5, v6

    iget v6, p0, Landroid/widget/LinearLayout;->mDividerWidth:I

    sub-int/2addr v5, v6

    :goto_1
    invoke-virtual {p0, p1, v5}, Landroid/widget/LinearLayout;->drawVerticalDivider(Landroid/graphics/Canvas;I)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-direct {p0}, Landroid/widget/LinearLayout;->getLastNonGoneChild()Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_4

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v3

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/widget/LinearLayout;->mDividerWidth:I

    sub-int/2addr v3, v4

    goto :goto_2

    :cond_4
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v1, :cond_5

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v4

    iget v5, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v4, v5

    iget v5, p0, Landroid/widget/LinearLayout;->mDividerWidth:I

    sub-int/2addr v4, v5

    move v3, v4

    goto :goto_2

    :cond_5
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v4

    iget v5, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v4, v5

    move v3, v4

    :goto_2
    invoke-virtual {p0, p1, v3}, Landroid/widget/LinearLayout;->drawVerticalDivider(Landroid/graphics/Canvas;I)V

    :cond_6
    return-void
.end method

.method greylist-max-o drawDividersVertical(Landroid/graphics/Canvas;)V
    .locals 6

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getVirtualChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_0

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v4

    iget v5, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    sub-int/2addr v4, v5

    iget v5, p0, Landroid/widget/LinearLayout;->mDividerHeight:I

    sub-int/2addr v4, v5

    invoke-virtual {p0, p1, v4}, Landroid/widget/LinearLayout;->drawHorizontalDivider(Landroid/graphics/Canvas;I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0}, Landroid/widget/LinearLayout;->getLastNonGoneChild()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/widget/LinearLayout;->mDividerHeight:I

    sub-int/2addr v3, v4

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v4

    iget v5, v3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int v2, v4, v5

    move v3, v2

    :goto_1
    invoke-virtual {p0, p1, v3}, Landroid/widget/LinearLayout;->drawHorizontalDivider(Landroid/graphics/Canvas;I)V

    :cond_3
    return-void
.end method

.method greylist-max-o drawHorizontalDivider(Landroid/graphics/Canvas;I)V
    .locals 4

    iget-object v0, p0, Landroid/widget/LinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v1

    iget v2, p0, Landroid/widget/LinearLayout;->mDividerPadding:I

    add-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/widget/LinearLayout;->mDividerPadding:I

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/widget/LinearLayout;->mDividerHeight:I

    add-int/2addr v3, p2

    invoke-virtual {v0, v1, p2, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Landroid/widget/LinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method greylist-max-o drawVerticalDivider(Landroid/graphics/Canvas;I)V
    .locals 5

    iget-object v0, p0, Landroid/widget/LinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v1

    iget v2, p0, Landroid/widget/LinearLayout;->mDividerPadding:I

    add-int/2addr v1, v2

    iget v2, p0, Landroid/widget/LinearLayout;->mDividerWidth:I

    add-int/2addr v2, p2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/widget/LinearLayout;->mDividerPadding:I

    sub-int/2addr v3, v4

    invoke-virtual {v0, p2, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Landroid/widget/LinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected greylist-max-o encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    const-string v0, "layout:baselineAligned"

    iget-boolean v1, p0, Landroid/widget/LinearLayout;->mBaselineAligned:Z

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    const-string v0, "layout:baselineAlignedChildIndex"

    iget v1, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    const-string/jumbo v0, "measurement:baselineChildTop"

    iget v1, p0, Landroid/widget/LinearLayout;->mBaselineChildTop:I

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    const-string/jumbo v0, "measurement:orientation"

    iget v1, p0, Landroid/widget/LinearLayout;->mOrientation:I

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    const-string/jumbo v0, "measurement:gravity"

    iget v1, p0, Landroid/widget/LinearLayout;->mGravity:I

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    const-string/jumbo v0, "measurement:totalLength"

    iget v1, p0, Landroid/widget/LinearLayout;->mTotalLength:I

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    const-string v0, "layout:totalLength"

    iget v1, p0, Landroid/widget/LinearLayout;->mTotalLength:I

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    const-string v0, "layout:useLargestChild"

    iget-boolean v1, p0, Landroid/widget/LinearLayout;->mUseLargestChild:Z

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    return-void
.end method

.method protected bridge synthetic whitelist generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected whitelist generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 3

    iget v0, p0, Landroid/widget/LinearLayout;->mOrientation:I

    const/4 v1, -0x2

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    return-object v0

    :cond_0
    iget v0, p0, Landroid/widget/LinearLayout;->mOrientation:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v0, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic whitelist generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic whitelist generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public whitelist generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 2

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected whitelist generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 2

    sget-boolean v0, Landroid/widget/LinearLayout;->sPreserveMarginParamsInLayoutParamConversion:Z

    if-eqz v0, :cond_1

    instance-of v0, p1, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    move-object v1, p1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/widget/LinearLayout$LayoutParams;)V

    return-object v0

    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    :cond_1
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public whitelist getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    const-class v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getBaseline()I
    .locals 6

    iget v0, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    if-gez v0, :cond_0

    invoke-super {p0}, Landroid/view/ViewGroup;->getBaseline()I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    iget v1, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    if-le v0, v1, :cond_4

    iget v0, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBaseline()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    iget v3, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    if-nez v3, :cond_1

    return v2

    :cond_1
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "mBaselineAlignedChildIndex of LinearLayout points to a View that doesn\'t know how to get its baseline."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    iget v2, p0, Landroid/widget/LinearLayout;->mBaselineChildTop:I

    iget v3, p0, Landroid/widget/LinearLayout;->mOrientation:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    iget v3, p0, Landroid/widget/LinearLayout;->mGravity:I

    and-int/lit8 v3, v3, 0x70

    const/16 v4, 0x30

    if-eq v3, v4, :cond_3

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    iget v4, p0, Landroid/widget/LinearLayout;->mBottom:I

    iget v5, p0, Landroid/widget/LinearLayout;->mTop:I

    sub-int/2addr v4, v5

    iget v5, p0, Landroid/widget/LinearLayout;->mPaddingBottom:I

    sub-int/2addr v4, v5

    iget v5, p0, Landroid/widget/LinearLayout;->mTotalLength:I

    sub-int v2, v4, v5

    goto :goto_0

    :sswitch_1
    iget v4, p0, Landroid/widget/LinearLayout;->mBottom:I

    iget v5, p0, Landroid/widget/LinearLayout;->mTop:I

    sub-int/2addr v4, v5

    iget v5, p0, Landroid/widget/LinearLayout;->mPaddingTop:I

    sub-int/2addr v4, v5

    iget v5, p0, Landroid/widget/LinearLayout;->mPaddingBottom:I

    sub-int/2addr v4, v5

    iget v5, p0, Landroid/widget/LinearLayout;->mTotalLength:I

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    :cond_3
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    iget v4, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v4, v2

    add-int/2addr v4, v1

    return v4

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "mBaselineAlignedChildIndex of LinearLayout set to an index that is out of bounds."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x50 -> :sswitch_0
    .end sparse-switch
.end method

.method public whitelist getBaselineAlignedChildIndex()I
    .locals 1

    iget v0, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    return v0
.end method

.method greylist-max-o getChildrenSkipCount(Landroid/view/View;I)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getDividerDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroid/widget/LinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public whitelist getDividerPadding()I
    .locals 1

    iget v0, p0, Landroid/widget/LinearLayout;->mDividerPadding:I

    return v0
.end method

.method public greylist-max-o getDividerWidth()I
    .locals 1

    iget v0, p0, Landroid/widget/LinearLayout;->mDividerWidth:I

    return v0
.end method

.method public whitelist getGravity()I
    .locals 1

    iget v0, p0, Landroid/widget/LinearLayout;->mGravity:I

    return v0
.end method

.method greylist-max-o getLocationOffset(Landroid/view/View;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method greylist-max-o getNextLocationOffset(Landroid/view/View;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getOrientation()I
    .locals 1

    iget v0, p0, Landroid/widget/LinearLayout;->mOrientation:I

    return v0
.end method

.method public whitelist getShowDividers()I
    .locals 1

    iget v0, p0, Landroid/widget/LinearLayout;->mShowDividers:I

    return v0
.end method

.method greylist-max-o getVirtualChildAt(I)Landroid/view/View;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method greylist-max-o getVirtualChildCount()I
    .locals 1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    return v0
.end method

.method public whitelist getWeightSum()F
    .locals 1

    iget v0, p0, Landroid/widget/LinearLayout;->mWeightSum:F

    return v0
.end method

.method protected greylist-max-o hasDividerBeforeChildAt(I)Z
    .locals 4

    iget v0, p0, Landroid/widget/LinearLayout;->mShowDividers:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getVirtualChildCount()I

    move-result v0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_2

    iget v0, p0, Landroid/widget/LinearLayout;->mShowDividers:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    move v1, v2

    :cond_1
    return v1

    :cond_2
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;->allViewsAreGoneBefore(I)Z

    move-result v0

    if-eqz v0, :cond_4

    iget v3, p0, Landroid/widget/LinearLayout;->mShowDividers:I

    and-int/2addr v3, v2

    if-eqz v3, :cond_3

    move v1, v2

    :cond_3
    return v1

    :cond_4
    iget v3, p0, Landroid/widget/LinearLayout;->mShowDividers:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_5

    move v1, v2

    :cond_5
    return v1
.end method

.method public whitelist isBaselineAligned()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/LinearLayout;->mBaselineAligned:Z

    return v0
.end method

.method public whitelist isMeasureWithLargestChildEnabled()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/LinearLayout;->mUseLargestChild:Z

    return v0
.end method

.method greylist-max-o layoutHorizontal(IIII)V
    .locals 33

    move-object/from16 v6, p0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->isLayoutRtl()Z

    move-result v7

    iget v8, v6, Landroid/widget/LinearLayout;->mPaddingTop:I

    sub-int v9, p4, p2

    iget v0, v6, Landroid/widget/LinearLayout;->mPaddingBottom:I

    sub-int v10, v9, v0

    sub-int v0, v9, v8

    iget v1, v6, Landroid/widget/LinearLayout;->mPaddingBottom:I

    sub-int v11, v0, v1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getVirtualChildCount()I

    move-result v12

    iget v0, v6, Landroid/widget/LinearLayout;->mGravity:I

    const v1, 0x800007

    and-int v13, v0, v1

    iget v0, v6, Landroid/widget/LinearLayout;->mGravity:I

    and-int/lit8 v14, v0, 0x70

    iget-boolean v15, v6, Landroid/widget/LinearLayout;->mBaselineAligned:Z

    iget-object v5, v6, Landroid/widget/LinearLayout;->mMaxAscent:[I

    iget-object v4, v6, Landroid/widget/LinearLayout;->mMaxDescent:[I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getLayoutDirection()I

    move-result v3

    invoke-static {v13, v3}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v0

    const/16 v16, 0x2

    sparse-switch v0, :sswitch_data_0

    iget v0, v6, Landroid/widget/LinearLayout;->mPaddingLeft:I

    goto :goto_0

    :sswitch_0
    iget v0, v6, Landroid/widget/LinearLayout;->mPaddingLeft:I

    add-int v0, v0, p3

    sub-int v0, v0, p1

    iget v1, v6, Landroid/widget/LinearLayout;->mTotalLength:I

    sub-int/2addr v0, v1

    goto :goto_0

    :sswitch_1
    iget v0, v6, Landroid/widget/LinearLayout;->mPaddingLeft:I

    sub-int v1, p3, p1

    iget v2, v6, Landroid/widget/LinearLayout;->mTotalLength:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    nop

    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v7, :cond_0

    add-int/lit8 v1, v12, -0x1

    const/4 v2, -0x1

    move/from16 v17, v1

    move/from16 v18, v2

    goto :goto_1

    :cond_0
    move/from16 v17, v1

    move/from16 v18, v2

    :goto_1
    const/4 v1, 0x0

    move v2, v1

    :goto_2
    if-ge v2, v12, :cond_a

    mul-int v1, v18, v2

    add-int v1, v17, v1

    move/from16 v19, v9

    invoke-virtual {v6, v1}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v9

    const/16 v20, 0x1

    if-nez v9, :cond_1

    invoke-virtual {v6, v1}, Landroid/widget/LinearLayout;->measureNullChild(I)I

    move-result v21

    add-int v0, v0, v21

    move/from16 v22, v3

    move-object/from16 v31, v4

    move-object/from16 v32, v5

    move/from16 v29, v7

    move/from16 v30, v8

    move/from16 v28, v10

    move/from16 v26, v12

    goto/16 :goto_7

    :cond_1
    move/from16 v21, v2

    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v2

    move/from16 v22, v3

    const/16 v3, 0x8

    if-eq v2, v3, :cond_9

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v23

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v24

    const/4 v2, -0x1

    nop

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    move/from16 v25, v2

    const/4 v2, -0x1

    if-eqz v15, :cond_2

    move/from16 v26, v12

    iget v12, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    if-eq v12, v2, :cond_3

    invoke-virtual {v9}, Landroid/view/View;->getBaseline()I

    move-result v12

    goto :goto_3

    :cond_2
    move/from16 v26, v12

    :cond_3
    move/from16 v12, v25

    :goto_3
    iget v2, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    if-gez v2, :cond_4

    move v2, v14

    move/from16 v27, v2

    goto :goto_4

    :cond_4
    move/from16 v27, v2

    :goto_4
    and-int/lit8 v2, v27, 0x70

    sparse-switch v2, :sswitch_data_1

    move/from16 v28, v10

    move v2, v8

    move v10, v2

    goto :goto_5

    :sswitch_2
    sub-int v2, v10, v24

    move/from16 v28, v10

    iget v10, v3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v2, v10

    const/4 v10, -0x1

    if-eq v12, v10, :cond_5

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    sub-int/2addr v10, v12

    aget v25, v4, v16

    sub-int v25, v25, v10

    sub-int v2, v2, v25

    move v10, v2

    goto :goto_5

    :cond_5
    move v10, v2

    goto :goto_5

    :sswitch_3
    move/from16 v28, v10

    iget v2, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v2, v8

    const/4 v10, -0x1

    if-eq v12, v10, :cond_6

    aget v10, v5, v20

    sub-int/2addr v10, v12

    add-int/2addr v2, v10

    move v10, v2

    goto :goto_5

    :cond_6
    move v10, v2

    goto :goto_5

    :sswitch_4
    move/from16 v28, v10

    sub-int v2, v11, v24

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v8

    iget v10, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v2, v10

    iget v10, v3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v2, v10

    move v10, v2

    :goto_5
    if-eqz v7, :cond_7

    invoke-direct {v6, v1}, Landroid/widget/LinearLayout;->hasDividerAfterChildAt(I)Z

    move-result v2

    if-eqz v2, :cond_8

    iget v2, v6, Landroid/widget/LinearLayout;->mDividerWidth:I

    add-int/2addr v0, v2

    goto :goto_6

    :cond_7
    invoke-virtual {v6, v1}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v2

    if-eqz v2, :cond_8

    iget v2, v6, Landroid/widget/LinearLayout;->mDividerWidth:I

    add-int/2addr v0, v2

    :cond_8
    :goto_6
    iget v2, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int v25, v0, v2

    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->getLocationOffset(Landroid/view/View;)I

    move-result v0

    add-int v2, v25, v0

    move-object/from16 v0, p0

    move/from16 v29, v7

    move v7, v1

    move-object v1, v9

    move/from16 v30, v8

    move-object v8, v3

    move v3, v10

    move-object/from16 v31, v4

    move/from16 v4, v23

    move-object/from16 v32, v5

    move/from16 v5, v24

    invoke-direct/range {v0 .. v5}, Landroid/widget/LinearLayout;->setChildFrame(Landroid/view/View;IIII)V

    iget v0, v8, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int v0, v23, v0

    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    add-int v25, v25, v0

    invoke-virtual {v6, v9, v7}, Landroid/widget/LinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v0

    add-int v2, v21, v0

    move/from16 v0, v25

    goto :goto_7

    :cond_9
    move-object/from16 v31, v4

    move-object/from16 v32, v5

    move/from16 v29, v7

    move/from16 v30, v8

    move/from16 v28, v10

    move/from16 v26, v12

    move v7, v1

    move/from16 v2, v21

    :goto_7
    add-int/lit8 v2, v2, 0x1

    move/from16 v9, v19

    move/from16 v3, v22

    move/from16 v12, v26

    move/from16 v10, v28

    move/from16 v7, v29

    move/from16 v8, v30

    move-object/from16 v4, v31

    move-object/from16 v5, v32

    goto/16 :goto_2

    :cond_a
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x10 -> :sswitch_4
        0x30 -> :sswitch_3
        0x50 -> :sswitch_2
    .end sparse-switch
.end method

.method greylist-max-o layoutVertical(IIII)V
    .locals 24

    move-object/from16 v6, p0

    iget v7, v6, Landroid/widget/LinearLayout;->mPaddingLeft:I

    sub-int v8, p3, p1

    iget v0, v6, Landroid/widget/LinearLayout;->mPaddingRight:I

    sub-int v9, v8, v0

    sub-int v0, v8, v7

    iget v1, v6, Landroid/widget/LinearLayout;->mPaddingRight:I

    sub-int v10, v0, v1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getVirtualChildCount()I

    move-result v11

    iget v0, v6, Landroid/widget/LinearLayout;->mGravity:I

    and-int/lit8 v12, v0, 0x70

    iget v0, v6, Landroid/widget/LinearLayout;->mGravity:I

    const v1, 0x800007

    and-int v13, v0, v1

    sparse-switch v12, :sswitch_data_0

    iget v0, v6, Landroid/widget/LinearLayout;->mPaddingTop:I

    goto :goto_0

    :sswitch_0
    iget v0, v6, Landroid/widget/LinearLayout;->mPaddingTop:I

    add-int v0, v0, p4

    sub-int v0, v0, p2

    iget v1, v6, Landroid/widget/LinearLayout;->mTotalLength:I

    sub-int/2addr v0, v1

    goto :goto_0

    :sswitch_1
    iget v0, v6, Landroid/widget/LinearLayout;->mPaddingTop:I

    sub-int v1, p4, p2

    iget v2, v6, Landroid/widget/LinearLayout;->mTotalLength:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    nop

    :goto_0
    const/4 v1, 0x0

    move v14, v1

    :goto_1
    if-ge v14, v11, :cond_4

    invoke-virtual {v6, v14}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v15

    if-nez v15, :cond_0

    invoke-virtual {v6, v14}, Landroid/widget/LinearLayout;->measureNullChild(I)I

    move-result v1

    add-int/2addr v0, v1

    move/from16 v23, v7

    goto/16 :goto_4

    :cond_0
    invoke-virtual {v15}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_3

    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    move-result v16

    invoke-virtual {v15}, Landroid/view/View;->getMeasuredHeight()I

    move-result v17

    nop

    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    if-gez v1, :cond_1

    move v1, v13

    move v4, v1

    goto :goto_2

    :cond_1
    move v4, v1

    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getLayoutDirection()I

    move-result v3

    invoke-static {v4, v3}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v18

    and-int/lit8 v1, v18, 0x7

    sparse-switch v1, :sswitch_data_1

    iget v1, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v1, v7

    move/from16 v19, v1

    goto :goto_3

    :sswitch_2
    sub-int v1, v9, v16

    iget v2, v5, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v1, v2

    move/from16 v19, v1

    goto :goto_3

    :sswitch_3
    sub-int v1, v10, v16

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v7

    iget v2, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v5, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v1, v2

    move/from16 v19, v1

    :goto_3
    invoke-virtual {v6, v14}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, v6, Landroid/widget/LinearLayout;->mDividerHeight:I

    add-int/2addr v0, v1

    :cond_2
    iget v1, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int v20, v0, v1

    invoke-virtual {v6, v15}, Landroid/widget/LinearLayout;->getLocationOffset(Landroid/view/View;)I

    move-result v0

    add-int v21, v20, v0

    move-object/from16 v0, p0

    move-object v1, v15

    move/from16 v2, v19

    move/from16 v22, v3

    move/from16 v3, v21

    move/from16 v21, v4

    move/from16 v4, v16

    move/from16 v23, v7

    move-object v7, v5

    move/from16 v5, v17

    invoke-direct/range {v0 .. v5}, Landroid/widget/LinearLayout;->setChildFrame(Landroid/view/View;IIII)V

    iget v0, v7, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int v0, v17, v0

    invoke-virtual {v6, v15}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    add-int v20, v20, v0

    invoke-virtual {v6, v15, v14}, Landroid/widget/LinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v0

    add-int/2addr v14, v0

    move/from16 v0, v20

    goto :goto_4

    :cond_3
    move/from16 v23, v7

    :goto_4
    add-int/lit8 v14, v14, 0x1

    move/from16 v7, v23

    goto/16 :goto_1

    :cond_4
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x50 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_3
        0x5 -> :sswitch_2
    .end sparse-switch
.end method

.method greylist-max-o measureChildBeforeLayout(Landroid/view/View;IIIII)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-virtual/range {v0 .. v5}, Landroid/widget/LinearLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    return-void
.end method

.method greylist-max-o measureHorizontal(II)V
    .locals 50

    move-object/from16 v7, p0

    move/from16 v8, p1

    move/from16 v9, p2

    const/4 v10, 0x0

    iput v10, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getVirtualChildCount()I

    move-result v11

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v12

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v13

    const/4 v6, 0x0

    const/4 v14, 0x0

    iget-object v15, v7, Landroid/widget/LinearLayout;->mMaxAscent:[I

    if-eqz v15, :cond_0

    iget-object v15, v7, Landroid/widget/LinearLayout;->mMaxDescent:[I

    if-nez v15, :cond_1

    :cond_0
    const/4 v15, 0x4

    new-array v10, v15, [I

    iput-object v10, v7, Landroid/widget/LinearLayout;->mMaxAscent:[I

    new-array v10, v15, [I

    iput-object v10, v7, Landroid/widget/LinearLayout;->mMaxDescent:[I

    :cond_1
    iget-object v10, v7, Landroid/widget/LinearLayout;->mMaxAscent:[I

    iget-object v15, v7, Landroid/widget/LinearLayout;->mMaxDescent:[I

    const/16 v17, 0x3

    move/from16 v18, v6

    const/4 v6, -0x1

    aput v6, v10, v17

    const/16 v19, 0x2

    aput v6, v10, v19

    const/16 v20, 0x1

    aput v6, v10, v20

    const/16 v16, 0x0

    aput v6, v10, v16

    aput v6, v15, v17

    aput v6, v15, v19

    aput v6, v15, v20

    aput v6, v15, v16

    iget-boolean v6, v7, Landroid/widget/LinearLayout;->mBaselineAligned:Z

    move/from16 v22, v14

    iget-boolean v14, v7, Landroid/widget/LinearLayout;->mUseLargestChild:Z

    const/high16 v9, 0x40000000    # 2.0f

    if-ne v12, v9, :cond_2

    move/from16 v23, v20

    goto :goto_0

    :cond_2
    const/16 v23, 0x0

    :goto_0
    const/high16 v24, -0x80000000

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v9, v27

    move/from16 v47, v5

    move v5, v0

    move/from16 v0, v47

    move/from16 v48, v3

    move v3, v1

    move/from16 v1, v48

    move/from16 v49, v18

    move/from16 v18, v4

    move/from16 v4, v24

    move/from16 v24, v22

    move/from16 v22, v49

    :goto_1
    const/16 v29, 0x0

    if-ge v9, v11, :cond_17

    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v8

    if-nez v8, :cond_3

    move/from16 v31, v1

    iget v1, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->measureNullChild(I)I

    move-result v28

    add-int v1, v1, v28

    iput v1, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    move/from16 v21, v6

    move/from16 v32, v11

    move/from16 v1, v31

    move/from16 v31, v12

    goto/16 :goto_e

    :cond_3
    move/from16 v31, v1

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v1

    move/from16 v32, v2

    const/16 v2, 0x8

    if-ne v1, v2, :cond_4

    invoke-virtual {v7, v8, v9}, Landroid/widget/LinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v1

    add-int/2addr v9, v1

    move/from16 v21, v6

    move/from16 v1, v31

    move/from16 v2, v32

    move/from16 v32, v11

    move/from16 v31, v12

    goto/16 :goto_e

    :cond_4
    add-int/lit8 v26, v26, 0x1

    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v1

    if-eqz v1, :cond_5

    iget v1, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    iget v2, v7, Landroid/widget/LinearLayout;->mDividerWidth:I

    add-int/2addr v1, v2

    iput v1, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    :cond_5
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    add-float v30, v0, v1

    iget v0, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    if-nez v0, :cond_6

    iget v0, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    cmpl-float v0, v0, v29

    if-lez v0, :cond_6

    move/from16 v0, v20

    goto :goto_2

    :cond_6
    const/4 v0, 0x0

    :goto_2
    move/from16 v33, v0

    const/high16 v0, 0x40000000    # 2.0f

    if-ne v12, v0, :cond_9

    if-eqz v33, :cond_9

    if-eqz v23, :cond_7

    iget v0, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    iget v1, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    move/from16 v34, v3

    iget v3, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v1, v3

    add-int/2addr v0, v1

    iput v0, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    goto :goto_3

    :cond_7
    move/from16 v34, v3

    iget v0, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    iget v1, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v1, v0

    iget v3, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    :goto_3
    if-eqz v6, :cond_8

    nop

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    move-result v0

    nop

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    invoke-static {v3, v1}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v8, v0, v3}, Landroid/view/View;->measure(II)V

    move-object v1, v2

    move/from16 v21, v6

    move/from16 v36, v31

    move/from16 v37, v32

    move/from16 v39, v34

    move/from16 v32, v11

    move/from16 v31, v12

    const/4 v11, -0x1

    move v12, v5

    goto/16 :goto_7

    :cond_8
    const/16 v24, 0x1

    move-object v1, v2

    move/from16 v21, v6

    move/from16 v36, v31

    move/from16 v37, v32

    move/from16 v39, v34

    move/from16 v32, v11

    move/from16 v31, v12

    const/4 v11, -0x1

    move v12, v5

    goto/16 :goto_7

    :cond_9
    move/from16 v34, v3

    if-eqz v33, :cond_a

    const/4 v0, -0x2

    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    :cond_a
    cmpl-float v0, v30, v29

    if-nez v0, :cond_b

    iget v0, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    goto :goto_4

    :cond_b
    const/4 v0, 0x0

    :goto_4
    move v3, v4

    move v4, v0

    const/16 v35, 0x0

    move-object/from16 v0, p0

    move/from16 v36, v31

    move-object v1, v8

    move-object/from16 v38, v2

    move/from16 v37, v32

    move v2, v9

    move/from16 v40, v3

    move/from16 v39, v34

    move/from16 v3, p1

    move/from16 v31, v12

    move v12, v5

    move/from16 v5, p2

    move/from16 v21, v6

    move/from16 v32, v11

    const/4 v11, -0x1

    move/from16 v6, v35

    invoke-virtual/range {v0 .. v6}, Landroid/widget/LinearLayout;->measureChildBeforeLayout(Landroid/view/View;IIIII)V

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    if-eqz v33, :cond_c

    move-object/from16 v1, v38

    const/4 v2, 0x0

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    add-int v25, v25, v0

    goto :goto_5

    :cond_c
    move-object/from16 v1, v38

    :goto_5
    if-eqz v23, :cond_d

    iget v2, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    iget v3, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v3, v0

    iget v5, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v3, v5

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v5

    add-int/2addr v3, v5

    add-int/2addr v2, v3

    iput v2, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    goto :goto_6

    :cond_d
    iget v2, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    add-int v3, v2, v0

    iget v5, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v3, v5

    iget v5, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v3, v5

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v5

    add-int/2addr v3, v5

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    :goto_6
    if-eqz v14, :cond_e

    move/from16 v2, v40

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    move v4, v2

    goto :goto_7

    :cond_e
    move/from16 v2, v40

    move v4, v2

    :goto_7
    const/4 v0, 0x0

    const/high16 v2, 0x40000000    # 2.0f

    if-eq v13, v2, :cond_f

    iget v2, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    if-ne v2, v11, :cond_f

    const/16 v22, 0x1

    const/4 v0, 0x1

    :cond_f
    iget v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget v3, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v2, v3

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredState()I

    move-result v5

    move/from16 v6, v39

    invoke-static {v6, v5}, Landroid/widget/LinearLayout;->combineMeasuredStates(II)I

    move-result v5

    if-eqz v21, :cond_12

    invoke-virtual {v8}, Landroid/view/View;->getBaseline()I

    move-result v6

    if-eq v6, v11, :cond_11

    iget v11, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    if-gez v11, :cond_10

    iget v11, v7, Landroid/widget/LinearLayout;->mGravity:I

    goto :goto_8

    :cond_10
    iget v11, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    :goto_8
    and-int/lit8 v11, v11, 0x70

    shr-int/lit8 v35, v11, 0x4

    const/16 v28, -0x2

    and-int/lit8 v28, v35, -0x2

    shr-int/lit8 v28, v28, 0x1

    move/from16 v35, v2

    aget v2, v10, v28

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    aput v2, v10, v28

    aget v2, v15, v28

    move/from16 v38, v4

    sub-int v4, v3, v6

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    aput v2, v15, v28

    goto :goto_9

    :cond_11
    move/from16 v35, v2

    move/from16 v38, v4

    goto :goto_9

    :cond_12
    move/from16 v35, v2

    move/from16 v38, v4

    :goto_9
    invoke-static {v12, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-eqz v18, :cond_13

    iget v4, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v6, -0x1

    if-ne v4, v6, :cond_13

    move/from16 v4, v20

    goto :goto_a

    :cond_13
    const/4 v4, 0x0

    :goto_a
    iget v6, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    cmpl-float v6, v6, v29

    if-lez v6, :cond_15

    nop

    if-eqz v0, :cond_14

    move/from16 v6, v35

    goto :goto_b

    :cond_14
    move v6, v3

    :goto_b
    move/from16 v11, v36

    invoke-static {v11, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    goto :goto_d

    :cond_15
    move/from16 v11, v36

    if-eqz v0, :cond_16

    move/from16 v6, v35

    goto :goto_c

    :cond_16
    move v6, v3

    :goto_c
    move/from16 v12, v37

    invoke-static {v12, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    move/from16 v37, v6

    move v6, v11

    :goto_d
    invoke-virtual {v7, v8, v9}, Landroid/widget/LinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v11

    add-int/2addr v9, v11

    move/from16 v18, v4

    move v3, v5

    move v1, v6

    move/from16 v0, v30

    move/from16 v4, v38

    move v5, v2

    move/from16 v2, v37

    :goto_e
    add-int/lit8 v9, v9, 0x1

    move/from16 v8, p1

    move/from16 v6, v21

    move/from16 v12, v31

    move/from16 v11, v32

    goto/16 :goto_1

    :cond_17
    move/from16 v21, v6

    move/from16 v32, v11

    move/from16 v31, v12

    const/16 v28, -0x2

    move v11, v1

    move v1, v2

    move v6, v3

    move v2, v4

    move v12, v5

    if-lez v26, :cond_18

    move/from16 v3, v32

    invoke-virtual {v7, v3}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v4

    if-eqz v4, :cond_19

    iget v4, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    iget v5, v7, Landroid/widget/LinearLayout;->mDividerWidth:I

    add-int/2addr v4, v5

    iput v4, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    goto :goto_f

    :cond_18
    move/from16 v3, v32

    :cond_19
    :goto_f
    aget v4, v10, v20

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1b

    const/4 v4, 0x0

    aget v8, v10, v4

    if-ne v8, v5, :cond_1b

    aget v4, v10, v19

    if-ne v4, v5, :cond_1b

    aget v4, v10, v17

    if-eq v4, v5, :cond_1a

    goto :goto_10

    :cond_1a
    move/from16 v39, v6

    move v5, v12

    goto :goto_11

    :cond_1b
    :goto_10
    aget v4, v10, v17

    const/4 v5, 0x0

    aget v8, v10, v5

    aget v9, v10, v20

    aget v5, v10, v19

    invoke-static {v9, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v8, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    aget v5, v15, v17

    const/4 v8, 0x0

    aget v9, v15, v8

    aget v8, v15, v20

    move/from16 v39, v6

    aget v6, v15, v19

    invoke-static {v8, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {v9, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    add-int v6, v4, v5

    invoke-static {v12, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    move v5, v6

    :goto_11
    if-eqz v14, :cond_23

    const/high16 v4, -0x80000000

    move/from16 v6, v31

    if-eq v6, v4, :cond_1d

    if-nez v6, :cond_1c

    goto :goto_12

    :cond_1c
    move/from16 v31, v5

    goto/16 :goto_16

    :cond_1d
    :goto_12
    const/4 v4, 0x0

    iput v4, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    const/4 v4, 0x0

    const/4 v8, 0x0

    move/from16 v26, v4

    :goto_13
    if-ge v8, v3, :cond_22

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_1e

    iget v9, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->measureNullChild(I)I

    move-result v12

    add-int/2addr v9, v12

    iput v9, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    move/from16 v31, v5

    goto :goto_15

    :cond_1e
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v9

    const/16 v12, 0x8

    if-ne v9, v12, :cond_1f

    invoke-virtual {v7, v4, v8}, Landroid/widget/LinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v9

    add-int/2addr v8, v9

    move/from16 v31, v5

    goto :goto_15

    :cond_1f
    add-int/lit8 v26, v26, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v9

    if-eqz v9, :cond_20

    iget v9, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    iget v12, v7, Landroid/widget/LinearLayout;->mDividerWidth:I

    add-int/2addr v9, v12

    iput v9, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    :cond_20
    nop

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v23, :cond_21

    iget v12, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    move/from16 v31, v5

    iget v5, v9, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v5, v2

    move/from16 v32, v8

    iget v8, v9, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v5, v8

    invoke-virtual {v7, v4}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v8

    add-int/2addr v5, v8

    add-int/2addr v12, v5

    iput v12, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    goto :goto_14

    :cond_21
    move/from16 v31, v5

    move/from16 v32, v8

    iget v5, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    add-int v8, v5, v2

    iget v12, v9, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v8, v12

    iget v12, v9, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v8, v12

    invoke-virtual {v7, v4}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v12

    add-int/2addr v8, v12

    invoke-static {v5, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    iput v8, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    :goto_14
    move/from16 v8, v32

    :goto_15
    add-int/lit8 v8, v8, 0x1

    move/from16 v5, v31

    goto :goto_13

    :cond_22
    move/from16 v31, v5

    move/from16 v32, v8

    if-lez v26, :cond_24

    invoke-virtual {v7, v3}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v4

    if-eqz v4, :cond_24

    iget v4, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    iget v5, v7, Landroid/widget/LinearLayout;->mDividerWidth:I

    add-int/2addr v4, v5

    iput v4, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    goto :goto_16

    :cond_23
    move/from16 v6, v31

    move/from16 v31, v5

    :cond_24
    :goto_16
    iget v4, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    iget v5, v7, Landroid/widget/LinearLayout;->mPaddingLeft:I

    iget v8, v7, Landroid/widget/LinearLayout;->mPaddingRight:I

    add-int/2addr v5, v8

    add-int/2addr v4, v5

    iput v4, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    iget v4, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getSuggestedMinimumWidth()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    move/from16 v5, p1

    move/from16 v8, v28

    const/4 v9, 0x0

    invoke-static {v4, v5, v9}, Landroid/widget/LinearLayout;->resolveSizeAndState(III)I

    move-result v12

    const v9, 0xffffff

    and-int v4, v12, v9

    iget v9, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    sub-int v9, v4, v9

    iget-boolean v8, v7, Landroid/widget/LinearLayout;->mAllowInconsistentMeasurement:Z

    if-eqz v8, :cond_25

    const/4 v8, 0x0

    goto :goto_17

    :cond_25
    move/from16 v8, v25

    :goto_17
    add-int/2addr v9, v8

    if-nez v24, :cond_2d

    sget-boolean v32, Landroid/widget/LinearLayout;->sRemeasureWeightedChildren:Z

    if-nez v32, :cond_26

    if-eqz v9, :cond_27

    :cond_26
    cmpl-float v32, v0, v29

    if-lez v32, :cond_27

    move/from16 v33, v0

    move/from16 v35, v4

    move/from16 v36, v9

    goto/16 :goto_1b

    :cond_27
    invoke-static {v1, v11}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-eqz v14, :cond_2c

    const/high16 v8, 0x40000000    # 2.0f

    if-eq v6, v8, :cond_2c

    const/4 v8, 0x0

    :goto_18
    if-ge v8, v3, :cond_2b

    move/from16 v33, v0

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2a

    move/from16 v16, v1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    move/from16 v35, v4

    const/16 v4, 0x8

    if-ne v1, v4, :cond_28

    move/from16 v36, v9

    goto :goto_19

    :cond_28
    nop

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v4, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    cmpl-float v17, v4, v29

    if-lez v17, :cond_29

    nop

    move-object/from16 v17, v1

    move/from16 v19, v4

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    move/from16 v36, v9

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    invoke-static {v9, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    invoke-virtual {v0, v4, v9}, Landroid/view/View;->measure(II)V

    goto :goto_19

    :cond_29
    move-object/from16 v17, v1

    move/from16 v19, v4

    move/from16 v36, v9

    goto :goto_19

    :cond_2a
    move/from16 v16, v1

    move/from16 v35, v4

    move/from16 v36, v9

    :goto_19
    add-int/lit8 v8, v8, 0x1

    move/from16 v1, v16

    move/from16 v0, v33

    move/from16 v4, v35

    move/from16 v9, v36

    goto :goto_18

    :cond_2b
    move/from16 v33, v0

    move/from16 v16, v1

    move/from16 v35, v4

    move/from16 v36, v9

    goto :goto_1a

    :cond_2c
    move/from16 v33, v0

    move/from16 v16, v1

    move/from16 v35, v4

    move/from16 v36, v9

    :goto_1a
    move/from16 v40, v2

    move/from16 v43, v6

    move/from16 v37, v12

    move/from16 v1, v16

    move/from16 v5, v31

    move/from16 v9, v36

    move/from16 v4, v39

    move/from16 v6, p2

    move/from16 v36, v11

    move/from16 v31, v14

    goto/16 :goto_2b

    :cond_2d
    move/from16 v33, v0

    move/from16 v35, v4

    move/from16 v36, v9

    :goto_1b
    iget v0, v7, Landroid/widget/LinearLayout;->mWeightSum:F

    cmpl-float v0, v0, v29

    if-lez v0, :cond_2e

    iget v0, v7, Landroid/widget/LinearLayout;->mWeightSum:F

    goto :goto_1c

    :cond_2e
    move/from16 v0, v33

    :goto_1c
    const/4 v4, -0x1

    aput v4, v10, v17

    aput v4, v10, v19

    aput v4, v10, v20

    const/4 v8, 0x0

    aput v4, v10, v8

    aput v4, v15, v17

    aput v4, v15, v19

    aput v4, v15, v20

    aput v4, v15, v8

    const/4 v4, -0x1

    iput v8, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    move/from16 v26, v8

    move v8, v4

    move/from16 v4, v39

    move/from16 v47, v36

    move/from16 v36, v11

    move/from16 v11, v47

    :goto_1d
    if-ge v9, v3, :cond_3e

    move/from16 v31, v14

    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v14

    if-eqz v14, :cond_3d

    invoke-virtual {v14}, Landroid/view/View;->getVisibility()I

    move-result v5

    move/from16 v37, v12

    const/16 v12, 0x8

    if-ne v5, v12, :cond_2f

    move/from16 v40, v2

    move/from16 v38, v3

    move/from16 v43, v6

    move v2, v11

    const/16 v28, -0x2

    move/from16 v6, p2

    goto/16 :goto_26

    :cond_2f
    add-int/lit8 v26, v26, 0x1

    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v5

    if-eqz v5, :cond_30

    iget v5, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    iget v12, v7, Landroid/widget/LinearLayout;->mDividerWidth:I

    add-int/2addr v5, v12

    iput v5, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    :cond_30
    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    iget v12, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    cmpl-float v38, v12, v29

    if-lez v38, :cond_34

    move/from16 v38, v3

    int-to-float v3, v11

    mul-float/2addr v3, v12

    div-float/2addr v3, v0

    float-to-int v3, v3

    sub-int/2addr v11, v3

    sub-float/2addr v0, v12

    move/from16 v39, v0

    iget-boolean v0, v7, Landroid/widget/LinearLayout;->mUseLargestChild:Z

    if-eqz v0, :cond_31

    const/high16 v0, 0x40000000    # 2.0f

    if-eq v6, v0, :cond_31

    move v0, v2

    goto :goto_1e

    :cond_31
    iget v0, v5, Landroid/widget/LinearLayout$LayoutParams;->width:I

    if-nez v0, :cond_33

    iget-boolean v0, v7, Landroid/widget/LinearLayout;->mAllowInconsistentMeasurement:Z

    if-eqz v0, :cond_32

    const/high16 v0, 0x40000000    # 2.0f

    if-ne v6, v0, :cond_33

    :cond_32
    move v0, v3

    goto :goto_1e

    :cond_33
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, v3

    :goto_1e
    nop

    move/from16 v40, v2

    move/from16 v41, v3

    const/4 v2, 0x0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    iget v2, v7, Landroid/widget/LinearLayout;->mPaddingTop:I

    move/from16 v42, v0

    iget v0, v7, Landroid/widget/LinearLayout;->mPaddingBottom:I

    add-int/2addr v2, v0

    iget v0, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v2, v0

    iget v0, v5, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v2, v0

    iget v0, v5, Landroid/widget/LinearLayout$LayoutParams;->height:I

    move/from16 v43, v6

    move/from16 v27, v11

    const/high16 v11, 0x40000000    # 2.0f

    move/from16 v6, p2

    invoke-static {v6, v2, v0}, Landroid/widget/LinearLayout;->getChildMeasureSpec(III)I

    move-result v0

    invoke-virtual {v14, v3, v0}, Landroid/view/View;->measure(II)V

    nop

    invoke-virtual {v14}, Landroid/view/View;->getMeasuredState()I

    move-result v2

    const/high16 v32, -0x1000000

    and-int v2, v2, v32

    invoke-static {v4, v2}, Landroid/widget/LinearLayout;->combineMeasuredStates(II)I

    move-result v4

    move/from16 v2, v27

    move/from16 v0, v39

    goto :goto_1f

    :cond_34
    move/from16 v40, v2

    move/from16 v38, v3

    move/from16 v43, v6

    move v2, v11

    const/high16 v11, 0x40000000    # 2.0f

    move/from16 v6, p2

    :goto_1f
    if-eqz v23, :cond_35

    iget v3, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v27

    iget v11, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int v27, v27, v11

    iget v11, v5, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int v27, v27, v11

    invoke-virtual {v7, v14}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v11

    add-int v27, v27, v11

    add-int v3, v3, v27

    iput v3, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    move/from16 v27, v0

    goto :goto_20

    :cond_35
    iget v3, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    add-int/2addr v11, v3

    move/from16 v27, v0

    iget v0, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v11, v0

    iget v0, v5, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v11, v0

    invoke-virtual {v7, v14}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v0

    add-int/2addr v11, v0

    invoke-static {v3, v11}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    :goto_20
    const/high16 v0, 0x40000000    # 2.0f

    if-eq v13, v0, :cond_36

    iget v0, v5, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_36

    move/from16 v0, v20

    goto :goto_21

    :cond_36
    const/4 v0, 0x0

    :goto_21
    iget v3, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget v11, v5, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v3, v11

    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    add-int/2addr v11, v3

    invoke-static {v8, v11}, Ljava/lang/Math;->max(II)I

    move-result v8

    nop

    move/from16 v41, v0

    if-eqz v0, :cond_37

    move v0, v3

    goto :goto_22

    :cond_37
    move v0, v11

    :goto_22
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-eqz v18, :cond_38

    iget v1, v5, Landroid/widget/LinearLayout$LayoutParams;->height:I

    move/from16 v42, v0

    const/4 v0, -0x1

    if-ne v1, v0, :cond_39

    move/from16 v0, v20

    goto :goto_23

    :cond_38
    move/from16 v42, v0

    :cond_39
    const/4 v0, 0x0

    :goto_23
    if-eqz v21, :cond_3c

    invoke-virtual {v14}, Landroid/view/View;->getBaseline()I

    move-result v1

    move/from16 v18, v0

    const/4 v0, -0x1

    if-eq v1, v0, :cond_3b

    iget v0, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    if-gez v0, :cond_3a

    iget v0, v7, Landroid/widget/LinearLayout;->mGravity:I

    goto :goto_24

    :cond_3a
    iget v0, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    :goto_24
    and-int/lit8 v0, v0, 0x70

    shr-int/lit8 v44, v0, 0x4

    const/16 v28, -0x2

    and-int/lit8 v44, v44, -0x2

    shr-int/lit8 v44, v44, 0x1

    move/from16 v45, v0

    aget v0, v10, v44

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    aput v0, v10, v44

    aget v0, v15, v44

    move/from16 v46, v2

    sub-int v2, v11, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    aput v0, v15, v44

    goto :goto_25

    :cond_3b
    move/from16 v46, v2

    const/16 v28, -0x2

    goto :goto_25

    :cond_3c
    move/from16 v18, v0

    move/from16 v46, v2

    const/16 v28, -0x2

    :goto_25
    move/from16 v0, v27

    move/from16 v1, v42

    move/from16 v11, v46

    goto :goto_27

    :cond_3d
    move/from16 v40, v2

    move/from16 v38, v3

    move/from16 v43, v6

    move v2, v11

    move/from16 v37, v12

    const/16 v28, -0x2

    move/from16 v6, p2

    :goto_26
    move v11, v2

    :goto_27
    add-int/lit8 v9, v9, 0x1

    move/from16 v5, p1

    move/from16 v14, v31

    move/from16 v12, v37

    move/from16 v3, v38

    move/from16 v2, v40

    move/from16 v6, v43

    goto/16 :goto_1d

    :cond_3e
    move/from16 v40, v2

    move/from16 v38, v3

    move/from16 v43, v6

    move v2, v11

    move/from16 v37, v12

    move/from16 v31, v14

    move/from16 v6, p2

    if-lez v26, :cond_3f

    move/from16 v3, v38

    invoke-virtual {v7, v3}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v5

    if-eqz v5, :cond_40

    iget v5, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    iget v9, v7, Landroid/widget/LinearLayout;->mDividerWidth:I

    add-int/2addr v5, v9

    iput v5, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    goto :goto_28

    :cond_3f
    move/from16 v3, v38

    :cond_40
    :goto_28
    iget v5, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    iget v9, v7, Landroid/widget/LinearLayout;->mPaddingLeft:I

    iget v11, v7, Landroid/widget/LinearLayout;->mPaddingRight:I

    add-int/2addr v9, v11

    add-int/2addr v5, v9

    iput v5, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    aget v5, v10, v20

    const/4 v9, -0x1

    if-ne v5, v9, :cond_42

    const/4 v5, 0x0

    aget v11, v10, v5

    if-ne v11, v9, :cond_42

    aget v5, v10, v19

    if-ne v5, v9, :cond_42

    aget v5, v10, v17

    if-eq v5, v9, :cond_41

    goto :goto_29

    :cond_41
    move v5, v8

    goto :goto_2a

    :cond_42
    :goto_29
    aget v5, v10, v17

    const/4 v9, 0x0

    aget v11, v10, v9

    aget v12, v10, v20

    aget v14, v10, v19

    invoke-static {v12, v14}, Ljava/lang/Math;->max(II)I

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    invoke-static {v5, v11}, Ljava/lang/Math;->max(II)I

    move-result v5

    aget v11, v15, v17

    aget v9, v15, v9

    aget v12, v15, v20

    aget v14, v15, v19

    invoke-static {v12, v14}, Ljava/lang/Math;->max(II)I

    move-result v12

    invoke-static {v9, v12}, Ljava/lang/Math;->max(II)I

    move-result v9

    invoke-static {v11, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    add-int v11, v5, v9

    invoke-static {v8, v11}, Ljava/lang/Math;->max(II)I

    move-result v8

    move v5, v8

    :goto_2a
    move v9, v2

    :goto_2b
    if-nez v18, :cond_43

    const/high16 v0, 0x40000000    # 2.0f

    if-eq v13, v0, :cond_43

    move v5, v1

    :cond_43
    iget v0, v7, Landroid/widget/LinearLayout;->mPaddingTop:I

    iget v2, v7, Landroid/widget/LinearLayout;->mPaddingBottom:I

    add-int/2addr v0, v2

    add-int/2addr v5, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getSuggestedMinimumHeight()I

    move-result v0

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/high16 v2, -0x1000000

    and-int/2addr v2, v4

    or-int v2, v37, v2

    shl-int/lit8 v5, v4, 0x10

    invoke-static {v0, v6, v5}, Landroid/widget/LinearLayout;->resolveSizeAndState(III)I

    move-result v5

    invoke-virtual {v7, v2, v5}, Landroid/widget/LinearLayout;->setMeasuredDimension(II)V

    if-eqz v22, :cond_44

    move/from16 v2, p1

    invoke-direct {v7, v3, v2}, Landroid/widget/LinearLayout;->forceUniformHeight(II)V

    goto :goto_2c

    :cond_44
    move/from16 v2, p1

    :goto_2c
    return-void
.end method

.method greylist-max-o measureNullChild(I)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method greylist-max-o measureVertical(II)V
    .locals 41

    move-object/from16 v7, p0

    move/from16 v8, p1

    move/from16 v9, p2

    const/4 v10, 0x0

    iput v10, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getVirtualChildCount()I

    move-result v11

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v12

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v13

    const/4 v6, 0x0

    const/4 v14, 0x0

    iget v15, v7, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    iget-boolean v10, v7, Landroid/widget/LinearLayout;->mUseLargestChild:Z

    const/high16 v17, -0x80000000

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v38, v14

    move v14, v0

    move v0, v5

    move v5, v1

    move/from16 v1, v19

    move/from16 v19, v38

    move/from16 v39, v4

    move v4, v2

    move/from16 v2, v17

    move/from16 v17, v39

    move/from16 v40, v18

    move/from16 v18, v6

    move/from16 v6, v20

    move/from16 v20, v40

    :goto_0
    move/from16 v21, v4

    const/16 v23, 0x0

    const/16 v25, 0x1

    if-ge v6, v11, :cond_13

    invoke-virtual {v7, v6}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_0

    move/from16 v27, v2

    iget v2, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    invoke-virtual {v7, v6}, Landroid/widget/LinearLayout;->measureNullChild(I)I

    move-result v22

    add-int v2, v2, v22

    iput v2, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    move/from16 v22, v11

    move/from16 v4, v21

    move/from16 v2, v27

    move/from16 v27, v13

    goto/16 :goto_a

    :cond_0
    move/from16 v27, v2

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v2

    move/from16 v28, v3

    const/16 v3, 0x8

    if-ne v2, v3, :cond_1

    invoke-virtual {v7, v4, v6}, Landroid/widget/LinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v2

    add-int/2addr v6, v2

    move/from16 v22, v11

    move/from16 v4, v21

    move/from16 v2, v27

    move/from16 v3, v28

    move/from16 v27, v13

    goto/16 :goto_a

    :cond_1
    add-int/lit8 v24, v1, 0x1

    invoke-virtual {v7, v6}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    iget v2, v7, Landroid/widget/LinearLayout;->mDividerHeight:I

    add-int/2addr v1, v2

    iput v1, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    :cond_2
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    add-float v29, v0, v1

    iget v0, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    if-nez v0, :cond_3

    iget v0, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    cmpl-float v0, v0, v23

    if-lez v0, :cond_3

    move/from16 v0, v25

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    move/from16 v30, v0

    const/high16 v2, 0x40000000    # 2.0f

    if-ne v13, v2, :cond_4

    if-eqz v30, :cond_4

    iget v0, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    iget v1, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v1, v0

    iget v2, v3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    const/16 v19, 0x1

    move-object v9, v3

    move-object v3, v4

    move/from16 v34, v5

    move/from16 v32, v6

    move/from16 v22, v11

    move/from16 v2, v27

    move/from16 v8, v28

    const/high16 v11, 0x40000000    # 2.0f

    move/from16 v27, v13

    move/from16 v13, v21

    goto/16 :goto_3

    :cond_4
    if-eqz v30, :cond_5

    const/4 v0, -0x2

    iput v0, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    :cond_5
    cmpl-float v0, v29, v23

    if-nez v0, :cond_6

    iget v0, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    goto :goto_2

    :cond_6
    const/4 v0, 0x0

    :goto_2
    move v1, v6

    move v6, v0

    const/16 v31, 0x0

    move-object/from16 v0, p0

    move/from16 v32, v1

    move-object v1, v4

    move/from16 v33, v27

    const/high16 v26, 0x40000000    # 2.0f

    move/from16 v2, v32

    move-object v9, v3

    move/from16 v8, v28

    move/from16 v3, p1

    move/from16 v22, v11

    move/from16 v27, v13

    move/from16 v13, v21

    move/from16 v11, v26

    move-object/from16 v21, v4

    move/from16 v4, v31

    move/from16 v34, v5

    move/from16 v5, p2

    invoke-virtual/range {v0 .. v6}, Landroid/widget/LinearLayout;->measureChildBeforeLayout(Landroid/view/View;IIIII)V

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    if-eqz v30, :cond_7

    const/4 v1, 0x0

    iput v1, v9, Landroid/widget/LinearLayout$LayoutParams;->height:I

    add-int v20, v20, v0

    :cond_7
    iget v1, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    add-int v2, v1, v0

    iget v3, v9, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v2, v3

    iget v3, v9, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v2, v3

    move-object/from16 v3, v21

    invoke-virtual {v7, v3}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v4

    add-int/2addr v2, v4

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    if-eqz v10, :cond_8

    move/from16 v2, v33

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_3

    :cond_8
    move/from16 v2, v33

    :goto_3
    if-ltz v15, :cond_9

    move/from16 v4, v32

    add-int/lit8 v6, v4, 0x1

    if-ne v15, v6, :cond_a

    iget v0, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    iput v0, v7, Landroid/widget/LinearLayout;->mBaselineChildTop:I

    goto :goto_4

    :cond_9
    move/from16 v4, v32

    :cond_a
    :goto_4
    if-ge v4, v15, :cond_c

    iget v0, v9, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    cmpl-float v0, v0, v23

    if-gtz v0, :cond_b

    goto :goto_5

    :cond_b
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "A child of LinearLayout with index less than mBaselineAlignedChildIndex has weight > 0, which won\'t work.  Either remove the weight, or don\'t set mBaselineAlignedChildIndex."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    :goto_5
    const/4 v0, 0x0

    if-eq v12, v11, :cond_d

    iget v1, v9, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v5, -0x1

    if-ne v1, v5, :cond_d

    const/16 v18, 0x1

    const/4 v0, 0x1

    :cond_d
    iget v1, v9, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget v5, v9, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v1, v5

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v5, v1

    invoke-static {v14, v5}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredState()I

    move-result v11

    move/from16 v14, v34

    invoke-static {v14, v11}, Landroid/widget/LinearLayout;->combineMeasuredStates(II)I

    move-result v11

    if-eqz v17, :cond_e

    iget v14, v9, Landroid/widget/LinearLayout$LayoutParams;->width:I

    move/from16 v21, v1

    const/4 v1, -0x1

    if-ne v14, v1, :cond_f

    move/from16 v1, v25

    goto :goto_6

    :cond_e
    move/from16 v21, v1

    :cond_f
    const/4 v1, 0x0

    :goto_6
    iget v14, v9, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    cmpl-float v14, v14, v23

    if-lez v14, :cond_11

    nop

    if-eqz v0, :cond_10

    move/from16 v14, v21

    goto :goto_7

    :cond_10
    move v14, v5

    :goto_7
    invoke-static {v8, v14}, Ljava/lang/Math;->max(II)I

    move-result v8

    goto :goto_9

    :cond_11
    nop

    if-eqz v0, :cond_12

    move/from16 v14, v21

    goto :goto_8

    :cond_12
    move v14, v5

    :goto_8
    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v13

    :goto_9
    invoke-virtual {v7, v3, v4}, Landroid/widget/LinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v14

    add-int/2addr v4, v14

    move/from16 v17, v1

    move v14, v6

    move v3, v8

    move v5, v11

    move/from16 v1, v24

    move/from16 v0, v29

    move v6, v4

    move v4, v13

    :goto_a
    add-int/lit8 v6, v6, 0x1

    move/from16 v8, p1

    move/from16 v9, p2

    move/from16 v11, v22

    move/from16 v13, v27

    goto/16 :goto_0

    :cond_13
    move v8, v3

    move v4, v6

    move/from16 v22, v11

    move/from16 v27, v13

    move/from16 v13, v21

    const/high16 v11, 0x40000000    # 2.0f

    if-lez v1, :cond_14

    move/from16 v3, v22

    invoke-virtual {v7, v3}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v4

    if-eqz v4, :cond_15

    iget v4, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    iget v6, v7, Landroid/widget/LinearLayout;->mDividerHeight:I

    add-int/2addr v4, v6

    iput v4, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    goto :goto_b

    :cond_14
    move/from16 v3, v22

    :cond_15
    :goto_b
    if-eqz v10, :cond_1b

    const/high16 v4, -0x80000000

    move/from16 v6, v27

    if-eq v6, v4, :cond_17

    if-nez v6, :cond_16

    goto :goto_c

    :cond_16
    move/from16 v22, v1

    goto :goto_10

    :cond_17
    :goto_c
    const/4 v4, 0x0

    iput v4, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    const/4 v4, 0x0

    :goto_d
    if-ge v4, v3, :cond_1a

    invoke-virtual {v7, v4}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v9

    if-nez v9, :cond_18

    iget v11, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    invoke-virtual {v7, v4}, Landroid/widget/LinearLayout;->measureNullChild(I)I

    move-result v22

    add-int v11, v11, v22

    iput v11, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    move/from16 v22, v1

    move/from16 v28, v4

    goto :goto_e

    :cond_18
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v11

    move/from16 v22, v1

    const/16 v1, 0x8

    if-ne v11, v1, :cond_19

    invoke-virtual {v7, v9, v4}, Landroid/widget/LinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v1

    add-int/2addr v4, v1

    goto :goto_f

    :cond_19
    nop

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v11, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    add-int v27, v11, v2

    move/from16 v28, v4

    iget v4, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int v27, v27, v4

    iget v4, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int v27, v27, v4

    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v4

    add-int v4, v27, v4

    invoke-static {v11, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    :goto_e
    move/from16 v4, v28

    :goto_f
    add-int/lit8 v4, v4, 0x1

    move/from16 v1, v22

    const/high16 v11, 0x40000000    # 2.0f

    goto :goto_d

    :cond_1a
    move/from16 v22, v1

    move/from16 v28, v4

    goto :goto_10

    :cond_1b
    move/from16 v22, v1

    move/from16 v6, v27

    :goto_10
    iget v1, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    iget v4, v7, Landroid/widget/LinearLayout;->mPaddingTop:I

    iget v9, v7, Landroid/widget/LinearLayout;->mPaddingBottom:I

    add-int/2addr v4, v9

    add-int/2addr v1, v4

    iput v1, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    iget v1, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getSuggestedMinimumHeight()I

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    move/from16 v4, p2

    const/4 v9, 0x0

    invoke-static {v1, v4, v9}, Landroid/widget/LinearLayout;->resolveSizeAndState(III)I

    move-result v11

    const v9, 0xffffff

    and-int v1, v11, v9

    iget v9, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    sub-int v9, v1, v9

    move/from16 v27, v1

    iget-boolean v1, v7, Landroid/widget/LinearLayout;->mAllowInconsistentMeasurement:Z

    if-eqz v1, :cond_1c

    const/4 v1, 0x0

    goto :goto_11

    :cond_1c
    move/from16 v1, v20

    :goto_11
    add-int/2addr v9, v1

    if-nez v19, :cond_24

    sget-boolean v1, Landroid/widget/LinearLayout;->sRemeasureWeightedChildren:Z

    if-nez v1, :cond_1d

    if-eqz v9, :cond_1e

    :cond_1d
    cmpl-float v1, v0, v23

    if-lez v1, :cond_1e

    move/from16 v28, v0

    move/from16 v34, v5

    move/from16 v29, v8

    goto/16 :goto_15

    :cond_1e
    invoke-static {v13, v8}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-eqz v10, :cond_23

    const/high16 v13, 0x40000000    # 2.0f

    if-eq v6, v13, :cond_23

    const/4 v13, 0x0

    :goto_12
    if-ge v13, v3, :cond_22

    move/from16 v28, v0

    invoke-virtual {v7, v13}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_21

    move/from16 v16, v1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    move/from16 v34, v5

    const/16 v5, 0x8

    if-ne v1, v5, :cond_1f

    move/from16 v29, v8

    goto :goto_13

    :cond_1f
    nop

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v5, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    cmpl-float v25, v5, v23

    if-lez v25, :cond_20

    nop

    move-object/from16 v25, v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    move/from16 v26, v5

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    move/from16 v29, v8

    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-virtual {v0, v1, v8}, Landroid/view/View;->measure(II)V

    goto :goto_13

    :cond_20
    move-object/from16 v25, v1

    move/from16 v26, v5

    move/from16 v29, v8

    goto :goto_13

    :cond_21
    move/from16 v16, v1

    move/from16 v34, v5

    move/from16 v29, v8

    :goto_13
    add-int/lit8 v13, v13, 0x1

    move/from16 v1, v16

    move/from16 v0, v28

    move/from16 v8, v29

    move/from16 v5, v34

    goto :goto_12

    :cond_22
    move/from16 v28, v0

    move/from16 v16, v1

    move/from16 v34, v5

    move/from16 v29, v8

    goto :goto_14

    :cond_23
    move/from16 v28, v0

    move/from16 v16, v1

    move/from16 v34, v5

    move/from16 v29, v8

    :goto_14
    move/from16 v32, v3

    move/from16 v36, v6

    move/from16 v30, v10

    move/from16 v31, v15

    move/from16 v1, v16

    move/from16 v5, v34

    move/from16 v6, p1

    move/from16 v34, v2

    goto/16 :goto_1e

    :cond_24
    move/from16 v28, v0

    move/from16 v34, v5

    move/from16 v29, v8

    :goto_15
    iget v0, v7, Landroid/widget/LinearLayout;->mWeightSum:F

    cmpl-float v0, v0, v23

    if-lez v0, :cond_25

    iget v0, v7, Landroid/widget/LinearLayout;->mWeightSum:F

    goto :goto_16

    :cond_25
    move/from16 v0, v28

    :goto_16
    const/4 v1, 0x0

    iput v1, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    const/4 v1, 0x0

    move/from16 v5, v34

    :goto_17
    if-ge v1, v3, :cond_31

    invoke-virtual {v7, v1}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_30

    move/from16 v30, v10

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v10

    move/from16 v31, v15

    const/16 v15, 0x8

    if-ne v10, v15, :cond_26

    move/from16 v34, v2

    move/from16 v32, v3

    move/from16 v36, v6

    move/from16 v6, p1

    goto/16 :goto_1d

    :cond_26
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout$LayoutParams;

    iget v15, v10, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    cmpl-float v32, v15, v23

    if-lez v32, :cond_2a

    move/from16 v32, v3

    int-to-float v3, v9

    mul-float/2addr v3, v15

    div-float/2addr v3, v0

    float-to-int v3, v3

    sub-int/2addr v9, v3

    sub-float/2addr v0, v15

    move/from16 v33, v0

    iget-boolean v0, v7, Landroid/widget/LinearLayout;->mUseLargestChild:Z

    if-eqz v0, :cond_27

    const/high16 v0, 0x40000000    # 2.0f

    if-eq v6, v0, :cond_27

    move v0, v2

    goto :goto_18

    :cond_27
    iget v0, v10, Landroid/widget/LinearLayout$LayoutParams;->height:I

    if-nez v0, :cond_29

    iget-boolean v0, v7, Landroid/widget/LinearLayout;->mAllowInconsistentMeasurement:Z

    if-eqz v0, :cond_28

    const/high16 v0, 0x40000000    # 2.0f

    if-ne v6, v0, :cond_29

    :cond_28
    move v0, v3

    goto :goto_18

    :cond_29
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/2addr v0, v3

    :goto_18
    nop

    move/from16 v34, v2

    move/from16 v16, v3

    const/4 v2, 0x0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    iget v2, v7, Landroid/widget/LinearLayout;->mPaddingLeft:I

    move/from16 v35, v0

    iget v0, v7, Landroid/widget/LinearLayout;->mPaddingRight:I

    add-int/2addr v2, v0

    iget v0, v10, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v2, v0

    iget v0, v10, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v2, v0

    iget v0, v10, Landroid/widget/LinearLayout$LayoutParams;->width:I

    move/from16 v36, v6

    move/from16 v6, p1

    invoke-static {v6, v2, v0}, Landroid/widget/LinearLayout;->getChildMeasureSpec(III)I

    move-result v0

    invoke-virtual {v8, v0, v3}, Landroid/view/View;->measure(II)V

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredState()I

    move-result v2

    and-int/lit16 v2, v2, -0x100

    invoke-static {v5, v2}, Landroid/widget/LinearLayout;->combineMeasuredStates(II)I

    move-result v5

    move/from16 v0, v33

    goto :goto_19

    :cond_2a
    move/from16 v34, v2

    move/from16 v32, v3

    move/from16 v36, v6

    move/from16 v6, p1

    :goto_19
    iget v2, v10, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget v3, v10, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v2, v3

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v3, v2

    invoke-static {v14, v3}, Ljava/lang/Math;->max(II)I

    move-result v14

    move/from16 v16, v0

    const/high16 v0, 0x40000000    # 2.0f

    if-eq v12, v0, :cond_2b

    iget v0, v10, Landroid/widget/LinearLayout$LayoutParams;->width:I

    move/from16 v33, v2

    const/4 v2, -0x1

    if-ne v0, v2, :cond_2c

    move/from16 v0, v25

    goto :goto_1a

    :cond_2b
    move/from16 v33, v2

    :cond_2c
    const/4 v0, 0x0

    :goto_1a
    nop

    if-eqz v0, :cond_2d

    move/from16 v2, v33

    goto :goto_1b

    :cond_2d
    move v2, v3

    :goto_1b
    invoke-static {v13, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-eqz v17, :cond_2e

    iget v13, v10, Landroid/widget/LinearLayout$LayoutParams;->width:I

    move/from16 v35, v0

    const/4 v0, -0x1

    if-ne v13, v0, :cond_2f

    move/from16 v13, v25

    goto :goto_1c

    :cond_2e
    move/from16 v35, v0

    const/4 v0, -0x1

    :cond_2f
    const/4 v13, 0x0

    :goto_1c
    iget v0, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v17

    add-int v17, v0, v17

    move/from16 v37, v2

    iget v2, v10, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int v17, v17, v2

    iget v2, v10, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int v17, v17, v2

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v2

    add-int v2, v17, v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    move/from16 v17, v13

    move/from16 v0, v16

    move/from16 v13, v37

    goto :goto_1d

    :cond_30
    move/from16 v34, v2

    move/from16 v32, v3

    move/from16 v36, v6

    move/from16 v30, v10

    move/from16 v31, v15

    move/from16 v6, p1

    :goto_1d
    add-int/lit8 v1, v1, 0x1

    move/from16 v10, v30

    move/from16 v15, v31

    move/from16 v3, v32

    move/from16 v2, v34

    move/from16 v6, v36

    goto/16 :goto_17

    :cond_31
    move/from16 v34, v2

    move/from16 v32, v3

    move/from16 v36, v6

    move/from16 v30, v10

    move/from16 v31, v15

    move/from16 v6, p1

    iget v1, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    iget v2, v7, Landroid/widget/LinearLayout;->mPaddingTop:I

    iget v3, v7, Landroid/widget/LinearLayout;->mPaddingBottom:I

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    iput v1, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    move v1, v13

    :goto_1e
    if-nez v17, :cond_32

    const/high16 v0, 0x40000000    # 2.0f

    if-eq v12, v0, :cond_32

    move v14, v1

    :cond_32
    iget v0, v7, Landroid/widget/LinearLayout;->mPaddingLeft:I

    iget v2, v7, Landroid/widget/LinearLayout;->mPaddingRight:I

    add-int/2addr v0, v2

    add-int/2addr v14, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {v14, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0, v6, v5}, Landroid/widget/LinearLayout;->resolveSizeAndState(III)I

    move-result v2

    invoke-virtual {v7, v2, v11}, Landroid/widget/LinearLayout;->setMeasuredDimension(II)V

    if-eqz v18, :cond_33

    move/from16 v2, v32

    invoke-direct {v7, v2, v4}, Landroid/widget/LinearLayout;->forceUniformWidth(II)V

    goto :goto_1f

    :cond_33
    move/from16 v2, v32

    :goto_1f
    return-void
.end method

.method protected whitelist onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    iget-object v0, p0, Landroid/widget/LinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Landroid/widget/LinearLayout;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->drawDividersVertical(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->drawDividersHorizontal(Landroid/graphics/Canvas;)V

    :goto_0
    return-void
.end method

.method protected whitelist onLayout(ZIIII)V
    .locals 2

    iget v0, p0, Landroid/widget/LinearLayout;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p2, p3, p4, p5}, Landroid/widget/LinearLayout;->layoutVertical(IIII)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2, p3, p4, p5}, Landroid/widget/LinearLayout;->layoutHorizontal(IIII)V

    :goto_0
    return-void
.end method

.method protected whitelist onMeasure(II)V
    .locals 2

    iget v0, p0, Landroid/widget/LinearLayout;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1, p2}, Landroid/widget/LinearLayout;->measureVertical(II)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/widget/LinearLayout;->measureHorizontal(II)V

    :goto_0
    return-void
.end method

.method public whitelist onRtlPropertiesChanged(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRtlPropertiesChanged(I)V

    iget v0, p0, Landroid/widget/LinearLayout;->mLayoutDirection:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Landroid/widget/LinearLayout;->mLayoutDirection:I

    iget v0, p0, Landroid/widget/LinearLayout;->mOrientation:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    :cond_0
    return-void
.end method

.method public whitelist setBaselineAligned(Z)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput-boolean p1, p0, Landroid/widget/LinearLayout;->mBaselineAligned:Z

    return-void
.end method

.method public whitelist setBaselineAlignedChildIndex(I)V
    .locals 3
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    iput p1, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "base aligned child index out of range (0, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setDividerDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Landroid/widget/LinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Landroid/widget/LinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Landroid/widget/LinearLayout;->mDividerWidth:I

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Landroid/widget/LinearLayout;->mDividerHeight:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/LinearLayout;->mDividerWidth:I

    iput v0, p0, Landroid/widget/LinearLayout;->mDividerHeight:I

    :goto_0
    invoke-direct {p0}, Landroid/widget/LinearLayout;->isShowingDividers()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setWillNotDraw(Z)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    return-void
.end method

.method public whitelist setDividerPadding(I)V
    .locals 1

    iget v0, p0, Landroid/widget/LinearLayout;->mDividerPadding:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Landroid/widget/LinearLayout;->mDividerPadding:I

    invoke-direct {p0}, Landroid/widget/LinearLayout;->isShowingDividers()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    :cond_1
    return-void
.end method

.method public whitelist setGravity(I)V
    .locals 1
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iget v0, p0, Landroid/widget/LinearLayout;->mGravity:I

    if-eq v0, p1, :cond_2

    const v0, 0x800007

    and-int/2addr v0, p1

    if-nez v0, :cond_0

    const v0, 0x800003

    or-int/2addr p1, v0

    :cond_0
    and-int/lit8 v0, p1, 0x70

    if-nez v0, :cond_1

    or-int/lit8 p1, p1, 0x30

    :cond_1
    iput p1, p0, Landroid/widget/LinearLayout;->mGravity:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    :cond_2
    return-void
.end method

.method public whitelist setHorizontalGravity(I)V
    .locals 3
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    const v0, 0x800007

    and-int v1, p1, v0

    iget v2, p0, Landroid/widget/LinearLayout;->mGravity:I

    and-int/2addr v0, v2

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/widget/LinearLayout;->mGravity:I

    const v2, -0x800008

    and-int/2addr v0, v2

    or-int/2addr v0, v1

    iput v0, p0, Landroid/widget/LinearLayout;->mGravity:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    :cond_0
    return-void
.end method

.method public whitelist setMeasureWithLargestChildEnabled(Z)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput-boolean p1, p0, Landroid/widget/LinearLayout;->mUseLargestChild:Z

    return-void
.end method

.method public whitelist setOrientation(I)V
    .locals 1

    iget v0, p0, Landroid/widget/LinearLayout;->mOrientation:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Landroid/widget/LinearLayout;->mOrientation:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    :cond_0
    return-void
.end method

.method public whitelist setShowDividers(I)V
    .locals 1

    iget v0, p0, Landroid/widget/LinearLayout;->mShowDividers:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Landroid/widget/LinearLayout;->mShowDividers:I

    invoke-direct {p0}, Landroid/widget/LinearLayout;->isShowingDividers()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setWillNotDraw(Z)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    return-void
.end method

.method public whitelist setVerticalGravity(I)V
    .locals 2
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    and-int/lit8 v0, p1, 0x70

    iget v1, p0, Landroid/widget/LinearLayout;->mGravity:I

    and-int/lit8 v1, v1, 0x70

    if-eq v1, v0, :cond_0

    iget v1, p0, Landroid/widget/LinearLayout;->mGravity:I

    and-int/lit8 v1, v1, -0x71

    or-int/2addr v1, v0

    iput v1, p0, Landroid/widget/LinearLayout;->mGravity:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    :cond_0
    return-void
.end method

.method public whitelist setWeightSum(F)V
    .locals 1
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Landroid/widget/LinearLayout;->mWeightSum:F

    return-void
.end method

.method public whitelist shouldDelayChildPressedState()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
