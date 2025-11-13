.class public abstract Lcom/android/systemui/qs/customize/view/QSTileCustomizerBase;
.super Landroid/widget/LinearLayout;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mActiveColumns:I

.field public mActiveRows:I

.field public mActiveShowLabel:Z

.field public final mActiveTileLayout:Lcom/android/systemui/qs/customize/CustomizerTileViewPager;

.field public mAvailableColumns:I

.field public mAvailableRows:I

.field public final mAvailableTileLayout:Lcom/android/systemui/qs/customize/CustomizerTileViewPager;

.field public final mContext:Landroid/content/Context;

.field public mCutOutHeight:I

.field public mEditButtonSummary:Landroid/widget/TextView;

.field public mEditResources:Lcom/android/systemui/qs/customize/SecQSSettingEditResources;

.field public mIsDragging:Z

.field public mIsMultiTouch:Z

.field public mIsTopEdit:Z

.field public mMinNum:I

.field public final mResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

.field public mToast:Landroid/widget/Toast;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/qs/customize/view/QSTileCustomizerBase;->mIsDragging:Z

    iput-boolean v0, p0, Lcom/android/systemui/qs/customize/view/QSTileCustomizerBase;->mIsMultiTouch:Z

    const/4 v1, 0x3

    iput v1, p0, Lcom/android/systemui/qs/customize/view/QSTileCustomizerBase;->mActiveRows:I

    const/4 v1, 0x4

    iput v1, p0, Lcom/android/systemui/qs/customize/view/QSTileCustomizerBase;->mActiveColumns:I

    const/4 v2, 0x2

    iput v2, p0, Lcom/android/systemui/qs/customize/view/QSTileCustomizerBase;->mAvailableRows:I

    iput v1, p0, Lcom/android/systemui/qs/customize/view/QSTileCustomizerBase;->mAvailableColumns:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/qs/customize/view/QSTileCustomizerBase;->mActiveShowLabel:Z

    iput-boolean v0, p0, Lcom/android/systemui/qs/customize/view/QSTileCustomizerBase;->mIsTopEdit:Z

    invoke-static {p1}, Lcom/android/systemui/util/DeviceState;->getDisplayHeight(Landroid/content/Context;)I

    invoke-static {p1}, Lcom/android/systemui/util/DeviceState;->getDisplayWidth(Landroid/content/Context;)I

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v2, Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    invoke-virtual {v0, v2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    iput-object v0, p0, Lcom/android/systemui/qs/customize/view/QSTileCustomizerBase;->mResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    iput-object p1, p0, Lcom/android/systemui/qs/customize/view/QSTileCustomizerBase;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0d02f0

    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const p1, 0x7f0a0959

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;

    iput-object p1, p0, Lcom/android/systemui/qs/customize/view/QSTileCustomizerBase;->mAvailableTileLayout:Lcom/android/systemui/qs/customize/CustomizerTileViewPager;

    const p1, 0x7f0a0958

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;

    iput-object p1, p0, Lcom/android/systemui/qs/customize/view/QSTileCustomizerBase;->mActiveTileLayout:Lcom/android/systemui/qs/customize/CustomizerTileViewPager;

    sget-boolean p1, Lcom/android/systemui/QpRune;->QUICK_TABLET:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setClipChildren(Z)V

    :cond_0
    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->bringToFront()V

    return-void
.end method


# virtual methods
.method public final calculateAvailableArea()V
    .locals 9

    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_TABLET:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070d9d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070d9f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v1, v0

    iget-object v0, p0, Lcom/android/systemui/qs/customize/view/QSTileCustomizerBase;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->getDisplayHeight(Landroid/content/Context;)I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/qs/customize/view/QSTileCustomizerBase;->mResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    iget-object v3, p0, Lcom/android/systemui/qs/customize/view/QSTileCustomizerBase;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->getNavBarHeight(Landroid/content/Context;)I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/qs/customize/view/QSTileCustomizerBase;->mResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    iget-object v4, p0, Lcom/android/systemui/qs/customize/view/QSTileCustomizerBase;->mContext:Landroid/content/Context;

    iget-object v3, v3, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->resourcePickHelper:Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;

    invoke-virtual {v3}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;->getTargetPicker()Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;->getDateButtonContainerTopMargin(Landroid/content/Context;)I

    move-result v3

    const v4, 0x7f0a0d2c

    invoke-virtual {p0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f070d9a

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    if-le v0, v2, :cond_1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v4, Landroid/widget/LinearLayout$LayoutParams;->height:I

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    iput v2, v4, Landroid/widget/LinearLayout$LayoutParams;->height:I

    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f070d89

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const v4, 0x7f0a0950

    invoke-virtual {p0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    iput v2, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iput v2, v4, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f070d78

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    const v6, 0x7f0a096f

    invoke-virtual {p0, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    iput v4, v6, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iput v4, v6, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f070d82

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    const/4 v7, 0x2

    mul-int/2addr v4, v7

    add-int/2addr v4, v6

    mul-int/2addr v2, v7

    add-int/2addr v2, v4

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f070d83

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    add-int/2addr v4, v2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x7f070d98

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v2, v4

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v8, 0x7f070d7f

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    add-int/2addr v4, v2

    iget-boolean v2, p0, Lcom/android/systemui/qs/customize/view/QSTileCustomizerBase;->mIsTopEdit:Z

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v4, v2

    :cond_2
    sub-int/2addr v0, v3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    sub-int/2addr v0, v4

    div-int/2addr v0, v1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iget-boolean v2, p0, Lcom/android/systemui/qs/customize/view/QSTileCustomizerBase;->mIsTopEdit:Z

    const v3, 0x7f0a096e

    const/16 v4, 0x8

    if-eqz v2, :cond_5

    const/4 v2, 0x4

    iput v2, p0, Lcom/android/systemui/qs/customize/view/QSTileCustomizerBase;->mAvailableRows:I

    if-lt v0, v2, :cond_3

    move v0, v2

    :cond_3
    if-le v0, v1, :cond_4

    iput v0, p0, Lcom/android/systemui/qs/customize/view/QSTileCustomizerBase;->mAvailableRows:I

    goto :goto_1

    :cond_4
    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0a096c

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iput v1, p0, Lcom/android/systemui/qs/customize/view/QSTileCustomizerBase;->mAvailableRows:I

    goto :goto_1

    :cond_5
    iput v7, p0, Lcom/android/systemui/qs/customize/view/QSTileCustomizerBase;->mAvailableRows:I

    if-ge v0, v7, :cond_6

    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iput v1, p0, Lcom/android/systemui/qs/customize/view/QSTileCustomizerBase;->mAvailableRows:I

    :cond_6
    :goto_1
    return-void
.end method

.method public final onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 4

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetBottom()I

    move-result v0

    sub-int/2addr v1, v0

    if-gez v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/customize/view/QSTileCustomizerBase;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050382

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    :cond_0
    iget v0, p0, Lcom/android/systemui/qs/customize/view/QSTileCustomizerBase;->mCutOutHeight:I

    if-eq v0, v1, :cond_2

    iput v1, p0, Lcom/android/systemui/qs/customize/view/QSTileCustomizerBase;->mCutOutHeight:I

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/view/QSTileCustomizerBase;->updateResources()V

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/android/systemui/qs/customize/view/QSTileCustomizerBase;->mCutOutHeight:I

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/qs/customize/view/QSTileCustomizerBase;->mCutOutHeight:I

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/view/QSTileCustomizerBase;->updateResources()V

    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method public final onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/view/QSTileCustomizerBase;->calculateAvailableArea()V

    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/view/QSTileCustomizerBase;->calculateAvailableArea()V

    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    return-void
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    goto :goto_1

    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/qs/customize/view/QSTileCustomizerBase;->mIsDragging:Z

    if-eqz v0, :cond_2

    iput-boolean v1, p0, Lcom/android/systemui/qs/customize/view/QSTileCustomizerBase;->mIsMultiTouch:Z

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/qs/customize/view/QSTileCustomizerBase;->mIsMultiTouch:Z

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/qs/customize/view/QSTileCustomizerBase;->mAvailableTileLayout:Lcom/android/systemui/qs/customize/CustomizerTileViewPager;

    iget-boolean v1, p0, Lcom/android/systemui/qs/customize/view/QSTileCustomizerBase;->mIsMultiTouch:Z

    iput-boolean v1, v0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mIsMultiTouch:Z

    iget-object v0, p0, Lcom/android/systemui/qs/customize/view/QSTileCustomizerBase;->mActiveTileLayout:Lcom/android/systemui/qs/customize/CustomizerTileViewPager;

    iput-boolean v1, v0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mIsMultiTouch:Z

    :goto_1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public final onMeasure(II)V
    .locals 4

    iget-boolean v0, p0, Lcom/android/systemui/qs/customize/view/QSTileCustomizerBase;->mIsTopEdit:Z

    const v1, 0x7f0a094a

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const v2, 0x7f0a0958

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f070d2e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const v2, 0x7f0a094d

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    const v3, 0x7f0a032e

    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    sub-int/2addr v3, v0

    sub-int/2addr v3, v2

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/view/QSTileCustomizerBase;->updateResources()V

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method

.method public final updateResources()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/customize/view/QSTileCustomizerBase;->mActiveTileLayout:Lcom/android/systemui/qs/customize/CustomizerTileViewPager;

    iget v1, p0, Lcom/android/systemui/qs/customize/view/QSTileCustomizerBase;->mActiveRows:I

    iget v2, p0, Lcom/android/systemui/qs/customize/view/QSTileCustomizerBase;->mActiveColumns:I

    iput v1, v0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mRows:I

    iput v2, v0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mColumns:I

    iget-boolean v1, p0, Lcom/android/systemui/qs/customize/view/QSTileCustomizerBase;->mActiveShowLabel:Z

    iput-boolean v1, v0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mShowLabel:Z

    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->updateResources()Z

    iget-object v0, p0, Lcom/android/systemui/qs/customize/view/QSTileCustomizerBase;->mAvailableTileLayout:Lcom/android/systemui/qs/customize/CustomizerTileViewPager;

    iget v1, p0, Lcom/android/systemui/qs/customize/view/QSTileCustomizerBase;->mAvailableRows:I

    iget v2, p0, Lcom/android/systemui/qs/customize/view/QSTileCustomizerBase;->mAvailableColumns:I

    iput v1, v0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mRows:I

    iput v2, v0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mColumns:I

    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->updateResources()Z

    const v0, 0x7f0a096e

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/qs/customize/view/QSTileCustomizerBase;->mEditButtonSummary:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const v1, 0x7f130e20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/customize/view/QSTileCustomizerBase;->mEditButtonSummary:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/qs/customize/view/QSTileCustomizerBase;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0605a8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/view/QSTileCustomizerBase;->calculateAvailableArea()V

    return-void
.end method
