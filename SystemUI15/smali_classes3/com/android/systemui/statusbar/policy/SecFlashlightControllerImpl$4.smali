.class public final Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl$4;
.super Landroid/hardware/camera2/CameraManager$SemCameraDeviceStateCallback;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl$4;->this$0:Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$SemCameraDeviceStateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCameraDeviceStateChanged(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0

    const/4 p1, 0x1

    if-ne p3, p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl$4;->this$0:Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl;

    iput-object p4, p0, Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl;->mClientName:Ljava/lang/String;

    :cond_0
    return-void
.end method
