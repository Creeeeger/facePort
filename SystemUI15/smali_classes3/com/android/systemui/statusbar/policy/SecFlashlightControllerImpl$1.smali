.class public final Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/os/PowerManager$OnThermalStatusChangedListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onThermalStatusChanged(I)V
    .locals 3

    const/4 v0, 0x5

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lt p1, v0, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl;->mIsThermalRestricted:Z

    if-ne v0, p1, :cond_1

    goto :goto_1

    :cond_1
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl;->mIsThermalRestricted:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl;->mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    if-eqz p1, :cond_2

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->setFlashlight(Z)V

    :cond_2
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl;->mIsThermalRestricted:Z

    xor-int/2addr p0, v2

    const/4 p1, 0x2

    invoke-virtual {v0, p1, p0}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->dispatchListeners(IZ)V

    :goto_1
    return-void
.end method
