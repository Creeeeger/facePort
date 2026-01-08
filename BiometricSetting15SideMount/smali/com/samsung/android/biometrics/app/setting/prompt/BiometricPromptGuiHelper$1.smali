.class public final Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper$1;
.super Ljava/lang/Object;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field public downPressed:Z

.field public final synthetic this$0:Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;


# direct methods
.method public constructor <init>(Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper$1;->this$0:Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper$1;->downPressed:Z

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    const/4 p1, 0x4

    .line 2
    const/4 v0, 0x0

    .line 3
    if-eq p2, p1, :cond_0

    .line 4
    .line 5
    return v0

    .line 6
    :cond_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    const/4 p2, 0x1

    .line 11
    if-nez p1, :cond_1

    .line 12
    .line 13
    iget-boolean p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper$1;->downPressed:Z

    .line 14
    .line 15
    if-nez p1, :cond_1

    .line 16
    .line 17
    iput-boolean p2, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper$1;->downPressed:Z

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-nez p1, :cond_2

    .line 25
    .line 26
    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper$1;->downPressed:Z

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-ne p1, p2, :cond_3

    .line 34
    .line 35
    iget-boolean p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper$1;->downPressed:Z

    .line 36
    .line 37
    if-eqz p1, :cond_3

    .line 38
    .line 39
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper$1;->this$0:Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;

    .line 40
    .line 41
    iget-object p1, p1, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->TAG:Ljava/lang/String;

    .line 42
    .line 43
    const-string p3, "Handle Back Key"

    .line 44
    .line 45
    invoke-static {p1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper$1;->downPressed:Z

    .line 49
    .line 50
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper$1;->this$0:Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;

    .line 51
    .line 52
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

    .line 53
    .line 54
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mCallback:Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptCallback;

    .line 55
    .line 56
    const/4 p1, 0x2

    .line 57
    invoke-interface {p0, p1}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptCallback;->onUserCancel(I)V

    .line 58
    .line 59
    .line 60
    :cond_3
    :goto_0
    return p2
.end method
