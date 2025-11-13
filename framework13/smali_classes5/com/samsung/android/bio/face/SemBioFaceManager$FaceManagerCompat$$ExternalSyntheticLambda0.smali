.class public final synthetic Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;

.field public final synthetic blacklist f$1:I


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;

    iput p2, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat$$ExternalSyntheticLambda0;->f$1:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;

    iget v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat$$ExternalSyntheticLambda0;->f$1:I

    invoke-static {v0, v1}, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->lambda$sendAuthError$1(Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;I)V

    return-void
.end method
