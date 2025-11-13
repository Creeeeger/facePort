.class public final Lcom/android/systemui/bixby2/controller/DeviceController_Factory;
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

.field private final flashlightControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider;"
        }
    .end annotation
.end field

.field private final rotationLockControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/bixby2/controller/DeviceController_Factory;->contextProvider:Ljavax/inject/Provider;

    iput-object p2, p0, Lcom/android/systemui/bixby2/controller/DeviceController_Factory;->flashlightControllerProvider:Ljavax/inject/Provider;

    iput-object p3, p0, Lcom/android/systemui/bixby2/controller/DeviceController_Factory;->rotationLockControllerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/bixby2/controller/DeviceController_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            ")",
            "Lcom/android/systemui/bixby2/controller/DeviceController_Factory;"
        }
    .end annotation

    new-instance v0, Lcom/android/systemui/bixby2/controller/DeviceController_Factory;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/bixby2/controller/DeviceController_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/FlashlightController;Lcom/android/systemui/statusbar/policy/RotationLockController;)Lcom/android/systemui/bixby2/controller/DeviceController;
    .locals 1

    new-instance v0, Lcom/android/systemui/bixby2/controller/DeviceController;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/bixby2/controller/DeviceController;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/FlashlightController;Lcom/android/systemui/statusbar/policy/RotationLockController;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/systemui/bixby2/controller/DeviceController;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/bixby2/controller/DeviceController_Factory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/bixby2/controller/DeviceController_Factory;->flashlightControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/FlashlightController;

    iget-object p0, p0, Lcom/android/systemui/bixby2/controller/DeviceController_Factory;->rotationLockControllerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/policy/RotationLockController;

    invoke-static {v0, v1, p0}, Lcom/android/systemui/bixby2/controller/DeviceController_Factory;->newInstance(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/FlashlightController;Lcom/android/systemui/statusbar/policy/RotationLockController;)Lcom/android/systemui/bixby2/controller/DeviceController;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/bixby2/controller/DeviceController_Factory;->get()Lcom/android/systemui/bixby2/controller/DeviceController;

    move-result-object p0

    return-object p0
.end method
