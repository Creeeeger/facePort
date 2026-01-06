.class Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialView$2;
.super Ljava/lang/Object;
.source "KnoxAuthCredentialView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialView;


# direct methods
.method constructor <init>(Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialView$2;->this$0:Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialView$2;->this$0:Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialView;

    iget-object v0, v0, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialView;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->isKnoxProfile()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialView$2;->this$0:Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialView;

    iget-object v0, v0, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialView;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->getKnoxSysUiClientHelper()Lcom/samsung/android/biometrics/app/setting/knox/KnoxSysUiClientHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialView$2;->this$0:Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialView;

    iget-object v1, v1, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialView;->mErrorView:Landroid/widget/TextView;

    invoke-interface {v0, v1}, Lcom/samsung/android/biometrics/app/setting/knox/KnoxSysUiClientHelper;->setDetailText(Landroid/widget/TextView;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialView$2;->this$0:Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialView;

    iget-object v0, v0, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialView;->mErrorView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
