.class public final synthetic Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"

# interfaces
.implements Landroid/media/SoundPool$OnLoadCompleteListener;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:F


# direct methods
.method public synthetic constructor <init>(IF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$$ExternalSyntheticLambda4;->f$0:I

    .line 5
    .line 6
    iput p2, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$$ExternalSyntheticLambda4;->f$1:F

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onLoadComplete(Landroid/media/SoundPool;II)V
    .locals 7

    .line 1
    iget v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$$ExternalSyntheticLambda4;->f$0:I

    .line 2
    .line 3
    iget v3, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$$ExternalSyntheticLambda4;->f$1:F

    .line 4
    .line 5
    sget p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->$r8$clinit:I

    .line 6
    .line 7
    const/4 v4, 0x0

    .line 8
    const/4 v5, 0x0

    .line 9
    const/high16 v6, 0x3f800000    # 1.0f

    .line 10
    .line 11
    move-object v0, p1

    .line 12
    move v2, v3

    .line 13
    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 14
    .line 15
    .line 16
    return-void
.end method
