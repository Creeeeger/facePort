.class Lcom/samsung/android/bio/face/SemBioFaceManager$OnEnrollCancelListener;
.super Ljava/lang/Object;
.source "SemBioFaceManager.java"

# interfaces
.implements Landroid/os/CancellationSignal$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/bio/face/SemBioFaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnEnrollCancelListener"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;


# direct methods
.method private constructor blacklist <init>(Lcom/samsung/android/bio/face/SemBioFaceManager;)V
    .locals 0

    .line 456
    iput-object p1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$OnEnrollCancelListener;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/samsung/android/bio/face/SemBioFaceManager;Lcom/samsung/android/bio/face/SemBioFaceManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/bio/face/SemBioFaceManager;
    .param p2, "x1"    # Lcom/samsung/android/bio/face/SemBioFaceManager$1;

    .line 456
    invoke-direct {p0, p1}, Lcom/samsung/android/bio/face/SemBioFaceManager$OnEnrollCancelListener;-><init>(Lcom/samsung/android/bio/face/SemBioFaceManager;)V

    return-void
.end method


# virtual methods
.method public whitelist onCancel()V
    .locals 1

    .line 460
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$OnEnrollCancelListener;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->access$400(Lcom/samsung/android/bio/face/SemBioFaceManager;)Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->access$500(Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 461
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$OnEnrollCancelListener;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->access$400(Lcom/samsung/android/bio/face/SemBioFaceManager;)Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->halCancelEnrollment()V

    goto :goto_0

    .line 463
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$OnEnrollCancelListener;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->access$600(Lcom/samsung/android/bio/face/SemBioFaceManager;)V

    .line 465
    :goto_0
    return-void
.end method
