.class public final Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ldagger/internal/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ldagger/internal/Provider;"
    }
.end annotation


# instance fields
.field public final coordinatorsSubcomponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl;

.field public final id:I

.field public final referenceGlobalRootComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;

.field public final referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->referenceGlobalRootComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;

    iput-object p2, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    iput-object p3, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->coordinatorsSubcomponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl;

    iput p4, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->id:I

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 50
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->id:I

    packed-switch v1, :pswitch_data_0

    new-instance v1, Ljava/lang/AssertionError;

    iget v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->id:I

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(I)V

    throw v1

    :pswitch_0
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->notificationControllerProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/bixby2/controller/NotificationController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/NotificationControlActionCoordinator_Factory;->newInstance(Lcom/android/systemui/bixby2/controller/NotificationController;)Lcom/android/systemui/statusbar/notification/collection/coordinator/NotificationControlActionCoordinator;

    move-result-object v0

    return-object v0

    :pswitch_1
    new-instance v7, Lcom/android/systemui/statusbar/notification/collection/coordinator/SubscreenNotificationListCoordinator;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->subscreenNotificationControllerProvider:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->statusBarStateControllerImplProvider:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->notificationLockscreenUserManagerImplProvider:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->pluginLockMediatorImplProvider:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/android/systemui/pluginlock/PluginLockMediator;

    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    iget-object v6, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->setBubbles:Ljava/util/Optional;

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/statusbar/notification/collection/coordinator/SubscreenNotificationListCoordinator;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;Lcom/android/systemui/pluginlock/PluginLockMediator;Ljava/util/Optional;)V

    return-object v7

    :pswitch_2
    new-instance v1, Lcom/android/systemui/statusbar/notification/collection/coordinator/SubscreenQuickReplyCoordinator;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->referenceGlobalRootComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;

    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;->dumpManagerProvider:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/dump/DumpManager;

    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    iget-object v3, v3, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->subscreenNotificationControllerProvider:Ldagger/internal/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->referenceGlobalRootComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;

    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;->provideMainHandlerProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    invoke-direct {v1, v2, v3, v0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/SubscreenQuickReplyCoordinator;-><init>(Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;Landroid/os/Handler;)V

    return-object v1

    :pswitch_3
    new-instance v1, Lcom/android/systemui/statusbar/notification/collection/coordinator/SettingsChangedCoordinator;

    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->notifLiveDataStoreImplProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataStoreImpl;

    invoke-direct {v1, v0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/SettingsChangedCoordinator;-><init>(Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataStoreImpl;)V

    return-object v1

    :pswitch_4
    new-instance v1, Lcom/android/systemui/statusbar/notification/collection/coordinator/FavoriteNotifCoordnator;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->referenceGlobalRootComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;

    iget-object v3, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;->context:Landroid/content/Context;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->visualStabilityCoordinatorProvider:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/android/systemui/statusbar/notification/collection/coordinator/VisualStabilityCoordinator;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->notifLiveDataStoreImplProvider:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataStoreImpl;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->coordinatorsSubcomponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl;

    invoke-virtual {v2}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl;->notifTimeSortCoordnator()Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifTimeSortCoordnator;

    move-result-object v6

    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    invoke-virtual {v0}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->favoriteHeaderNodeController()Lcom/android/systemui/statusbar/notification/collection/render/NodeController;

    move-result-object v7

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/android/systemui/statusbar/notification/collection/coordinator/FavoriteNotifCoordnator;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/collection/coordinator/VisualStabilityCoordinator;Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataStoreImpl;Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifTimeSortCoordnator;Lcom/android/systemui/statusbar/notification/collection/render/NodeController;)V

    return-object v1

    :pswitch_5
    new-instance v1, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    invoke-virtual {v2}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->silentHeaderSectionHeaderController()Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderController;

    move-result-object v9

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    invoke-virtual {v2}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->silentHeaderNodeController()Lcom/android/systemui/statusbar/notification/collection/render/NodeController;

    move-result-object v10

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->referenceGlobalRootComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;

    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;->provideNotificationManagerProvider:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/app/NotificationManager;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->coordinatorsSubcomponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl;

    invoke-virtual {v2}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl;->notifTimeSortCoordnator()Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifTimeSortCoordnator;

    move-result-object v12

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->notifInflationErrorManagerProvider:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Lcom/android/systemui/statusbar/notification/row/NotifInflationErrorManager;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->notifPipelineProvider:Ldagger/internal/Provider;

    invoke-static {v2}, Ldagger/internal/DoubleCheck;->lazy(Ldagger/internal/Provider;)Ldagger/Lazy;

    move-result-object v14

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->statusBarStateControllerImplProvider:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->notifLiveDataStoreImplProvider:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataStoreImpl;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->headsUpManagerPhoneProvider:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->notifPipelineProvider:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->notificationLockscreenUserManagerImplProvider:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->keyguardSecUpdateMonitorImplProvider:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v20, v2

    check-cast v20, Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->keyguardNotificationVisibilityProviderImplProvider:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v21, v2

    check-cast v21, Lcom/android/systemui/statusbar/notification/interruption/KeyguardNotificationVisibilityProvider;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->debugModeFilterProvider:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v22, v2

    check-cast v22, Lcom/android/systemui/statusbar/notification/collection/provider/DebugModeFilterProvider;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->subscreenNotificationControllerProvider:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v23, v2

    check-cast v23, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->referenceGlobalRootComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;

    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;->context:Landroid/content/Context;

    move-object v8, v1

    move-object/from16 v24, v0

    invoke-direct/range {v8 .. v24}, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;-><init>(Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderController;Lcom/android/systemui/statusbar/notification/collection/render/NodeController;Landroid/app/NotificationManager;Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifTimeSortCoordnator;Lcom/android/systemui/statusbar/notification/row/NotifInflationErrorManager;Ldagger/Lazy;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataStoreImpl;Lcom/android/systemui/statusbar/policy/HeadsUpManager;Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/statusbar/notification/interruption/KeyguardNotificationVisibilityProvider;Lcom/android/systemui/statusbar/notification/collection/provider/DebugModeFilterProvider;Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;Landroid/content/Context;)V

    return-object v1

    :pswitch_6
    new-instance v1, Lcom/android/systemui/statusbar/notification/collection/coordinator/SummarizeCoordinator;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->referenceGlobalRootComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;

    iget-object v3, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;->context:Landroid/content/Context;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    invoke-virtual {v2}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->systemSettingsImpl()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/android/systemui/util/settings/SystemSettings;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->notifPipelineProvider:Ldagger/internal/Provider;

    invoke-static {v2}, Ldagger/internal/DoubleCheck;->lazy(Ldagger/internal/Provider;)Ldagger/Lazy;

    move-result-object v5

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->shadeExpansionStateManagerProvider:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/android/systemui/shade/ShadeExpansionStateManager;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->summarizeControllerProvider:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lcom/android/systemui/statusbar/SummarizeController;

    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->statusBarStateControllerImplProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Lcom/android/systemui/statusbar/notification/collection/coordinator/SummarizeCoordinator;-><init>(Landroid/content/Context;Lcom/android/systemui/util/settings/SystemSettings;Ldagger/Lazy;Lcom/android/systemui/shade/ShadeExpansionStateManager;Lcom/android/systemui/statusbar/SummarizeController;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;)V

    return-object v1

    :pswitch_7
    new-instance v1, Lcom/android/systemui/statusbar/notification/collection/coordinator/HighlightsCoordinator;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    invoke-virtual {v2}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->highlightsHeaderNodeController()Lcom/android/systemui/statusbar/notification/collection/render/NodeController;

    move-result-object v10

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->notifPipelineProvider:Ldagger/internal/Provider;

    invoke-static {v2}, Ldagger/internal/DoubleCheck;->lazy(Ldagger/internal/Provider;)Ldagger/Lazy;

    move-result-object v11

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->referenceGlobalRootComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;

    iget-object v12, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;->context:Landroid/content/Context;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    invoke-virtual {v2}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->systemSettingsImpl()Ljava/lang/Object;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Lcom/android/systemui/util/settings/SystemSettings;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->shadeExpansionStateManagerProvider:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Lcom/android/systemui/shade/ShadeExpansionStateManager;

    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->statusBarStateControllerImplProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    move-object v9, v1

    invoke-direct/range {v9 .. v15}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HighlightsCoordinator;-><init>(Lcom/android/systemui/statusbar/notification/collection/render/NodeController;Ldagger/Lazy;Landroid/content/Context;Lcom/android/systemui/util/settings/SystemSettings;Lcom/android/systemui/shade/ShadeExpansionStateManager;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;)V

    return-object v1

    :pswitch_8
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->referenceGlobalRootComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;

    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifCounterCoordinator_Factory;->newInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifCounterCoordinator;

    move-result-object v0

    return-object v0

    :pswitch_9
    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/NotilusCoordinator;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/NotilusCoordinator;-><init>()V

    return-object v0

    :pswitch_a
    new-instance v7, Lcom/android/systemui/statusbar/notification/collection/coordinator/OngoingActivityCoordinator;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->referenceGlobalRootComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;

    iget-object v2, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;->context:Landroid/content/Context;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->coordinatorsSubcomponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl;

    invoke-virtual {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl;->notifTimeSortCoordnator()Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifTimeSortCoordnator;

    move-result-object v3

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    invoke-virtual {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->ongoingActivityHeaderNodeController()Lcom/android/systemui/statusbar/notification/collection/render/NodeController;

    move-result-object v4

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->provideOngoingActivityControllerProvider:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;

    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    invoke-virtual {v0}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->notificationIconAreaController()Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    move-result-object v6

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/statusbar/notification/collection/coordinator/OngoingActivityCoordinator;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifTimeSortCoordnator;Lcom/android/systemui/statusbar/notification/collection/render/NodeController;Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;)V

    return-object v7

    :pswitch_b
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->lockscreenNotificationManagerProvider:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/systemui/statusbar/LockscreenNotificationManager;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->keyguardStateControllerImplProvider:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->notificationLockscreenUserManagerImplProvider:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->groupMembershipManagerImplProvider:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/android/systemui/statusbar/notification/collection/render/GroupMembershipManager;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->pluginLockMediatorImplProvider:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/android/systemui/pluginlock/PluginLockMediator;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->statusBarStateControllerImplProvider:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->lockscreenShadeTransitionControllerProvider:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->ambientStateProvider:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->configurationControllerImplProvider:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->subscreenNotificationControllerProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    invoke-static/range {v2 .. v11}, Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator_Factory;->newInstance(Lcom/android/systemui/statusbar/LockscreenNotificationManager;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;Lcom/android/systemui/statusbar/notification/collection/render/GroupMembershipManager;Lcom/android/systemui/pluginlock/PluginLockMediator;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;Lcom/android/systemui/statusbar/notification/stack/AmbientState;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;)Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator;

    move-result-object v0

    return-object v0

    :pswitch_c
    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SemPriorityCoordinator;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/SemPriorityCoordinator;-><init>()V

    return-object v0

    :pswitch_d
    new-instance v1, Lcom/android/systemui/statusbar/notification/collection/coordinator/NotificationStatsLoggerCoordinator;

    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->notificationStatsLoggerImplProvider:Ldagger/internal/Provider;

    invoke-static {}, Lcom/android/systemui/statusbar/notification/dagger/NotificationStatsLoggerModule_Companion_ProvideStatsLoggerFactory;->provideStatsLogger()Ljava/util/Optional;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/NotificationStatsLoggerCoordinator;-><init>(Ljava/util/Optional;)V

    return-object v1

    :pswitch_e
    new-instance v1, Lcom/android/systemui/statusbar/notification/collection/coordinator/DreamCoordinator;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->statusBarStateControllerImplProvider:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->referenceGlobalRootComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;

    iget-object v3, v3, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;->applicationScopeProvider:Ldagger/internal/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlinx/coroutines/CoroutineScope;

    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->keyguardRepositoryImplProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/data/repository/KeyguardRepository;

    invoke-direct {v1, v2, v3, v0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/DreamCoordinator;-><init>(Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/keyguard/data/repository/KeyguardRepository;)V

    return-object v1

    :pswitch_f
    new-instance v1, Lcom/android/systemui/statusbar/notification/collection/coordinator/DismissibilityCoordinator;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->keyguardStateControllerImplProvider:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->notificationDismissibilityProviderImplProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/collection/provider/NotificationDismissibilityProviderImpl;

    invoke-direct {v1, v2, v0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/DismissibilityCoordinator;-><init>(Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/statusbar/notification/collection/provider/NotificationDismissibilityProviderImpl;)V

    return-object v1

    :pswitch_10
    new-instance v1, Lcom/android/systemui/statusbar/notification/collection/coordinator/SensitiveContentCoordinatorImpl;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->dynamicPrivacyControllerProvider:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->notificationLockscreenUserManagerImplProvider:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->keyguardSecUpdateMonitorImplProvider:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->statusBarStateControllerImplProvider:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->keyguardStateControllerImplProvider:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->selectedUserInteractorProvider:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->sensitiveNotificationProtectionControllerImplProvider:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionController;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->settingsHelperProvider:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Lcom/android/systemui/util/SettingsHelper;

    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->appLockNotificationControllerImplProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/android/systemui/statusbar/policy/AppLockNotificationController;

    move-object v3, v1

    invoke-direct/range {v3 .. v12}, Lcom/android/systemui/statusbar/notification/collection/coordinator/SensitiveContentCoordinatorImpl;-><init>(Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionController;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/statusbar/policy/AppLockNotificationController;)V

    return-object v1

    :pswitch_11
    new-instance v1, Lcom/android/systemui/statusbar/notification/collection/coordinator/ViewConfigCoordinator;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->configurationControllerImplProvider:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->notificationLockscreenUserManagerImplProvider:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->notificationGutsManagerProvider:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->keyguardSecUpdateMonitorImplProvider:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->colorUpdateLoggerProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Lcom/android/systemui/statusbar/notification/ColorUpdateLogger;

    move-object v13, v1

    invoke-direct/range {v13 .. v18}, Lcom/android/systemui/statusbar/notification/collection/coordinator/ViewConfigCoordinator;-><init>(Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/statusbar/notification/ColorUpdateLogger;)V

    return-object v1

    :pswitch_12
    new-instance v1, Lcom/android/systemui/statusbar/notification/collection/coordinator/SmartspaceDedupingCoordinator;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->statusBarStateControllerImplProvider:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->lockscreenSmartspaceControllerProvider:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->notifPipelineProvider:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->referenceGlobalRootComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;

    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;->provideMainDelayableExecutorProvider:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/android/systemui/util/concurrency/DelayableExecutor;

    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->bindSystemClockProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/android/systemui/util/time/SystemClock;

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/android/systemui/statusbar/notification/collection/coordinator/SmartspaceDedupingCoordinator;-><init>(Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/util/time/SystemClock;)V

    return-object v1

    :pswitch_13
    new-instance v1, Lcom/android/systemui/statusbar/notification/collection/coordinator/StackCoordinator;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->groupExpansionManagerImplProvider:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lcom/android/systemui/statusbar/notification/collection/render/GroupExpansionManagerImpl;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    invoke-virtual {v2}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->notificationIconAreaController()Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    move-result-object v10

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->coordinatorsSubcomponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl;

    invoke-virtual {v2}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl;->renderNotificationListInteractor()Lcom/android/systemui/statusbar/notification/domain/interactor/RenderNotificationListInteractor;

    move-result-object v11

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->activeNotificationsInteractorProvider:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lcom/android/systemui/statusbar/notification/domain/interactor/ActiveNotificationsInteractor;

    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->sensitiveNotificationProtectionControllerImplProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionController;

    move-object v8, v1

    invoke-direct/range {v8 .. v13}, Lcom/android/systemui/statusbar/notification/collection/coordinator/StackCoordinator;-><init>(Lcom/android/systemui/statusbar/notification/collection/render/GroupExpansionManagerImpl;Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;Lcom/android/systemui/statusbar/notification/domain/interactor/RenderNotificationListInteractor;Lcom/android/systemui/statusbar/notification/domain/interactor/ActiveNotificationsInteractor;Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionController;)V

    return-object v1

    :pswitch_14
    new-instance v1, Lcom/android/systemui/statusbar/notification/collection/coordinator/RowAppearanceCoordinator;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->referenceGlobalRootComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;

    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;->context:Landroid/content/Context;

    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    iget-object v3, v3, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->assistantFeedbackControllerProvider:Ldagger/internal/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/notification/AssistantFeedbackController;

    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->sectionStyleProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/collection/provider/SectionStyleProvider;

    invoke-direct {v1, v2, v3, v0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/RowAppearanceCoordinator;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/AssistantFeedbackController;Lcom/android/systemui/statusbar/notification/collection/provider/SectionStyleProvider;)V

    return-object v1

    :pswitch_15
    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/RowAlertTimeCoordinator;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/RowAlertTimeCoordinator;-><init>()V

    return-object v0

    :pswitch_16
    new-instance v7, Lcom/android/systemui/statusbar/notification/collection/coordinator/RemoteInputCoordinator;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->referenceGlobalRootComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;

    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;->dumpManagerProvider:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/systemui/dump/DumpManager;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->remoteInputNotificationRebuilderProvider:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/android/systemui/statusbar/RemoteInputNotificationRebuilder;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->notificationRemoteInputManagerProvider:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->referenceGlobalRootComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;

    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;->provideMainHandlerProvider:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/os/Handler;

    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->provideSmartReplyControllerProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/systemui/statusbar/SmartReplyController;

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/statusbar/notification/collection/coordinator/RemoteInputCoordinator;-><init>(Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/statusbar/RemoteInputNotificationRebuilder;Lcom/android/systemui/statusbar/NotificationRemoteInputManager;Landroid/os/Handler;Lcom/android/systemui/statusbar/SmartReplyController;)V

    return-object v7

    :pswitch_17
    new-instance v1, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->coordinatorsSubcomponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl;

    invoke-virtual {v2}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl;->preparationCoordinatorLogger()Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinatorLogger;

    move-result-object v9

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->notifInflaterImplProvider:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lcom/android/systemui/statusbar/notification/collection/inflation/NotifInflater;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->notifInflationErrorManagerProvider:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Lcom/android/systemui/statusbar/notification/row/NotifInflationErrorManager;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->notifViewBarnProvider:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lcom/android/systemui/statusbar/notification/collection/render/NotifViewBarn;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->notifUiAdjustmentProvider:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustmentProvider;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->referenceGlobalRootComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;

    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;->provideIStatusBarServiceProvider:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Lcom/android/internal/statusbar/IStatusBarService;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->bindEventManagerImplProvider:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Lcom/android/systemui/statusbar/notification/collection/inflation/BindEventManagerImpl;

    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->provideOngoingActivityControllerProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;

    move-object v8, v1

    invoke-direct/range {v8 .. v16}, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinatorLogger;Lcom/android/systemui/statusbar/notification/collection/inflation/NotifInflater;Lcom/android/systemui/statusbar/notification/row/NotifInflationErrorManager;Lcom/android/systemui/statusbar/notification/collection/render/NotifViewBarn;Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustmentProvider;Lcom/android/internal/statusbar/IStatusBarService;Lcom/android/systemui/statusbar/notification/collection/inflation/BindEventManagerImpl;Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;)V

    return-object v1

    :pswitch_18
    new-instance v1, Lcom/android/systemui/statusbar/notification/collection/coordinator/MediaCoordinator;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    invoke-virtual {v2}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->mediaFeatureFlag()Lcom/android/systemui/media/controls/util/MediaFeatureFlag;

    move-result-object v2

    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->referenceGlobalRootComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;

    iget-object v3, v3, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;->provideIStatusBarServiceProvider:Ldagger/internal/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/statusbar/IStatusBarService;

    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->iconManagerProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/icon/IconManager;

    invoke-direct {v1, v2, v3, v0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/MediaCoordinator;-><init>(Lcom/android/systemui/media/controls/util/MediaFeatureFlag;Lcom/android/internal/statusbar/IStatusBarService;Lcom/android/systemui/statusbar/notification/icon/IconManager;)V

    return-object v1

    :pswitch_19
    new-instance v1, Lcom/android/systemui/statusbar/notification/collection/coordinator/GroupWhenCoordinator;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->referenceGlobalRootComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;

    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;->provideMainDelayableExecutorProvider:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/util/concurrency/DelayableExecutor;

    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->bindSystemClockProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/time/SystemClock;

    invoke-direct {v1, v2, v0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/GroupWhenCoordinator;-><init>(Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/util/time/SystemClock;)V

    return-object v1

    :pswitch_1a
    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/GroupCountCoordinator;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/GroupCountCoordinator;-><init>()V

    return-object v0

    :pswitch_1b
    new-instance v1, Lcom/android/systemui/statusbar/notification/collection/coordinator/DebugModeCoordinator;

    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->debugModeFilterProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/collection/provider/DebugModeFilterProvider;

    invoke-direct {v1, v0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/DebugModeCoordinator;-><init>(Lcom/android/systemui/statusbar/notification/collection/provider/DebugModeFilterProvider;)V

    return-object v1

    :pswitch_1c
    new-instance v1, Lcom/android/systemui/statusbar/notification/collection/coordinator/ConversationCoordinator;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->peopleNotificationIdentifierImplProvider:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifier;

    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    iget-object v3, v3, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->iconManagerProvider:Ldagger/internal/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/notification/icon/ConversationIconManager;

    iget-object v4, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    iget-object v4, v4, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->highPriorityProvider:Ldagger/internal/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/notification/collection/provider/HighPriorityProvider;

    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    invoke-virtual {v0}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->peopleHeaderNodeController()Lcom/android/systemui/statusbar/notification/collection/render/NodeController;

    move-result-object v0

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/ConversationCoordinator;-><init>(Lcom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifier;Lcom/android/systemui/statusbar/notification/icon/ConversationIconManager;Lcom/android/systemui/statusbar/notification/collection/provider/HighPriorityProvider;Lcom/android/systemui/statusbar/notification/collection/render/NodeController;)V

    return-object v1

    :pswitch_1d
    new-instance v1, Lcom/android/systemui/statusbar/notification/collection/coordinator/GutsCoordinator;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->notificationGutsManagerProvider:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/notification/collection/render/NotifGutsViewManager;

    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->coordinatorsSubcomponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl;

    invoke-virtual {v3}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl;->gutsCoordinatorLogger()Lcom/android/systemui/statusbar/notification/collection/coordinator/GutsCoordinatorLogger;

    move-result-object v3

    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->referenceGlobalRootComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;

    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;->dumpManagerProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/dump/DumpManager;

    invoke-direct {v1, v2, v3, v0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/GutsCoordinator;-><init>(Lcom/android/systemui/statusbar/notification/collection/render/NotifGutsViewManager;Lcom/android/systemui/statusbar/notification/collection/coordinator/GutsCoordinatorLogger;Lcom/android/systemui/dump/DumpManager;)V

    return-object v1

    :pswitch_1e
    new-instance v1, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->coordinatorsSubcomponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl;

    invoke-virtual {v2}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl;->headsUpCoordinatorLogger()Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinatorLogger;

    move-result-object v5

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->bindSystemClockProvider:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/android/systemui/util/time/SystemClock;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->headsUpManagerPhoneProvider:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->headsUpViewBinderProvider:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpViewBinder;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->provideVisualInterruptionDecisionProvider:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lcom/android/systemui/statusbar/notification/interruption/VisualInterruptionDecisionProvider;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->notificationRemoteInputManagerProvider:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->launchFullScreenIntentProvider:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Lcom/android/systemui/statusbar/notification/collection/provider/LaunchFullScreenIntentProvider;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    invoke-virtual {v2}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->notifPipelineFlags()Lcom/android/systemui/statusbar/notification/NotifPipelineFlags;

    move-result-object v12

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    invoke-virtual {v2}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->incomingHeaderNodeController()Lcom/android/systemui/statusbar/notification/collection/render/NodeController;

    move-result-object v13

    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->referenceGlobalRootComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;

    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;->provideMainDelayableExecutorProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Lcom/android/systemui/util/concurrency/DelayableExecutor;

    move-object v4, v1

    invoke-direct/range {v4 .. v14}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinatorLogger;Lcom/android/systemui/util/time/SystemClock;Lcom/android/systemui/statusbar/policy/HeadsUpManager;Lcom/android/systemui/statusbar/notification/interruption/HeadsUpViewBinder;Lcom/android/systemui/statusbar/notification/interruption/VisualInterruptionDecisionProvider;Lcom/android/systemui/statusbar/NotificationRemoteInputManager;Lcom/android/systemui/statusbar/notification/collection/provider/LaunchFullScreenIntentProvider;Lcom/android/systemui/statusbar/notification/NotifPipelineFlags;Lcom/android/systemui/statusbar/notification/collection/render/NodeController;Lcom/android/systemui/util/concurrency/DelayableExecutor;)V

    return-object v1

    :pswitch_1f
    new-instance v1, Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->provideBubblesManagerProvider:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Optional;

    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->setBubbles:Ljava/util/Optional;

    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->notifCollectionProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;

    invoke-direct {v1, v2, v3, v0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator;-><init>(Ljava/util/Optional;Ljava/util/Optional;Lcom/android/systemui/statusbar/notification/collection/NotifCollection;)V

    return-object v1

    :pswitch_20
    new-instance v1, Lcom/android/systemui/statusbar/notification/collection/coordinator/DeviceProvisionedCoordinator;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->bindDeviceProvisionedControllerProvider:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->referenceGlobalRootComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;

    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;->provideIPackageManagerProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/IPackageManager;

    invoke-direct {v1, v2, v0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/DeviceProvisionedCoordinator;-><init>(Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;Landroid/content/pm/IPackageManager;)V

    return-object v1

    :pswitch_21
    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/ColorizedFgsCoordinator;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/ColorizedFgsCoordinator;-><init>()V

    return-object v0

    :pswitch_22
    new-instance v7, Lcom/android/systemui/statusbar/notification/collection/coordinator/RankingCoordinator;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->statusBarStateControllerImplProvider:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->highPriorityProvider:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/android/systemui/statusbar/notification/collection/provider/HighPriorityProvider;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    invoke-virtual {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->alertingHeaderNodeController()Lcom/android/systemui/statusbar/notification/collection/render/NodeController;

    move-result-object v4

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    invoke-virtual {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->silentHeaderSectionHeaderController()Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderController;

    move-result-object v5

    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    invoke-virtual {v0}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->silentHeaderNodeController()Lcom/android/systemui/statusbar/notification/collection/render/NodeController;

    move-result-object v6

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/statusbar/notification/collection/coordinator/RankingCoordinator;-><init>(Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/notification/collection/provider/HighPriorityProvider;Lcom/android/systemui/statusbar/notification/collection/render/NodeController;Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderController;Lcom/android/systemui/statusbar/notification/collection/render/NodeController;)V

    return-object v7

    :pswitch_23
    new-instance v1, Lcom/android/systemui/statusbar/notification/collection/coordinator/KeyguardCoordinator;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->bgDispatcherProvider:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lkotlinx/coroutines/CoroutineDispatcher;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->referenceGlobalRootComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;

    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;->dumpManagerProvider:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lcom/android/systemui/dump/DumpManager;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->headsUpManagerPhoneProvider:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->keyguardNotificationVisibilityProviderImplProvider:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lcom/android/systemui/statusbar/notification/interruption/KeyguardNotificationVisibilityProvider;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->keyguardRepositoryImplProvider:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Lcom/android/systemui/keyguard/data/repository/KeyguardRepository;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->keyguardTransitionRepositoryImplProvider:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepository;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->coordinatorsSubcomponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl;

    invoke-virtual {v2}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl;->keyguardCoordinatorLogger()Lcom/android/systemui/statusbar/notification/collection/coordinator/KeyguardCoordinatorLogger;

    move-result-object v15

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->referenceGlobalRootComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;

    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;->applicationScopeProvider:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Lkotlinx/coroutines/CoroutineScope;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->sectionHeaderVisibilityProvider:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Lcom/android/systemui/statusbar/notification/collection/provider/SectionHeaderVisibilityProvider;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->secureSettingsImplProvider:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Lcom/android/systemui/util/settings/SecureSettings;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->seenNotificationsInteractorProvider:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Lcom/android/systemui/statusbar/notification/domain/interactor/SeenNotificationsInteractor;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->statusBarStateControllerImplProvider:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v20, v2

    check-cast v20, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->ambientStateProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v21, v0

    check-cast v21, Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    move-object v8, v1

    invoke-direct/range {v8 .. v21}, Lcom/android/systemui/statusbar/notification/collection/coordinator/KeyguardCoordinator;-><init>(Lkotlinx/coroutines/CoroutineDispatcher;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/statusbar/policy/HeadsUpManager;Lcom/android/systemui/statusbar/notification/interruption/KeyguardNotificationVisibilityProvider;Lcom/android/systemui/keyguard/data/repository/KeyguardRepository;Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepository;Lcom/android/systemui/statusbar/notification/collection/coordinator/KeyguardCoordinatorLogger;Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/statusbar/notification/collection/provider/SectionHeaderVisibilityProvider;Lcom/android/systemui/util/settings/SecureSettings;Lcom/android/systemui/statusbar/notification/domain/interactor/SeenNotificationsInteractor;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/notification/stack/AmbientState;)V

    return-object v1

    :pswitch_24
    new-instance v1, Lcom/android/systemui/statusbar/notification/collection/coordinator/HideNotifsForOtherUsersCoordinator;

    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->notificationLockscreenUserManagerImplProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-direct {v1, v0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HideNotifsForOtherUsersCoordinator;-><init>(Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;)V

    return-object v1

    :pswitch_25
    invoke-static {}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HideLocallyDismissedNotifsCoordinator_Factory;->newInstance()Lcom/android/systemui/statusbar/notification/collection/coordinator/HideLocallyDismissedNotifsCoordinator;

    move-result-object v0

    return-object v0

    :pswitch_26
    new-instance v1, Lcom/android/systemui/statusbar/notification/collection/coordinator/DataStoreCoordinator;

    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->notifLiveDataStoreImplProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataStoreImpl;

    invoke-direct {v1, v0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/DataStoreCoordinator;-><init>(Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataStoreImpl;)V

    return-object v1

    :pswitch_27
    new-instance v1, Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifCoordinatorsImpl;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->sectionStyleProvider:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/android/systemui/statusbar/notification/collection/provider/SectionStyleProvider;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->featureFlagsClassicReleaseProvider:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/android/systemui/flags/FeatureFlags;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->coordinatorsSubcomponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl;

    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl;->dataStoreCoordinatorProvider:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/android/systemui/statusbar/notification/collection/coordinator/DataStoreCoordinator;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->coordinatorsSubcomponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl;

    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl;->hideLocallyDismissedNotifsCoordinatorProvider:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/android/systemui/statusbar/notification/collection/coordinator/HideLocallyDismissedNotifsCoordinator;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->coordinatorsSubcomponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl;

    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl;->hideNotifsForOtherUsersCoordinatorProvider:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lcom/android/systemui/statusbar/notification/collection/coordinator/HideNotifsForOtherUsersCoordinator;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->coordinatorsSubcomponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl;

    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl;->keyguardCoordinatorProvider:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/android/systemui/statusbar/notification/collection/coordinator/KeyguardCoordinator;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->coordinatorsSubcomponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl;

    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl;->rankingCoordinatorProvider:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lcom/android/systemui/statusbar/notification/collection/coordinator/RankingCoordinator;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->coordinatorsSubcomponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl;

    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl;->colorizedFgsCoordinatorProvider:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lcom/android/systemui/statusbar/notification/collection/coordinator/ColorizedFgsCoordinator;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->coordinatorsSubcomponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl;

    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl;->deviceProvisionedCoordinatorProvider:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Lcom/android/systemui/statusbar/notification/collection/coordinator/DeviceProvisionedCoordinator;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->coordinatorsSubcomponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl;

    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl;->bubbleCoordinatorProvider:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->coordinatorsSubcomponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl;

    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl;->headsUpCoordinatorProvider:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->coordinatorsSubcomponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl;

    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl;->gutsCoordinatorProvider:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Lcom/android/systemui/statusbar/notification/collection/coordinator/GutsCoordinator;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->coordinatorsSubcomponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl;

    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl;->conversationCoordinatorProvider:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Lcom/android/systemui/statusbar/notification/collection/coordinator/ConversationCoordinator;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->coordinatorsSubcomponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl;

    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl;->debugModeCoordinatorProvider:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Lcom/android/systemui/statusbar/notification/collection/coordinator/DebugModeCoordinator;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->coordinatorsSubcomponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl;

    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl;->groupCountCoordinatorProvider:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Lcom/android/systemui/statusbar/notification/collection/coordinator/GroupCountCoordinator;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->coordinatorsSubcomponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl;

    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl;->groupWhenCoordinatorProvider:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Lcom/android/systemui/statusbar/notification/collection/coordinator/GroupWhenCoordinator;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->coordinatorsSubcomponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl;

    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl;->mediaCoordinatorProvider:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Lcom/android/systemui/statusbar/notification/collection/coordinator/MediaCoordinator;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->coordinatorsSubcomponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl;

    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl;->preparationCoordinatorProvider:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v20, v2

    check-cast v20, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->coordinatorsSubcomponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl;

    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl;->remoteInputCoordinatorProvider:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v21, v2

    check-cast v21, Lcom/android/systemui/statusbar/notification/collection/coordinator/RemoteInputCoordinator;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->coordinatorsSubcomponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl;

    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl;->rowAlertTimeCoordinatorProvider:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v22, v2

    check-cast v22, Lcom/android/systemui/statusbar/notification/collection/coordinator/RowAlertTimeCoordinator;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->coordinatorsSubcomponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl;

    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl;->rowAppearanceCoordinatorProvider:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v23, v2

    check-cast v23, Lcom/android/systemui/statusbar/notification/collection/coordinator/RowAppearanceCoordinator;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->coordinatorsSubcomponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl;

    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl;->stackCoordinatorProvider:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v24, v2

    check-cast v24, Lcom/android/systemui/statusbar/notification/collection/coordinator/StackCoordinator;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->shadeEventCoordinatorProvider:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v25, v2

    check-cast v25, Lcom/android/systemui/statusbar/notification/collection/coordinator/ShadeEventCoordinator;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->coordinatorsSubcomponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl;

    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl;->smartspaceDedupingCoordinatorProvider:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v26, v2

    check-cast v26, Lcom/android/systemui/statusbar/notification/collection/coordinator/SmartspaceDedupingCoordinator;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->coordinatorsSubcomponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl;

    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl;->viewConfigCoordinatorProvider:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v27, v2

    check-cast v27, Lcom/android/systemui/statusbar/notification/collection/coordinator/ViewConfigCoordinator;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->visualStabilityCoordinatorProvider:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v28, v2

    check-cast v28, Lcom/android/systemui/statusbar/notification/collection/coordinator/VisualStabilityCoordinator;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->coordinatorsSubcomponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl;

    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl;->sensitiveContentCoordinatorImplProvider:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v29, v2

    check-cast v29, Lcom/android/systemui/statusbar/notification/collection/coordinator/SensitiveContentCoordinator;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->coordinatorsSubcomponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl;

    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl;->dismissibilityCoordinatorProvider:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v30, v2

    check-cast v30, Lcom/android/systemui/statusbar/notification/collection/coordinator/DismissibilityCoordinator;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->coordinatorsSubcomponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl;

    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl;->dreamCoordinatorProvider:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v31, v2

    check-cast v31, Lcom/android/systemui/statusbar/notification/collection/coordinator/DreamCoordinator;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->coordinatorsSubcomponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl;

    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl;->notificationStatsLoggerCoordinatorProvider:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v32, v2

    check-cast v32, Lcom/android/systemui/statusbar/notification/collection/coordinator/NotificationStatsLoggerCoordinator;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->coordinatorsSubcomponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl;

    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl;->semPriorityCoordinatorProvider:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v33, v2

    check-cast v33, Lcom/android/systemui/statusbar/notification/collection/coordinator/SemPriorityCoordinator;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->coordinatorsSubcomponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl;

    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl;->lockScreenNotiIconCoordinatorProvider:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v34, v2

    check-cast v34, Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->coordinatorsSubcomponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl;

    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl;->ongoingActivityCoordinatorProvider:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v35, v2

    check-cast v35, Lcom/android/systemui/statusbar/notification/collection/coordinator/OngoingActivityCoordinator;

    new-instance v36, Lcom/android/systemui/statusbar/notification/collection/coordinator/EdgeLightingCoordnator;

    invoke-direct/range {v36 .. v36}, Lcom/android/systemui/statusbar/notification/collection/coordinator/EdgeLightingCoordnator;-><init>()V

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->coordinatorsSubcomponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl;

    invoke-virtual {v2}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl;->notifTimeSortCoordnator()Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifTimeSortCoordnator;

    move-result-object v37

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->coordinatorsSubcomponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl;

    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl;->notilusCoordinatorProvider:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v38, v2

    check-cast v38, Lcom/android/systemui/statusbar/notification/collection/coordinator/NotilusCoordinator;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->coordinatorsSubcomponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl;

    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl;->notifCounterCoordinatorProvider:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v39, v2

    check-cast v39, Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifCounterCoordinator;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->coordinatorsSubcomponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl;

    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl;->highlightsCoordinatorProvider:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v40, v2

    check-cast v40, Lcom/android/systemui/statusbar/notification/collection/coordinator/HighlightsCoordinator;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->coordinatorsSubcomponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl;

    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl;->summarizeCoordinatorProvider:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v41, v2

    check-cast v41, Lcom/android/systemui/statusbar/notification/collection/coordinator/SummarizeCoordinator;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->coordinatorsSubcomponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl;

    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl;->insignificantCoordinatorProvider:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v42, v2

    check-cast v42, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->coordinatorsSubcomponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl;

    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl;->favoriteNotifCoordnatorProvider:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v43, v2

    check-cast v43, Lcom/android/systemui/statusbar/notification/collection/coordinator/FavoriteNotifCoordnator;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->coordinatorsSubcomponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl;

    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl;->settingsChangedCoordinatorProvider:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v44, v2

    check-cast v44, Lcom/android/systemui/statusbar/notification/collection/coordinator/SettingsChangedCoordinator;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->coordinatorsSubcomponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl;

    invoke-virtual {v2}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl;->notifHeaderCoordinator()Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifHeaderCoordinator;

    move-result-object v45

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->coordinatorsSubcomponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl;

    invoke-virtual {v2}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl;->onlyShowNewNotifCoordnator()Lcom/android/systemui/statusbar/notification/collection/coordinator/OnlyShowNewNotifCoordnator;

    move-result-object v46

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->coordinatorsSubcomponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl;

    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl;->subscreenQuickReplyCoordinatorProvider:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v47, v2

    check-cast v47, Lcom/android/systemui/statusbar/notification/collection/coordinator/SubscreenQuickReplyCoordinator;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->coordinatorsSubcomponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl;

    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl;->subscreenNotificationListCoordinatorProvider:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v48, v2

    check-cast v48, Lcom/android/systemui/statusbar/notification/collection/coordinator/SubscreenNotificationListCoordinator;

    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->coordinatorsSubcomponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl;

    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CoordinatorsSubcomponentImpl;->notificationControlActionCoordinatorProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v49, v0

    check-cast v49, Lcom/android/systemui/statusbar/notification/collection/coordinator/NotificationControlActionCoordinator;

    move-object v2, v1

    invoke-direct/range {v2 .. v49}, Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifCoordinatorsImpl;-><init>(Lcom/android/systemui/statusbar/notification/collection/provider/SectionStyleProvider;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/statusbar/notification/collection/coordinator/DataStoreCoordinator;Lcom/android/systemui/statusbar/notification/collection/coordinator/HideLocallyDismissedNotifsCoordinator;Lcom/android/systemui/statusbar/notification/collection/coordinator/HideNotifsForOtherUsersCoordinator;Lcom/android/systemui/statusbar/notification/collection/coordinator/KeyguardCoordinator;Lcom/android/systemui/statusbar/notification/collection/coordinator/RankingCoordinator;Lcom/android/systemui/statusbar/notification/collection/coordinator/ColorizedFgsCoordinator;Lcom/android/systemui/statusbar/notification/collection/coordinator/DeviceProvisionedCoordinator;Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator;Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;Lcom/android/systemui/statusbar/notification/collection/coordinator/GutsCoordinator;Lcom/android/systemui/statusbar/notification/collection/coordinator/ConversationCoordinator;Lcom/android/systemui/statusbar/notification/collection/coordinator/DebugModeCoordinator;Lcom/android/systemui/statusbar/notification/collection/coordinator/GroupCountCoordinator;Lcom/android/systemui/statusbar/notification/collection/coordinator/GroupWhenCoordinator;Lcom/android/systemui/statusbar/notification/collection/coordinator/MediaCoordinator;Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;Lcom/android/systemui/statusbar/notification/collection/coordinator/RemoteInputCoordinator;Lcom/android/systemui/statusbar/notification/collection/coordinator/RowAlertTimeCoordinator;Lcom/android/systemui/statusbar/notification/collection/coordinator/RowAppearanceCoordinator;Lcom/android/systemui/statusbar/notification/collection/coordinator/StackCoordinator;Lcom/android/systemui/statusbar/notification/collection/coordinator/ShadeEventCoordinator;Lcom/android/systemui/statusbar/notification/collection/coordinator/SmartspaceDedupingCoordinator;Lcom/android/systemui/statusbar/notification/collection/coordinator/ViewConfigCoordinator;Lcom/android/systemui/statusbar/notification/collection/coordinator/VisualStabilityCoordinator;Lcom/android/systemui/statusbar/notification/collection/coordinator/SensitiveContentCoordinator;Lcom/android/systemui/statusbar/notification/collection/coordinator/DismissibilityCoordinator;Lcom/android/systemui/statusbar/notification/collection/coordinator/DreamCoordinator;Lcom/android/systemui/statusbar/notification/collection/coordinator/NotificationStatsLoggerCoordinator;Lcom/android/systemui/statusbar/notification/collection/coordinator/SemPriorityCoordinator;Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator;Lcom/android/systemui/statusbar/notification/collection/coordinator/OngoingActivityCoordinator;Lcom/android/systemui/statusbar/notification/collection/coordinator/EdgeLightingCoordnator;Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifTimeSortCoordnator;Lcom/android/systemui/statusbar/notification/collection/coordinator/NotilusCoordinator;Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifCounterCoordinator;Lcom/android/systemui/statusbar/notification/collection/coordinator/HighlightsCoordinator;Lcom/android/systemui/statusbar/notification/collection/coordinator/SummarizeCoordinator;Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;Lcom/android/systemui/statusbar/notification/collection/coordinator/FavoriteNotifCoordnator;Lcom/android/systemui/statusbar/notification/collection/coordinator/SettingsChangedCoordinator;Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifHeaderCoordinator;Lcom/android/systemui/statusbar/notification/collection/coordinator/OnlyShowNewNotifCoordnator;Lcom/android/systemui/statusbar/notification/collection/coordinator/SubscreenQuickReplyCoordinator;Lcom/android/systemui/statusbar/notification/collection/coordinator/SubscreenNotificationListCoordinator;Lcom/android/systemui/statusbar/notification/collection/coordinator/NotificationControlActionCoordinator;)V

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
