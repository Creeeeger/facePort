.class public final Lcom/android/systemui/keyguard/KeyguardViewConfigurator;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/CoreStartable;


# instance fields
.field public final chipbarCoordinator:Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator;

.field public final clockInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardClockInteractor;

.field public final configuration:Lcom/android/systemui/common/ui/ConfigurationState;

.field public final context:Landroid/content/Context;

.field public final deviceEntryHapticsInteractor:Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryHapticsInteractor;

.field public final deviceEntryUnlockTrackerViewBinder:Ljava/util/Optional;

.field public final falsingManager:Lcom/android/systemui/plugins/FalsingManager;

.field public final interactionJankMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

.field public final keyguardBlueprintViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBlueprintViewModel;

.field public final keyguardClockViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardClockViewModel;

.field public final keyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

.field public final keyguardRootView:Lcom/android/systemui/keyguard/ui/view/KeyguardRootView;

.field public final keyguardRootViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel;

.field public final keyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

.field public final occludingAppDeviceEntryMessageViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/OccludingAppDeviceEntryMessageViewModel;

.field public rootViewHandle:Lcom/android/systemui/util/kotlin/DisposableHandles;

.field public final sceneKey:Lcom/android/compose/animation/scene/SceneKey;

.field public final screenOffAnimationController:Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;

.field public final shadeInteractor:Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;

.field public final smartspaceViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardSmartspaceViewModel;

.field public final vibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/ui/view/KeyguardRootView;Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel;Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardIndicationAreaViewModel;Lcom/android/systemui/shade/NotificationShadeWindowView;Lcom/android/systemui/statusbar/KeyguardIndicationController;Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;Lcom/android/systemui/keyguard/ui/viewmodel/OccludingAppDeviceEntryMessageViewModel;Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator;Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBlueprintViewModel;Lcom/android/keyguard/dagger/KeyguardStatusViewComponent$Factory;Lcom/android/systemui/common/ui/ConfigurationState;Landroid/content/Context;Lcom/android/systemui/statusbar/KeyguardIndicationController;Ldagger/Lazy;Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;Lcom/android/internal/jank/InteractionJankMonitor;Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryHapticsInteractor;Lcom/android/systemui/statusbar/VibratorHelper;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardClockViewModel;Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardSmartspaceViewModel;Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenContentViewModel;Ldagger/Lazy;Lcom/android/systemui/keyguard/domain/interactor/KeyguardClockInteractor;Lcom/android/systemui/keyguard/KeyguardViewMediator;Ljava/util/Optional;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/keyguard/ui/view/KeyguardRootView;",
            "Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel;",
            "Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardIndicationAreaViewModel;",
            "Lcom/android/systemui/shade/NotificationShadeWindowView;",
            "Lcom/android/systemui/statusbar/KeyguardIndicationController;",
            "Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;",
            "Lcom/android/systemui/keyguard/ui/viewmodel/OccludingAppDeviceEntryMessageViewModel;",
            "Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator;",
            "Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBlueprintViewModel;",
            "Lcom/android/keyguard/dagger/KeyguardStatusViewComponent$Factory;",
            "Lcom/android/systemui/common/ui/ConfigurationState;",
            "Landroid/content/Context;",
            "Lcom/android/systemui/statusbar/KeyguardIndicationController;",
            "Ldagger/Lazy;",
            "Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;",
            "Lcom/android/internal/jank/InteractionJankMonitor;",
            "Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryHapticsInteractor;",
            "Lcom/android/systemui/statusbar/VibratorHelper;",
            "Lcom/android/systemui/plugins/FalsingManager;",
            "Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardClockViewModel;",
            "Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardSmartspaceViewModel;",
            "Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenContentViewModel;",
            "Ldagger/Lazy;",
            "Lcom/android/systemui/keyguard/domain/interactor/KeyguardClockInteractor;",
            "Lcom/android/systemui/keyguard/KeyguardViewMediator;",
            "Ljava/util/Optional<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lcom/android/systemui/keyguard/KeyguardViewConfigurator;->keyguardRootView:Lcom/android/systemui/keyguard/ui/view/KeyguardRootView;

    move-object v1, p2

    iput-object v1, v0, Lcom/android/systemui/keyguard/KeyguardViewConfigurator;->keyguardRootViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel;

    move-object v1, p6

    iput-object v1, v0, Lcom/android/systemui/keyguard/KeyguardViewConfigurator;->screenOffAnimationController:Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;

    move-object v1, p7

    iput-object v1, v0, Lcom/android/systemui/keyguard/KeyguardViewConfigurator;->occludingAppDeviceEntryMessageViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/OccludingAppDeviceEntryMessageViewModel;

    move-object v1, p8

    iput-object v1, v0, Lcom/android/systemui/keyguard/KeyguardViewConfigurator;->chipbarCoordinator:Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator;

    move-object v1, p9

    iput-object v1, v0, Lcom/android/systemui/keyguard/KeyguardViewConfigurator;->keyguardBlueprintViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBlueprintViewModel;

    move-object v1, p11

    iput-object v1, v0, Lcom/android/systemui/keyguard/KeyguardViewConfigurator;->configuration:Lcom/android/systemui/common/ui/ConfigurationState;

    move-object/from16 v1, p12

    iput-object v1, v0, Lcom/android/systemui/keyguard/KeyguardViewConfigurator;->context:Landroid/content/Context;

    move-object/from16 v1, p13

    iput-object v1, v0, Lcom/android/systemui/keyguard/KeyguardViewConfigurator;->keyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/android/systemui/keyguard/KeyguardViewConfigurator;->shadeInteractor:Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/android/systemui/keyguard/KeyguardViewConfigurator;->interactionJankMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/android/systemui/keyguard/KeyguardViewConfigurator;->deviceEntryHapticsInteractor:Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryHapticsInteractor;

    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/android/systemui/keyguard/KeyguardViewConfigurator;->vibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;

    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/android/systemui/keyguard/KeyguardViewConfigurator;->falsingManager:Lcom/android/systemui/plugins/FalsingManager;

    move-object/from16 v1, p20

    iput-object v1, v0, Lcom/android/systemui/keyguard/KeyguardViewConfigurator;->keyguardClockViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardClockViewModel;

    move-object/from16 v1, p21

    iput-object v1, v0, Lcom/android/systemui/keyguard/KeyguardViewConfigurator;->smartspaceViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardSmartspaceViewModel;

    move-object/from16 v1, p24

    iput-object v1, v0, Lcom/android/systemui/keyguard/KeyguardViewConfigurator;->clockInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardClockInteractor;

    move-object/from16 v1, p25

    iput-object v1, v0, Lcom/android/systemui/keyguard/KeyguardViewConfigurator;->keyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-object/from16 v1, p26

    iput-object v1, v0, Lcom/android/systemui/keyguard/KeyguardViewConfigurator;->deviceEntryUnlockTrackerViewBinder:Ljava/util/Optional;

    new-instance v0, Lcom/android/compose/animation/scene/SceneKey;

    const/4 v1, 0x2

    const-string/jumbo v2, "root-view-scene-key"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1, v3}, Lcom/android/compose/animation/scene/SceneKey;-><init>(Ljava/lang/String;Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public final start()V
    .locals 15

    invoke-static {}, Lcom/android/systemui/Flags;->sceneContainer()V

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewConfigurator;->rootViewHandle:Lcom/android/systemui/util/kotlin/DisposableHandles;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lkotlinx/coroutines/DisposableHandle;->dispose()V

    :cond_0
    iget-object v11, p0, Lcom/android/systemui/keyguard/KeyguardViewConfigurator;->interactionJankMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

    iget-object v10, p0, Lcom/android/systemui/keyguard/KeyguardViewConfigurator;->keyguardClockViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardClockViewModel;

    iget-object v14, p0, Lcom/android/systemui/keyguard/KeyguardViewConfigurator;->keyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewConfigurator;->keyguardRootView:Lcom/android/systemui/keyguard/ui/view/KeyguardRootView;

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewConfigurator;->keyguardRootViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel;

    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewConfigurator;->keyguardBlueprintViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBlueprintViewModel;

    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewConfigurator;->configuration:Lcom/android/systemui/common/ui/ConfigurationState;

    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewConfigurator;->occludingAppDeviceEntryMessageViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/OccludingAppDeviceEntryMessageViewModel;

    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewConfigurator;->chipbarCoordinator:Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator;

    iget-object v7, p0, Lcom/android/systemui/keyguard/KeyguardViewConfigurator;->screenOffAnimationController:Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;

    iget-object v8, p0, Lcom/android/systemui/keyguard/KeyguardViewConfigurator;->shadeInteractor:Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;

    iget-object v9, p0, Lcom/android/systemui/keyguard/KeyguardViewConfigurator;->clockInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardClockInteractor;

    iget-object v12, p0, Lcom/android/systemui/keyguard/KeyguardViewConfigurator;->deviceEntryHapticsInteractor:Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryHapticsInteractor;

    iget-object v13, p0, Lcom/android/systemui/keyguard/KeyguardViewConfigurator;->vibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;

    invoke-static/range {v1 .. v14}, Lcom/android/systemui/keyguard/ui/binder/KeyguardRootViewBinder;->bind(Landroid/view/ViewGroup;Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel;Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBlueprintViewModel;Lcom/android/systemui/common/ui/ConfigurationState;Lcom/android/systemui/keyguard/ui/viewmodel/OccludingAppDeviceEntryMessageViewModel;Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator;Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;Lcom/android/systemui/keyguard/domain/interactor/KeyguardClockInteractor;Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardClockViewModel;Lcom/android/internal/jank/InteractionJankMonitor;Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryHapticsInteractor;Lcom/android/systemui/statusbar/VibratorHelper;Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/systemui/util/kotlin/DisposableHandles;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewConfigurator;->rootViewHandle:Lcom/android/systemui/util/kotlin/DisposableHandles;

    new-instance v0, Lcom/android/systemui/keyguard/ui/view/KeyguardIndicationArea;

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewConfigurator;->context:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/keyguard/ui/view/KeyguardIndicationArea;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewConfigurator;->keyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->setIndicationArea(Landroid/view/ViewGroup;)V

    invoke-static {}, Lcom/android/systemui/Flags;->deviceEntryUdfpsRefactor()V

    invoke-static {}, Lcom/android/systemui/Flags;->sceneContainer()V

    invoke-static {}, Lcom/android/systemui/Flags;->composeLockscreen()V

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewConfigurator;->keyguardRootView:Lcom/android/systemui/keyguard/ui/view/KeyguardRootView;

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewConfigurator;->keyguardBlueprintViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBlueprintViewModel;

    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewConfigurator;->keyguardClockViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardClockViewModel;

    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewConfigurator;->smartspaceViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardSmartspaceViewModel;

    invoke-static {v1, v0, v3, v4}, Lcom/android/systemui/keyguard/ui/binder/KeyguardBlueprintViewBinder;->bind(Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBlueprintViewModel;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardClockViewModel;Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardSmartspaceViewModel;)V

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewConfigurator;->deviceEntryUnlockTrackerViewBinder:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewConfigurator;->deviceEntryUnlockTrackerViewBinder:Ljava/util/Optional;

    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Landroidx/appcompat/app/ToolbarActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    throw v2
.end method
