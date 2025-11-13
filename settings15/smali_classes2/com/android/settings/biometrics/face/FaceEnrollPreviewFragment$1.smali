.class public final Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settings/biometrics/face/ParticleCollection$Listener;


# instance fields
.field public final synthetic this$0:Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;


# direct methods
.method public constructor <init>(Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment$1;->this$0:Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;

    return-void
.end method


# virtual methods
.method public final onEnrolled()V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment$1;->this$0:Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;

    iget-object p0, p0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->mListener:Lcom/android/settings/biometrics/face/ParticleCollection$Listener;

    invoke-interface {p0}, Lcom/android/settings/biometrics/face/ParticleCollection$Listener;->onEnrolled()V

    return-void
.end method
