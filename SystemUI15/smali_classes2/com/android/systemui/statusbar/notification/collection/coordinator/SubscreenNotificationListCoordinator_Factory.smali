.class public final Lcom/android/systemui/statusbar/notification/collection/coordinator/SubscreenNotificationListCoordinator_Factory;
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
.field private final bubblesOptionalProvider:Ljavax/inject/Provider;
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

.field private final pluginLockMediatorProvider:Ljavax/inject/Provider;
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


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SubscreenNotificationListCoordinator_Factory;->subscreenControllerProvider:Ljavax/inject/Provider;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SubscreenNotificationListCoordinator_Factory;->statusBarStateControllerProvider:Ljavax/inject/Provider;

    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SubscreenNotificationListCoordinator_Factory;->lockscreenUserManagerProvider:Ljavax/inject/Provider;

    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SubscreenNotificationListCoordinator_Factory;->pluginLockMediatorProvider:Ljavax/inject/Provider;

    iput-object p5, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SubscreenNotificationListCoordinator_Factory;->bubblesOptionalProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/collection/coordinator/SubscreenNotificationListCoordinator_Factory;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            ")",
            "Lcom/android/systemui/statusbar/notification/collection/coordinator/SubscreenNotificationListCoordinator_Factory;"
        }
    .end annotation

    new-instance v6, Lcom/android/systemui/statusbar/notification/collection/coordinator/SubscreenNotificationListCoordinator_Factory;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/notification/collection/coordinator/SubscreenNotificationListCoordinator_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v6
.end method

.method public static newInstance(Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;Lcom/android/systemui/pluginlock/PluginLockMediator;Ljava/util/Optional;)Lcom/android/systemui/statusbar/notification/collection/coordinator/SubscreenNotificationListCoordinator;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;",
            "Lcom/android/systemui/statusbar/SysuiStatusBarStateController;",
            "Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;",
            "Lcom/android/systemui/pluginlock/PluginLockMediator;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/bubbles/Bubbles;",
            ">;)",
            "Lcom/android/systemui/statusbar/notification/collection/coordinator/SubscreenNotificationListCoordinator;"
        }
    .end annotation

    new-instance v6, Lcom/android/systemui/statusbar/notification/collection/coordinator/SubscreenNotificationListCoordinator;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/notification/collection/coordinator/SubscreenNotificationListCoordinator;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;Lcom/android/systemui/pluginlock/PluginLockMediator;Ljava/util/Optional;)V

    return-object v6
.end method


# virtual methods
.method public get()Lcom/android/systemui/statusbar/notification/collection/coordinator/SubscreenNotificationListCoordinator;
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SubscreenNotificationListCoordinator_Factory;->subscreenControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SubscreenNotificationListCoordinator_Factory;->statusBarStateControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SubscreenNotificationListCoordinator_Factory;->lockscreenUserManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SubscreenNotificationListCoordinator_Factory;->pluginLockMediatorProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/pluginlock/PluginLockMediator;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SubscreenNotificationListCoordinator_Factory;->bubblesOptionalProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Optional;

    invoke-static {v0, v1, v2, v3, p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/SubscreenNotificationListCoordinator_Factory;->newInstance(Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;Lcom/android/systemui/pluginlock/PluginLockMediator;Ljava/util/Optional;)Lcom/android/systemui/statusbar/notification/collection/coordinator/SubscreenNotificationListCoordinator;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/SubscreenNotificationListCoordinator_Factory;->get()Lcom/android/systemui/statusbar/notification/collection/coordinator/SubscreenNotificationListCoordinator;

    move-result-object p0

    return-object p0
.end method
