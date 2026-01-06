.class Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$21;
.super Ljava/lang/Object;
.source "FingerprintEnrollActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$21;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 4

    const-string v0, "BSS_FingerprintEnrollActivity"

    const-string v1, "onSurfaceTextureAvailable : onPrepared"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$21;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;

    invoke-static {v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->access$100(Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;)Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$EnrollState;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$EnrollState;->ENROLL:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$EnrollState;

    if-ne v1, v2, :cond_1

    const-string v1, "onPrepared : MediaPlayer.stop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$21;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->access$6500(Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$21;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->access$6500(Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$21;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->access$6500(Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$21;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->access$6502(Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    :cond_0
    return-void

    :cond_1
    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$21;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->access$6600(Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;II)V

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$21;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->access$4000(Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$21;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->access$5300(Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$21$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$21$1;-><init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$21;)V

    invoke-static {}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->access$7000()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return-void

    :cond_3
    const-string v1, "onPrepared : mediaPlayer == null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$21;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->setResult(I)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$21;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;

    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->finish()V

    return-void
.end method
