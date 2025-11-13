.class public final Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator_Factory;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ldagger/internal/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Provider;"
    }
.end annotation


# instance fields
.field private final commonNotifCollectionLazyProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider;"
        }
    .end annotation
.end field

.field private final contextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider;"
        }
    .end annotation
.end field

.field private final debugModeFilterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider;"
        }
    .end annotation
.end field

.field private final errorManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider;"
        }
    .end annotation
.end field

.field private final headsUpManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider;"
        }
    .end annotation
.end field

.field private final keyguardNotificationVisibilityProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider;"
        }
    .end annotation
.end field

.field private final keyguardUpdateMonitorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider;"
        }
    .end annotation
.end field

.field private final lockscreenUserManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider;"
        }
    .end annotation
.end field

.field private final notifLiveDataStoreProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider;"
        }
    .end annotation
.end field

.field private final notifPipelineProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider;"
        }
    .end annotation
.end field

.field private final notificationManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider;"
        }
    .end annotation
.end field

.field private final silentHeaderControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider;"
        }
    .end annotation
.end field

.field private final silentNodeControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider;"
        }
    .end annotation
.end field

.field private final statusBarStateControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider;"
        }
    .end annotation
.end field

.field private final subscreenControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider;"
        }
    .end annotation
.end field

.field private final timeSortCoordinatorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
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
            ")V"
        }
    .end annotation

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator_Factory;->silentHeaderControllerProvider:Ljavax/inject/Provider;

    move-object v1, p2

    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator_Factory;->silentNodeControllerProvider:Ljavax/inject/Provider;

    move-object v1, p3

    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator_Factory;->notificationManagerProvider:Ljavax/inject/Provider;

    move-object v1, p4

    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator_Factory;->timeSortCoordinatorProvider:Ljavax/inject/Provider;

    move-object v1, p5

    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator_Factory;->errorManagerProvider:Ljavax/inject/Provider;

    move-object v1, p6

    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator_Factory;->commonNotifCollectionLazyProvider:Ljavax/inject/Provider;

    move-object v1, p7

    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator_Factory;->statusBarStateControllerProvider:Ljavax/inject/Provider;

    move-object v1, p8

    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator_Factory;->notifLiveDataStoreProvider:Ljavax/inject/Provider;

    move-object v1, p9

    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator_Factory;->headsUpManagerProvider:Ljavax/inject/Provider;

    move-object v1, p10

    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator_Factory;->notifPipelineProvider:Ljavax/inject/Provider;

    move-object v1, p11

    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator_Factory;->lockscreenUserManagerProvider:Ljavax/inject/Provider;

    move-object v1, p12

    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator_Factory;->keyguardUpdateMonitorProvider:Ljavax/inject/Provider;

    move-object v1, p13

    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator_Factory;->keyguardNotificationVisibilityProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator_Factory;->debugModeFilterProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator_Factory;->subscreenControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator_Factory;->contextProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator_Factory;
    .locals 18
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
            ")",
            "Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator_Factory;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    new-instance v17, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator_Factory;

    move-object/from16 v0, v17

    invoke-direct/range {v0 .. v16}, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v17
.end method

.method public static newInstance(Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderController;Lcom/android/systemui/statusbar/notification/collection/render/NodeController;Landroid/app/NotificationManager;Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifTimeSortCoordnator;Lcom/android/systemui/statusbar/notification/row/NotifInflationErrorManager;Ldagger/Lazy;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataStoreImpl;Lcom/android/systemui/statusbar/policy/HeadsUpManager;Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/statusbar/notification/interruption/KeyguardNotificationVisibilityProvider;Lcom/android/systemui/statusbar/notification/collection/provider/DebugModeFilterProvider;Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;Landroid/content/Context;)Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderController;",
            "Lcom/android/systemui/statusbar/notification/collection/render/NodeController;",
            "Landroid/app/NotificationManager;",
            "Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifTimeSortCoordnator;",
            "Lcom/android/systemui/statusbar/notification/row/NotifInflationErrorManager;",
            "Ldagger/Lazy;",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            "Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataStoreImpl;",
            "Lcom/android/systemui/statusbar/policy/HeadsUpManager;",
            "Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;",
            "Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            "Lcom/android/systemui/statusbar/notification/interruption/KeyguardNotificationVisibilityProvider;",
            "Lcom/android/systemui/statusbar/notification/collection/provider/DebugModeFilterProvider;",
            "Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;",
            "Landroid/content/Context;",
            ")",
            "Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    new-instance v17, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;

    move-object/from16 v0, v17

    invoke-direct/range {v0 .. v16}, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;-><init>(Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderController;Lcom/android/systemui/statusbar/notification/collection/render/NodeController;Landroid/app/NotificationManager;Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifTimeSortCoordnator;Lcom/android/systemui/statusbar/notification/row/NotifInflationErrorManager;Ldagger/Lazy;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataStoreImpl;Lcom/android/systemui/statusbar/policy/HeadsUpManager;Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/statusbar/notification/interruption/KeyguardNotificationVisibilityProvider;Lcom/android/systemui/statusbar/notification/collection/provider/DebugModeFilterProvider;Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;Landroid/content/Context;)V

    return-object v17
.end method


# virtual methods
.method public get()Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator_Factory;->silentHeaderControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderController;

    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator_Factory;->silentNodeControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/android/systemui/statusbar/notification/collection/render/NodeController;

    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator_Factory;->notificationManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/app/NotificationManager;

    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator_Factory;->timeSortCoordinatorProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifTimeSortCoordnator;

    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator_Factory;->errorManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/android/systemui/statusbar/notification/row/NotifInflationErrorManager;

    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator_Factory;->commonNotifCollectionLazyProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v7

    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator_Factory;->statusBarStateControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator_Factory;->notifLiveDataStoreProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataStoreImpl;

    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator_Factory;->headsUpManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator_Factory;->notifPipelineProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator_Factory;->lockscreenUserManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator_Factory;->keyguardUpdateMonitorProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator_Factory;->keyguardNotificationVisibilityProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Lcom/android/systemui/statusbar/notification/interruption/KeyguardNotificationVisibilityProvider;

    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator_Factory;->debugModeFilterProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Lcom/android/systemui/statusbar/notification/collection/provider/DebugModeFilterProvider;

    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator_Factory;->subscreenControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v16, v1

    check-cast v16, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator_Factory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Landroid/content/Context;

    invoke-static/range {v2 .. v17}, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator_Factory;->newInstance(Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderController;Lcom/android/systemui/statusbar/notification/collection/render/NodeController;Landroid/app/NotificationManager;Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifTimeSortCoordnator;Lcom/android/systemui/statusbar/notification/row/NotifInflationErrorManager;Ldagger/Lazy;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataStoreImpl;Lcom/android/systemui/statusbar/policy/HeadsUpManager;Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/statusbar/notification/interruption/KeyguardNotificationVisibilityProvider;Lcom/android/systemui/statusbar/notification/collection/provider/DebugModeFilterProvider;Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;Landroid/content/Context;)Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator_Factory;->get()Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;

    move-result-object p0

    return-object p0
.end method
