.class public final Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationVideoView$1$2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/media/MediaPlayer$OnInfoListener;


# instance fields
.field public final synthetic this$1:Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationVideoView$1;


# direct methods
.method public constructor <init>(Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationVideoView$1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationVideoView$1$2;->this$1:Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationVideoView$1;

    return-void
.end method


# virtual methods
.method public final onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 0

    const/4 p1, 0x3

    const/4 p3, 0x0

    if-ne p2, p1, :cond_0

    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationVideoView$1$2;->this$1:Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationVideoView$1;

    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationVideoView$1;->this$0:Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationVideoView;

    invoke-virtual {p0, p3}, Landroid/view/TextureView;->setVisibility(I)V

    :cond_0
    return p3
.end method
