.class public final Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor_Factory;
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

.field private final notificationControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor_Factory;->contextProvider:Ljavax/inject/Provider;

    iput-object p2, p0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor_Factory;->notificationControllerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            ")",
            "Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor_Factory;"
        }
    .end annotation

    new-instance v0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor_Factory;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Landroid/content/Context;Lcom/android/systemui/bixby2/controller/NotificationController;)Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor;
    .locals 1

    new-instance v0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor;-><init>(Landroid/content/Context;Lcom/android/systemui/bixby2/controller/NotificationController;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor_Factory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object p0, p0, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor_Factory;->notificationControllerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/bixby2/controller/NotificationController;

    invoke-static {v0, p0}, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor_Factory;->newInstance(Landroid/content/Context;Lcom/android/systemui/bixby2/controller/NotificationController;)Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor_Factory;->get()Lcom/android/systemui/bixby2/interactor/NotificationControlActionInteractor;

    move-result-object p0

    return-object p0
.end method
