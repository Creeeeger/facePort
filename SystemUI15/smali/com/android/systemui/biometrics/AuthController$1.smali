.class public final Lcom/android/systemui/biometrics/AuthController$1;
.super Landroid/app/TaskStackListener;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/biometrics/AuthController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/biometrics/AuthController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/biometrics/AuthController$1;->this$0:Lcom/android/systemui/biometrics/AuthController;

    invoke-direct {p0}, Landroid/app/TaskStackListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTaskStackChanged()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthController$1;->this$0:Lcom/android/systemui/biometrics/AuthController;

    invoke-virtual {v0}, Lcom/android/systemui/biometrics/AuthController;->isOwnerInBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthController$1;->this$0:Lcom/android/systemui/biometrics/AuthController;

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/biometrics/AuthController$$ExternalSyntheticLambda3;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/biometrics/AuthController$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/biometrics/AuthController;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
