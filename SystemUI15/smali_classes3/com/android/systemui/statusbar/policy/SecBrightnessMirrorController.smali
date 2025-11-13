.class public final Lcom/android/systemui/statusbar/policy/SecBrightnessMirrorController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public brightnessIcon:Lcom/android/systemui/settings/brightness/BrightnessAnimationIcon;

.field public brightnessMirror:Landroid/widget/FrameLayout;

.field public brightnessMirrorHeight:I

.field public brightnessMirrorWidth:I

.field public context:Landroid/content/Context;

.field public final quickPanelBlur:Lcom/android/systemui/statusbar/policy/QuickPanelBlur;

.field public final quickTileBrightnessMirrorDummyView:Lcom/android/systemui/statusbar/policy/QuickTileBrightnessMirrorDummyView;

.field public final resourcePicker$delegate:Lkotlin/Lazy;

.field public toggleSliderController:Lcom/android/systemui/settings/brightness/BrightnessSliderController;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/systemui/statusbar/policy/QuickPanelBlur;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/policy/QuickPanelBlur;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/SecBrightnessMirrorController;->quickPanelBlur:Lcom/android/systemui/statusbar/policy/QuickPanelBlur;

    new-instance v0, Lcom/android/systemui/statusbar/policy/QuickTileBrightnessMirrorDummyView;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/policy/QuickTileBrightnessMirrorDummyView;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/SecBrightnessMirrorController;->quickTileBrightnessMirrorDummyView:Lcom/android/systemui/statusbar/policy/QuickTileBrightnessMirrorDummyView;

    sget-object v0, Lcom/android/systemui/statusbar/policy/SecBrightnessMirrorController$resourcePicker$2;->INSTANCE:Lcom/android/systemui/statusbar/policy/SecBrightnessMirrorController$resourcePicker$2;

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/SecBrightnessMirrorController;->resourcePicker$delegate:Lkotlin/Lazy;

    return-void
.end method


# virtual methods
.method public final getResourcePicker()Lcom/android/systemui/qs/SecQSPanelResourcePicker;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SecBrightnessMirrorController;->resourcePicker$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    return-object p0
.end method

.method public final hideMirror()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SecBrightnessMirrorController;->brightnessMirror:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SecBrightnessMirrorController;->quickPanelBlur:Lcom/android/systemui/statusbar/policy/QuickPanelBlur;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/QuickPanelBlur;->blurController$delegate:Lkotlin/Lazy;

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/blur/SecQpBlurController;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Lcom/android/systemui/blur/SecQpBlurController;->setBrightnessMirrorVisible(Z)V

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SecBrightnessMirrorController;->toggleSliderController:Lcom/android/systemui/settings/brightness/BrightnessSliderController;

    if-eqz v1, :cond_2

    iget-object v2, v1, Lcom/android/systemui/settings/brightness/BrightnessSliderController;->mSecBrightnessSliderController:Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    if-nez v2, :cond_3

    goto :goto_3

    :cond_3
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SecBrightnessMirrorController;->quickTileBrightnessMirrorDummyView:Lcom/android/systemui/statusbar/policy/QuickTileBrightnessMirrorDummyView;

    if-eqz p0, :cond_4

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/QuickTileBrightnessMirrorDummyView;->expanded:Z

    goto :goto_2

    :cond_4
    move p0, v0

    :goto_2
    iput-boolean p0, v2, Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;->isExpanded:Z

    :goto_3
    if-eqz v1, :cond_5

    iget-object p0, v1, Lcom/android/systemui/settings/brightness/BrightnessSliderController;->mSecBrightnessSliderController:Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;

    if-eqz p0, :cond_5

    iget-object v1, p0, Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;->thumbAnimator:Landroid/animation/ValueAnimator;

    iput-boolean v0, p0, Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;->isThumbShowing:Z

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->reverse()V

    :cond_5
    return-void
.end method

.method public final reinflate(Landroid/widget/FrameLayout;Lcom/android/systemui/settings/brightness/BrightnessSliderController;)V
    .locals 4

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/SecBrightnessMirrorController;->brightnessMirror:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/SecBrightnessMirrorController;->context:Landroid/content/Context;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/android/systemui/statusbar/policy/SecBrightnessMirrorController$toInitIconResources$1;

    invoke-direct {v1, p2, p1, p0}, Lcom/android/systemui/statusbar/policy/SecBrightnessMirrorController$toInitIconResources$1;-><init>(Lcom/android/systemui/settings/brightness/BrightnessSliderController;Landroid/content/Context;Lcom/android/systemui/statusbar/policy/SecBrightnessMirrorController;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/SecBrightnessMirrorController;->toggleSliderController:Lcom/android/systemui/settings/brightness/BrightnessSliderController;

    return-void
.end method

.method public final setLocationAndSize(Landroid/view/View;)V
    .locals 6

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/SecBrightnessMirrorController;->brightnessMirrorWidth:I

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/SecBrightnessMirrorController;->brightnessMirrorHeight:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SecBrightnessMirrorController;->updateLayout()V

    const/4 v0, 0x2

    new-array v1, v0, [I

    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 v2, 0x0

    aget v3, v1, v2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    div-int/2addr v4, v0

    add-int/2addr v4, v3

    const/4 v3, 0x1

    aget v5, v1, v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    div-int/2addr p1, v0

    add-int/2addr p1, v5

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SecBrightnessMirrorController;->brightnessMirror:Landroid/widget/FrameLayout;

    if-eqz p0, :cond_0

    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    invoke-virtual {p0, v5}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->getLocationInWindow([I)V

    aget v2, v1, v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v5

    div-int/2addr v5, v0

    add-int/2addr v5, v2

    aget v1, v1, v3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    div-int/2addr v2, v0

    add-int/2addr v2, v1

    sub-int/2addr v4, v5

    int-to-float v0, v4

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    sub-int/2addr p1, v2

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    :cond_0
    return-void
.end method

.method public final showMirror()V
    .locals 9

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SecBrightnessMirrorController;->quickPanelBlur:Lcom/android/systemui/statusbar/policy/QuickPanelBlur;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/QuickPanelBlur;->blurController$delegate:Lkotlin/Lazy;

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/blur/SecQpBlurController;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lcom/android/systemui/blur/SecQpBlurController;->setBrightnessMirrorVisible(Z)V

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SecBrightnessMirrorController;->toggleSliderController:Lcom/android/systemui/settings/brightness/BrightnessSliderController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/SecBrightnessMirrorController;->quickTileBrightnessMirrorDummyView:Lcom/android/systemui/statusbar/policy/QuickTileBrightnessMirrorDummyView;

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v1, :cond_4

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/SecBrightnessMirrorController;->context:Landroid/content/Context;

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    invoke-virtual {v1}, Lcom/android/systemui/settings/brightness/BrightnessSliderController;->getRootView()Landroid/view/View;

    move-result-object v1

    const v5, 0x7f0a01d4

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    instance-of v5, v1, Landroid/widget/LinearLayout;

    if-eqz v5, :cond_1

    check-cast v1, Landroid/widget/LinearLayout;

    goto :goto_0

    :cond_1
    move-object v1, v4

    :goto_0
    if-eqz v1, :cond_4

    const/4 v5, 0x4

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    if-eqz v2, :cond_2

    iget-object v5, v2, Lcom/android/systemui/statusbar/policy/QuickTileBrightnessMirrorDummyView;->tiles:Ljava/util/ArrayList;

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    goto :goto_1

    :cond_2
    move v5, v3

    :goto_1
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    invoke-static {v3, v5}, Lkotlin/ranges/RangesKt___RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v5

    invoke-virtual {v5}, Lkotlin/ranges/IntProgression;->iterator()Lkotlin/ranges/IntProgressionIterator;

    move-result-object v5

    :cond_3
    :goto_2
    iget-boolean v6, v5, Lkotlin/ranges/IntProgressionIterator;->hasNext:Z

    if-eqz v6, :cond_4

    invoke-virtual {v5}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v6

    if-eqz v2, :cond_3

    iget-object v7, v2, Lcom/android/systemui/statusbar/policy/QuickTileBrightnessMirrorDummyView;->tiles:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;

    iget-object v6, v6, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    if-eqz v6, :cond_3

    new-instance v7, Landroid/widget/TextView;

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/SecBrightnessMirrorController;->context:Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v8, "Dummy text"

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v6

    iput v6, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SecBrightnessMirrorController;->toggleSliderController:Lcom/android/systemui/settings/brightness/BrightnessSliderController;

    if-eqz v1, :cond_5

    iget-object v5, v1, Lcom/android/systemui/settings/brightness/BrightnessSliderController;->mSecBrightnessSliderController:Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;

    goto :goto_3

    :cond_5
    move-object v5, v4

    :goto_3
    if-nez v5, :cond_6

    goto :goto_4

    :cond_6
    if-eqz v2, :cond_7

    iget-boolean v3, v2, Lcom/android/systemui/statusbar/policy/QuickTileBrightnessMirrorDummyView;->expanded:Z

    :cond_7
    iput-boolean v3, v5, Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;->isExpanded:Z

    :goto_4
    if-eqz v1, :cond_b

    iget-object v1, v1, Lcom/android/systemui/settings/brightness/BrightnessSliderController;->mSecBrightnessSliderController:Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;

    if-eqz v1, :cond_b

    iget-object v2, v1, Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;->view:Lcom/android/systemui/settings/brightness/BrightnessSliderView;

    iget-object v3, v2, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mSecBrightnessSliderView:Lcom/android/systemui/settings/brightness/SecBrightnessSliderView;

    if-eqz v3, :cond_8

    invoke-virtual {v3}, Lcom/android/systemui/settings/brightness/SecBrightnessSliderView;->getSlider()Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    move-result-object v4

    :cond_8
    iget-boolean v3, v1, Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;->isExpanded:Z

    iget-object v5, v1, Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;->resourcePicker$delegate:Lkotlin/Lazy;

    if-eqz v3, :cond_9

    invoke-interface {v5}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->getBrightnessBarExpandedHeight(Landroid/content/Context;)I

    move-result v2

    goto :goto_5

    :cond_9
    invoke-interface {v5}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->getBrightnessBarHeight(Landroid/content/Context;)I

    move-result v2

    :goto_5
    if-eqz v4, :cond_a

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getWidth()I

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getMax()I

    move-result v3

    mul-int/2addr v3, v2

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getWidth()I

    move-result v2

    div-int/2addr v3, v2

    goto :goto_6

    :cond_a
    const/16 v3, 0x1a

    :goto_6
    iput v3, v1, Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;->thumbThreshold:I

    :cond_b
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SecBrightnessMirrorController;->toggleSliderController:Lcom/android/systemui/settings/brightness/BrightnessSliderController;

    if-eqz p0, :cond_c

    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderController;->mSecBrightnessSliderController:Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;

    if-eqz p0, :cond_c

    iget-object v1, p0, Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;->thumbAnimator:Landroid/animation/ValueAnimator;

    iput-boolean v0, p0, Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;->isThumbShowing:Z

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    :cond_c
    return-void
.end method

.method public final updateLayout()V
    .locals 12

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SecBrightnessMirrorController;->toggleSliderController:Lcom/android/systemui/settings/brightness/BrightnessSliderController;

    if-eqz v0, :cond_13

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SecBrightnessMirrorController;->context:Landroid/content/Context;

    if-eqz v1, :cond_13

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/systemui/settings/brightness/BrightnessSliderController;->getRootView()Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0a01ca

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    instance-of v4, v3, Landroid/widget/LinearLayout;

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    check-cast v3, Landroid/widget/LinearLayout;

    goto :goto_0

    :cond_0
    move-object v3, v5

    :goto_0
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v6, p0, Lcom/android/systemui/statusbar/policy/SecBrightnessMirrorController;->brightnessMirrorWidth:I

    iput v6, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SecBrightnessMirrorController;->getResourcePicker()Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    move-result-object v6

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->getBrightnessBarContainerHeight(Landroid/content/Context;)I

    move-result v6

    iput v6, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/SecBrightnessMirrorController;->brightnessMirror:Landroid/widget/FrameLayout;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v6, p0, Lcom/android/systemui/statusbar/policy/SecBrightnessMirrorController;->brightnessMirrorWidth:I

    iput v6, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v6, p0, Lcom/android/systemui/statusbar/policy/SecBrightnessMirrorController;->brightnessMirrorHeight:I

    iput v6, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/SecBrightnessMirrorController;->quickTileBrightnessMirrorDummyView:Lcom/android/systemui/statusbar/policy/QuickTileBrightnessMirrorDummyView;

    if-eqz v4, :cond_3

    iget-boolean v4, v4, Lcom/android/systemui/statusbar/policy/QuickTileBrightnessMirrorDummyView;->expanded:Z

    goto :goto_1

    :cond_3
    move v4, v3

    :goto_1
    const/4 v6, 0x1

    if-ne v4, v6, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SecBrightnessMirrorController;->getResourcePicker()Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    move-result-object v7

    invoke-virtual {v7, v1}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->getBrightnessBarExpandedHeight(Landroid/content/Context;)I

    move-result v1

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SecBrightnessMirrorController;->getResourcePicker()Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    move-result-object v7

    invoke-virtual {v7, v1}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->getBrightnessBarHeight(Landroid/content/Context;)I

    move-result v1

    :goto_2
    invoke-virtual {v0}, Lcom/android/systemui/settings/brightness/BrightnessSliderController;->getRootView()Landroid/view/View;

    move-result-object v7

    const v8, 0x7f0a01cb

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    instance-of v8, v7, Landroid/widget/ImageView;

    if-eqz v8, :cond_5

    check-cast v7, Landroid/widget/ImageView;

    goto :goto_3

    :cond_5
    move-object v7, v5

    :goto_3
    if-nez v7, :cond_6

    goto :goto_5

    :cond_6
    if-ne v4, v6, :cond_7

    const/16 v8, 0x8

    goto :goto_4

    :cond_7
    move v8, v3

    :goto_4
    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_5
    invoke-virtual {v0}, Lcom/android/systemui/settings/brightness/BrightnessSliderController;->getRootView()Landroid/view/View;

    move-result-object v7

    const v8, 0x7f0a0b7d

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    instance-of v9, v7, Landroid/widget/RelativeLayout;

    if-eqz v9, :cond_8

    check-cast v7, Landroid/widget/RelativeLayout;

    goto :goto_6

    :cond_8
    move-object v7, v5

    :goto_6
    const/4 v9, 0x0

    if-eqz v7, :cond_c

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SecBrightnessMirrorController;->getResourcePicker()Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    move-result-object v10

    iget-object v10, v10, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->resourcePickHelper:Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;

    invoke-virtual {v10}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;->getTargetPicker()Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v7}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    instance-of v11, v10, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v11, :cond_9

    check-cast v10, Landroid/widget/LinearLayout$LayoutParams;

    goto :goto_7

    :cond_9
    move-object v10, v5

    :goto_7
    if-eqz v10, :cond_b

    const/4 v11, -0x1

    iput v11, v10, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v1, v10, Landroid/widget/LinearLayout$LayoutParams;->height:I

    sget-object v11, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v4, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, v10, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_8

    :cond_a
    iput v9, v10, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    :goto_8
    iput v3, v10, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    goto :goto_9

    :cond_b
    move-object v10, v5

    :goto_9
    invoke-virtual {v7, v10}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_c
    invoke-virtual {v0}, Lcom/android/systemui/settings/brightness/BrightnessSliderController;->getRootView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    instance-of v7, v4, Landroid/widget/RelativeLayout;

    if-eqz v7, :cond_d

    check-cast v4, Landroid/widget/RelativeLayout;

    goto :goto_a

    :cond_d
    move-object v4, v5

    :goto_a
    if-eqz v4, :cond_e

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getPaddingTop()I

    move-result v7

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getPaddingBottom()I

    move-result v8

    invoke-virtual {v4, v3, v7, v3, v8}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    :cond_e
    invoke-virtual {v0}, Lcom/android/systemui/settings/brightness/BrightnessSliderController;->getRootView()Landroid/view/View;

    move-result-object v4

    const v7, 0x7f0a01d4

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    instance-of v7, v4, Landroid/widget/LinearLayout;

    if-eqz v7, :cond_f

    check-cast v4, Landroid/widget/LinearLayout;

    goto :goto_b

    :cond_f
    move-object v4, v5

    :goto_b
    if-eqz v4, :cond_12

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    instance-of v8, v7, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v8, :cond_10

    check-cast v7, Landroid/widget/LinearLayout$LayoutParams;

    goto :goto_c

    :cond_10
    move-object v7, v5

    :goto_c
    if-eqz v7, :cond_11

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SecBrightnessMirrorController;->getResourcePicker()Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    move-result-object v5

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->getBrightnessBarExpandedHeight(Landroid/content/Context;)I

    move-result v5

    iput v5, v7, Landroid/widget/LinearLayout$LayoutParams;->width:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SecBrightnessMirrorController;->getResourcePicker()Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    move-result-object p0

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->getBrightnessBarExpandedHeight(Landroid/content/Context;)I

    move-result p0

    iput p0, v7, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iput v9, v7, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const p0, 0x7f07011e

    invoke-virtual {v2, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    invoke-virtual {v7, p0}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    const/16 p0, 0x11

    iput p0, v7, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    move-object v5, v7

    :cond_11
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const p0, 0x7f07012a

    invoke-virtual {v2, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    sub-int/2addr v2, v6

    :goto_d
    if-ge v3, v2, :cond_12

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v6, p0}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_12
    iget-object p0, v0, Lcom/android/systemui/settings/brightness/BrightnessSliderController;->mSecBrightnessSliderController:Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;

    if-eqz p0, :cond_13

    invoke-virtual {p0, v1}, Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;->updateSliderHeight(I)V

    :cond_13
    return-void
.end method
