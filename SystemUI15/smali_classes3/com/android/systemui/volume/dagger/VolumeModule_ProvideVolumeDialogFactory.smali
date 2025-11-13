.class public final Lcom/android/systemui/volume/dagger/VolumeModule_ProvideVolumeDialogFactory;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ldagger/internal/Provider;


# instance fields
.field public final accessibilityManagerWrapperProvider:Ljavax/inject/Provider;

.field public final configurationControllerProvider:Ljavax/inject/Provider;

.field public final contextProvider:Ljavax/inject/Provider;

.field public final csdFactoryProvider:Ljavax/inject/Provider;

.field public final devicePostureControllerProvider:Ljavax/inject/Provider;

.field public final deviceProvisionedControllerProvider:Ljavax/inject/Provider;

.field public final dumpManagerProvider:Ljavax/inject/Provider;

.field public final interactionJankMonitorProvider:Ljavax/inject/Provider;

.field public final interactorProvider:Ljavax/inject/Provider;

.field public final mediaOutputDialogManagerProvider:Ljavax/inject/Provider;

.field public final secureSettingsProvider:Ljavax/inject/Provider;

.field public final systemClockProvider:Ljavax/inject/Provider;

.field public final vibratorHelperProvider:Ljavax/inject/Provider;

.field public final volumeDialogControllerProvider:Ljavax/inject/Provider;

.field public final volumeNavigatorProvider:Ljavax/inject/Provider;

.field public final volumePanelFlagProvider:Ljavax/inject/Provider;

.field public final volumePanelNavigationInteractorProvider:Ljavax/inject/Provider;


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lcom/android/systemui/volume/dagger/VolumeModule_ProvideVolumeDialogFactory;->contextProvider:Ljavax/inject/Provider;

    move-object v1, p2

    iput-object v1, v0, Lcom/android/systemui/volume/dagger/VolumeModule_ProvideVolumeDialogFactory;->volumeDialogControllerProvider:Ljavax/inject/Provider;

    move-object v1, p3

    iput-object v1, v0, Lcom/android/systemui/volume/dagger/VolumeModule_ProvideVolumeDialogFactory;->accessibilityManagerWrapperProvider:Ljavax/inject/Provider;

    move-object v1, p4

    iput-object v1, v0, Lcom/android/systemui/volume/dagger/VolumeModule_ProvideVolumeDialogFactory;->deviceProvisionedControllerProvider:Ljavax/inject/Provider;

    move-object v1, p5

    iput-object v1, v0, Lcom/android/systemui/volume/dagger/VolumeModule_ProvideVolumeDialogFactory;->configurationControllerProvider:Ljavax/inject/Provider;

    move-object v1, p6

    iput-object v1, v0, Lcom/android/systemui/volume/dagger/VolumeModule_ProvideVolumeDialogFactory;->mediaOutputDialogManagerProvider:Ljavax/inject/Provider;

    move-object v1, p7

    iput-object v1, v0, Lcom/android/systemui/volume/dagger/VolumeModule_ProvideVolumeDialogFactory;->interactionJankMonitorProvider:Ljavax/inject/Provider;

    move-object v1, p8

    iput-object v1, v0, Lcom/android/systemui/volume/dagger/VolumeModule_ProvideVolumeDialogFactory;->volumePanelNavigationInteractorProvider:Ljavax/inject/Provider;

    move-object v1, p9

    iput-object v1, v0, Lcom/android/systemui/volume/dagger/VolumeModule_ProvideVolumeDialogFactory;->volumeNavigatorProvider:Ljavax/inject/Provider;

    move-object v1, p10

    iput-object v1, v0, Lcom/android/systemui/volume/dagger/VolumeModule_ProvideVolumeDialogFactory;->csdFactoryProvider:Ljavax/inject/Provider;

    move-object v1, p11

    iput-object v1, v0, Lcom/android/systemui/volume/dagger/VolumeModule_ProvideVolumeDialogFactory;->devicePostureControllerProvider:Ljavax/inject/Provider;

    move-object v1, p12

    iput-object v1, v0, Lcom/android/systemui/volume/dagger/VolumeModule_ProvideVolumeDialogFactory;->volumePanelFlagProvider:Ljavax/inject/Provider;

    move-object v1, p13

    iput-object v1, v0, Lcom/android/systemui/volume/dagger/VolumeModule_ProvideVolumeDialogFactory;->dumpManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/android/systemui/volume/dagger/VolumeModule_ProvideVolumeDialogFactory;->secureSettingsProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/android/systemui/volume/dagger/VolumeModule_ProvideVolumeDialogFactory;->vibratorHelperProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/android/systemui/volume/dagger/VolumeModule_ProvideVolumeDialogFactory;->systemClockProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/android/systemui/volume/dagger/VolumeModule_ProvideVolumeDialogFactory;->interactorProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static provideVolumeDialog(Landroid/content/Context;Lcom/android/systemui/plugins/VolumeDialogController;Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/media/dialog/MediaOutputDialogManager;Lcom/android/internal/jank/InteractionJankMonitor;Lcom/android/systemui/volume/domain/interactor/VolumePanelNavigationInteractor;Lcom/android/systemui/volume/ui/navigation/VolumeNavigator;Lcom/android/systemui/volume/CsdWarningDialog$Factory;Lcom/android/systemui/statusbar/policy/DevicePostureController;Lcom/android/systemui/volume/panel/shared/flag/VolumePanelFlag;Lcom/android/systemui/dump/DumpManager;Ldagger/Lazy;Lcom/android/systemui/statusbar/VibratorHelper;Lcom/android/systemui/util/time/SystemClock;Lcom/android/systemui/volume/domain/interactor/VolumeDialogInteractor;)Lcom/android/systemui/volume/VolumeDialogImpl;
    .locals 21

    new-instance v15, Lcom/android/systemui/volume/VolumeDialogImpl;

    move-object v0, v15

    const/4 v10, 0x1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v13

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v14, p11

    move-object/from16 v20, v15

    move-object/from16 v15, p12

    move-object/from16 v16, p13

    move-object/from16 v17, p14

    move-object/from16 v18, p15

    move-object/from16 v19, p16

    invoke-direct/range {v0 .. v19}, Lcom/android/systemui/volume/VolumeDialogImpl;-><init>(Landroid/content/Context;Lcom/android/systemui/plugins/VolumeDialogController;Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/media/dialog/MediaOutputDialogManager;Lcom/android/internal/jank/InteractionJankMonitor;Lcom/android/systemui/volume/domain/interactor/VolumePanelNavigationInteractor;Lcom/android/systemui/volume/ui/navigation/VolumeNavigator;ZLcom/android/systemui/volume/CsdWarningDialog$Factory;Lcom/android/systemui/statusbar/policy/DevicePostureController;Landroid/os/Looper;Lcom/android/systemui/volume/panel/shared/flag/VolumePanelFlag;Lcom/android/systemui/dump/DumpManager;Ldagger/Lazy;Lcom/android/systemui/statusbar/VibratorHelper;Lcom/android/systemui/util/time/SystemClock;Lcom/android/systemui/volume/domain/interactor/VolumeDialogInteractor;)V

    move-object/from16 v0, v20

    iget-object v1, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    const/4 v2, 0x5

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    iget-boolean v1, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAutomute:Z

    const/4 v2, 0x4

    if-ne v1, v3, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean v3, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAutomute:Z

    iget-object v1, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    iget-boolean v1, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSilentMode:Z

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    iput-boolean v4, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSilentMode:Z

    iget-object v1, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_1
    return-object v0
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 19

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/volume/dagger/VolumeModule_ProvideVolumeDialogFactory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/content/Context;

    iget-object v1, v0, Lcom/android/systemui/volume/dagger/VolumeModule_ProvideVolumeDialogFactory;->volumeDialogControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/android/systemui/plugins/VolumeDialogController;

    iget-object v1, v0, Lcom/android/systemui/volume/dagger/VolumeModule_ProvideVolumeDialogFactory;->accessibilityManagerWrapperProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;

    iget-object v1, v0, Lcom/android/systemui/volume/dagger/VolumeModule_ProvideVolumeDialogFactory;->deviceProvisionedControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    iget-object v1, v0, Lcom/android/systemui/volume/dagger/VolumeModule_ProvideVolumeDialogFactory;->configurationControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iget-object v1, v0, Lcom/android/systemui/volume/dagger/VolumeModule_ProvideVolumeDialogFactory;->mediaOutputDialogManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/android/systemui/media/dialog/MediaOutputDialogManager;

    iget-object v1, v0, Lcom/android/systemui/volume/dagger/VolumeModule_ProvideVolumeDialogFactory;->interactionJankMonitorProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/android/internal/jank/InteractionJankMonitor;

    iget-object v1, v0, Lcom/android/systemui/volume/dagger/VolumeModule_ProvideVolumeDialogFactory;->volumePanelNavigationInteractorProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/android/systemui/volume/domain/interactor/VolumePanelNavigationInteractor;

    iget-object v1, v0, Lcom/android/systemui/volume/dagger/VolumeModule_ProvideVolumeDialogFactory;->volumeNavigatorProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/android/systemui/volume/ui/navigation/VolumeNavigator;

    iget-object v1, v0, Lcom/android/systemui/volume/dagger/VolumeModule_ProvideVolumeDialogFactory;->csdFactoryProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/android/systemui/volume/CsdWarningDialog$Factory;

    iget-object v1, v0, Lcom/android/systemui/volume/dagger/VolumeModule_ProvideVolumeDialogFactory;->devicePostureControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lcom/android/systemui/statusbar/policy/DevicePostureController;

    iget-object v1, v0, Lcom/android/systemui/volume/dagger/VolumeModule_ProvideVolumeDialogFactory;->volumePanelFlagProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Lcom/android/systemui/volume/panel/shared/flag/VolumePanelFlag;

    iget-object v1, v0, Lcom/android/systemui/volume/dagger/VolumeModule_ProvideVolumeDialogFactory;->dumpManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Lcom/android/systemui/dump/DumpManager;

    iget-object v1, v0, Lcom/android/systemui/volume/dagger/VolumeModule_ProvideVolumeDialogFactory;->secureSettingsProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v15

    iget-object v1, v0, Lcom/android/systemui/volume/dagger/VolumeModule_ProvideVolumeDialogFactory;->vibratorHelperProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v16, v1

    check-cast v16, Lcom/android/systemui/statusbar/VibratorHelper;

    iget-object v1, v0, Lcom/android/systemui/volume/dagger/VolumeModule_ProvideVolumeDialogFactory;->systemClockProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v17, v1

    check-cast v17, Lcom/android/systemui/util/time/SystemClock;

    iget-object v0, v0, Lcom/android/systemui/volume/dagger/VolumeModule_ProvideVolumeDialogFactory;->interactorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Lcom/android/systemui/volume/domain/interactor/VolumeDialogInteractor;

    invoke-static/range {v2 .. v18}, Lcom/android/systemui/volume/dagger/VolumeModule_ProvideVolumeDialogFactory;->provideVolumeDialog(Landroid/content/Context;Lcom/android/systemui/plugins/VolumeDialogController;Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/media/dialog/MediaOutputDialogManager;Lcom/android/internal/jank/InteractionJankMonitor;Lcom/android/systemui/volume/domain/interactor/VolumePanelNavigationInteractor;Lcom/android/systemui/volume/ui/navigation/VolumeNavigator;Lcom/android/systemui/volume/CsdWarningDialog$Factory;Lcom/android/systemui/statusbar/policy/DevicePostureController;Lcom/android/systemui/volume/panel/shared/flag/VolumePanelFlag;Lcom/android/systemui/dump/DumpManager;Ldagger/Lazy;Lcom/android/systemui/statusbar/VibratorHelper;Lcom/android/systemui/util/time/SystemClock;Lcom/android/systemui/volume/domain/interactor/VolumeDialogInteractor;)Lcom/android/systemui/volume/VolumeDialogImpl;

    move-result-object v0

    return-object v0
.end method
