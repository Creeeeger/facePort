.class public final synthetic Lcom/samsung/android/biometrics/app/setting/face/FaceGuideFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/biometrics/app/setting/face/FaceGuideFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/biometrics/app/setting/face/FaceGuideFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceGuideFragment$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/biometrics/app/setting/face/FaceGuideFragment;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceGuideFragment$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/biometrics/app/setting/face/FaceGuideFragment;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const-string v0, "setOnPreparedListener"

    .line 7
    .line 8
    const-string v1, "BSS_FaceGuideFragment"

    .line 9
    .line 10
    invoke-static {v1, v0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/biometrics/app/setting/face/FaceGuideFragment;->adjustTextureViewRatio(II)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const-string p0, "setOnPreparedListener : mediaPlayer == null"

    .line 31
    .line 32
    invoke-static {v1, p0}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    :goto_0
    return-void
.end method
