.class public final Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialView$2;
.super Ljava/lang/Object;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialView$2;->this$0:Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialView$2;->this$0:Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialView;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialView;->mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->isKnoxProfile()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialView$2;->this$0:Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialView;

    .line 12
    .line 13
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialView;->mKnoxClientHelper:Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxSysUiClientHelper;

    .line 14
    .line 15
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialView;->mErrorView:Landroid/widget/TextView;

    .line 16
    .line 17
    invoke-interface {v0, p0}, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxSysUiClientHelper;->setDetailText(Landroid/widget/TextView;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialView$2;->this$0:Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialView;

    .line 22
    .line 23
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialView;->mErrorView:Landroid/widget/TextView;

    .line 24
    .line 25
    const-string v0, ""

    .line 26
    .line 27
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method
