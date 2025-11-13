.class public final synthetic Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;

    return-void
.end method


# virtual methods
.method public final onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;

    sget v0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->$r8$clinit:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v0, "onSurfaceTextureAvailable : onPrepared"

    const-string v1, "BiometricsRotationGuide"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    goto :goto_0

    :cond_0
    const-string/jumbo p1, "onPrepared : mediaPlayer == null"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->finishRotationGuide(I)V

    :goto_0
    return-void
.end method
