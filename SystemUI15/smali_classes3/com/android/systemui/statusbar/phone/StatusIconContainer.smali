.class public Lcom/android/systemui/statusbar/phone/StatusIconContainer;
.super Lcom/android/keyguard/AlphaOptimizedLinearLayout;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final ADD_ICON_PROPERTIES:Lcom/android/systemui/statusbar/phone/StatusIconContainer$1;

.field public static final ANIMATE_ALL_PROPERTIES:Lcom/android/systemui/statusbar/phone/StatusIconContainer$3;

.field public static final X_ANIMATION_PROPERTIES:Lcom/android/systemui/statusbar/phone/StatusIconContainer$2;


# instance fields
.field public final mConfiguration:Landroid/content/res/Configuration;

.field public mCutoutRightSideAvailableWidth:I

.field public mCutoutRightSideIconsWidth:I

.field public mDeltaWidth:F

.field public mIconSpacing:I

.field public final mIgnoredSlots:Ljava/util/ArrayList;

.field public mIndicatorCutoutUtil:Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;

.field public final mLayoutStates:Ljava/util/ArrayList;

.field public final mMeasureViews:Ljava/util/ArrayList;

.field public mNeedsUnderflow:Z

.field public mQsExpansionTransitioning:Z

.field public mShouldRestrictIcons:Z

.field public mSidelingCutoutContainerInfo:Lcom/android/systemui/statusbar/phone/SidelingCutoutContainerInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusIconContainer$1;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/StatusIconContainer$1;-><init>()V

    const-wide/16 v1, 0xc8

    iput-wide v1, v0, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->duration:J

    const-wide/16 v3, 0x32

    iput-wide v3, v0, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->delay:J

    sput-object v0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->ADD_ICON_PROPERTIES:Lcom/android/systemui/statusbar/phone/StatusIconContainer$1;

    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusIconContainer$2;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/StatusIconContainer$2;-><init>()V

    iput-wide v1, v0, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->duration:J

    sput-object v0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->X_ANIMATION_PROPERTIES:Lcom/android/systemui/statusbar/phone/StatusIconContainer$2;

    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusIconContainer$3;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/StatusIconContainer$3;-><init>()V

    iput-wide v1, v0, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->duration:J

    sput-object v0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->ANIMATE_ALL_PROPERTIES:Lcom/android/systemui/statusbar/phone/StatusIconContainer$3;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/AlphaOptimizedLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mShouldRestrictIcons:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mLayoutStates:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mMeasureViews:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mIgnoredSlots:Ljava/util/ArrayList;

    new-instance v0, Landroid/content/res/Configuration;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->reloadDimens$2()V

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setWillNotDraw(Z)V

    return-void
.end method

.method public static getViewTotalMeasuredWidth(Landroid/view/View;)I
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method


# virtual methods
.method public final addIgnoredSlot(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mIgnoredSlots:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mIgnoredSlots:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    :goto_0
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p1, v0}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v1, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    const p1, 0x40001000    # 2.0009766f

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->reloadDimens$2()V

    :cond_0
    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public final onFinishInflate()V
    .locals 0

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 8

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result p1

    int-to-float p1, p1

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    const/4 p3, 0x0

    move p4, p3

    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p5

    if-ge p4, p5, :cond_0

    invoke-virtual {p0, p4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p5

    invoke-virtual {p5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v2, v1

    div-float/2addr v2, p2

    sub-float v2, p1, v2

    float-to-int v2, v2

    add-int/2addr v1, v2

    invoke-virtual {p5, p3, v2, v0, v1}, Landroid/view/View;->layout(IIII)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_0
    move p1, p3

    :goto_1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p2

    const p4, 0x7f0a0c1b

    if-ge p1, p2, :cond_2

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;

    if-nez p4, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {p4, p2}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->initFrom(Landroid/view/View;)V

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p4, p2}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setAlpha(F)V

    iput-boolean p3, p4, Lcom/android/systemui/statusbar/notification/stack/ViewState;->hidden:Z

    :goto_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mLayoutStates:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingEnd()I

    move-result p2

    int-to-float p2, p2

    sub-float p2, p1, p2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingStart()I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p5

    add-int/lit8 v0, p5, -0x1

    move v1, p3

    :goto_3
    if-ltz v0, :cond_6

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/android/systemui/statusbar/StatusIconDisplayable;

    invoke-virtual {v2, p4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;

    invoke-interface {v3}, Lcom/android/systemui/statusbar/StatusIconDisplayable;->isIconVisible()Z

    move-result v5

    const/4 v6, 0x2

    if-eqz v5, :cond_5

    invoke-interface {v3}, Lcom/android/systemui/statusbar/StatusIconDisplayable;->isIconBlocked()Z

    move-result v5

    if-nez v5, :cond_5

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mIgnoredSlots:Ljava/util/ArrayList;

    invoke-interface {v3}, Lcom/android/systemui/statusbar/StatusIconDisplayable;->getSlot()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_4

    :cond_3
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/View;->getPaddingStart()I

    move-result v5

    add-int/2addr v5, v3

    invoke-virtual {v2}, Landroid/view/View;->getPaddingEnd()I

    move-result v3

    add-int/2addr v3, v5

    int-to-float v3, v3

    sub-float/2addr p2, v3

    iput p3, v4, Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;->visibleState:I

    invoke-virtual {v4, p2}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setXTranslation(F)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mLayoutStates:Ljava/util/ArrayList;

    invoke-virtual {v3, p3, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    sget-boolean v3, Lcom/android/systemui/BasicRune;->STATUS_LAYOUT_SIDELING_CUTOUT:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mIndicatorCutoutUtil:Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;

    if-eqz v3, :cond_4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mSidelingCutoutContainerInfo:Lcom/android/systemui/statusbar/phone/SidelingCutoutContainerInfo;

    if-eqz v5, :cond_4

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;->getDisplayCutoutAreaToExclude()Landroid/graphics/Rect;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingEnd()I

    move-result v7

    sub-int/2addr v5, v7

    iget v7, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mCutoutRightSideAvailableWidth:I

    sub-int/2addr v5, v7

    int-to-float v5, v5

    iget v7, v4, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mXTranslation:F

    sub-float/2addr v5, v7

    const/4 v7, 0x0

    cmpl-float v7, v5, v7

    if-lez v7, :cond_4

    if-nez v1, :cond_4

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v7, 0x7f070471

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    mul-int/2addr v1, v6

    add-int/2addr v1, v3

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/View;->getPaddingStart()I

    move-result v6

    add-int/2addr v6, v3

    invoke-virtual {v2}, Landroid/view/View;->getPaddingEnd()I

    move-result v2

    add-int/2addr v2, v6

    add-int/2addr v2, v1

    int-to-float v1, v2

    sub-float/2addr v1, v5

    sub-float/2addr p2, v1

    invoke-virtual {v4, p2}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setXTranslation(F)V

    const/4 v1, 0x1

    :cond_4
    iget v2, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mIconSpacing:I

    int-to-float v2, v2

    sub-float/2addr p2, v2

    goto :goto_5

    :cond_5
    :goto_4
    iput v6, v4, Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;->visibleState:I

    :goto_5
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_3

    :cond_6
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isLayoutRtl()Z

    move-result p2

    if-eqz p2, :cond_7

    move p2, p3

    :goto_6
    if-ge p2, p5, :cond_7

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;

    iget v2, v1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mXTranslation:F

    sub-float v2, p1, v2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v2, v0

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setXTranslation(F)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_6

    :cond_7
    :goto_7
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p1

    if-ge p3, p1, :cond_9

    invoke-virtual {p0, p3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;

    if-eqz p2, :cond_8

    invoke-virtual {p2, p1}, Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;->applyToView(Landroid/view/View;)V

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mQsExpansionTransitioning:Z

    iput-boolean p1, p2, Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;->qsExpansionTransitioning:Z

    :cond_8
    add-int/lit8 p3, p3, 0x1

    goto :goto_7

    :cond_9
    return-void
.end method

.method public final onMeasure(II)V
    .locals 13

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mMeasureViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/StatusIconDisplayable;

    invoke-interface {v4}, Lcom/android/systemui/statusbar/StatusIconDisplayable;->isIconVisible()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Lcom/android/systemui/statusbar/StatusIconDisplayable;->isIconBlocked()Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mIgnoredSlots:Ljava/util/ArrayList;

    invoke-interface {v4}, Lcom/android/systemui/statusbar/StatusIconDisplayable;->getSlot()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mMeasureViews:Ljava/util/ArrayList;

    check-cast v4, Landroid/view/View;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mMeasureViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v3, 0x14

    if-gt v1, v3, :cond_2

    move v4, v3

    goto :goto_1

    :cond_2
    const/16 v4, 0x13

    :goto_1
    iget v5, p0, Landroid/widget/LinearLayout;->mPaddingLeft:I

    iget v6, p0, Landroid/widget/LinearLayout;->mPaddingRight:I

    add-int/2addr v5, v6

    invoke-static {p1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mShouldRestrictIcons:Z

    const/4 v8, 0x1

    if-eqz v7, :cond_3

    if-le v1, v3, :cond_3

    move v3, v8

    goto :goto_2

    :cond_3
    move v3, v2

    :goto_2
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mNeedsUnderflow:Z

    move v7, v2

    move v3, v5

    move v9, v8

    :goto_3
    if-ge v7, v1, :cond_9

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mMeasureViews:Ljava/util/ArrayList;

    sub-int v11, v1, v7

    sub-int/2addr v11, v8

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    invoke-virtual {p0, v10, v6, p2}, Landroid/widget/LinearLayout;->measureChild(Landroid/view/View;II)V

    add-int/lit8 v11, v1, -0x1

    if-ne v7, v11, :cond_4

    move v11, v2

    goto :goto_4

    :cond_4
    iget v11, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mIconSpacing:I

    :goto_4
    iget-boolean v12, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mShouldRestrictIcons:Z

    if-eqz v12, :cond_7

    if-ge v7, v4, :cond_6

    if-eqz v9, :cond_6

    invoke-static {v10}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->getViewTotalMeasuredWidth(Landroid/view/View;)I

    move-result v10

    add-int/2addr v10, v11

    add-int/2addr v10, v5

    if-gt v10, p1, :cond_5

    :goto_5
    move v3, v10

    move v5, v3

    goto :goto_6

    :cond_5
    move v5, v10

    goto :goto_6

    :cond_6
    if-eqz v9, :cond_8

    move v9, v2

    if-gt v5, p1, :cond_8

    move v3, v5

    goto :goto_6

    :cond_7
    invoke-static {v10}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->getViewTotalMeasuredWidth(Landroid/view/View;)I

    move-result v10

    add-int/2addr v10, v11

    add-int/2addr v10, v5

    if-gt v10, p1, :cond_5

    goto :goto_5

    :cond_8
    :goto_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_9
    sget-boolean v4, Lcom/android/systemui/BasicRune;->STATUS_LAYOUT_SIDELING_CUTOUT:Z

    if-eqz v4, :cond_e

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mIndicatorCutoutUtil:Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;

    if-eqz v4, :cond_e

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mSidelingCutoutContainerInfo:Lcom/android/systemui/statusbar/phone/SidelingCutoutContainerInfo;

    if-eqz v6, :cond_e

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;->getDisplayCutoutAreaToExclude()Landroid/graphics/Rect;

    move-result-object v4

    if-eqz v4, :cond_e

    iput v2, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mCutoutRightSideIconsWidth:I

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mSidelingCutoutContainerInfo:Lcom/android/systemui/statusbar/phone/SidelingCutoutContainerInfo;

    if-eqz v6, :cond_a

    invoke-interface {v6, v4}, Lcom/android/systemui/statusbar/phone/SidelingCutoutContainerInfo;->getRightSideAvailableWidth(Landroid/graphics/Rect;)I

    move-result v6

    goto :goto_7

    :cond_a
    move v6, v2

    :goto_7
    iput v6, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mCutoutRightSideAvailableWidth:I

    move v6, v2

    :goto_8
    if-ge v6, v1, :cond_d

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mMeasureViews:Ljava/util/ArrayList;

    sub-int v9, v1, v6

    sub-int/2addr v9, v8

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    add-int/lit8 v9, v1, -0x1

    if-ne v6, v9, :cond_b

    move v9, v2

    goto :goto_9

    :cond_b
    iget v9, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mIconSpacing:I

    :goto_9
    iget-boolean v10, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mShouldRestrictIcons:Z

    if-eqz v10, :cond_c

    iget v10, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mCutoutRightSideIconsWidth:I

    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->getViewTotalMeasuredWidth(Landroid/view/View;)I

    move-result v11

    add-int/2addr v11, v9

    add-int/2addr v11, v10

    iput v11, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mCutoutRightSideIconsWidth:I

    iget v9, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mCutoutRightSideAvailableWidth:I

    sub-int/2addr v11, v9

    if-lez v11, :cond_c

    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->getViewTotalMeasuredWidth(Landroid/view/View;)I

    move-result v1

    iget v6, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mCutoutRightSideIconsWidth:I

    iget v7, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mCutoutRightSideAvailableWidth:I

    sub-int/2addr v6, v7

    sub-int/2addr v1, v6

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f070471

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v4

    add-int/2addr v6, v1

    goto :goto_a

    :cond_c
    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    :cond_d
    move v6, v2

    :goto_a
    int-to-float v1, v6

    iput v1, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mDeltaWidth:F

    int-to-float v3, v3

    add-float/2addr v3, v1

    float-to-int v3, v3

    int-to-float p1, p1

    add-float/2addr p1, v1

    float-to-int p1, p1

    int-to-float v4, v5

    add-float/2addr v4, v1

    float-to-int v5, v4

    :cond_e
    iget v1, p0, Landroid/widget/LinearLayout;->mPaddingLeft:I

    iget v4, p0, Landroid/widget/LinearLayout;->mPaddingRight:I

    add-int/2addr v1, v4

    if-gt v3, v1, :cond_f

    move p1, v2

    goto :goto_b

    :cond_f
    if-ltz v3, :cond_10

    if-ge v3, p1, :cond_10

    move p1, v3

    :cond_10
    :goto_b
    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_11

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mNeedsUnderflow:Z

    if-nez v0, :cond_13

    if-le v5, p1, :cond_13

    iput-boolean v8, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mNeedsUnderflow:Z

    goto :goto_c

    :cond_11
    const/high16 v3, -0x80000000

    if-ne v0, v3, :cond_12

    if-le v5, p1, :cond_12

    iput-boolean v8, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mNeedsUnderflow:Z

    move v5, p1

    :cond_12
    move p1, v5

    :cond_13
    :goto_c
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mMeasureViews:Ljava/util/ArrayList;

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    if-ne v3, v1, :cond_14

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    goto :goto_e

    :cond_14
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_d
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_d

    :cond_15
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result p2

    add-int/2addr p2, v2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v0

    add-int/2addr p2, v0

    :goto_e
    invoke-virtual {p0, p1, p2}, Landroid/widget/LinearLayout;->setMeasuredDimension(II)V

    return-void
.end method

.method public final onViewAdded(Landroid/view/View;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onViewAdded(Landroid/view/View;)V

    new-instance p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;->justAdded:Z

    const v0, 0x7f0a0c1b

    invoke-virtual {p1, v0, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public final onViewRemoved(Landroid/view/View;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onViewRemoved(Landroid/view/View;)V

    const p0, 0x7f0a0c1b

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public final reloadDimens$2()V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105056b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070c5b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0714b0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mIconSpacing:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f070c5a

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    return-void
.end method

.method public final removeIgnoredSlot(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mIgnoredSlots:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    :cond_0
    return-void
.end method
