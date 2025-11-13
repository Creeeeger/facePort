.class Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat$1;
.super Ljava/lang/Object;
.source "SemBioFaceManager.java"

# interfaces
.implements Landroid/hardware/face/FaceManager$GenerateChallengeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->hPreEnroll()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;)V
    .locals 0
    .param p1, "this$1"    # Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;

    .line 2791
    iput-object p1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat$1;->this$1:Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onGenerateChallengeResult(IIJ)V
    .locals 2
    .param p1, "sensorId"    # I
    .param p2, "userId"    # I
    .param p3, "challenge"    # J

    .line 2794
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat$1;->this$1:Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;

    iget-object v0, v0, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v0, p3, p4}, Lcom/samsung/android/bio/face/SemBioFaceManager;->access$1502(Lcom/samsung/android/bio/face/SemBioFaceManager;J)J

    .line 2795
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat$1;->this$1:Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;

    iget-object v0, v0, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->access$300(Lcom/samsung/android/bio/face/SemBioFaceManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x6d

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2796
    return-void
.end method
