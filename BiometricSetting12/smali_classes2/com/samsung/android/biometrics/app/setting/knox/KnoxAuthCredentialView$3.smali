.class Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialView$3;
.super Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialView$ErrorTimer;
.source "KnoxAuthCredentialView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialView;->onCredentialVerified(Lcom/android/internal/widget/VerifyCredentialResponse;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialView;


# direct methods
.method constructor <init>(Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialView;Landroid/content/Context;JJLandroid/widget/TextView;)V
    .locals 7

    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialView$3;->this$0:Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialView;

    move-object v0, p0

    move-object v1, p2

    move-wide v2, p3

    move-wide v4, p5

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialView$ErrorTimer;-><init>(Landroid/content/Context;JJLandroid/widget/TextView;)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialView$3;->this$0:Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialView;

    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialView;->onErrorTimeoutFinish()V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialView$3;->this$0:Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialView;

    iget-object v0, v0, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialView;->mClearErrorRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public onTick(J)V
    .locals 4

    const-wide/16 v0, 0x3e8

    div-long v0, p1, v0

    long-to-int v0, v0

    div-int/lit8 v1, v0, 0x3c

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialView$3;->this$0:Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialView;

    iget-object v2, v2, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialView;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-virtual {v2}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->getKnoxSysUiClientHelper()Lcom/samsung/android/biometrics/app/setting/knox/KnoxSysUiClientHelper;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialView$3;->this$0:Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialView;

    iget-object v3, v3, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialView;->mErrorView:Landroid/widget/TextView;

    invoke-interface {v2, v3, v0, v1}, Lcom/samsung/android/biometrics/app/setting/knox/KnoxSysUiClientHelper;->setErrorTimerText(Landroid/widget/TextView;II)V

    return-void
.end method
