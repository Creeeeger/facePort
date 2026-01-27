.class public Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$Pose;
    }
.end annotation


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mAttachStateChangeListener:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$2;

.field public final mBackHandler:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$1;

.field public mCameraPreview:Landroid/widget/ImageView;

.field public mCancellationSignal:Landroid/os/CancellationSignal;

.field public mChallenge:J

.field public mCurrentIsFolded:Z

.field public mEnrollAnimationView:Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;

.field public mEnrollFragment:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollFragment;

.field public mEnrollPaused:Z

.field public final mEnrollmentCallback:Lcom/samsung/android/bio/face/SemBioFaceManager$EnrollmentCallback;

.field public mErrorDialog:Landroid/app/AlertDialog;

.field public mExitToast:Landroid/widget/Toast;

.field public mFaceGuideText:Landroid/widget/TextView;

.field public mFaceHelpGuideText:Landroid/widget/TextView;

.field public mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

.field public mFaceProgressText:Landroid/widget/TextView;

.field public mFoldStateListener:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$7;

.field public mGkPwHandle:J

.field public mGlassesOffVi:Lcom/airbnb/lottie/LottieAnimationView;

.field public mGuideContinueBtn:Landroid/widget/Button;

.field public mHWToken:[B

.field public mIsBackSecond:Z

.field public mIsChallengeCreated:Z

.field public mIsEnrolling:Z

.field public mIsFaceManagerBinded:Z

.field public mIsGlassGuideShown:Z

.field public mIsHelpEnabled:Z

.field public mIsPreviewStart:Z

.field public mIsSetupWizard:Z

.field public mIsSpokenPositionCorrect:Z

.field public final mIsSupportDualDisplay:Z

.field public mIsTalkbackEnabled:Z

.field public mIsUSA:Z

.field public mIsWearingGlasses:Z

.field public mLastDecodingTimestamp:J

.field public mMainLayout:Landroid/widget/RelativeLayout;

.field public mPercent:I

.field public final mPoseGuideShown:[Z

.field public mPoseGuideVi:Lcom/airbnb/lottie/LottieAnimationView;

.field public mPreviewCBHandler:Landroid/os/Handler;

.field public mPreviewCBThread:Landroid/os/HandlerThread;

.field public mPreviewData:[B

.field public mPreviewHandler:Landroid/os/Handler;

.field public mPreviewImage:Landroid/graphics/Bitmap;

.field public mSecuredKnoxLogoView:Landroid/view/View;

.field public mSensorId:I

.field public mSetupWizardButtonLayout:Landroid/view/View;

.field public mSharedPreferences:Landroid/content/SharedPreferences;

.field public mShowPoseGuideTimer:Landroid/os/CountDownTimer;

.field public mSoundPool:Landroid/media/SoundPool;

.field public mTextureView:Landroid/view/View;

.field public mTts:Landroid/speech/tts/TextToSpeech;

.field public mUserId:I


# direct methods
.method public static -$$Nest$mshowPoseGuide(Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$Pose;ZZ)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    const-string v1, "showPoseGuide : "

    .line 7
    .line 8
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v1, " , bRecognized : "

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const-string v1, "BSS_FaceEnrollActivity"

    .line 27
    .line 28
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mPoseGuideVi:Lcom/airbnb/lottie/LottieAnimationView;

    .line 32
    .line 33
    if-nez v0, :cond_0

    .line 34
    .line 35
    goto/16 :goto_2

    .line 36
    .line 37
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mPoseGuideShown:[Z

    .line 42
    .line 43
    const/4 v2, 0x0

    .line 44
    if-eqz p2, :cond_1

    .line 45
    .line 46
    const p1, 0x7f10007b

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {p0, p1}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->startHelpGuideEffect(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mPoseGuideVi:Lcom/airbnb/lottie/LottieAnimationView;

    .line 57
    .line 58
    const/4 p2, 0x4

    .line 59
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 60
    .line 61
    .line 62
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mEnrollAnimationView:Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;

    .line 63
    .line 64
    iput-boolean v2, p1, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mIsBlurMask:Z

    .line 65
    .line 66
    invoke-virtual {p1}, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->startScanEffect()V

    .line 67
    .line 68
    .line 69
    aput-boolean v2, v1, v0

    .line 70
    .line 71
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mPoseGuideVi:Lcom/airbnb/lottie/LottieAnimationView;

    .line 72
    .line 73
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->removeAllAnimatorListeners()V

    .line 74
    .line 75
    .line 76
    goto :goto_2

    .line 77
    :cond_1
    aget-boolean p2, v1, v0

    .line 78
    .line 79
    if-nez p2, :cond_6

    .line 80
    .line 81
    const/4 p2, 0x1

    .line 82
    if-eqz p3, :cond_2

    .line 83
    .line 84
    const/16 v3, 0x7f

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_2
    move v3, p2

    .line 88
    :goto_0
    invoke-static {p0, v3}, Lcom/samsung/android/biometrics/app/setting/Utils;->playVibration(Landroid/content/Context;I)V

    .line 89
    .line 90
    .line 91
    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mEnrollAnimationView:Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;

    .line 92
    .line 93
    iput-boolean p2, v3, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->mIsBlurMask:Z

    .line 94
    .line 95
    invoke-virtual {v3}, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->stopScanEffect()V

    .line 96
    .line 97
    .line 98
    aput-boolean p2, v1, v0

    .line 99
    .line 100
    sget-object p2, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$Pose;->CENTER:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$Pose;

    .line 101
    .line 102
    if-ne p1, p2, :cond_4

    .line 103
    .line 104
    if-eqz p3, :cond_3

    .line 105
    .line 106
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mPoseGuideVi:Lcom/airbnb/lottie/LottieAnimationView;

    .line 107
    .line 108
    const-string p2, "face_recognition_center.json"

    .line 109
    .line 110
    invoke-virtual {p1, p2}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_3
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mPoseGuideVi:Lcom/airbnb/lottie/LottieAnimationView;

    .line 115
    .line 116
    const-string p2, "face_recognition_down.json"

    .line 117
    .line 118
    invoke-virtual {p1, p2}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    goto :goto_1

    .line 122
    :cond_4
    sget-object p2, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$Pose;->UP:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$Pose;

    .line 123
    .line 124
    if-ne p1, p2, :cond_5

    .line 125
    .line 126
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mPoseGuideVi:Lcom/airbnb/lottie/LottieAnimationView;

    .line 127
    .line 128
    const-string p2, "face_recognition_up.json"

    .line 129
    .line 130
    invoke-virtual {p1, p2}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mPoseGuideVi:Lcom/airbnb/lottie/LottieAnimationView;

    .line 134
    .line 135
    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    .line 136
    .line 137
    .line 138
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mPoseGuideVi:Lcom/airbnb/lottie/LottieAnimationView;

    .line 139
    .line 140
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 141
    .line 142
    .line 143
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mPoseGuideVi:Lcom/airbnb/lottie/LottieAnimationView;

    .line 144
    .line 145
    new-instance p2, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$3;

    .line 146
    .line 147
    invoke-direct {p2, p0, v0}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$3;-><init>(Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;I)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {p1, p2}, Lcom/airbnb/lottie/LottieAnimationView;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 151
    .line 152
    .line 153
    :cond_6
    :goto_2
    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    iput-boolean v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mIsFaceManagerBinded:Z

    .line 9
    .line 10
    const/4 v2, 0x2

    .line 11
    new-array v2, v2, [Z

    .line 12
    .line 13
    fill-array-data v2, :array_0

    .line 14
    .line 15
    .line 16
    iput-object v2, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mPoseGuideShown:[Z

    .line 17
    .line 18
    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mHWToken:[B

    .line 19
    .line 20
    const-wide/16 v2, 0x0

    .line 21
    .line 22
    iput-wide v2, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mGkPwHandle:J

    .line 23
    .line 24
    iput-boolean v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mIsWearingGlasses:Z

    .line 25
    .line 26
    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mFaceGuideText:Landroid/widget/TextView;

    .line 27
    .line 28
    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mFaceHelpGuideText:Landroid/widget/TextView;

    .line 29
    .line 30
    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mFaceProgressText:Landroid/widget/TextView;

    .line 31
    .line 32
    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mGlassesOffVi:Lcom/airbnb/lottie/LottieAnimationView;

    .line 33
    .line 34
    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mPoseGuideVi:Lcom/airbnb/lottie/LottieAnimationView;

    .line 35
    .line 36
    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mGuideContinueBtn:Landroid/widget/Button;

    .line 37
    .line 38
    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mCameraPreview:Landroid/widget/ImageView;

    .line 39
    .line 40
    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mEnrollAnimationView:Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;

    .line 41
    .line 42
    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mSetupWizardButtonLayout:Landroid/view/View;

    .line 43
    .line 44
    iput-boolean v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mIsUSA:Z

    .line 45
    .line 46
    iput-boolean v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mIsHelpEnabled:Z

    .line 47
    .line 48
    iput-boolean v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mIsEnrolling:Z

    .line 49
    .line 50
    iput-boolean v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mIsBackSecond:Z

    .line 51
    .line 52
    new-instance v4, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$1;

    .line 53
    .line 54
    invoke-direct {v4, p0}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$1;-><init>(Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;)V

    .line 55
    .line 56
    .line 57
    iput-object v4, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mBackHandler:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$1;

    .line 58
    .line 59
    iput-boolean v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mIsSetupWizard:Z

    .line 60
    .line 61
    iput-boolean v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mEnrollPaused:Z

    .line 62
    .line 63
    iput-boolean v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mIsTalkbackEnabled:Z

    .line 64
    .line 65
    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 66
    .line 67
    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mSecuredKnoxLogoView:Landroid/view/View;

    .line 68
    .line 69
    sget-boolean v4, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FEATURE_SUPPORT_DUAL_DISPLAY:Z

    .line 70
    .line 71
    iput-boolean v4, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mIsSupportDualDisplay:Z

    .line 72
    .line 73
    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mPreviewImage:Landroid/graphics/Bitmap;

    .line 74
    .line 75
    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mPreviewData:[B

    .line 76
    .line 77
    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mPreviewHandler:Landroid/os/Handler;

    .line 78
    .line 79
    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mPreviewCBHandler:Landroid/os/Handler;

    .line 80
    .line 81
    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mTextureView:Landroid/view/View;

    .line 82
    .line 83
    iput-wide v2, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mLastDecodingTimestamp:J

    .line 84
    .line 85
    iput v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mPercent:I

    .line 86
    .line 87
    new-instance v0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$6;

    .line 88
    .line 89
    invoke-direct {v0, p0}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$6;-><init>(Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;)V

    .line 90
    .line 91
    .line 92
    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mEnrollmentCallback:Lcom/samsung/android/bio/face/SemBioFaceManager$EnrollmentCallback;

    .line 93
    .line 94
    return-void

    .line 95
    :array_0
    .array-data 1
        0x0t
        0x0t
    .end array-data
.end method

.method public static getAlphaAnimation(FFI)Landroid/view/animation/AlphaAnimation;
    .locals 3

    .line 1
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 4
    .line 5
    .line 6
    int-to-long p0, p2

    .line 7
    invoke-virtual {v0, p0, p1}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 8
    .line 9
    .line 10
    const/4 p0, 0x1

    .line 11
    invoke-virtual {v0, p0}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 12
    .line 13
    .line 14
    new-instance p0, Landroid/view/animation/PathInterpolator;

    .line 15
    .line 16
    const p1, 0x3ea8f5c3    # 0.33f

    .line 17
    .line 18
    .line 19
    const/4 p2, 0x0

    .line 20
    const v1, 0x3e4ccccd    # 0.2f

    .line 21
    .line 22
    .line 23
    const/high16 v2, 0x3f800000    # 1.0f

    .line 24
    .line 25
    invoke-direct {p0, p1, p2, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, p0}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 29
    .line 30
    .line 31
    return-object v0
.end method


# virtual methods
.method public final getPositionGuideText(Z)Ljava/lang/String;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mIsTalkbackEnabled:Z

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mIsUSA:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const v0, 0x7f0b000c

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const v1, 0x7f0b000d

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    filled-new-array {p1, v0}, [Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    const v0, 0x7f10007e

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    goto :goto_0

    .line 51
    :cond_0
    const v0, 0x7f0b000b

    .line 52
    .line 53
    .line 54
    const v1, 0x7f0b000a

    .line 55
    .line 56
    .line 57
    if-eqz p1, :cond_1

    .line 58
    .line 59
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getInteger(I)I

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    filled-new-array {p1, v0}, [Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    const v0, 0x7f100080

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    goto :goto_0

    .line 95
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getInteger(I)I

    .line 100
    .line 101
    .line 102
    move-result p1

    .line 103
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    filled-new-array {p1, v0}, [Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    const v0, 0x7f10007f

    .line 124
    .line 125
    .line 126
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object p0

    .line 130
    goto :goto_0

    .line 131
    :cond_2
    const p1, 0x7f10007c

    .line 132
    .line 133
    .line 134
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object p0

    .line 138
    :goto_0
    return-object p0
.end method

.method public final hideGlassesGuide(Landroid/view/View;)V
    .locals 5

    .line 1
    const/16 v0, 0xe6

    .line 2
    .line 3
    const/high16 v1, 0x3f800000    # 1.0f

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-static {v1, v2, v0}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->getAlphaAnimation(FFI)Landroid/view/animation/AlphaAnimation;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const/4 v1, 0x0

    .line 11
    iput-boolean v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mIsGlassGuideShown:Z

    .line 12
    .line 13
    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mFaceGuideText:Landroid/widget/TextView;

    .line 14
    .line 15
    const v3, 0x7f10007b

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 19
    .line 20
    .line 21
    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mFaceGuideText:Landroid/widget/TextView;

    .line 22
    .line 23
    const/4 v3, 0x1

    .line 24
    invoke-virtual {p0, v3}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->getPositionGuideText(Z)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 29
    .line 30
    .line 31
    const/4 v2, -0x1

    .line 32
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->setHelpString(IZ)V

    .line 33
    .line 34
    .line 35
    const/16 v2, 0x8

    .line 36
    .line 37
    if-eqz p1, :cond_0

    .line 38
    .line 39
    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 46
    .line 47
    .line 48
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mGlassesOffVi:Lcom/airbnb/lottie/LottieAnimationView;

    .line 49
    .line 50
    if-eqz p1, :cond_1

    .line 51
    .line 52
    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 53
    .line 54
    .line 55
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mGlassesOffVi:Lcom/airbnb/lottie/LottieAnimationView;

    .line 56
    .line 57
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 58
    .line 59
    .line 60
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mGlassesOffVi:Lcom/airbnb/lottie/LottieAnimationView;

    .line 61
    .line 62
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 63
    .line 64
    .line 65
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mCameraPreview:Landroid/widget/ImageView;

    .line 66
    .line 67
    if-eqz p1, :cond_2

    .line 68
    .line 69
    const/4 v0, 0x0

    .line 70
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 71
    .line 72
    .line 73
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mTextureView:Landroid/view/View;

    .line 74
    .line 75
    if-eqz p1, :cond_3

    .line 76
    .line 77
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 78
    .line 79
    .line 80
    :cond_3
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mEnrollAnimationView:Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;

    .line 81
    .line 82
    if-eqz p1, :cond_4

    .line 83
    .line 84
    invoke-virtual {p1}, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->startScanEffect()V

    .line 85
    .line 86
    .line 87
    :cond_4
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    .line 88
    .line 89
    if-eqz p1, :cond_5

    .line 90
    .line 91
    invoke-virtual {p1}, Lcom/samsung/android/bio/face/SemBioFaceManager;->semResumeEnroll()V

    .line 92
    .line 93
    .line 94
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mEnrollFragment:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollFragment;

    .line 95
    .line 96
    if-eqz p1, :cond_5

    .line 97
    .line 98
    iget-object p1, p1, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollFragment;->mPunchHoleVIView:Lcom/samsung/android/biometrics/app/setting/face/PunchHoleVIView;

    .line 99
    .line 100
    if-eqz p1, :cond_5

    .line 101
    .line 102
    invoke-virtual {p1}, Lcom/samsung/android/biometrics/app/setting/face/PunchHoleVIView;->play()V

    .line 103
    .line 104
    .line 105
    :cond_5
    iget-boolean p1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mIsSetupWizard:Z

    .line 106
    .line 107
    if-eqz p1, :cond_7

    .line 108
    .line 109
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mSetupWizardButtonLayout:Landroid/view/View;

    .line 110
    .line 111
    if-eqz p1, :cond_6

    .line 112
    .line 113
    const/4 v0, 0x4

    .line 114
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 115
    .line 116
    .line 117
    :cond_6
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mSecuredKnoxLogoView:Landroid/view/View;

    .line 118
    .line 119
    if-eqz p0, :cond_7

    .line 120
    .line 121
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 122
    .line 123
    .line 124
    :cond_7
    return-void
.end method

.method public final onBackPressed()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mIsBackSecond:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const-string v0, "BSS_FaceEnrollActivity"

    .line 7
    .line 8
    const-string v2, "Face enroll screen is terminated by Back key !!"

    .line 9
    .line 10
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    iput-boolean v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mIsBackSecond:Z

    .line 14
    .line 15
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mExitToast:Landroid/widget/Toast;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v1}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->setEnrollResult(I)V

    .line 21
    .line 22
    .line 23
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v0, 0x1

    .line 28
    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mIsBackSecond:Z

    .line 29
    .line 30
    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mIsTalkbackEnabled:Z

    .line 31
    .line 32
    if-nez v0, :cond_1

    .line 33
    .line 34
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mBackHandler:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$1;

    .line 35
    .line 36
    const-wide/16 v2, 0x7d0

    .line 37
    .line 38
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 39
    .line 40
    .line 41
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mExitToast:Landroid/widget/Toast;

    .line 42
    .line 43
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 44
    .line 45
    .line 46
    :goto_0
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    const-string v0, "BSS_FaceEnrollActivity"

    .line 2
    .line 3
    const-string v1, "onCreate"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    const-string v1, " "

    .line 9
    .line 10
    invoke-virtual {p0, v1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 11
    .line 12
    .line 13
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    if-nez p1, :cond_0

    .line 25
    .line 26
    const-string p1, "intent should have extra value"

    .line 27
    .line 28
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_0
    const p1, 0x7f0d002b

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, p1}, Landroidx/activity/ComponentActivity;->setContentView(I)V

    .line 39
    .line 40
    .line 41
    const/4 v0, 0x1

    .line 42
    .line 43
    sput-boolean v0, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FEATURE_FACE_HAL:Z

    .line 52
    .line 53
    new-instance p1, Landroid/os/Handler;

    .line 54
    .line 55
    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 56
    .line 57
    .line 58
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mPreviewHandler:Landroid/os/Handler;

    .line 59
    .line 60
    new-instance p1, Landroid/os/HandlerThread;

    .line 61
    .line 62
    const-string v0, "Preview Thread"

    .line 63
    .line 64
    const/4 v1, 0x0

    .line 65
    invoke-direct {p1, v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 66
    .line 67
    .line 68
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mPreviewCBThread:Landroid/os/HandlerThread;

    .line 69
    .line 70
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 71
    .line 72
    .line 73
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mPreviewCBThread:Landroid/os/HandlerThread;

    .line 74
    .line 75
    invoke-virtual {p1}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mPreviewCBHandler:Landroid/os/Handler;

    .line 80
    .line 81
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    const-string v0, "fromSetupWizard"

    .line 86
    .line 87
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 88
    .line 89
    .line 90
    move-result p1

    .line 91
    iput-boolean p1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mIsSetupWizard:Z

    .line 92
    .line 93
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getPreferences(I)Landroid/content/SharedPreferences;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 98
    .line 99
    sget-boolean p1, Lcom/samsung/android/biometrics/app/setting/Utils;->DEBUG:Z

    .line 100
    .line 101
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    const-string v0, "CountryISO"

    .line 106
    .line 107
    invoke-virtual {p1, v0}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    const-string v0, "US"

    .line 112
    .line 113
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 114
    .line 115
    .line 116
    move-result p1

    .line 117
    iput-boolean p1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mIsUSA:Z

    .line 118
    .line 119
    invoke-static {p0}, Lcom/samsung/android/biometrics/app/setting/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    .line 120
    .line 121
    .line 122
    move-result p1

    .line 123
    iput-boolean p1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mIsTalkbackEnabled:Z

    .line 124
    .line 125
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    const-string v0, "android.intent.extra.USER_ID"

    .line 130
    .line 131
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 132
    .line 133
    .line 134
    move-result p1

    .line 135
    iput p1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mUserId:I

    .line 136
    .line 137
    iget-boolean p1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mIsSupportDualDisplay:Z

    .line 138
    .line 139
    if-eqz p1, :cond_3

    .line 140
    .line 141
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mFoldStateListener:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$7;

    .line 142
    .line 143
    if-eqz p1, :cond_1

    .line 144
    .line 145
    goto :goto_0

    .line 146
    :cond_1
    new-instance p1, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$7;

    .line 147
    .line 148
    invoke-direct {p1, p0}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$7;-><init>(Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;)V

    .line 149
    .line 150
    .line 151
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mFoldStateListener:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$7;

    .line 152
    .line 153
    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mFoldStateListener:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$7;

    .line 158
    .line 159
    const/4 v2, 0x0

    .line 160
    invoke-virtual {p1, v0, v2}, Lcom/samsung/android/view/SemWindowManager;->registerFoldStateListener(Lcom/samsung/android/view/SemWindowManager$FoldStateListener;Landroid/os/Handler;)V

    .line 161
    .line 162
    .line 163
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    iget p1, p1, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    .line 172
    .line 173
    const/4 v0, 0x5

    .line 174
    if-ne p1, v0, :cond_2

    .line 175
    .line 176
    const/4 v1, 0x1

    .line 177
    :cond_2
    iput-boolean v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mCurrentIsFolded:Z

    .line 178
    .line 179
    :cond_3
    const p1, 0x7f0a0043

    .line 180
    .line 181
    .line 182
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 183
    .line 184
    .line 185
    move-result-object p1

    .line 186
    check-cast p1, Landroid/widget/RelativeLayout;

    .line 187
    .line 188
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mMainLayout:Landroid/widget/RelativeLayout;

    .line 189
    .line 190
    if-eqz p1, :cond_4

    .line 191
    .line 192
    new-instance v0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$2;

    .line 193
    .line 194
    invoke-direct {v0, p0}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$2;-><init>(Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;)V

    .line 195
    .line 196
    .line 197
    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mAttachStateChangeListener:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$2;

    .line 198
    .line 199
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 200
    .line 201
    .line 202
    :cond_4
    return-void
.end method

.method public final onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/activity/ComponentActivity;->onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V

    .line 2
    .line 3
    .line 4
    new-instance p2, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    const-string v0, "onMultiWindowModeChanged : "

    .line 7
    .line 8
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    const-string v0, "BSS_FaceEnrollActivity"

    .line 19
    .line 20
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    const p1, 0x7f100065

    .line 26
    .line 27
    .line 28
    const/4 p2, 0x0

    .line 29
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, p2}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->setEnrollResult(I)V

    .line 37
    .line 38
    .line 39
    :cond_0
    return-void
.end method

.method public final onPause()V
    .locals 7

    .line 1
    const-string v0, "onPause"

    .line 2
    .line 3
    const-string v1, "BSS_FaceEnrollActivity"

    .line 4
    .line 5
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x4

    .line 12
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 13
    .line 14
    .line 15
    const-string v0, "stopEnrollment"

    .line 16
    .line 17
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mIsFaceManagerBinded:Z

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    const/4 v2, 0x0

    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    iput-boolean v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mIsFaceManagerBinded:Z

    .line 27
    .line 28
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mCancellationSignal:Landroid/os/CancellationSignal;

    .line 29
    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    .line 33
    .line 34
    .line 35
    iput-object v2, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mCancellationSignal:Landroid/os/CancellationSignal;

    .line 36
    .line 37
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    .line 38
    .line 39
    if-eqz v0, :cond_2

    .line 40
    .line 41
    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mIsChallengeCreated:Z

    .line 42
    .line 43
    if-nez v0, :cond_1

    .line 44
    .line 45
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-nez v0, :cond_2

    .line 50
    .line 51
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    .line 52
    .line 53
    iget v3, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mSensorId:I

    .line 54
    .line 55
    iget v4, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mUserId:I

    .line 56
    .line 57
    iget-wide v5, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mChallenge:J

    .line 58
    .line 59
    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/samsung/android/bio/face/SemBioFaceManager;->revokeChallenge(IIJ)V

    .line 60
    .line 61
    .line 62
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mShowPoseGuideTimer:Landroid/os/CountDownTimer;

    .line 63
    .line 64
    if-eqz v0, :cond_3

    .line 65
    .line 66
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 67
    .line 68
    .line 69
    iput-object v2, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mShowPoseGuideTimer:Landroid/os/CountDownTimer;

    .line 70
    .line 71
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 72
    .line 73
    if-eqz v0, :cond_4

    .line 74
    .line 75
    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->stop()I

    .line 76
    .line 77
    .line 78
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 79
    .line 80
    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    .line 81
    .line 82
    .line 83
    iput-object v2, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 84
    .line 85
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mSoundPool:Landroid/media/SoundPool;

    .line 86
    .line 87
    if-eqz v0, :cond_5

    .line 88
    .line 89
    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 90
    .line 91
    .line 92
    iput-object v2, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mSoundPool:Landroid/media/SoundPool;

    .line 93
    .line 94
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mPreviewCBThread:Landroid/os/HandlerThread;

    .line 95
    .line 96
    if-eqz v0, :cond_6

    .line 97
    .line 98
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 99
    .line 100
    .line 101
    :cond_6
    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mIsSetupWizard:Z

    .line 102
    .line 103
    if-eqz v0, :cond_7

    .line 104
    .line 105
    const/4 v0, -0x2

    .line 106
    invoke-virtual {p0, v0}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->setEnrollResult(I)V

    .line 107
    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_7
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    .line 111
    .line 112
    .line 113
    move-result v0

    .line 114
    if-nez v0, :cond_8

    .line 115
    .line 116
    new-instance v0, Landroid/content/Intent;

    .line 117
    .line 118
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 119
    .line 120
    .line 121
    const-string v2, "biometrics_settings_destroy"

    .line 122
    .line 123
    const/4 v3, 0x1

    .line 124
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 125
    .line 126
    .line 127
    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 131
    .line 132
    .line 133
    :cond_8
    :goto_0
    return-void
.end method

.method public final onResume()V
    .locals 11

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    .line 2
    .line 3
    .line 4
    const-string v0, "BSS_FaceEnrollActivity"

    .line 5
    .line 6
    const-string v1, "onResume"

    .line 7
    .line 8
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    const v1, 0x7f100066

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    iput-object v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mExitToast:Landroid/widget/Toast;

    .line 24
    .line 25
    iget-boolean v3, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mIsTalkbackEnabled:Z

    .line 26
    .line 27
    if-eqz v3, :cond_0

    .line 28
    .line 29
    new-instance v3, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$5;

    .line 30
    .line 31
    invoke-direct {v3, p0}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$5;-><init>(Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v3}, Landroid/widget/Toast;->addCallback(Landroid/widget/Toast$Callback;)V

    .line 35
    .line 36
    .line 37
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 42
    .line 43
    const/4 v4, 0x1

    .line 44
    if-eqz v3, :cond_1

    .line 45
    .line 46
    const-string v5, "face_disclaimer_key"

    .line 47
    .line 48
    invoke-interface {v3, v5, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    if-eqz v3, :cond_1

    .line 53
    .line 54
    move v3, v4

    .line 55
    goto :goto_0

    .line 56
    :cond_1
    move v3, v2

    .line 57
    :goto_0
    const-string v5, "face_enroll_retry"

    .line 58
    .line 59
    invoke-virtual {v1, v5, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 60
    .line 61
    .line 62
    move-result v5

    .line 63
    new-instance v6, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    const-string v7, "onResume, isRetry = "

    .line 66
    .line 67
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v5

    .line 77
    invoke-static {v0, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    .line 79
    .line 80
    new-instance v5, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    const-string v6, "onResume, isEnabledDisclaimer = "

    .line 83
    .line 84
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    .line 96
    .line 97
    iget-boolean v3, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mIsTalkbackEnabled:Z

    .line 98
    .line 99
    const/4 v5, 0x0

    .line 100
    if-eqz v3, :cond_2

    .line 101
    .line 102
    new-instance v3, Landroid/speech/tts/TextToSpeech;

    .line 103
    .line 104
    invoke-direct {v3, p0, v5}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    .line 105
    .line 106
    .line 107
    iput-object v3, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 108
    .line 109
    new-instance v6, Landroid/media/AudioAttributes$Builder;

    .line 110
    .line 111
    invoke-direct {v6}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 112
    .line 113
    .line 114
    const/16 v7, 0xb

    .line 115
    .line 116
    invoke-virtual {v6, v7}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    .line 117
    .line 118
    .line 119
    move-result-object v6

    .line 120
    invoke-virtual {v6}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    .line 121
    .line 122
    .line 123
    move-result-object v6

    .line 124
    invoke-virtual {v3, v6}, Landroid/speech/tts/TextToSpeech;->setAudioAttributes(Landroid/media/AudioAttributes;)I

    .line 125
    .line 126
    .line 127
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    .line 128
    .line 129
    .line 130
    move-result-object v3

    .line 131
    const-string v6, "sidesync_source_connect"

    .line 132
    .line 133
    invoke-static {v3, v6, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 134
    .line 135
    .line 136
    move-result v3

    .line 137
    if-ne v3, v4, :cond_3

    .line 138
    .line 139
    new-instance v1, Ljava/lang/StringBuilder;

    .line 140
    .line 141
    const-string v5, "onResume, sidesyncEnabled = "

    .line 142
    .line 143
    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    .line 155
    .line 156
    const v0, 0x7f10006e

    .line 157
    .line 158
    .line 159
    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 164
    .line 165
    .line 166
    invoke-virtual {p0, v2}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->setEnrollResult(I)V

    .line 167
    .line 168
    .line 169
    return-void

    .line 170
    :cond_3
    invoke-static {p0}, Lcom/samsung/android/biometrics/app/setting/Utils;->isDesktopStandaloneMode(Landroid/content/Context;)Z

    .line 171
    .line 172
    .line 173
    move-result v3

    .line 174
    if-eqz v3, :cond_4

    .line 175
    .line 176
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    .line 177
    .line 178
    .line 179
    move-result-object v3

    .line 180
    const v6, 0x7f0b0009

    .line 181
    .line 182
    .line 183
    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getInteger(I)I

    .line 184
    .line 185
    .line 186
    move-result v3

    .line 187
    if-ne v3, v4, :cond_4

    .line 188
    .line 189
    const v0, 0x7f100063

    .line 190
    .line 191
    .line 192
    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 197
    .line 198
    .line 199
    invoke-virtual {p0, v2}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->setEnrollResult(I)V

    .line 200
    .line 201
    .line 202
    return-void

    .line 203
    :cond_4
    const-string v3, "hw_auth_token"

    .line 204
    .line 205
    invoke-virtual {v1, v3}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    .line 206
    .line 207
    .line 208
    move-result-object v3

    .line 209
    iput-object v3, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mHWToken:[B

    .line 210
    .line 211
    const-string v3, "challenge"

    .line 212
    .line 213
    const-wide/16 v6, 0x0

    .line 214
    .line 215
    invoke-virtual {v1, v3, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    .line 216
    .line 217
    .line 218
    move-result-wide v8

    .line 219
    iput-wide v8, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mChallenge:J

    .line 220
    .line 221
    const-string v3, "sensor_id"

    .line 222
    .line 223
    const/4 v8, -0x1

    .line 224
    invoke-virtual {v1, v3, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 225
    .line 226
    .line 227
    move-result v3

    .line 228
    iput v3, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mSensorId:I

    .line 229
    .line 230
    const-string v3, "gk_pw_handle"

    .line 231
    .line 232
    invoke-virtual {v1, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 233
    .line 234
    .line 235
    move-result v9

    .line 236
    if-eqz v9, :cond_5

    .line 237
    .line 238
    invoke-virtual {v1, v3, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    .line 239
    .line 240
    .line 241
    move-result-wide v9

    .line 242
    iput-wide v9, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mGkPwHandle:J

    .line 243
    .line 244
    :cond_5
    const-string v1, "getFaceManager"

    .line 245
    .line 246
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    .line 248
    .line 249
    iget-boolean v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mIsFaceManagerBinded:Z

    .line 250
    .line 251
    if-eqz v1, :cond_6

    .line 252
    .line 253
    goto :goto_1

    .line 254
    :cond_6
    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->getFaceManager()Z

    move-result v1

    :cond_7
    iput-boolean v4, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mIsFaceManagerBinded:Z

    .line 275
    .line 276
    :goto_1
    iget-wide v9, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mGkPwHandle:J

    .line 277
    .line 278
    cmp-long v1, v9, v6

    .line 279
    .line 280
    if-nez v1, :cond_8

    .line 281
    .line 282
    :goto_2
    const v0, 0x7f100071

    .line 283
    .line 284
    .line 285
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object v0

    .line 292
  #  invoke-virtual {p0, v8, v0}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->showFaceErrorDialog(ILjava/lang/CharSequence;)V

    .line 293
    .line 294
    .line 295
    goto :goto_3

    .line 296
    :cond_8
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    .line 297
    .line 298
    if-eqz v1, :cond_a

    .line 299
    .line 300
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mHWToken:[B

    .line 301
    .line 302
    if-eqz v1, :cond_9

    .line 303
    .line 304
    array-length v3, v1

    .line 305
    if-ne v3, v4, :cond_a

    .line 306
    .line 307
    aget-byte v1, v1, v2

    .line 308
    .line 309
    if-ne v1, v8, :cond_a

    .line 310
    .line 311
    :cond_9
    const-string v1, "Token is not available. Request generateChallenge"

    .line 312
    .line 313
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    .line 315
    .line 316
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    .line 317
    .line 318
    iget v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mUserId:I

    .line 319
    .line 320
    new-instance v2, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$$ExternalSyntheticLambda0;

    .line 321
    .line 322
    invoke-direct {v2, p0}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;)V

    .line 323
    .line 324
    .line 325
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/bio/face/SemBioFaceManager;->generateChallenge(ILcom/samsung/android/bio/face/SemBioFaceManager$GenerateChallengeCallback;)V

    .line 326
    .line 327
    .line 328
    :cond_a
    :goto_3
    sget-boolean v0, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FACE_FEATURE_POSE_ENROLL:Z

    .line 329
    .line 330
    if-eqz v0, :cond_b

    .line 331
    .line 332
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    .line 333
    .line 334
    .line 335
    move-result v0

    .line 336
    if-nez v0, :cond_c

    .line 337
    .line 338
    iget-object p0, p0, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/FragmentController;

    .line 339
    .line 340
    iget-object p0, p0, Landroidx/fragment/app/FragmentController;->mHost:Landroidx/fragment/app/FragmentActivity$HostCallbacks;

    .line 341
    .line 342
    iget-object p0, p0, Landroidx/fragment/app/FragmentActivity$HostCallbacks;->fragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    .line 343
    .line 344
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 345
    .line 346
    .line 347
    new-instance v0, Landroidx/fragment/app/BackStackRecord;

    .line 348
    .line 349
    invoke-direct {v0, p0}, Landroidx/fragment/app/BackStackRecord;-><init>(Landroidx/fragment/app/FragmentManagerImpl;)V

    .line 350
    .line 351
    .line 352
    new-instance p0, Lcom/samsung/android/biometrics/app/setting/face/FaceGuideFragment;

    .line 353
    .line 354
    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/face/FaceGuideFragment;-><init>()V

    .line 355
    .line 356
    .line 357
    const/4 v1, 0x2

    .line 358
    const v2, 0x7f0a00c9

    .line 359
    .line 360
    .line 361
    invoke-virtual {v0, v2, p0, v5, v1}, Landroidx/fragment/app/BackStackRecord;->doAddOp(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 362
    .line 363
    .line 364
    invoke-virtual {v0, v4}, Landroidx/fragment/app/BackStackRecord;->commitInternal(Z)I

    .line 365
    .line 366
    .line 367
    goto :goto_4

    .line 368
    :cond_b
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->startEnrollFragment()V

    .line 369
    .line 370
    .line 371
    :cond_c
    :goto_4
    return-void
.end method

.method private getFaceManager()Z
    .locals 3

    .line 166
    const-string v0, "BSS_FaceEnrollActivity"

    const-string v1, "getFaceManager"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iget-boolean v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mIsFaceManagerBinded:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 168
    return v2

    .line 170
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/bio/face/SemBioFaceManager;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    .line 171
    if-nez v1, :cond_1

    .line 172
    const-string v1, "getFaceManager() : mFaceManager == null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mIsFaceManagerBinded:Z

    .line 174
    return v0

    .line 176
    :cond_1
    iput-boolean v2, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mIsFaceManagerBinded:Z

    .line 177
    return v2
.end method


.method public final onStop()V
    .locals 2

    .line 1
    const-string v0, "BSS_FaceEnrollActivity"

    .line 2
    .line 3
    const-string v1, "onStop"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onStop()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mFoldStateListener:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$7;

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mFoldStateListener:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$7;

    .line 21
    .line 22
    invoke-virtual {v0, p0}, Lcom/samsung/android/view/SemWindowManager;->unregisterFoldStateListener(Lcom/samsung/android/view/SemWindowManager$FoldStateListener;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    return-void
.end method

.method public final runTextToSpeech(ILjava/lang/String;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mIsTalkbackEnabled:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    invoke-virtual {p0, p2, p1, v0}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 20
    .line 21
    .line 22
    :cond_1
    return-void
.end method

.method public final setEnrollResult(I)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "setEnrollResult to "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "BSS_FaceEnrollActivity"

    .line 16
    .line 17
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mErrorDialog:Landroid/app/AlertDialog;

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    return-void

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mMainLayout:Landroid/widget/RelativeLayout;

    .line 32
    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mAttachStateChangeListener:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$2;

    .line 36
    .line 37
    if-eqz v1, :cond_1

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 40
    .line 41
    .line 42
    const/4 v0, 0x0

    .line 43
    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mAttachStateChangeListener:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$2;

    .line 44
    .line 45
    :cond_1
    new-instance v0, Landroid/content/Intent;

    .line 46
    .line 47
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 48
    .line 49
    .line 50
    const-string v1, "face_wear_glasses"

    .line 51
    .line 52
    iget-boolean v2, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mIsWearingGlasses:Z

    .line 53
    .line 54
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 61
    .line 62
    .line 63
    return-void
.end method

.method public final setHelpString(IZ)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mFaceHelpGuideText:Landroid/widget/TextView;

    .line 2
    .line 3
    if-eqz v0, :cond_7

    .line 4
    .line 5
    iget-boolean v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mIsGlassGuideShown:Z

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    goto/16 :goto_1

    .line 10
    .line 11
    :cond_0
    const/16 v1, 0x14a

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    const/high16 v3, 0x3f800000    # 1.0f

    .line 15
    .line 16
    if-eqz p2, :cond_1

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    .line 19
    .line 20
    .line 21
    move-result p2

    .line 22
    if-nez p2, :cond_1

    .line 23
    .line 24
    invoke-static {v3, v2, v1}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->getAlphaAnimation(FFI)Landroid/view/animation/AlphaAnimation;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mFaceHelpGuideText:Landroid/widget/TextView;

    .line 29
    .line 30
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_1
    const/4 p2, 0x1

    .line 35
    const/4 v0, 0x0

    .line 36
    if-eq p1, p2, :cond_5

    .line 37
    .line 38
    const/16 p2, 0xb

    .line 39
    .line 40
    if-eq p1, p2, :cond_4

    .line 41
    .line 42
    const/16 p2, 0x13

    .line 43
    .line 44
    if-eq p1, p2, :cond_3

    .line 45
    .line 46
    const/16 p2, 0x15

    .line 47
    .line 48
    if-eq p1, p2, :cond_5

    .line 49
    .line 50
    const/16 p2, 0x3f9

    .line 51
    .line 52
    if-eq p1, p2, :cond_3

    .line 53
    .line 54
    const/4 p2, 0x3

    .line 55
    if-eq p1, p2, :cond_2

    .line 56
    .line 57
    const/4 p2, 0x4

    .line 58
    if-eq p1, p2, :cond_4

    .line 59
    .line 60
    const/4 p2, 0x5

    .line 61
    if-eq p1, p2, :cond_4

    .line 62
    .line 63
    const/4 p1, 0x0

    .line 64
    goto :goto_0

    .line 65
    :cond_2
    const p1, 0x7f100084

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    goto :goto_0

    .line 73
    :cond_3
    const p1, 0x7f100083

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    goto :goto_0

    .line 81
    :cond_4
    invoke-virtual {p0, v0}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->getPositionGuideText(Z)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    goto :goto_0

    .line 86
    :cond_5
    const p1, 0x7f100081

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    :goto_0
    iget-object p2, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mFaceHelpGuideText:Landroid/widget/TextView;

    .line 94
    .line 95
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    .line 97
    .line 98
    invoke-static {v2, v3, v1}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->getAlphaAnimation(FFI)Landroid/view/animation/AlphaAnimation;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    iget-object p2, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mFaceHelpGuideText:Landroid/widget/TextView;

    .line 103
    .line 104
    invoke-virtual {p2}, Landroid/widget/TextView;->getVisibility()I

    .line 105
    .line 106
    .line 107
    move-result p2

    .line 108
    if-eqz p2, :cond_6

    .line 109
    .line 110
    iget-object p2, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mFaceHelpGuideText:Landroid/widget/TextView;

    .line 111
    .line 112
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 113
    .line 114
    .line 115
    :cond_6
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mFaceHelpGuideText:Landroid/widget/TextView;

    .line 116
    .line 117
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 118
    .line 119
    .line 120
    :cond_7
    :goto_1
    return-void
.end method

.method public final showFaceErrorDialog(ILjava/lang/CharSequence;)V
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/samsung/android/biometrics/app/setting/Utils;->isColorThemeEnabled(Landroid/content/Context;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-static {p0}, Lcom/samsung/android/biometrics/app/setting/Utils;->isNightThemeOn(Landroid/content/Context;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    move v0, v1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const v0, 0x10302d1

    .line 17
    .line 18
    .line 19
    :goto_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    .line 20
    .line 21
    invoke-direct {v2, p0, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    const v0, 0x7f100069

    .line 29
    .line 30
    .line 31
    const/4 v2, 0x0

    .line 32
    invoke-virtual {p2, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    new-instance v0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$$ExternalSyntheticLambda1;

    .line 37
    .line 38
    invoke-direct {v0, p0, p1}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;I)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p2, v0}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    const/16 v0, 0x3ed

    .line 46
    .line 47
    const/4 v2, 0x4

    .line 48
    if-ne p1, v0, :cond_1

    .line 49
    .line 50
    const p1, 0x7f10006b

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-virtual {p2, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 58
    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_1
    if-ne p1, v2, :cond_2

    .line 62
    .line 63
    const p1, 0x7f100070

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-virtual {p2, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 71
    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_2
    const p1, 0x7f100072

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-virtual {p2, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 82
    .line 83
    .line 84
    :goto_1
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mSecuredKnoxLogoView:Landroid/view/View;

    .line 85
    .line 86
    if-eqz p1, :cond_3

    .line 87
    .line 88
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 89
    .line 90
    .line 91
    :cond_3
    invoke-virtual {p2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mErrorDialog:Landroid/app/AlertDialog;

    .line 96
    .line 97
    invoke-virtual {p1, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 98
    .line 99
    .line 100
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mErrorDialog:Landroid/app/AlertDialog;

    .line 101
    .line 102
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    .line 103
    .line 104
    .line 105
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mErrorDialog:Landroid/app/AlertDialog;

    .line 106
    .line 107
    const/4 p2, -0x1

    .line 108
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    const p2, 0x7f06007a

    .line 117
    .line 118
    .line 119
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getColor(I)I

    .line 120
    .line 121
    .line 122
    move-result p0

    .line 123
    invoke-virtual {p1, p0}, Landroid/widget/Button;->setTextColor(I)V

    .line 124
    .line 125
    .line 126
    return-void
.end method

.method public final showFolderOpenDialog()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const v1, 0x7f10006b

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const v2, 0x7f10006a

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-static {p0}, Lcom/samsung/android/biometrics/app/setting/Utils;->isColorThemeEnabled(Landroid/content/Context;)Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_0

    .line 28
    .line 29
    invoke-static {p0}, Lcom/samsung/android/biometrics/app/setting/Utils;->isNightThemeOn(Landroid/content/Context;)Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-nez v2, :cond_0

    .line 34
    .line 35
    const/4 v2, 0x0

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    const v2, 0x10302d1

    .line 38
    .line 39
    .line 40
    :goto_0
    new-instance v3, Landroid/app/AlertDialog$Builder;

    .line 41
    .line 42
    invoke-direct {v3, p0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    new-instance v1, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$$ExternalSyntheticLambda5;

    .line 54
    .line 55
    invoke-direct {v1, p0}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$$ExternalSyntheticLambda5;-><init>(Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;)V

    .line 56
    .line 57
    .line 58
    const v2, 0x7f100069

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    new-instance v1, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$$ExternalSyntheticLambda6;

    .line 66
    .line 67
    invoke-direct {v1, p0}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$$ExternalSyntheticLambda6;-><init>(Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 79
    .line 80
    .line 81
    const/4 v1, -0x1

    .line 82
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    const v1, 0x7f06007a

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getColor(I)I

    .line 94
    .line 95
    .line 96
    move-result p0

    .line 97
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setTextColor(I)V

    .line 98
    .line 99
    .line 100
    return-void
.end method

.method public final startEnrollFragment()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollFragment;

    .line 8
    .line 9
    invoke-direct {v0}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollFragment;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mEnrollFragment:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollFragment;

    .line 13
    .line 14
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/FragmentController;

    .line 15
    .line 16
    iget-object v0, v0, Landroidx/fragment/app/FragmentController;->mHost:Landroidx/fragment/app/FragmentActivity$HostCallbacks;

    .line 17
    .line 18
    iget-object v0, v0, Landroidx/fragment/app/FragmentActivity$HostCallbacks;->fragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    new-instance v1, Landroidx/fragment/app/BackStackRecord;

    .line 24
    .line 25
    invoke-direct {v1, v0}, Landroidx/fragment/app/BackStackRecord;-><init>(Landroidx/fragment/app/FragmentManagerImpl;)V

    .line 26
    .line 27
    .line 28
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mEnrollFragment:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollFragment;

    .line 29
    .line 30
    const/4 v0, 0x0

    .line 31
    const v2, 0x7f0a00c9

    .line 32
    .line 33
    .line 34
    const/4 v3, 0x2

    .line 35
    invoke-virtual {v1, v2, p0, v0, v3}, Landroidx/fragment/app/BackStackRecord;->doAddOp(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 36
    .line 37
    .line 38
    const/4 p0, 0x1

    .line 39
    invoke-virtual {v1, p0}, Landroidx/fragment/app/BackStackRecord;->commitInternal(Z)I

    .line 40
    .line 41
    .line 42
    :cond_0
    return-void
.end method

.method public final startEnrollment(Landroid/view/View;)V
    .locals 14
    .param p1, "faceView"    # Landroid/view/View;

    .line 1
    sget-boolean v0, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FEATURE_SUPPORT_DUAL_DISPLAY:Z

    .line 2
    .line 3
    const-string v1, "BSS_FaceEnrollActivity"

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mIsSupportDualDisplay:Z

    .line 8
    .line 9
    invoke-static {p0, v0}, Lcom/samsung/android/biometrics/app/setting/Utils;->getFolderOpenState(Landroid/content/Context;Z)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->showFolderOpenDialog()V

    .line 16
    .line 17
    .line 18
    const-string p0, "startEnrollment fail : Not open flip"

    .line 19
    .line 20
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mIsFaceManagerBinded:Z

    .line 25
    .line 26
    if-eqz v0, :cond_3

    .line 27
    .line 28
    const-string v0, "startEnrollment"

    .line 29
    .line 30
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    new-instance v0, Landroid/os/CancellationSignal;

    .line 34
    .line 35
    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    .line 36
    .line 37
    .line 38
    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mCancellationSignal:Landroid/os/CancellationSignal;

    .line 39
    .line 40
    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mIsWearingGlasses:Z

    .line 41
    .line 42
    if-eqz v0, :cond_1

    .line 43
    .line 44
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    .line 45
    .line 46
    invoke-virtual {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->requestEnrollPause()V

    .line 47
    .line 48
    .line 49
    :cond_1
    const v0, 0x7f0a00ca

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    .line 57
    .line 58
    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mTextureView:Landroid/view/View;
    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    .line 76
    .line 77
    iget v3, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mUserId:I

    .line 78
    .line 79
    iget-object v4, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mHWToken:[B

    .line 80
    .line 81
    iget-object v5, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mCancellationSignal:Landroid/os/CancellationSignal;

    .line 82
    .line 83
    iget-object v6, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mEnrollmentCallback:Lcom/samsung/android/bio/face/SemBioFaceManager$EnrollmentCallback;

    
    const/4 v9, 0x0
    new-array v7, v9, [I

    new-instance v10, Landroid/hardware/face/FaceEnrollOptions$Builder;
    invoke-direct {v10}, Landroid/hardware/face/FaceEnrollOptions$Builder;-><init>()V
    invoke-virtual {v10}, Landroid/hardware/face/FaceEnrollOptions$Builder;->build()Landroid/hardware/face/FaceEnrollOptions;

    .line 94
    .line 95
    .line 96
    move-result-object v10

    .line 97
    const/4 v9, 0x1

    .line 98
    move-object v0, v2    # mFaceManager
    move-object v1, v4    # token
    move-object v2, v5    # cancellation
    move v3, v3           # userId (int → move)
    move-object v4, v6    # callback
    move-object v5, p1    # texture

    invoke-virtual/range {v0 .. v5}, 
    Lcom/samsung/android/bio/face/SemBioFaceManager;->enroll(
        [B
        Landroid/os/CancellationSignal;
        I
        Lcom/samsung/android/bio/face/SemBioFaceManager$EnrollmentCallback;
        Landroid/view/View;
    )V

    .line 99
    .line 100
    .line 101
    :cond_3
    return-void
.end method

.method public final startHelpGuideEffect(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mFaceGuideText:Landroid/widget/TextView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string p0, "BSS_FaceEnrollActivity"

    .line 6
    .line 7
    const-string p1, "Help view is null : close effect"

    .line 8
    .line 9
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-boolean p0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mIsGlassGuideShown:Z

    .line 14
    .line 15
    if-eqz p0, :cond_1

    .line 16
    .line 17
    return-void

    .line 18
    :cond_1
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method
