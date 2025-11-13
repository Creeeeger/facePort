.class public final Lcom/android/systemui/biometrics/AuthController$4;
.super Landroid/hardware/biometrics/BiometricStateListener;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/biometrics/AuthController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/biometrics/AuthController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/biometrics/AuthController$4;->this$0:Lcom/android/systemui/biometrics/AuthController;

    invoke-direct {p0}, Landroid/hardware/biometrics/BiometricStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEnrollmentsChanged(IIZ)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthController$4;->this$0:Lcom/android/systemui/biometrics/AuthController;

    iget-object v0, v0, Lcom/android/systemui/biometrics/AuthController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/biometrics/AuthController$4$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/systemui/biometrics/AuthController$4$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/biometrics/AuthController$4;IIZ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
