.class public final Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor_Factory;
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

.field private final deviceControllerProvider:Ljavax/inject/Provider;
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

    iput-object p1, p0, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor_Factory;->contextProvider:Ljavax/inject/Provider;

    iput-object p2, p0, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor_Factory;->deviceControllerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            ")",
            "Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor_Factory;"
        }
    .end annotation

    new-instance v0, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor_Factory;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Landroid/content/Context;Lcom/android/systemui/bixby2/controller/DeviceController;)Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor;
    .locals 1

    new-instance v0, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor;-><init>(Landroid/content/Context;Lcom/android/systemui/bixby2/controller/DeviceController;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor_Factory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object p0, p0, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor_Factory;->deviceControllerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/bixby2/controller/DeviceController;

    invoke-static {v0, p0}, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor_Factory;->newInstance(Landroid/content/Context;Lcom/android/systemui/bixby2/controller/DeviceController;)Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor_Factory;->get()Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor;

    move-result-object p0

    return-object p0
.end method
