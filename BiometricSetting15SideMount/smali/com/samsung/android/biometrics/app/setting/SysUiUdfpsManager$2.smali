.class public final Lcom/samsung/android/biometrics/app/setting/SysUiUdfpsManager$2;
.super Ljava/lang/Object;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"

# interfaces
.implements Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsWindowCallback;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/biometrics/app/setting/SysUiUdfpsManager;

.field public final synthetic val$promptClient:Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptClient;


# direct methods
.method public constructor <init>(Lcom/samsung/android/biometrics/app/setting/SysUiUdfpsManager;Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptClient;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/SysUiUdfpsManager$2;->this$0:Lcom/samsung/android/biometrics/app/setting/SysUiUdfpsManager;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/samsung/android/biometrics/app/setting/SysUiUdfpsManager$2;->val$promptClient:Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptClient;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onSensorIconVisibilityChanged(I)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiUdfpsManager$2;->this$0:Lcom/samsung/android/biometrics/app/setting/SysUiUdfpsManager;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiUdfpsManager;->mUdfpsIconNotifier:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsIconVisibilityNotifier;

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p1, 0x0

    .line 10
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-static {}, Lcom/samsung/android/biometrics/app/setting/BackgroundThread;->get()Lcom/samsung/android/biometrics/app/setting/BackgroundThread;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    sget-object v0, Lcom/samsung/android/biometrics/app/setting/BackgroundThread;->sHandler:Landroid/os/Handler;

    .line 21
    .line 22
    new-instance v1, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsIconVisibilityNotifier$$ExternalSyntheticLambda0;

    .line 23
    .line 24
    invoke-direct {v1, p0, p1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsIconVisibilityNotifier$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsIconVisibilityNotifier;Z)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final onUserCancel(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiUdfpsManager$2;->val$promptClient:Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptClient;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptClient;->onUserCancel(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
