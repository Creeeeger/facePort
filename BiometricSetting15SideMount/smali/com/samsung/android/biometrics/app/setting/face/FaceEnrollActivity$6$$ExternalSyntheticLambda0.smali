.class public final synthetic Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$6$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$6;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$6;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$6$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$6$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$6;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$6$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$6$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$6;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$6;->this$0:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;

    .line 9
    .line 10
    iget-boolean v1, v0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mIsPreviewStart:Z

    .line 11
    .line 12
    if-nez v1, :cond_2

    .line 13
    .line 14
    iget-object v0, v0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mEnrollAnimationView:Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    iget-boolean v2, v0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mIsPreviewMask:Z

    .line 20
    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    iput-boolean v1, v0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mIsPreviewStarting:Z

    .line 24
    .line 25
    iget v2, v0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mState:I

    .line 26
    .line 27
    if-eq v2, v1, :cond_0

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    iput-boolean v2, v0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mIsPreviewMask:Z

    .line 31
    .line 32
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 33
    .line 34
    .line 35
    move-result-wide v2

    .line 36
    iput-wide v2, v0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mPreviewMaskTimestamp:J

    .line 37
    .line 38
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 39
    .line 40
    .line 41
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$6;->this$0:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;

    .line 42
    .line 43
    iput-boolean v1, v0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mIsPreviewStart:Z

    .line 44
    .line 45
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$6;->this$0:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;

    .line 46
    .line 47
    iget-object v1, v0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mCameraPreview:Landroid/widget/ImageView;

    .line 48
    .line 49
    iget-object v0, v0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mPreviewImage:Landroid/graphics/Bitmap;

    .line 50
    .line 51
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 52
    .line 53
    .line 54
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$6;->this$0:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;

    .line 55
    .line 56
    const/4 v0, 0x0

    .line 57
    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mPreviewImage:Landroid/graphics/Bitmap;

    .line 58
    .line 59
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 60
    .line 61
    .line 62
    move-result-wide v0

    .line 63
    iput-wide v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mLastDecodingTimestamp:J

    .line 64
    .line 65
    return-void

    .line 66
    :pswitch_0
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$6;->this$0:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;

    .line 67
    .line 68
    const/4 v0, -0x1

    .line 69
    invoke-virtual {p0, v0}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->setEnrollResult(I)V

    .line 70
    .line 71
    .line 72
    return-void

    .line 73
    :pswitch_1
    const/16 v0, 0x7d1

    .line 74
    .line 75
    const-string v1, ""

    .line 76
    .line 77
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/bio/face/SemBioFaceManager$EnrollmentCallback;->onEnrollmentHelp(ILjava/lang/CharSequence;)V

    .line 78
    .line 79
    .line 80
    return-void

    .line 81
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
