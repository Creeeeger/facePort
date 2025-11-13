.class public final Lcom/android/settings/biometrics/face/FaceEnrollAnimationDrawable$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settings/biometrics/face/ParticleCollection$Listener;


# instance fields
.field public final synthetic this$0:Lcom/android/settings/biometrics/face/FaceEnrollAnimationDrawable;


# direct methods
.method public constructor <init>(Lcom/android/settings/biometrics/face/FaceEnrollAnimationDrawable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/biometrics/face/FaceEnrollAnimationDrawable$1;->this$0:Lcom/android/settings/biometrics/face/FaceEnrollAnimationDrawable;

    return-void
.end method


# virtual methods
.method public final onEnrolled()V
    .locals 1

    iget-object p0, p0, Lcom/android/settings/biometrics/face/FaceEnrollAnimationDrawable$1;->this$0:Lcom/android/settings/biometrics/face/FaceEnrollAnimationDrawable;

    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollAnimationDrawable;->mTimeAnimator:Landroid/animation/TimeAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/TimeAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollAnimationDrawable;->mTimeAnimator:Landroid/animation/TimeAnimator;

    invoke-virtual {v0}, Landroid/animation/TimeAnimator;->end()V

    iget-object p0, p0, Lcom/android/settings/biometrics/face/FaceEnrollAnimationDrawable;->mListener:Lcom/android/settings/biometrics/face/ParticleCollection$Listener;

    invoke-interface {p0}, Lcom/android/settings/biometrics/face/ParticleCollection$Listener;->onEnrolled()V

    :cond_0
    return-void
.end method
