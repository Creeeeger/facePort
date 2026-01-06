.class public final synthetic Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/SoundPool$OnLoadCompleteListener;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:F


# direct methods
.method public synthetic constructor <init>(IF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$$ExternalSyntheticLambda3;->f$0:I

    iput p2, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$$ExternalSyntheticLambda3;->f$1:F

    return-void
.end method


# virtual methods
.method public final onLoadComplete(Landroid/media/SoundPool;II)V
    .locals 2

    iget v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$$ExternalSyntheticLambda3;->f$0:I

    iget v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$$ExternalSyntheticLambda3;->f$1:F

    invoke-static {v0, v1, p1, p2, p3}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->lambda$playSuccessSound$4(IFLandroid/media/SoundPool;II)V

    return-void
.end method
