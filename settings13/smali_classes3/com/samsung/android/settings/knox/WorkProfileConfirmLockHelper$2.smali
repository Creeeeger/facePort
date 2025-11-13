.class Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper$2;
.super Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;
.source "WorkProfileConfirmLockHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->showBiometricPrompt(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method public static synthetic $r8$lambda$G95dRj5W7rS_qpEjM6tjux2wmWw(Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper$2;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper$2;->lambda$onAuthenticationFailed$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$P49nzmfM5q3ZfElNH0kKHnc7jFA(Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper$2;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper$2;->lambda$onAuthenticationSucceeded$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$g8TxYbBTkg8wIascJ9JeixtOTqw(Landroid/app/Activity;)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper$2;->lambda$onAuthenticationError$0(Landroid/app/Activity;)V

    return-void
.end method

.method constructor <init>(Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;Landroid/app/Activity;)V
    .locals 0

    .line 1313
    iput-object p1, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper$2;->this$0:Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;

    iput-object p2, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper$2;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;-><init>()V

    return-void
.end method

.method private static synthetic lambda$onAuthenticationError$0(Landroid/app/Activity;)V
    .locals 1

    const/4 v0, 0x0

    .line 1318
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 1319
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private synthetic lambda$onAuthenticationFailed$2()V
    .locals 1

    .line 1333
    iget-object v0, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper$2;->this$0:Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;

    invoke-static {v0}, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->-$$Nest$fgetmDevicePolicyManager(Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;)Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper$2;->this$0:Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;

    invoke-static {p0}, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->-$$Nest$fgetmUserId(Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/app/admin/DevicePolicyManager;->reportFailedBiometricAttempt(I)V

    return-void
.end method

.method private synthetic lambda$onAuthenticationSucceeded$1()V
    .locals 0

    .line 1326
    iget-object p0, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper$2;->this$0:Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;

    invoke-static {p0}, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->-$$Nest$fgetmCallback(Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;)Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper$Callback;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper$Callback;->enableConfirmCredentialCallback()V

    return-void
.end method


# virtual methods
.method public onAuthenticationError(ILjava/lang/CharSequence;)V
    .locals 2

    .line 1316
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAuthenticationError error = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", message = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "KKG::WorkProfileConfirmLockHelper"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1317
    iget-object p1, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper$2;->this$0:Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;

    invoke-static {p1}, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->-$$Nest$fgetmClientExecutor(Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;)Ljava/util/concurrent/Executor;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper$2;->val$activity:Landroid/app/Activity;

    new-instance p2, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper$2$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper$2$$ExternalSyntheticLambda0;-><init>(Landroid/app/Activity;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAuthenticationFailed()V
    .locals 2

    .line 1332
    iget-object v0, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper$2;->this$0:Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;

    invoke-static {v0}, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->-$$Nest$fgetmClientExecutor(Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper$2$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper$2$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper$2;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAuthenticationSucceeded(Landroid/hardware/biometrics/BiometricPrompt$AuthenticationResult;)V
    .locals 1

    .line 1325
    iget-object p1, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper$2;->this$0:Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;

    invoke-static {p1}, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->-$$Nest$fgetmClientExecutor(Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;)Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper$2$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper$2$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper$2;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSystemEvent(I)V
    .locals 1

    .line 1339
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SystemEvent: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "KKG::WorkProfileConfirmLockHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
