.class Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$21$1;
.super Ljava/lang/Object;
.source "FingerprintEnrollActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$21;->onPrepared(Landroid/media/MediaPlayer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$21;


# direct methods
.method constructor <init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$21;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$21$1;->this$1:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$21;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$21$1;->this$1:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$21;

    iget-object v0, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$21;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->access$6700(Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$21$1;->this$1:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$21;

    iget-object v0, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$21;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->access$100(Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;)Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$EnrollState;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$EnrollState;->NONE:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$EnrollState;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$21$1;->this$1:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$21;

    iget-object v0, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$21;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->access$6800(Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$21$1;->this$1:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$21;

    iget-object v0, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$21;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->access$6900(Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$21$1;->this$1:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$21;

    iget-object v0, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$21;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->access$100(Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;)Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$EnrollState;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$EnrollState;->PAUSE:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$EnrollState;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$21$1;->this$1:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$21;

    iget-object v0, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$21;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->access$2300(Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$21$1;->this$1:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$21;

    iget-object v0, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$21;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;

    sget-object v1, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$EnrollState;->ENROLL:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$EnrollState;

    invoke-static {v0, v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->access$102(Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$EnrollState;)Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$EnrollState;

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$21$1;->this$1:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$21;

    iget-object v0, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$21;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->access$2300(Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->semResumeEnroll()Z

    :cond_2
    :goto_0
    return-void
.end method
