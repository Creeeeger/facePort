.class public final synthetic Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$5$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$5;

.field public final synthetic f$1:[B

.field public final synthetic f$2:Landroid/os/Bundle;

.field public final synthetic f$3:I

.field public final synthetic f$4:I

.field public final synthetic f$5:I


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$5;[BLandroid/os/Bundle;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$5$$ExternalSyntheticLambda4;->f$0:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$5;

    iput-object p2, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$5$$ExternalSyntheticLambda4;->f$1:[B

    iput-object p3, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$5$$ExternalSyntheticLambda4;->f$2:Landroid/os/Bundle;

    iput p4, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$5$$ExternalSyntheticLambda4;->f$3:I

    iput p5, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$5$$ExternalSyntheticLambda4;->f$4:I

    iput p6, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$5$$ExternalSyntheticLambda4;->f$5:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$5$$ExternalSyntheticLambda4;->f$0:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$5;

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$5$$ExternalSyntheticLambda4;->f$1:[B

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$5$$ExternalSyntheticLambda4;->f$2:Landroid/os/Bundle;

    iget v3, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$5$$ExternalSyntheticLambda4;->f$3:I

    iget v4, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$5$$ExternalSyntheticLambda4;->f$4:I

    iget v5, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$5$$ExternalSyntheticLambda4;->f$5:I

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$5;->lambda$onImageProcessed$4$FaceEnrollActivity$5([BLandroid/os/Bundle;III)V

    return-void
.end method
