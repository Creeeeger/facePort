.class public final Lcom/android/systemui/statusbar/notification/collection/coordinator/dagger/CoordinatorsModule_NotifCoordinatorsFactory;
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
.field private final factoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/dagger/CoordinatorsModule_NotifCoordinatorsFactory;->factoryProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/collection/coordinator/dagger/CoordinatorsModule_NotifCoordinatorsFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider;",
            ")",
            "Lcom/android/systemui/statusbar/notification/collection/coordinator/dagger/CoordinatorsModule_NotifCoordinatorsFactory;"
        }
    .end annotation

    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/dagger/CoordinatorsModule_NotifCoordinatorsFactory;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/dagger/CoordinatorsModule_NotifCoordinatorsFactory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static notifCoordinators(Lcom/android/systemui/statusbar/notification/collection/coordinator/dagger/CoordinatorsSubcomponent$Factory;)Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifCoordinators;
    .locals 0

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/dagger/CoordinatorsModule;->notifCoordinators(Lcom/android/systemui/statusbar/notification/collection/coordinator/dagger/CoordinatorsSubcomponent$Factory;)Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifCoordinators;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    return-object p0
.end method


# virtual methods
.method public get()Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifCoordinators;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/dagger/CoordinatorsModule_NotifCoordinatorsFactory;->factoryProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/dagger/CoordinatorsSubcomponent$Factory;

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/dagger/CoordinatorsModule_NotifCoordinatorsFactory;->notifCoordinators(Lcom/android/systemui/statusbar/notification/collection/coordinator/dagger/CoordinatorsSubcomponent$Factory;)Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifCoordinators;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/dagger/CoordinatorsModule_NotifCoordinatorsFactory;->get()Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifCoordinators;

    move-result-object p0

    return-object p0
.end method
