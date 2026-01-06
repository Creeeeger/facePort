.class Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$LiftFingerMessage;
.super Ljava/lang/Thread;
.source "FingerprintEnrollActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LiftFingerMessage"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$LiftFingerMessage;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-wide/16 v0, 0x5dc

    :try_start_0
    invoke-static {v0, v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$LiftFingerMessage;->sleep(J)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$LiftFingerMessage;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;

    new-instance v1, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$LiftFingerMessage$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$LiftFingerMessage$1;-><init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$LiftFingerMessage;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$LiftFingerMessage;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;

    invoke-static {v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->access$1000(Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;)Z

    move-result v1

    const-string v2, "BSS_FingerprintEnrollActivity"

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$LiftFingerMessage;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;

    invoke-static {v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->access$1100(Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "LiftFingerMessage : Interrupted after start"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$LiftFingerMessage;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;

    new-instance v2, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$LiftFingerMessage;

    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$LiftFingerMessage;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;

    invoke-direct {v2, v3}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$LiftFingerMessage;-><init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;)V

    invoke-static {v1, v2}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->access$1202(Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$LiftFingerMessage;)Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$LiftFingerMessage;

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$LiftFingerMessage;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;

    invoke-static {v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->access$1200(Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;)Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$LiftFingerMessage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$LiftFingerMessage;->start()V

    goto :goto_0

    :cond_0
    const-string v1, "LiftFingerMessage : Interrupted "

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
