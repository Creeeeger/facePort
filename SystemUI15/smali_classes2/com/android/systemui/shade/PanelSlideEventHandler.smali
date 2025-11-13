.class public final Lcom/android/systemui/shade/PanelSlideEventHandler;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/shade/ShadeExpansionListener;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;


# instance fields
.field public canScrollDownOnDown:Z

.field public final configurationController$delegate:Lkotlin/Lazy;

.field public final context:Landroid/content/Context;

.field public direction:Lcom/android/systemui/shade/PanelSlideEventHandler$Direction;

.field public displayRatioOfDivider:F

.field public displayWidthOfDivider:I

.field public final flingAnimationUtils:Lcom/android/wm/shell/animation/FlingAnimationUtils;

.field public fullyExpandedOnDown:Z

.field public gestureInsets:Landroid/graphics/Insets;

.field public final headsUpManager$delegate:Lkotlin/Lazy;

.field public initialX:F

.field public initialY:F

.field public interceptCallback:Ljava/lang/Runnable;

.field public isInChangeSpotOnDown:Z

.field public isInGestureArea:Z

.field public isInQsScrollerTopMarginArea:Z

.field public isInSlidableAreaOnDown:Z

.field public final lastConfigurationState:Lcom/android/systemui/util/ConfigurationState;

.field public locale:Ljava/util/Locale;

.field public final logBuilder:Ljava/lang/StringBuilder;

.field public maxDragWidth:F

.field public panelExpandFraction:F

.field public panelExpanded:Z

.field public panelFullyExpanded:Z

.field public panelSlideEventCallback:Lcom/android/systemui/shade/SecPanelSplitHelper$panelSlideEventHandler$1$1;

.field public panelSliderIntercepted:Z

.field public panelSplitEnabled:Z

.field public panelWidth:I

.field public final resourcePicker$delegate:Lkotlin/Lazy;

.field public final secPanelSAStatusLogInteractor$delegate:Lkotlin/Lazy;

.field public final secPanelSplitHelper:Lcom/android/systemui/shade/SecPanelSplitHelper;

.field public final secQuickSettingsControllerImpl$delegate:Lkotlin/Lazy;

.field public final settingsHelper$delegate:Lkotlin/Lazy;

.field public final shadeExpansionStateManager:Lcom/android/systemui/shade/ShadeExpansionStateManager;

.field public final shadeHeaderController$delegate:Lkotlin/Lazy;

.field public sliderAnimator:Landroid/animation/ValueAnimator;

.field public slidingInitialized:Z

.field public final statusBarStateController$delegate:Lkotlin/Lazy;

.field public final touchSlop:I

.field public tracking:Z

.field public final velocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/shade/PanelSlideEventHandler$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/shade/PanelSlideEventHandler$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/shade/ShadeExpansionStateManager;Lcom/android/systemui/shade/QuickSettingsControllerImpl;Lcom/android/systemui/shade/SecPanelSplitHelper;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/shade/PanelSlideEventHandler;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/shade/PanelSlideEventHandler;->shadeExpansionStateManager:Lcom/android/systemui/shade/ShadeExpansionStateManager;

    iput-object p4, p0, Lcom/android/systemui/shade/PanelSlideEventHandler;->secPanelSplitHelper:Lcom/android/systemui/shade/SecPanelSplitHelper;

    sget-object p4, Lcom/android/systemui/shade/PanelSlideEventHandler$shadeHeaderController$2;->INSTANCE:Lcom/android/systemui/shade/PanelSlideEventHandler$shadeHeaderController$2;

    invoke-static {p4}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p4

    iput-object p4, p0, Lcom/android/systemui/shade/PanelSlideEventHandler;->shadeHeaderController$delegate:Lkotlin/Lazy;

    new-instance p4, Lcom/android/systemui/shade/PanelSlideEventHandler$secQuickSettingsControllerImpl$2;

    invoke-direct {p4, p3}, Lcom/android/systemui/shade/PanelSlideEventHandler$secQuickSettingsControllerImpl$2;-><init>(Lcom/android/systemui/shade/QuickSettingsControllerImpl;)V

    invoke-static {p4}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p3

    iput-object p3, p0, Lcom/android/systemui/shade/PanelSlideEventHandler;->secQuickSettingsControllerImpl$delegate:Lkotlin/Lazy;

    sget-object p3, Lcom/android/systemui/shade/PanelSlideEventHandler$statusBarStateController$2;->INSTANCE:Lcom/android/systemui/shade/PanelSlideEventHandler$statusBarStateController$2;

    invoke-static {p3}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p3

    iput-object p3, p0, Lcom/android/systemui/shade/PanelSlideEventHandler;->statusBarStateController$delegate:Lkotlin/Lazy;

    sget-object p4, Lcom/android/systemui/shade/PanelSlideEventHandler$configurationController$2;->INSTANCE:Lcom/android/systemui/shade/PanelSlideEventHandler$configurationController$2;

    invoke-static {p4}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p4

    iput-object p4, p0, Lcom/android/systemui/shade/PanelSlideEventHandler;->configurationController$delegate:Lkotlin/Lazy;

    sget-object v0, Lcom/android/systemui/shade/PanelSlideEventHandler$resourcePicker$2;->INSTANCE:Lcom/android/systemui/shade/PanelSlideEventHandler$resourcePicker$2;

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/shade/PanelSlideEventHandler;->resourcePicker$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/android/systemui/shade/PanelSlideEventHandler$settingsHelper$2;->INSTANCE:Lcom/android/systemui/shade/PanelSlideEventHandler$settingsHelper$2;

    invoke-static {v1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/shade/PanelSlideEventHandler;->settingsHelper$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/android/systemui/shade/PanelSlideEventHandler$headsUpManager$2;->INSTANCE:Lcom/android/systemui/shade/PanelSlideEventHandler$headsUpManager$2;

    invoke-static {v1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/shade/PanelSlideEventHandler;->headsUpManager$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/android/systemui/shade/PanelSlideEventHandler$secPanelSAStatusLogInteractor$2;->INSTANCE:Lcom/android/systemui/shade/PanelSlideEventHandler$secPanelSAStatusLogInteractor$2;

    invoke-static {v1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/shade/PanelSlideEventHandler;->secPanelSAStatusLogInteractor$delegate:Lkotlin/Lazy;

    new-instance v1, Lcom/android/wm/shell/animation/FlingAnimationUtils;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    const v3, 0x3ecccccd    # 0.4f

    invoke-direct {v1, v2, v3}, Lcom/android/wm/shell/animation/FlingAnimationUtils;-><init>(Landroid/util/DisplayMetrics;F)V

    iput-object v1, p0, Lcom/android/systemui/shade/PanelSlideEventHandler;->flingAnimationUtils:Lcom/android/wm/shell/animation/FlingAnimationUtils;

    new-instance v1, Lcom/android/systemui/util/ConfigurationState;

    sget-object v2, Lcom/android/systemui/util/ConfigurationState$ConfigurationField;->ORIENTATION:Lcom/android/systemui/util/ConfigurationState$ConfigurationField;

    sget-object v3, Lcom/android/systemui/util/ConfigurationState$ConfigurationField;->SCREEN_HEIGHT_DP:Lcom/android/systemui/util/ConfigurationState$ConfigurationField;

    sget-object v4, Lcom/android/systemui/util/ConfigurationState$ConfigurationField;->DENSITY_DPI:Lcom/android/systemui/util/ConfigurationState$ConfigurationField;

    filled-new-array {v2, v3, v4}, [Lcom/android/systemui/util/ConfigurationState$ConfigurationField;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/systemui/util/ConfigurationState;-><init>(Ljava/util/List;)V

    iput-object v1, p0, Lcom/android/systemui/shade/PanelSlideEventHandler;->lastConfigurationState:Lcom/android/systemui/util/ConfigurationState;

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/shade/PanelSlideEventHandler;->velocityTracker:Landroid/view/VelocityTracker;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/shade/PanelSlideEventHandler;->logBuilder:Ljava/lang/StringBuilder;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iput-object v1, p0, Lcom/android/systemui/shade/PanelSlideEventHandler;->locale:Ljava/util/Locale;

    sget-object v1, Lcom/android/systemui/shade/PanelSlideEventHandler$Direction;->UNDECIDED:Lcom/android/systemui/shade/PanelSlideEventHandler$Direction;

    iput-object v1, p0, Lcom/android/systemui/shade/PanelSlideEventHandler;->direction:Lcom/android/systemui/shade/PanelSlideEventHandler$Direction;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Lcom/android/systemui/shade/PanelSlideEventHandler;->touchSlop:I

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledAmbiguousGestureMultiplier()F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/shade/PanelSlideEventHandler;->locale:Ljava/util/Locale;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->getPanelWidth(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/shade/PanelSlideEventHandler;->panelWidth:I

    invoke-static {p1}, Lcom/android/systemui/util/DeviceState;->getScreenWidth(Landroid/content/Context;)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/android/systemui/shade/PanelSlideEventHandler;->maxDragWidth:F

    invoke-virtual {p2, p0}, Lcom/android/systemui/shade/ShadeExpansionStateManager;->addExpansionListener(Lcom/android/systemui/shade/ShadeExpansionListener;)Lcom/android/systemui/shade/ShadeExpansionChangeEvent;

    invoke-interface {p4}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    check-cast p1, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    invoke-interface {p3}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {p1, p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    invoke-virtual {p0}, Lcom/android/systemui/shade/PanelSlideEventHandler;->updateResource()V

    return-void
.end method


# virtual methods
.method public final createSlideAnimatorAndRun(FF)V
    .locals 13

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/shade/PanelSlideEventHandler;->sliderAnimator:Landroid/animation/ValueAnimator;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/shade/PanelSlideEventHandler;->direction:Lcom/android/systemui/shade/PanelSlideEventHandler$Direction;

    sget-object v4, Lcom/android/systemui/shade/PanelSlideEventHandler$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v3, v4, v3

    const/4 v4, 0x0

    if-eq v3, v1, :cond_5

    if-eq v3, v0, :cond_4

    const/4 v5, 0x3

    if-eq v3, v5, :cond_3

    const/4 v5, 0x4

    if-eq v3, v5, :cond_2

    :cond_1
    move v3, v2

    goto :goto_1

    :cond_2
    cmpl-float v3, p1, v4

    if-ltz v3, :cond_1

    :goto_0
    move v3, v1

    goto :goto_1

    :cond_3
    cmpg-float v3, p1, v4

    if-gtz v3, :cond_1

    goto :goto_0

    :cond_4
    cmpl-float v3, p1, v4

    if-ltz v3, :cond_1

    goto :goto_0

    :cond_5
    cmpg-float v3, p1, v4

    if-gtz v3, :cond_1

    goto :goto_0

    :goto_1
    if-eqz v3, :cond_7

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget-object v6, p0, Lcom/android/systemui/shade/PanelSlideEventHandler;->flingAnimationUtils:Lcom/android/wm/shell/animation/FlingAnimationUtils;

    iget v6, v6, Lcom/android/wm/shell/animation/FlingAnimationUtils;->mMinVelocityPxPerSecond:F

    cmpl-float v5, v5, v6

    if-gtz v5, :cond_6

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v6, p0, Lcom/android/systemui/shade/PanelSlideEventHandler;->maxDragWidth:F

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const/high16 v7, 0x3f000000    # 0.5f

    mul-float/2addr v6, v7

    cmpl-float v5, v5, v6

    if-lez v5, :cond_7

    :cond_6
    move v5, v1

    goto :goto_2

    :cond_7
    move v5, v2

    :goto_2
    cmpl-float v6, p1, v4

    if-ltz v6, :cond_8

    iget v6, p0, Lcom/android/systemui/shade/PanelSlideEventHandler;->maxDragWidth:F

    goto :goto_3

    :cond_8
    iget v6, p0, Lcom/android/systemui/shade/PanelSlideEventHandler;->maxDragWidth:F

    neg-float v6, v6

    :goto_3
    if-eqz v5, :cond_9

    move v7, v6

    goto :goto_4

    :cond_9
    move v7, v4

    :goto_4
    new-array v0, v0, [F

    aput p2, v0, v2

    aput v7, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/shade/PanelSlideEventHandler$createSlideAnimatorAndRun$animator$1$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/shade/PanelSlideEventHandler$createSlideAnimatorAndRun$animator$1$1;-><init>(Lcom/android/systemui/shade/PanelSlideEventHandler;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v1, Lcom/android/systemui/shade/PanelSlideEventHandler$createSlideAnimatorAndRun$animator$1$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/shade/PanelSlideEventHandler$createSlideAnimatorAndRun$animator$1$2;-><init>(Lcom/android/systemui/shade/PanelSlideEventHandler;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    cmpg-float v1, p1, v4

    if-nez v1, :cond_a

    const/16 v1, 0xc8

    int-to-float v1, v1

    iget v2, p0, Lcom/android/systemui/shade/PanelSlideEventHandler;->maxDragWidth:F

    div-float v2, p2, v2

    const/16 v4, 0x64

    int-to-float v4, v4

    mul-float/2addr v2, v4

    add-float/2addr v2, v1

    float-to-long v1, v2

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    goto :goto_5

    :cond_a
    iget-object v7, p0, Lcom/android/systemui/shade/PanelSlideEventHandler;->flingAnimationUtils:Lcom/android/wm/shell/animation/FlingAnimationUtils;

    iget v12, p0, Lcom/android/systemui/shade/PanelSlideEventHandler;->maxDragWidth:F

    move-object v8, v0

    move v9, p2

    move v10, v6

    move v11, p1

    invoke-virtual/range {v7 .. v12}, Lcom/android/wm/shell/animation/FlingAnimationUtils;->apply(Landroid/animation/Animator;FFFF)V

    :goto_5
    iput-object v0, p0, Lcom/android/systemui/shade/PanelSlideEventHandler;->sliderAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v0

    iget-object p0, p0, Lcom/android/systemui/shade/PanelSlideEventHandler;->direction:Lcom/android/systemui/shade/PanelSlideEventHandler$Direction;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "createSlideAnimatorAndRun change = "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " draggedDistance = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, " duration = "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " direction = "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " target = "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, " vel = "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, " isForward = "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SecPanelSplitHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final initiateSlide(Landroid/view/MotionEvent;)V
    .locals 17

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui/shade/PanelSlideEventHandler;->panelSplitEnabled:Z

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, v0, Lcom/android/systemui/shade/PanelSlideEventHandler;->lastConfigurationState:Lcom/android/systemui/util/ConfigurationState;

    sget-object v2, Lcom/android/systemui/util/ConfigurationState$ConfigurationField;->ORIENTATION:Lcom/android/systemui/util/ConfigurationState$ConfigurationField;

    invoke-virtual {v1, v2}, Lcom/android/systemui/util/ConfigurationState;->getValue(Lcom/android/systemui/util/ConfigurationState$ConfigurationField;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, -0x64

    const/4 v4, 0x0

    if-eq v1, v3, :cond_1

    goto :goto_0

    :cond_1
    move-object v2, v4

    :goto_0
    const-string v1, "SecPanelSplitHelper"

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    iget-object v3, v0, Lcom/android/systemui/shade/PanelSlideEventHandler;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    if-eq v2, v3, :cond_3

    sget-boolean v5, Lcom/android/systemui/QpRune;->QUICK_PANEL_DEBUG_LOG:Z

    if-eqz v5, :cond_2

    const-string v5, "initiateSlide forced updateResource lastConfig.orientation = "

    const-string v6, ", context.orientation = "

    invoke-static {v2, v3, v5, v6, v1}, Landroidx/appcompat/widget/SuggestionsAdapter$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/shade/PanelSlideEventHandler;->updateResource()V

    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, v0, Lcom/android/systemui/shade/PanelSlideEventHandler;->initialX:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, v0, Lcom/android/systemui/shade/PanelSlideEventHandler;->initialY:F

    sget-object v2, Lcom/android/systemui/shade/PanelSlideEventHandler$Direction;->UNDECIDED:Lcom/android/systemui/shade/PanelSlideEventHandler$Direction;

    iput-object v2, v0, Lcom/android/systemui/shade/PanelSlideEventHandler;->direction:Lcom/android/systemui/shade/PanelSlideEventHandler$Direction;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/systemui/shade/PanelSlideEventHandler;->panelSliderIntercepted:Z

    iget-boolean v3, v0, Lcom/android/systemui/shade/PanelSlideEventHandler;->panelFullyExpanded:Z

    iput-boolean v3, v0, Lcom/android/systemui/shade/PanelSlideEventHandler;->fullyExpandedOnDown:Z

    iget-object v3, v0, Lcom/android/systemui/shade/PanelSlideEventHandler;->panelSlideEventCallback:Lcom/android/systemui/shade/SecPanelSplitHelper$panelSlideEventHandler$1$1;

    if-eqz v3, :cond_4

    iget-object v3, v3, Lcom/android/systemui/shade/SecPanelSplitHelper$panelSlideEventHandler$1$1;->this$0:Lcom/android/systemui/shade/SecPanelSplitHelper;

    iget v5, v3, Lcom/android/systemui/shade/SecPanelSplitHelper;->currentState:I

    iput v5, v3, Lcom/android/systemui/shade/SecPanelSplitHelper;->stateOnDown:I

    :cond_4
    iget-object v3, v0, Lcom/android/systemui/shade/PanelSlideEventHandler;->secQuickSettingsControllerImpl$delegate:Lkotlin/Lazy;

    invoke-interface {v3}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/shade/SecQuickSettingsControllerImpl;

    if-eqz v5, :cond_5

    invoke-virtual {v5}, Lcom/android/systemui/shade/SecQuickSettingsControllerImpl;->getNonInterceptingScrollView()Lcom/android/systemui/qs/NonInterceptingScrollView;

    move-result-object v5

    if-eqz v5, :cond_5

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Lcom/android/systemui/qs/NonInterceptingScrollView;->canScrollVertically(I)Z

    move-result v5

    goto :goto_1

    :cond_5
    move v5, v2

    :goto_1
    iput-boolean v5, v0, Lcom/android/systemui/shade/PanelSlideEventHandler;->canScrollDownOnDown:Z

    iget v5, v0, Lcom/android/systemui/shade/PanelSlideEventHandler;->initialX:F

    iget v6, v0, Lcom/android/systemui/shade/PanelSlideEventHandler;->initialY:F

    iget-object v7, v0, Lcom/android/systemui/shade/PanelSlideEventHandler;->shadeHeaderController$delegate:Lkotlin/Lazy;

    invoke-interface {v7}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/shade/ShadeHeaderController;

    iget-object v7, v7, Lcom/android/systemui/shade/ShadeHeaderController;->header:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getHeight()I

    move-result v7

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_7

    :cond_6
    :goto_2
    move v5, v2

    goto :goto_6

    :cond_7
    iget-object v6, v0, Lcom/android/systemui/shade/PanelSlideEventHandler;->secPanelSplitHelper:Lcom/android/systemui/shade/SecPanelSplitHelper;

    invoke-virtual {v6}, Lcom/android/systemui/shade/SecPanelSplitHelper;->isReversed()Z

    move-result v6

    iget-object v8, v0, Lcom/android/systemui/shade/PanelSlideEventHandler;->panelSlideEventCallback:Lcom/android/systemui/shade/SecPanelSplitHelper$panelSlideEventHandler$1$1;

    if-eqz v8, :cond_8

    iget-object v8, v8, Lcom/android/systemui/shade/SecPanelSplitHelper$panelSlideEventHandler$1$1;->this$0:Lcom/android/systemui/shade/SecPanelSplitHelper;

    iget v8, v8, Lcom/android/systemui/shade/SecPanelSplitHelper;->currentState:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    goto :goto_3

    :cond_8
    move-object v8, v4

    :goto_3
    xor-int/lit8 v9, v6, 0x1

    if-nez v8, :cond_9

    goto :goto_5

    :cond_9
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-ne v10, v9, :cond_a

    iget v6, v0, Lcom/android/systemui/shade/PanelSlideEventHandler;->displayWidthOfDivider:I

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_6

    :goto_4
    const/4 v5, 0x1

    goto :goto_6

    :cond_a
    :goto_5
    if-nez v8, :cond_b

    goto :goto_2

    :cond_b
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ne v8, v6, :cond_6

    iget v6, v0, Lcom/android/systemui/shade/PanelSlideEventHandler;->displayWidthOfDivider:I

    int-to-float v6, v6

    cmpg-float v5, v5, v6

    if-gez v5, :cond_6

    goto :goto_4

    :goto_6
    iput-boolean v5, v0, Lcom/android/systemui/shade/PanelSlideEventHandler;->isInChangeSpotOnDown:Z

    iget v5, v0, Lcom/android/systemui/shade/PanelSlideEventHandler;->initialX:F

    iget v6, v0, Lcom/android/systemui/shade/PanelSlideEventHandler;->initialY:F

    iget-object v8, v0, Lcom/android/systemui/shade/PanelSlideEventHandler;->statusBarStateController$delegate:Lkotlin/Lazy;

    invoke-interface {v8}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v8}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v8

    const/4 v9, 0x2

    if-eq v8, v9, :cond_12

    iget-object v8, v0, Lcom/android/systemui/shade/PanelSlideEventHandler;->settingsHelper$delegate:Lkotlin/Lazy;

    invoke-interface {v8}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v8}, Lcom/android/systemui/util/SettingsHelper;->isNavigationBarGestureWhileHidden()Z

    move-result v8

    if-nez v8, :cond_c

    goto :goto_b

    :cond_c
    iget-object v8, v0, Lcom/android/systemui/shade/PanelSlideEventHandler;->context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget-object v8, v8, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v8}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    iget-object v10, v0, Lcom/android/systemui/shade/PanelSlideEventHandler;->context:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    iget-object v10, v10, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v10}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v10

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v10

    iget-object v11, v0, Lcom/android/systemui/shade/PanelSlideEventHandler;->gestureInsets:Landroid/graphics/Insets;

    if-eqz v11, :cond_d

    iget v12, v11, Landroid/graphics/Insets;->left:I

    goto :goto_7

    :cond_d
    move v12, v2

    :goto_7
    if-eqz v11, :cond_e

    iget v13, v11, Landroid/graphics/Insets;->right:I

    goto :goto_8

    :cond_e
    move v13, v8

    :goto_8
    if-eqz v11, :cond_f

    iget v14, v11, Landroid/graphics/Insets;->top:I

    goto :goto_9

    :cond_f
    move v14, v2

    :goto_9
    if-eqz v11, :cond_10

    iget v11, v11, Landroid/graphics/Insets;->bottom:I

    goto :goto_a

    :cond_10
    move v11, v10

    :goto_a
    int-to-float v12, v12

    cmpg-float v12, v5, v12

    if-ltz v12, :cond_11

    sub-int/2addr v8, v13

    int-to-float v8, v8

    cmpl-float v5, v5, v8

    if-lez v5, :cond_12

    :cond_11
    int-to-float v5, v14

    cmpl-float v5, v6, v5

    if-lez v5, :cond_12

    sub-int/2addr v10, v11

    int-to-float v5, v10

    cmpg-float v5, v6, v5

    if-gez v5, :cond_12

    const/4 v5, 0x1

    goto :goto_c

    :cond_12
    :goto_b
    move v5, v2

    :goto_c
    iput-boolean v5, v0, Lcom/android/systemui/shade/PanelSlideEventHandler;->isInGestureArea:Z

    iget v5, v0, Lcom/android/systemui/shade/PanelSlideEventHandler;->initialY:F

    iget-object v6, v0, Lcom/android/systemui/shade/PanelSlideEventHandler;->resourcePicker$delegate:Lkotlin/Lazy;

    invoke-interface {v6}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    iget-object v8, v0, Lcom/android/systemui/shade/PanelSlideEventHandler;->context:Landroid/content/Context;

    iget-object v6, v6, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->resourcePickHelper:Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;

    invoke-virtual {v6}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;->getTargetPicker()Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v10, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon;->Companion:Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v10, 0x7f07105a

    invoke-static {v10, v8}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;->dp(ILandroid/content/Context;)I

    move-result v10

    invoke-virtual {v6, v8}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;->getDateButtonContainerTopMargin(Landroid/content/Context;)I

    move-result v6

    add-int/2addr v6, v10

    const v10, 0x7f07105b

    invoke-static {v8, v10, v6}, Lcom/android/keyguard/StrongAuthPopup$$ExternalSyntheticOutline0;->m(Landroid/content/Context;II)I

    move-result v6

    int-to-float v6, v6

    cmpg-float v5, v5, v6

    if-gez v5, :cond_13

    const/4 v5, 0x1

    goto :goto_d

    :cond_13
    move v5, v2

    :goto_d
    iput-boolean v5, v0, Lcom/android/systemui/shade/PanelSlideEventHandler;->isInQsScrollerTopMarginArea:Z

    invoke-interface {v3}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/shade/SecQuickSettingsControllerImpl;

    if-eqz v3, :cond_1b

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    iget-object v3, v3, Lcom/android/systemui/shade/SecQuickSettingsControllerImpl;->qsSupplier:Ljava/util/function/Supplier;

    invoke-interface {v3}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v3

    instance-of v8, v3, Lcom/android/systemui/qs/QSFragmentLegacy;

    if-eqz v8, :cond_14

    move-object v4, v3

    check-cast v4, Lcom/android/systemui/qs/QSFragmentLegacy;

    :cond_14
    if-eqz v4, :cond_1b

    iget-object v3, v4, Lcom/android/systemui/qs/QSFragmentLegacy;->mQsImpl:Lcom/android/systemui/qs/QSImpl;

    if-eqz v3, :cond_1b

    iget-object v3, v3, Lcom/android/systemui/qs/QSImpl;->mSecQSImpl:Lcom/android/systemui/qs/SecQSImpl;

    if-eqz v3, :cond_1b

    iget-object v3, v3, Lcom/android/systemui/qs/SecQSImpl;->barController:Lcom/android/systemui/qs/bar/BarController;

    if-eqz v3, :cond_1b

    new-array v4, v9, [I

    new-array v8, v9, [I

    new-array v10, v9, [I

    new-array v9, v9, [I

    sget-object v11, Lcom/android/systemui/qs/bar/BarType;->BRIGHTNESS_VOLUME:Lcom/android/systemui/qs/bar/BarType;

    invoke-virtual {v3, v11}, Lcom/android/systemui/qs/bar/BarController;->getBarInExpanded(Lcom/android/systemui/qs/bar/BarType;)Lcom/android/systemui/qs/bar/BarItemImpl;

    move-result-object v11

    check-cast v11, Lcom/android/systemui/qs/bar/BrightnessVolumeBar;

    iget-object v12, v11, Lcom/android/systemui/qs/bar/BrightnessVolumeBar;->mBrightnessBar:Lcom/android/systemui/qs/bar/BrightnessBar;

    sget-object v13, Lcom/android/systemui/qs/bar/BarType;->QS_MEDIA_PLAYER:Lcom/android/systemui/qs/bar/BarType;

    invoke-virtual {v3, v13}, Lcom/android/systemui/qs/bar/BarController;->getBarInExpanded(Lcom/android/systemui/qs/bar/BarType;)Lcom/android/systemui/qs/bar/BarItemImpl;

    move-result-object v13

    check-cast v13, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;

    sget-object v14, Lcom/android/systemui/qs/bar/BarType;->QUICK_CONTROL:Lcom/android/systemui/qs/bar/BarType;

    invoke-virtual {v3, v14}, Lcom/android/systemui/qs/bar/BarController;->getBarInExpanded(Lcom/android/systemui/qs/bar/BarType;)Lcom/android/systemui/qs/bar/BarItemImpl;

    move-result-object v3

    iget-object v14, v12, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    const v15, 0x7f0a0b7c

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    iget-object v11, v11, Lcom/android/systemui/qs/bar/BrightnessVolumeBar;->mVolumeBar:Lcom/android/systemui/qs/bar/VolumeBar;

    iget-object v7, v11, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    invoke-virtual {v7, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iget-object v15, v13, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    const v2, 0x7f0a06dc

    invoke-virtual {v15, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v15, v3, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    move-object/from16 v16, v1

    const v1, 0x7f0a098f

    invoke-virtual {v15, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v14, v4}, Landroid/view/View;->getLocationInWindow([I)V

    invoke-virtual {v7, v8}, Landroid/view/View;->getLocationInWindow([I)V

    invoke-virtual {v2, v10}, Landroid/view/View;->getLocationInWindow([I)V

    invoke-virtual {v1, v9}, Landroid/view/View;->getLocationInWindow([I)V

    iget-boolean v12, v12, Lcom/android/systemui/qs/bar/BarItemImpl;->mShowing:Z

    if-eqz v12, :cond_15

    const/4 v12, 0x0

    aget v15, v4, v12

    int-to-float v12, v15

    cmpl-float v12, v5, v12

    if-lez v12, :cond_15

    invoke-virtual {v14}, Landroid/view/View;->getWidth()I

    move-result v12

    add-int/2addr v12, v15

    int-to-float v12, v12

    cmpg-float v12, v5, v12

    if-gez v12, :cond_15

    const/4 v12, 0x1

    aget v4, v4, v12

    int-to-float v12, v4

    cmpl-float v12, v6, v12

    if-lez v12, :cond_15

    invoke-virtual {v14}, Landroid/view/View;->getHeight()I

    move-result v12

    add-int/2addr v12, v4

    int-to-float v4, v12

    cmpg-float v4, v6, v4

    if-gez v4, :cond_15

    const/4 v12, 0x1

    goto :goto_e

    :cond_15
    const/4 v12, 0x0

    :goto_e
    iget-boolean v4, v11, Lcom/android/systemui/qs/bar/BarItemImpl;->mShowing:Z

    if-eqz v4, :cond_16

    const/4 v4, 0x0

    aget v11, v8, v4

    int-to-float v4, v11

    cmpl-float v4, v5, v4

    if-lez v4, :cond_16

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v4, v11

    int-to-float v4, v4

    cmpg-float v4, v5, v4

    if-gez v4, :cond_16

    const/4 v4, 0x1

    aget v8, v8, v4

    int-to-float v4, v8

    cmpl-float v4, v6, v4

    if-lez v4, :cond_16

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v4, v8

    int-to-float v4, v4

    cmpg-float v4, v6, v4

    if-gez v4, :cond_16

    const/4 v4, 0x1

    goto :goto_f

    :cond_16
    const/4 v4, 0x0

    :goto_f
    iget-boolean v7, v13, Lcom/android/systemui/qs/bar/BarItemImpl;->mShowing:Z

    if-eqz v7, :cond_18

    iget-object v7, v13, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mMediaHost:Lcom/android/systemui/media/SecMediaHost;

    if-eqz v7, :cond_18

    sget-object v8, Lcom/android/systemui/media/MediaType;->QS:Lcom/android/systemui/media/MediaType;

    iget-object v7, v7, Lcom/android/systemui/media/SecMediaHost;->mMediaPlayerData:Ljava/util/HashMap;

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/media/SecMediaPlayerData;

    if-eqz v7, :cond_17

    invoke-virtual {v7}, Lcom/android/systemui/media/SecMediaPlayerData;->getMediaData()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v7

    :goto_10
    const/4 v8, 0x1

    goto :goto_11

    :cond_17
    const/4 v7, 0x0

    goto :goto_10

    :goto_11
    if-le v7, v8, :cond_18

    const/4 v7, 0x0

    aget v11, v10, v7

    int-to-float v7, v11

    cmpl-float v7, v5, v7

    if-lez v7, :cond_18

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v7

    add-int/2addr v7, v11

    int-to-float v7, v7

    cmpg-float v7, v5, v7

    if-gez v7, :cond_18

    aget v7, v10, v8

    int-to-float v8, v7

    cmpl-float v8, v6, v8

    if-lez v8, :cond_18

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v2, v7

    int-to-float v2, v2

    cmpg-float v2, v6, v2

    if-gez v2, :cond_18

    const/4 v2, 0x1

    goto :goto_12

    :cond_18
    const/4 v2, 0x0

    :goto_12
    iget-boolean v3, v3, Lcom/android/systemui/qs/bar/BarItemImpl;->mShowing:Z

    if-eqz v3, :cond_19

    const/4 v3, 0x0

    aget v7, v9, v3

    int-to-float v3, v7

    cmpl-float v3, v5, v3

    if-lez v3, :cond_19

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v3, v7

    int-to-float v3, v3

    cmpg-float v3, v5, v3

    if-gez v3, :cond_19

    const/4 v3, 0x1

    aget v5, v9, v3

    int-to-float v3, v5

    cmpl-float v3, v6, v3

    if-lez v3, :cond_19

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr v1, v5

    int-to-float v1, v1

    cmpg-float v1, v6, v1

    if-gez v1, :cond_19

    const/4 v1, 0x1

    goto :goto_13

    :cond_19
    const/4 v1, 0x0

    :goto_13
    if-nez v12, :cond_1a

    if-nez v4, :cond_1a

    if-nez v2, :cond_1a

    if-eqz v1, :cond_1c

    :cond_1a
    const/4 v12, 0x1

    goto :goto_14

    :cond_1b
    move-object/from16 v16, v1

    :cond_1c
    const/4 v12, 0x0

    :goto_14
    iput-boolean v12, v0, Lcom/android/systemui/shade/PanelSlideEventHandler;->isInSlidableAreaOnDown:Z

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/systemui/shade/PanelSlideEventHandler;->tracking:Z

    iget-object v2, v0, Lcom/android/systemui/shade/PanelSlideEventHandler;->velocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v3, p1

    invoke-virtual {v2, v3}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/systemui/shade/PanelSlideEventHandler;->slidingInitialized:Z

    iget-object v2, v0, Lcom/android/systemui/shade/PanelSlideEventHandler;->logBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v0, v0, Lcom/android/systemui/shade/PanelSlideEventHandler;->displayWidthOfDivider:I

    const-string v3, "initiateSlide ("

    const-string v4, ", "

    const-string v5, ") displayWidthOfDivider = "

    invoke-static {v3, v1, v4, v2, v5}, Landroidx/compose/animation/core/CubicBezierEasing$$ExternalSyntheticOutline0;->m(Ljava/lang/String;FLjava/lang/String;FLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v2, v16

    invoke-static {v0, v2, v1}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    return-void
.end method

.method public final onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/shade/PanelSlideEventHandler;->lastConfigurationState:Lcom/android/systemui/util/ConfigurationState;

    invoke-virtual {v0, p1}, Lcom/android/systemui/util/ConfigurationState;->needToUpdate(Landroid/content/res/Configuration;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/shade/PanelSlideEventHandler;->locale:Ljava/util/Locale;

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/shade/PanelSlideEventHandler;->locale:Ljava/util/Locale;

    invoke-virtual {v0, p1}, Lcom/android/systemui/util/ConfigurationState;->update(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/android/systemui/shade/PanelSlideEventHandler;->updateResource()V

    return-void
.end method

.method public final onPanelExpansionChanged(Lcom/android/systemui/shade/ShadeExpansionChangeEvent;)V
    .locals 1

    iget-boolean v0, p1, Lcom/android/systemui/shade/ShadeExpansionChangeEvent;->expanded:Z

    iput-boolean v0, p0, Lcom/android/systemui/shade/PanelSlideEventHandler;->panelExpanded:Z

    iget p1, p1, Lcom/android/systemui/shade/ShadeExpansionChangeEvent;->fraction:F

    iput p1, p0, Lcom/android/systemui/shade/PanelSlideEventHandler;->panelExpandFraction:F

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float p1, p1, v0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/shade/PanelSlideEventHandler;->panelFullyExpanded:Z

    return-void
.end method

.method public final onStateChanged(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;->onStateChanged(I)V

    iget-object p0, p0, Lcom/android/systemui/shade/PanelSlideEventHandler;->sliderAnimator:Landroid/animation/ValueAnimator;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method public final updateDirection(FF)V
    .locals 5

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lcom/android/systemui/shade/PanelSlideEventHandler;->touchSlop:I

    int-to-float v2, v2

    cmpg-float v3, v0, v2

    if-gtz v3, :cond_0

    cmpg-float v2, v1, v2

    if-gtz v2, :cond_0

    return-void

    :cond_0
    cmpl-float v2, v0, v1

    const/4 v3, 0x0

    if-lez v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/shade/PanelSlideEventHandler;->direction:Lcom/android/systemui/shade/PanelSlideEventHandler$Direction;

    sget-object v4, Lcom/android/systemui/shade/PanelSlideEventHandler$Direction;->DOWN:Lcom/android/systemui/shade/PanelSlideEventHandler$Direction;

    if-eq v2, v4, :cond_2

    cmpl-float p1, p1, v3

    if-lez p1, :cond_1

    sget-object p1, Lcom/android/systemui/shade/PanelSlideEventHandler$Direction;->RIGHT:Lcom/android/systemui/shade/PanelSlideEventHandler$Direction;

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/android/systemui/shade/PanelSlideEventHandler$Direction;->LEFT:Lcom/android/systemui/shade/PanelSlideEventHandler$Direction;

    :goto_0
    iput-object p1, p0, Lcom/android/systemui/shade/PanelSlideEventHandler;->direction:Lcom/android/systemui/shade/PanelSlideEventHandler$Direction;

    goto :goto_2

    :cond_2
    cmpg-float p1, v0, v1

    if-gez p1, :cond_4

    iget-object p1, p0, Lcom/android/systemui/shade/PanelSlideEventHandler;->direction:Lcom/android/systemui/shade/PanelSlideEventHandler$Direction;

    sget-object v0, Lcom/android/systemui/shade/PanelSlideEventHandler$Direction;->UNDECIDED:Lcom/android/systemui/shade/PanelSlideEventHandler$Direction;

    if-ne p1, v0, :cond_4

    iget p1, p0, Lcom/android/systemui/shade/PanelSlideEventHandler;->initialY:F

    iget-object v0, p0, Lcom/android/systemui/shade/PanelSlideEventHandler;->shadeHeaderController$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/shade/ShadeHeaderController;

    iget-object v0, v0, Lcom/android/systemui/shade/ShadeHeaderController;->header:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_4

    cmpl-float p1, p2, v3

    if-lez p1, :cond_3

    sget-object p1, Lcom/android/systemui/shade/PanelSlideEventHandler$Direction;->DOWN:Lcom/android/systemui/shade/PanelSlideEventHandler$Direction;

    goto :goto_1

    :cond_3
    sget-object p1, Lcom/android/systemui/shade/PanelSlideEventHandler$Direction;->UP:Lcom/android/systemui/shade/PanelSlideEventHandler$Direction;

    :goto_1
    iput-object p1, p0, Lcom/android/systemui/shade/PanelSlideEventHandler;->direction:Lcom/android/systemui/shade/PanelSlideEventHandler$Direction;

    :cond_4
    :goto_2
    return-void
.end method

.method public final updateResource()V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/shade/PanelSlideEventHandler;->resourcePicker$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    iget-object v1, p0, Lcom/android/systemui/shade/PanelSlideEventHandler;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->getPanelWidth(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/shade/PanelSlideEventHandler;->panelWidth:I

    iget-object v0, p0, Lcom/android/systemui/shade/PanelSlideEventHandler;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->getScreenWidth(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/shade/PanelSlideEventHandler;->maxDragWidth:F

    iget-object v0, p0, Lcom/android/systemui/shade/PanelSlideEventHandler;->settingsHelper$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->getPanelSplitRatio()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "updateResources: panelSplitRatio: "

    const-string v3, "SecPanelSplitHelper"

    invoke-static {v0, v2, v3}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    if-gez v0, :cond_0

    const/4 v1, 0x0

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3c23d70a    # 0.01f

    mul-float/2addr v0, v1

    goto :goto_0

    :cond_1
    const v0, 0x3f333333    # 0.7f

    :goto_0
    iput v0, p0, Lcom/android/systemui/shade/PanelSlideEventHandler;->displayRatioOfDivider:F

    iget-object v0, p0, Lcom/android/systemui/shade/PanelSlideEventHandler;->secPanelSplitHelper:Lcom/android/systemui/shade/SecPanelSplitHelper;

    invoke-virtual {v0}, Lcom/android/systemui/shade/SecPanelSplitHelper;->isReversed()Z

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/shade/PanelSlideEventHandler;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/util/DeviceState;->getDisplayWidth(Landroid/content/Context;)I

    move-result v1

    int-to-float v1, v1

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    int-to-float v2, v2

    iget v4, p0, Lcom/android/systemui/shade/PanelSlideEventHandler;->displayRatioOfDivider:F

    sub-float/2addr v2, v4

    goto :goto_1

    :cond_2
    iget v2, p0, Lcom/android/systemui/shade/PanelSlideEventHandler;->displayRatioOfDivider:F

    :goto_1
    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/android/systemui/shade/PanelSlideEventHandler;->displayWidthOfDivider:I

    iget v2, p0, Lcom/android/systemui/shade/PanelSlideEventHandler;->panelWidth:I

    iget v4, p0, Lcom/android/systemui/shade/PanelSlideEventHandler;->maxDragWidth:F

    iget p0, p0, Lcom/android/systemui/shade/PanelSlideEventHandler;->displayRatioOfDivider:F

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "updateResource panelWidth = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " maxDragWidth = "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " displayRatioOfDivider = "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, " displayWidthOfDivider = "

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " isReversed = "

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5, v0, v3}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    return-void
.end method
