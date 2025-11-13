.class public final Lcom/android/systemui/shade/CameraLauncher;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mCameraGestureHelper:Lcom/android/systemui/camera/CameraGestureHelper;

.field public final mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/camera/CameraGestureHelper;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/shade/CameraLauncher;->mCameraGestureHelper:Lcom/android/systemui/camera/CameraGestureHelper;

    iput-object p2, p0, Lcom/android/systemui/shade/CameraLauncher;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    return-void
.end method


# virtual methods
.method public final launchCamera(IZ)V
    .locals 1

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/android/systemui/shade/CameraLauncher;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    const/4 v0, 0x1

    iput-boolean v0, p2, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->launchingAffordance:Z

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/shade/CameraLauncher;->mCameraGestureHelper:Lcom/android/systemui/camera/CameraGestureHelper;

    invoke-virtual {p0, p1}, Lcom/android/systemui/camera/CameraGestureHelper;->launchCamera(I)V

    return-void
.end method
