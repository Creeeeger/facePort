.class Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialView$3;
.super Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialView$ErrorTimer;
.source "AuthCredentialView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialView;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialView;


# direct methods
.method constructor <init>(Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialView;Landroid/content/Context;JJLandroid/widget/TextView;)V
    .locals 7

    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialView$3;->this$0:Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialView;

    move-object v0, p0

    move-object v1, p2

    move-wide v2, p3

    move-wide v4, p5

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialView$ErrorTimer;-><init>(Landroid/content/Context;JJLandroid/widget/TextView;)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialView$3;->this$0:Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialView;

    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialView;->onErrorTimeoutFinish()V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialView$3;->this$0:Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialView;

    iget-object v0, v0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialView;->mClearErrorRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
