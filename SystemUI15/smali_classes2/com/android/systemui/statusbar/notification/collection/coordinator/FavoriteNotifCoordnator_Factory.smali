.class public final Lcom/android/systemui/statusbar/notification/collection/coordinator/FavoriteNotifCoordnator_Factory;
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
.field private final contextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider;"
        }
    .end annotation
.end field

.field private final favoriteHeaderControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider;"
        }
    .end annotation
.end field

.field private final notifLiveDataStoreImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider;"
        }
    .end annotation
.end field

.field private final timeSortCoordnatorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider;"
        }
    .end annotation
.end field

.field private final visualStabilityCoordinatorProvider:Ljavax/inject/Provider;
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

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/FavoriteNotifCoordnator_Factory;->contextProvider:Ljavax/inject/Provider;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/FavoriteNotifCoordnator_Factory;->visualStabilityCoordinatorProvider:Ljavax/inject/Provider;

    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/FavoriteNotifCoordnator_Factory;->notifLiveDataStoreImplProvider:Ljavax/inject/Provider;

    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/FavoriteNotifCoordnator_Factory;->timeSortCoordnatorProvider:Ljavax/inject/Provider;

    iput-object p5, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/FavoriteNotifCoordnator_Factory;->favoriteHeaderControllerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/collection/coordinator/FavoriteNotifCoordnator_Factory;
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
            "Lcom/android/systemui/statusbar/notification/collection/coordinator/FavoriteNotifCoordnator_Factory;"
        }
    .end annotation

    new-instance v6, Lcom/android/systemui/statusbar/notification/collection/coordinator/FavoriteNotifCoordnator_Factory;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/notification/collection/coordinator/FavoriteNotifCoordnator_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v6
.end method

.method public static newInstance(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/collection/coordinator/VisualStabilityCoordinator;Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataStoreImpl;Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifTimeSortCoordnator;Lcom/android/systemui/statusbar/notification/collection/render/NodeController;)Lcom/android/systemui/statusbar/notification/collection/coordinator/FavoriteNotifCoordnator;
    .locals 7

    new-instance v6, Lcom/android/systemui/statusbar/notification/collection/coordinator/FavoriteNotifCoordnator;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/notification/collection/coordinator/FavoriteNotifCoordnator;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/collection/coordinator/VisualStabilityCoordinator;Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataStoreImpl;Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifTimeSortCoordnator;Lcom/android/systemui/statusbar/notification/collection/render/NodeController;)V

    return-object v6
.end method


# virtual methods
.method public get()Lcom/android/systemui/statusbar/notification/collection/coordinator/FavoriteNotifCoordnator;
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/FavoriteNotifCoordnator_Factory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/FavoriteNotifCoordnator_Factory;->visualStabilityCoordinatorProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/notification/collection/coordinator/VisualStabilityCoordinator;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/FavoriteNotifCoordnator_Factory;->notifLiveDataStoreImplProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataStoreImpl;

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/FavoriteNotifCoordnator_Factory;->timeSortCoordnatorProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifTimeSortCoordnator;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/FavoriteNotifCoordnator_Factory;->favoriteHeaderControllerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/notification/collection/render/NodeController;

    invoke-static {v0, v1, v2, v3, p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/FavoriteNotifCoordnator_Factory;->newInstance(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/collection/coordinator/VisualStabilityCoordinator;Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataStoreImpl;Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifTimeSortCoordnator;Lcom/android/systemui/statusbar/notification/collection/render/NodeController;)Lcom/android/systemui/statusbar/notification/collection/coordinator/FavoriteNotifCoordnator;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/FavoriteNotifCoordnator_Factory;->get()Lcom/android/systemui/statusbar/notification/collection/coordinator/FavoriteNotifCoordnator;

    move-result-object p0

    return-object p0
.end method
