.class public final Lcom/android/systemui/qs/animator/PanelAffordanceAnimator;
.super Lcom/android/systemui/qs/animator/SecQSImplAnimatorBase;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final HIDE_GLOW_ANIM_ALPHA_PROPERTY:Lcom/android/systemui/util/AnimHelper$AnimProperty;

.field public static final HIDE_GLOW_ANIM_TRANSLATION_Y_PROPERTY:Lcom/android/systemui/util/AnimHelper$AnimProperty;

.field public static final INIT_PROPERTY_FIELDS:[Lcom/android/systemui/util/AnimHelper$AnimationType;

.field public static final SHOW_ANIM_GLOW_ALPHA_PROPERTY:Lcom/android/systemui/util/AnimHelper$AnimProperty;

.field public static final SHOW_ANIM_GLOW_TRANSLATION_Y_PROPERTY:Lcom/android/systemui/util/AnimHelper$AnimProperty;


# instance fields
.field public final broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field public final broadcastReceiver:Lcom/android/systemui/qs/animator/PanelAffordanceAnimator$broadcastReceiver$1;

.field public final configurationListener:Lcom/android/systemui/qs/animator/PanelAffordanceAnimator$configurationListener$1;

.field public final context:Landroid/content/Context;

.field public glowView:Landroid/view/View;

.field public final hideAnimList:Ljava/util/ArrayList;

.field public hideAnimSet:Landroid/animation/AnimatorSet;

.field public final hideGlowRunnable:Lcom/android/systemui/qs/animator/PanelAffordanceAnimator$hideGlowRunnable$1;

.field public final hideHandler:Landroid/os/Handler;

.field public isGlowShowing:Z

.field public isIfNeedReloadView:Z

.field public lastDensityDpi:I

.field public lastLayoutDirection:I

.field public lastOrientation:I

.field public final notificationPanelViewController:Lcom/android/systemui/shade/NotificationPanelViewController;

.field public panelExpanded:Z

.field public panelOnceFullyExpanded:Z

.field public panelOnceFullySlidden:Z

.field public final qsExpansionStateInteractor:Lcom/android/systemui/shade/domain/interactor/SecQSExpansionStateInteractor;

.field public reversed:Z

.field public final secPanelSplitHelper$delegate:Lkotlin/Lazy;

.field public final secQSStateListener:Lcom/android/systemui/qs/animator/PanelAffordanceAnimator$secQSStateListener$1;

.field private final settingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field private settingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

.field public final showAnimList:Ljava/util/ArrayList;

.field public showAnimSet:Landroid/animation/AnimatorSet;

.field public showAnimTriggered:Z

.field public final statusBarStateController$delegate:Lkotlin/Lazy;

.field public targetState:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    new-instance v0, Lcom/android/systemui/qs/animator/PanelAffordanceAnimator$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/animator/PanelAffordanceAnimator$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object v0, Lcom/android/systemui/util/AnimHelper$AnimationType;->ALPHA:Lcom/android/systemui/util/AnimHelper$AnimationType;

    sget-object v9, Lcom/android/systemui/util/AnimHelper$AnimationType;->TRANSLATION_Y:Lcom/android/systemui/util/AnimHelper$AnimationType;

    filled-new-array {v0, v9}, [Lcom/android/systemui/util/AnimHelper$AnimationType;

    move-result-object v1

    sput-object v1, Lcom/android/systemui/qs/animator/PanelAffordanceAnimator;->INIT_PROPERTY_FIELDS:[Lcom/android/systemui/util/AnimHelper$AnimationType;

    new-instance v10, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f1c28f6    # 0.61f

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3f6147ae    # 0.88f

    invoke-direct {v10, v1, v2, v3, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    new-instance v11, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ea8f5c3    # 0.33f

    const v3, 0x3f2e147b    # 0.68f

    invoke-direct {v11, v1, v2, v3, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    new-instance v1, Lcom/android/systemui/util/AnimHelper$AnimProperty;

    const/16 v4, 0x1f4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    move-object v2, v1

    move-object v3, v0

    move-object v8, v10

    invoke-direct/range {v2 .. v8}, Lcom/android/systemui/util/AnimHelper$AnimProperty;-><init>(Lcom/android/systemui/util/AnimHelper$AnimationType;IIFFLandroid/view/animation/Interpolator;)V

    sput-object v1, Lcom/android/systemui/qs/animator/PanelAffordanceAnimator;->SHOW_ANIM_GLOW_ALPHA_PROPERTY:Lcom/android/systemui/util/AnimHelper$AnimProperty;

    new-instance v8, Lcom/android/systemui/util/AnimHelper$AnimProperty;

    const/16 v3, 0x1f4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, -0x40800000    # -1.0f

    move-object v1, v8

    move-object v2, v9

    move-object v7, v11

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/util/AnimHelper$AnimProperty;-><init>(Lcom/android/systemui/util/AnimHelper$AnimationType;IIFFLandroid/view/animation/Interpolator;)V

    sput-object v8, Lcom/android/systemui/qs/animator/PanelAffordanceAnimator;->SHOW_ANIM_GLOW_TRANSLATION_Y_PROPERTY:Lcom/android/systemui/util/AnimHelper$AnimProperty;

    new-instance v1, Lcom/android/systemui/util/AnimHelper$AnimProperty;

    const/16 v4, 0xc8

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    move-object v2, v1

    move-object v3, v0

    move-object v8, v10

    invoke-direct/range {v2 .. v8}, Lcom/android/systemui/util/AnimHelper$AnimProperty;-><init>(Lcom/android/systemui/util/AnimHelper$AnimationType;IIFFLandroid/view/animation/Interpolator;)V

    sput-object v1, Lcom/android/systemui/qs/animator/PanelAffordanceAnimator;->HIDE_GLOW_ANIM_ALPHA_PROPERTY:Lcom/android/systemui/util/AnimHelper$AnimProperty;

    new-instance v0, Lcom/android/systemui/util/AnimHelper$AnimProperty;

    const/16 v3, 0xc8

    const/4 v4, 0x0

    const/high16 v5, -0x40800000    # -1.0f

    const/high16 v6, -0x40800000    # -1.0f

    move-object v1, v0

    move-object v2, v9

    move-object v7, v10

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/util/AnimHelper$AnimProperty;-><init>(Lcom/android/systemui/util/AnimHelper$AnimationType;IIFFLandroid/view/animation/Interpolator;)V

    sput-object v0, Lcom/android/systemui/qs/animator/PanelAffordanceAnimator;->HIDE_GLOW_ANIM_TRANSLATION_Y_PROPERTY:Lcom/android/systemui/util/AnimHelper$AnimProperty;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/shade/NotificationPanelViewController;Lcom/android/systemui/shade/domain/interactor/SecQSExpansionStateInteractor;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/keyguard/DisplayLifecycle;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/qs/animator/SecQSImplAnimatorBase;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/animator/PanelAffordanceAnimator;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/qs/animator/PanelAffordanceAnimator;->notificationPanelViewController:Lcom/android/systemui/shade/NotificationPanelViewController;

    iput-object p3, p0, Lcom/android/systemui/qs/animator/PanelAffordanceAnimator;->qsExpansionStateInteractor:Lcom/android/systemui/shade/domain/interactor/SecQSExpansionStateInteractor;

    iput-object p4, p0, Lcom/android/systemui/qs/animator/PanelAffordanceAnimator;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    sget-object p2, Lcom/android/systemui/qs/animator/PanelAffordanceAnimator$secPanelSplitHelper$2;->INSTANCE:Lcom/android/systemui/qs/animator/PanelAffordanceAnimator$secPanelSplitHelper$2;

    invoke-static {p2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/qs/animator/PanelAffordanceAnimator;->secPanelSplitHelper$delegate:Lkotlin/Lazy;

    sget-object p2, Lcom/android/systemui/qs/animator/PanelAffordanceAnimator$statusBarStateController$2;->INSTANCE:Lcom/android/systemui/qs/animator/PanelAffordanceAnimator$statusBarStateController$2;

    invoke-static {p2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/qs/animator/PanelAffordanceAnimator;->statusBarStateController$delegate:Lkotlin/Lazy;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/qs/animator/PanelAffordanceAnimator;->showAnimList:Ljava/util/ArrayList;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/qs/animator/PanelAffordanceAnimator;->hideAnimList:Ljava/util/ArrayList;

    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/android/systemui/qs/animator/PanelAffordanceAnimator;->hideHandler:Landroid/os/Handler;

    const/4 p2, 0x2

    iput p2, p0, Lcom/android/systemui/qs/animator/PanelAffordanceAnimator;->targetState:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    iget p2, p2, Landroid/content/res/Configuration;->densityDpi:I

    iput p2, p0, Lcom/android/systemui/qs/animator/PanelAffordanceAnimator;->lastDensityDpi:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    iget p2, p2, Landroid/content/res/Configuration;->orientation:I

    iput p2, p0, Lcom/android/systemui/qs/animator/PanelAffordanceAnimator;->lastOrientation:I

    invoke-static {p1}, Landroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView$$ExternalSyntheticOutline0;->m(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/qs/animator/PanelAffordanceAnimator;->lastLayoutDirection:I

    sget-object p1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class p2, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p1, p2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/util/SettingsHelper;

    iput-object p1, p0, Lcom/android/systemui/qs/animator/PanelAffordanceAnimator;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    new-instance p2, Lcom/android/systemui/qs/animator/PanelAffordanceAnimator$secQSStateListener$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/qs/animator/PanelAffordanceAnimator$secQSStateListener$1;-><init>(Lcom/android/systemui/qs/animator/PanelAffordanceAnimator;)V

    iput-object p2, p0, Lcom/android/systemui/qs/animator/PanelAffordanceAnimator;->secQSStateListener:Lcom/android/systemui/qs/animator/PanelAffordanceAnimator$secQSStateListener$1;

    new-instance p2, Lcom/android/systemui/qs/animator/PanelAffordanceAnimator$broadcastReceiver$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/qs/animator/PanelAffordanceAnimator$broadcastReceiver$1;-><init>(Lcom/android/systemui/qs/animator/PanelAffordanceAnimator;)V

    iput-object p2, p0, Lcom/android/systemui/qs/animator/PanelAffordanceAnimator;->broadcastReceiver:Lcom/android/systemui/qs/animator/PanelAffordanceAnimator$broadcastReceiver$1;

    new-instance p2, Lcom/android/systemui/qs/animator/PanelAffordanceAnimator$settingsListener$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/qs/animator/PanelAffordanceAnimator$settingsListener$1;-><init>(Lcom/android/systemui/qs/animator/PanelAffordanceAnimator;)V

    iput-object p2, p0, Lcom/android/systemui/qs/animator/PanelAffordanceAnimator;->settingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    new-instance p2, Lcom/android/systemui/qs/animator/PanelAffordanceAnimator$configurationListener$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/qs/animator/PanelAffordanceAnimator$configurationListener$1;-><init>(Lcom/android/systemui/qs/animator/PanelAffordanceAnimator;)V

    new-instance p3, Lcom/android/systemui/qs/animator/PanelAffordanceAnimator$displayLifecycleObserver$1;

    invoke-direct {p3, p0}, Lcom/android/systemui/qs/animator/PanelAffordanceAnimator$displayLifecycleObserver$1;-><init>(Lcom/android/systemui/qs/animator/PanelAffordanceAnimator;)V

    iget-object p3, p0, Lcom/android/systemui/qs/animator/PanelAffordanceAnimator;->settingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    const/4 p4, 0x1

    new-array p4, p4, [Landroid/net/Uri;

    const-string/jumbo p6, "split_quick_panel_reversed"

    invoke-static {p6}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p6

    const/4 v0, 0x0

    aput-object p6, p4, v0

    invoke-virtual {p1, p3, p4}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper;->isPanelSplitReversed()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/qs/animator/PanelAffordanceAnimator;->reversed:Z

    check-cast p5, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    invoke-virtual {p5, p2}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    new-instance p1, Lcom/android/systemui/qs/animator/PanelAffordanceAnimator$hideGlowRunnable$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/animator/PanelAffordanceAnimator$hideGlowRunnable$1;-><init>(Lcom/android/systemui/qs/animator/PanelAffordanceAnimator;)V

    iput-object p1, p0, Lcom/android/systemui/qs/animator/PanelAffordanceAnimator;->hideGlowRunnable:Lcom/android/systemui/qs/animator/PanelAffordanceAnimator$hideGlowRunnable$1;

    return-void
.end method

.method public static final synthetic access$getSettingsHelper$p(Lcom/android/systemui/qs/animator/PanelAffordanceAnimator;)Lcom/android/systemui/util/SettingsHelper;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/animator/PanelAffordanceAnimator;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    return-object p0
.end method

.method public static synthetic hiding$default(Lcom/android/systemui/qs/animator/PanelAffordanceAnimator;)V
    .locals 1

    const/16 v0, 0xc8

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/animator/PanelAffordanceAnimator;->hiding(I)V

    return-void
.end method


# virtual methods
.method public final clearAnimationState()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/PanelAffordanceAnimator;->isThereNoView()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "PanelAffordanceAnimator"

    const-string v1, "clearAnimationState"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/systemui/util/AnimHelper;->INSTANCE:Lcom/android/systemui/util/AnimHelper;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/qs/animator/PanelAffordanceAnimator;->glowView:Landroid/view/View;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/systemui/qs/animator/PanelAffordanceAnimator;->INIT_PROPERTY_FIELDS:[Lcom/android/systemui/util/AnimHelper$AnimationType;

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/util/AnimHelper;->initProperty([Lcom/android/systemui/util/AnimHelper$AnimationType;[Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/PanelAffordanceAnimator;->resetAnim()V

    iput-boolean v3, p0, Lcom/android/systemui/qs/animator/PanelAffordanceAnimator;->panelExpanded:Z

    iput-boolean v3, p0, Lcom/android/systemui/qs/animator/PanelAffordanceAnimator;->panelOnceFullyExpanded:Z

    iput-boolean v3, p0, Lcom/android/systemui/qs/animator/PanelAffordanceAnimator;->panelOnceFullySlidden:Z

    iput-boolean v3, p0, Lcom/android/systemui/qs/animator/PanelAffordanceAnimator;->showAnimTriggered:Z

    iput-boolean v3, p0, Lcom/android/systemui/qs/animator/PanelAffordanceAnimator;->isGlowShowing:Z

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/systemui/qs/animator/PanelAffordanceAnimator;->targetState:I

    return-void
.end method

.method public final destroyQSViews()V
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/qs/animator/PanelAffordanceAnimator;->qsExpansionStateInteractor:Lcom/android/systemui/shade/domain/interactor/SecQSExpansionStateInteractor;

    iput-object v0, v1, Lcom/android/systemui/shade/domain/interactor/SecQSExpansionStateInteractor;->qsStateListener:Lcom/android/systemui/qs/animator/PanelAffordanceAnimator$secQSStateListener$1;

    iget-object v0, p0, Lcom/android/systemui/qs/animator/PanelAffordanceAnimator;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object p0, p0, Lcom/android/systemui/qs/animator/PanelAffordanceAnimator;->broadcastReceiver:Lcom/android/systemui/qs/animator/PanelAffordanceAnimator$broadcastReceiver$1;

    invoke-virtual {v0, p0}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public final hiding(I)V
    .locals 6

    const-string v0, "PanelAffordanceAnimator"

    const-string v1, "hiding"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/PanelAffordanceAnimator;->resetAnim()V

    sget-object v0, Lcom/android/systemui/util/AnimHelper;->INSTANCE:Lcom/android/systemui/util/AnimHelper;

    iget-object v1, p0, Lcom/android/systemui/qs/animator/PanelAffordanceAnimator;->glowView:Landroid/view/View;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result v2

    goto :goto_0

    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    :goto_0
    sget-object v3, Lcom/android/systemui/qs/animator/PanelAffordanceAnimator;->HIDE_GLOW_ANIM_ALPHA_PROPERTY:Lcom/android/systemui/util/AnimHelper$AnimProperty;

    invoke-virtual {v3, v2}, Lcom/android/systemui/util/AnimHelper$AnimProperty;->setFromValue(F)V

    invoke-virtual {v3, p1}, Lcom/android/systemui/util/AnimHelper$AnimProperty;->setDuration(I)V

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    new-instance v2, Lcom/android/systemui/util/AnimHelper$AnimPairSet;

    invoke-direct {v2, v1, v3}, Lcom/android/systemui/util/AnimHelper$AnimPairSet;-><init>(Landroid/view/View;Lcom/android/systemui/util/AnimHelper$AnimProperty;)V

    iget-object v1, p0, Lcom/android/systemui/qs/animator/PanelAffordanceAnimator;->glowView:Landroid/view/View;

    const v3, 0x7f070d1e

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v4

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lcom/android/systemui/qs/animator/PanelAffordanceAnimator;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v4, v4

    :goto_1
    sget-object v5, Lcom/android/systemui/qs/animator/PanelAffordanceAnimator;->HIDE_GLOW_ANIM_TRANSLATION_Y_PROPERTY:Lcom/android/systemui/util/AnimHelper$AnimProperty;

    invoke-virtual {v5, v4}, Lcom/android/systemui/util/AnimHelper$AnimProperty;->setFromValue(F)V

    iget-object v4, p0, Lcom/android/systemui/qs/animator/PanelAffordanceAnimator;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3f4ccccd    # 0.8f

    mul-float/2addr v3, v4

    invoke-virtual {v5, v3}, Lcom/android/systemui/util/AnimHelper$AnimProperty;->setToValue(F)V

    invoke-virtual {v5, p1}, Lcom/android/systemui/util/AnimHelper$AnimProperty;->setDuration(I)V

    new-instance p1, Lcom/android/systemui/util/AnimHelper$AnimPairSet;

    invoke-direct {p1, v1, v5}, Lcom/android/systemui/util/AnimHelper$AnimPairSet;-><init>(Landroid/view/View;Lcom/android/systemui/util/AnimHelper$AnimProperty;)V

    filled-new-array {v2, p1}, [Lcom/android/systemui/util/AnimHelper$AnimPairSet;

    move-result-object p1

    iget-object v1, p0, Lcom/android/systemui/qs/animator/PanelAffordanceAnimator;->hideAnimList:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/systemui/qs/animator/PanelAffordanceAnimator$hiding$3;

    invoke-direct {v2, p0}, Lcom/android/systemui/qs/animator/PanelAffordanceAnimator$hiding$3;-><init>(Lcom/android/systemui/qs/animator/PanelAffordanceAnimator;)V

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/systemui/util/AnimHelper;->makeAnimSet([Lcom/android/systemui/util/AnimHelper$AnimPairSet;Ljava/util/ArrayList;Lcom/android/systemui/util/AnimHelper$BaseAnimatorListener;)Landroid/animation/AnimatorSet;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/animator/PanelAffordanceAnimator;->hideAnimSet:Landroid/animation/AnimatorSet;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/qs/animator/PanelAffordanceAnimator;->isGlowShowing:Z

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    :cond_2
    return-void
.end method

.method public final isNotVisible()Z
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/qs/animator/PanelAffordanceAnimator;->glowView:Landroid/view/View;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result p0

    const/4 v1, 0x0

    cmpg-float p0, p0, v1

    if-nez p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final isThereNoView()Z
    .locals 2

    invoke-super {p0}, Lcom/android/systemui/qs/animator/SecQSImplAnimatorBase;->isThereNoView()Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/android/systemui/shade/SecPanelSplitHelper;->Companion:Lcom/android/systemui/shade/SecPanelSplitHelper$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v0, Lcom/android/systemui/shade/SecPanelSplitHelper;->isEnabled:Z

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/android/systemui/qs/animator/QsAnimatorState;->isDetailShowing:Z

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/android/systemui/qs/animator/QsAnimatorState;->isCustomizerShowing:Z

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_TABLET:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/systemui/qs/animator/PanelAffordanceAnimator;->lastOrientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/qs/animator/PanelAffordanceAnimator;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->isRemoveAnimation()Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 p0, 0x1

    :goto_2
    return p0
.end method

.method public final loadView()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/qs/animator/PanelAffordanceAnimator;->notificationPanelViewController:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mView:Lcom/android/systemui/shade/NotificationPanelView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const v2, 0x7f0a0aca

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/android/systemui/qs/animator/PanelAffordanceAnimator;->glowView:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    :cond_1
    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v0, p0, Lcom/android/systemui/qs/animator/PanelAffordanceAnimator;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    sget-boolean v2, Lcom/android/systemui/QpRune;->QUICK_TABLET:Z

    const v3, 0x3ebd70a4    # 0.37f

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/android/systemui/qs/animator/PanelAffordanceAnimator;->lastOrientation:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_2

    const v3, 0x3e6cbfb1    # 0.2312f

    :cond_2
    mul-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget-object v0, p0, Lcom/android/systemui/qs/animator/PanelAffordanceAnimator;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f070d1e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    float-to-int v0, v0

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    neg-int v0, v0

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-boolean v0, p0, Lcom/android/systemui/qs/animator/PanelAffordanceAnimator;->reversed:Z

    if-eqz v0, :cond_3

    const v0, 0x800033

    goto :goto_1

    :cond_3
    const v0, 0x800035

    :goto_1
    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    sget-object v0, Lcom/android/systemui/util/AnimHelper;->INSTANCE:Lcom/android/systemui/util/AnimHelper;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/view/View;

    const/4 v2, 0x0

    iget-object p0, p0, Lcom/android/systemui/qs/animator/PanelAffordanceAnimator;->glowView:Landroid/view/View;

    aput-object p0, v1, v2

    sget-object p0, Lcom/android/systemui/qs/animator/PanelAffordanceAnimator;->INIT_PROPERTY_FIELDS:[Lcom/android/systemui/util/AnimHelper$AnimationType;

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/util/AnimHelper;->initProperty([Lcom/android/systemui/util/AnimHelper$AnimationType;[Landroid/view/View;)V

    return-void
.end method

.method public final onPanelClosed$1()V
    .locals 1

    sget v0, Lcom/android/systemui/qs/animator/QsAnimatorState;->state:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/qs/animator/PanelAffordanceAnimator;->isGlowShowing:Z

    if-eqz v0, :cond_0

    const/16 v0, 0xc8

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/animator/PanelAffordanceAnimator;->hiding(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/PanelAffordanceAnimator;->clearAnimationState()V

    return-void
.end method

.method public final onPanelExpansionChanged(Lcom/android/systemui/shade/ShadeExpansionChangeEvent;)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/PanelAffordanceAnimator;->isThereNoView()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget v0, Lcom/android/systemui/qs/animator/QsAnimatorState;->state:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/qs/animator/PanelAffordanceAnimator;->panelExpanded:Z

    iget-boolean v2, p1, Lcom/android/systemui/shade/ShadeExpansionChangeEvent;->expanded:Z

    if-eq v0, v2, :cond_2

    iput-boolean v2, p0, Lcom/android/systemui/qs/animator/PanelAffordanceAnimator;->panelExpanded:Z

    iput-boolean v2, p0, Lcom/android/systemui/qs/animator/PanelAffordanceAnimator;->showAnimTriggered:Z

    :cond_2
    iget p1, p1, Lcom/android/systemui/shade/ShadeExpansionChangeEvent;->fraction:F

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    const/16 v2, 0xc8

    const/4 v3, 0x0

    if-nez v0, :cond_3

    iput-boolean v3, p0, Lcom/android/systemui/qs/animator/PanelAffordanceAnimator;->panelOnceFullyExpanded:Z

    iget-boolean v0, p0, Lcom/android/systemui/qs/animator/PanelAffordanceAnimator;->isGlowShowing:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/animator/PanelAffordanceAnimator;->hiding(I)V

    goto :goto_0

    :cond_3
    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-nez v0, :cond_4

    iput-boolean v1, p0, Lcom/android/systemui/qs/animator/PanelAffordanceAnimator;->panelOnceFullyExpanded:Z

    :cond_4
    :goto_0
    const v0, 0x3dcccccd    # 0.1f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_5

    iget v0, p0, Lcom/android/systemui/qs/animator/PanelAffordanceAnimator;->targetState:I

    if-nez v0, :cond_5

    sget v0, Lcom/android/systemui/qs/animator/QsAnimatorState;->state:I

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/android/systemui/qs/animator/PanelAffordanceAnimator;->showAnimTriggered:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/systemui/qs/animator/PanelAffordanceAnimator;->isGlowShowing:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/android/systemui/qs/animator/PanelAffordanceAnimator;->panelExpanded:Z

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/android/systemui/qs/animator/SecQSImplAnimatorBase;->mPanelState:I

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/android/systemui/qs/animator/PanelAffordanceAnimator;->panelOnceFullyExpanded:Z

    if-nez v0, :cond_5

    iput-boolean v3, p0, Lcom/android/systemui/qs/animator/PanelAffordanceAnimator;->showAnimTriggered:Z

    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/PanelAffordanceAnimator;->showing()V

    return-void

    :cond_5
    const v0, 0x3f4ccccd    # 0.8f

    cmpg-float p1, p1, v0

    if-gez p1, :cond_6

    iget p1, p0, Lcom/android/systemui/qs/animator/PanelAffordanceAnimator;->targetState:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_6

    iget-boolean p1, p0, Lcom/android/systemui/qs/animator/PanelAffordanceAnimator;->isGlowShowing:Z

    if-eqz p1, :cond_6

    iget-boolean p1, p0, Lcom/android/systemui/qs/animator/PanelAffordanceAnimator;->panelOnceFullyExpanded:Z

    if-eqz p1, :cond_6

    iput-boolean v3, p0, Lcom/android/systemui/qs/animator/PanelAffordanceAnimator;->panelOnceFullyExpanded:Z

    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/animator/PanelAffordanceAnimator;->hiding(I)V

    :cond_6
    return-void
.end method

.method public final onStateChanged(I)V
    .locals 1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/PanelAffordanceAnimator;->clearAnimationState()V

    :cond_0
    return-void
.end method

.method public final resetAnim()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/animator/PanelAffordanceAnimator;->showAnimList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/systemui/qs/animator/PanelAffordanceAnimator;->showAnimSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/animator/PanelAffordanceAnimator;->hideAnimList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/systemui/qs/animator/PanelAffordanceAnimator;->hideAnimSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/qs/animator/PanelAffordanceAnimator;->hideHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public final setQs(Lcom/android/systemui/plugins/qs/QS;)V
    .locals 8

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/PanelAffordanceAnimator;->destroyQSViews()V

    return-void

    :cond_0
    iput-object p1, p0, Lcom/android/systemui/qs/animator/SecQSImplAnimatorBase;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/PanelAffordanceAnimator;->loadView()V

    iget-object p1, p0, Lcom/android/systemui/qs/animator/PanelAffordanceAnimator;->qsExpansionStateInteractor:Lcom/android/systemui/shade/domain/interactor/SecQSExpansionStateInteractor;

    iget-object v0, p0, Lcom/android/systemui/qs/animator/PanelAffordanceAnimator;->secQSStateListener:Lcom/android/systemui/qs/animator/PanelAffordanceAnimator$secQSStateListener$1;

    iput-object v0, p1, Lcom/android/systemui/shade/domain/interactor/SecQSExpansionStateInteractor;->qsStateListener:Lcom/android/systemui/qs/animator/PanelAffordanceAnimator$secQSStateListener$1;

    const-string p1, "android.intent.action.SCREEN_OFF"

    invoke-static {p1}, Landroidx/appcompat/app/AppCompatDelegateImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v2

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v3, 0x0

    const/16 v7, 0x30

    iget-object v0, p0, Lcom/android/systemui/qs/animator/PanelAffordanceAnimator;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object v1, p0, Lcom/android/systemui/qs/animator/PanelAffordanceAnimator;->broadcastReceiver:Lcom/android/systemui/qs/animator/PanelAffordanceAnimator$broadcastReceiver$1;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v7}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver$default(Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;ILjava/lang/String;I)V

    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/PanelAffordanceAnimator;->clearAnimationState()V

    return-void
.end method

.method public final showing()V
    .locals 7

    const-string v0, "PanelAffordanceAnimator"

    const-string/jumbo v1, "showing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/PanelAffordanceAnimator;->resetAnim()V

    sget-object v1, Lcom/android/systemui/util/AnimHelper;->INSTANCE:Lcom/android/systemui/util/AnimHelper;

    iget-object v2, p0, Lcom/android/systemui/qs/animator/PanelAffordanceAnimator;->glowView:Landroid/view/View;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    move-result v4

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    sget-object v5, Lcom/android/systemui/qs/animator/PanelAffordanceAnimator;->SHOW_ANIM_GLOW_ALPHA_PROPERTY:Lcom/android/systemui/util/AnimHelper$AnimProperty;

    invoke-virtual {v5, v4}, Lcom/android/systemui/util/AnimHelper$AnimProperty;->setFromValue(F)V

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    new-instance v4, Lcom/android/systemui/util/AnimHelper$AnimPairSet;

    invoke-direct {v4, v2, v5}, Lcom/android/systemui/util/AnimHelper$AnimPairSet;-><init>(Landroid/view/View;Lcom/android/systemui/util/AnimHelper$AnimProperty;)V

    iget-object v2, p0, Lcom/android/systemui/qs/animator/PanelAffordanceAnimator;->glowView:Landroid/view/View;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    move-result v3

    :cond_1
    sget-object v5, Lcom/android/systemui/qs/animator/PanelAffordanceAnimator;->SHOW_ANIM_GLOW_TRANSLATION_Y_PROPERTY:Lcom/android/systemui/util/AnimHelper$AnimProperty;

    invoke-virtual {v5, v3}, Lcom/android/systemui/util/AnimHelper$AnimProperty;->setFromValue(F)V

    iget-object v3, p0, Lcom/android/systemui/qs/animator/PanelAffordanceAnimator;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f070d1e

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v5, v3}, Lcom/android/systemui/util/AnimHelper$AnimProperty;->setToValue(F)V

    new-instance v3, Lcom/android/systemui/util/AnimHelper$AnimPairSet;

    invoke-direct {v3, v2, v5}, Lcom/android/systemui/util/AnimHelper$AnimPairSet;-><init>(Landroid/view/View;Lcom/android/systemui/util/AnimHelper$AnimProperty;)V

    filled-new-array {v4, v3}, [Lcom/android/systemui/util/AnimHelper$AnimPairSet;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/qs/animator/PanelAffordanceAnimator;->showAnimList:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/systemui/util/AnimHelper$BaseAnimatorListener;

    const-string v5, "Show"

    const/4 v6, 0x0

    invoke-direct {v4, v0, v5, v6}, Lcom/android/systemui/util/AnimHelper$BaseAnimatorListener;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/systemui/util/AnimHelper;->makeAnimSet([Lcom/android/systemui/util/AnimHelper$AnimPairSet;Ljava/util/ArrayList;Lcom/android/systemui/util/AnimHelper$BaseAnimatorListener;)Landroid/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/animator/PanelAffordanceAnimator;->showAnimSet:Landroid/animation/AnimatorSet;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/qs/animator/PanelAffordanceAnimator;->isGlowShowing:Z

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/animator/PanelAffordanceAnimator;->hideHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/qs/animator/PanelAffordanceAnimator;->hideGlowRunnable:Lcom/android/systemui/qs/animator/PanelAffordanceAnimator$hideGlowRunnable$1;

    const-wide/16 v1, 0x9c4

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final slide(FFLcom/android/systemui/shade/PanelSlideEventHandler$Direction;I)V
    .locals 5

    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/PanelAffordanceAnimator;->isThereNoView()Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lcom/android/systemui/qs/animator/PanelAffordanceAnimator;->secPanelSplitHelper$delegate:Lkotlin/Lazy;

    invoke-interface {p2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/shade/SecPanelSplitHelper;

    invoke-virtual {p2}, Lcom/android/systemui/shade/SecPanelSplitHelper;->isReversed()Z

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/qs/animator/PanelAffordanceAnimator;->statusBarStateController$delegate:Lkotlin/Lazy;

    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v2}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v2

    if-ne v2, v1, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    move v2, v0

    :goto_0
    if-eqz v2, :cond_3

    if-ne p4, v1, :cond_2

    :goto_1
    move v3, v1

    goto :goto_2

    :cond_2
    move v3, v0

    goto :goto_2

    :cond_3
    if-nez p4, :cond_2

    goto :goto_1

    :goto_2
    iget v4, p0, Lcom/android/systemui/qs/animator/PanelAffordanceAnimator;->targetState:I

    if-eq v4, p4, :cond_5

    iput p4, p0, Lcom/android/systemui/qs/animator/PanelAffordanceAnimator;->targetState:I

    if-nez p4, :cond_4

    move v2, v1

    goto :goto_3

    :cond_4
    move v2, v0

    :goto_3
    iput-boolean v2, p0, Lcom/android/systemui/qs/animator/PanelAffordanceAnimator;->showAnimTriggered:Z

    goto :goto_5

    :cond_5
    if-eqz v2, :cond_7

    if-ne v4, v1, :cond_6

    move v2, v1

    goto :goto_4

    :cond_6
    move v2, v0

    :goto_4
    iput-boolean v2, p0, Lcom/android/systemui/qs/animator/PanelAffordanceAnimator;->showAnimTriggered:Z

    :cond_7
    :goto_5
    const/4 v2, 0x0

    cmpg-float v2, p1, v2

    if-nez v2, :cond_8

    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/PanelAffordanceAnimator;->clearAnimationState()V

    goto :goto_6

    :cond_8
    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v2, p1, v2

    if-nez v2, :cond_c

    if-eqz p2, :cond_b

    iget p2, p0, Lcom/android/systemui/qs/animator/SecQSImplAnimatorBase;->mPanelState:I

    if-nez p2, :cond_9

    if-ne p4, v1, :cond_9

    iget v2, p0, Lcom/android/systemui/qs/animator/PanelAffordanceAnimator;->targetState:I

    if-eq v2, v1, :cond_a

    :cond_9
    if-nez p2, :cond_c

    if-nez p4, :cond_c

    iget p2, p0, Lcom/android/systemui/qs/animator/PanelAffordanceAnimator;->targetState:I

    if-nez p2, :cond_c

    :cond_a
    iput-boolean v1, p0, Lcom/android/systemui/qs/animator/PanelAffordanceAnimator;->panelOnceFullySlidden:Z

    goto :goto_6

    :cond_b
    if-nez p4, :cond_c

    iput-boolean v1, p0, Lcom/android/systemui/qs/animator/PanelAffordanceAnimator;->panelOnceFullySlidden:Z

    :cond_c
    :goto_6
    const p2, 0x3dcccccd    # 0.1f

    cmpl-float p2, p1, p2

    if-lez p2, :cond_e

    iget-boolean p2, p0, Lcom/android/systemui/qs/animator/PanelAffordanceAnimator;->showAnimTriggered:Z

    if-eqz p2, :cond_e

    iget-boolean p2, p0, Lcom/android/systemui/qs/animator/PanelAffordanceAnimator;->isGlowShowing:Z

    if-nez p2, :cond_e

    sget p2, Lcom/android/systemui/qs/animator/QsAnimatorState;->state:I

    if-eqz p2, :cond_d

    goto :goto_7

    :cond_d
    iget-boolean v1, p0, Lcom/android/systemui/qs/animator/PanelAffordanceAnimator;->panelExpanded:Z

    :goto_7
    if-eqz v1, :cond_e

    if-eqz v3, :cond_e

    sget-object p2, Lcom/android/systemui/shade/PanelSlideEventHandler$Direction;->DOWN:Lcom/android/systemui/shade/PanelSlideEventHandler$Direction;

    if-ne p3, p2, :cond_e

    iput-boolean v0, p0, Lcom/android/systemui/qs/animator/PanelAffordanceAnimator;->showAnimTriggered:Z

    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/PanelAffordanceAnimator;->showing()V

    return-void

    :cond_e
    const p2, 0x3f4ccccd    # 0.8f

    cmpg-float p1, p1, p2

    if-gez p1, :cond_f

    iget-boolean p1, p0, Lcom/android/systemui/qs/animator/PanelAffordanceAnimator;->isGlowShowing:Z

    if-eqz p1, :cond_f

    iget-boolean p1, p0, Lcom/android/systemui/qs/animator/PanelAffordanceAnimator;->panelOnceFullySlidden:Z

    if-eqz p1, :cond_f

    iput-boolean v0, p0, Lcom/android/systemui/qs/animator/PanelAffordanceAnimator;->panelOnceFullySlidden:Z

    const/16 p1, 0xc8

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/animator/PanelAffordanceAnimator;->hiding(I)V

    :cond_f
    return-void
.end method

.method public final updateAnimators()V
    .locals 0

    return-void
.end method
