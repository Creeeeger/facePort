.class public final Lcom/samsung/android/biometrics/app/setting/prompt/knox/WorkProfileSysUiClientHelper$2;
.super Ljava/lang/Object;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/biometrics/app/setting/prompt/knox/WorkProfileSysUiClientHelper;

.field public final synthetic val$dismiss:Z


# direct methods
.method public constructor <init>(Lcom/samsung/android/biometrics/app/setting/prompt/knox/WorkProfileSysUiClientHelper;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/WorkProfileSysUiClientHelper$2;->this$0:Lcom/samsung/android/biometrics/app/setting/prompt/knox/WorkProfileSysUiClientHelper;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/WorkProfileSysUiClientHelper$2;->val$dismiss:Z

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    iget-boolean p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/WorkProfileSysUiClientHelper$2;->val$dismiss:Z

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/WorkProfileSysUiClientHelper$2;->this$0:Lcom/samsung/android/biometrics/app/setting/prompt/knox/WorkProfileSysUiClientHelper;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/WorkProfileSysUiClientHelper;->mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mCallback:Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptCallback;

    .line 10
    .line 11
    const/4 p1, 0x3

    .line 12
    invoke-interface {p0, p1}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptCallback;->onUserCancel(I)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method
