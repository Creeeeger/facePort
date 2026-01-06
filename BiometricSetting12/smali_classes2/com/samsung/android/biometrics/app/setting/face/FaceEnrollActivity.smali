.class public Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;
.super Landroid/app/Activity;
.source "FaceEnrollActivity.java"


# static fields
.field private static final BACK_KEY_LATENCY:I = 0x7d0

.field private static final ENROLL_FINISH:I = 0x64

.field private static final ENROLL_GUIDE_EFFECT_OFF:I = 0x0

.field private static final ENROLL_GUIDE_EFFECT_ON:I = 0x1

.field private static final ENROLL_RESULT_FAIL:I = 0x0

.field private static final ENROLL_RESULT_OK:I = -0x1

.field private static final ENROLL_RESULT_PPP_TIMEOUT:I = -0x3

.field private static final ENROLL_RESULT_SHOW_DISCLAIMER:I = -0x5

.field private static final ENROLL_RESULT_TIMEOUT:I = -0x2

.field private static final ENROLL_RESULT_TOO_DARK:I = -0x4

.field private static final EXTRA_ATTR_WEAR_GLASSES:Ljava/lang/String; = "face_wear_glasses"

.field private static final EXTRA_KEY_CHALLENGE_TOKEN:Ljava/lang/String; = "hw_auth_token"

.field private static final EXTRA_KEY_FACE_DISCLAIMER:Ljava/lang/String; = "face_disclaimer_key"

.field private static final EXTRA_KEY_FACE_ENROLL_RETRY:Ljava/lang/String; = "face_enroll_retry"

.field private static final HEIGHT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "BSS_FaceEnrollActivity"


# instance fields
.field private mBackHandler:Landroid/os/Handler;

.field private mCameraPreview:Landroid/widget/ImageView;

.field private mCancellationSignal:Landroid/os/CancellationSignal;

.field private mDisplayType:I

.field private mEnrollAnimationView:Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;

.field private mEnrollFragment:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollFragment;

.field private mEnrollPaused:Z

.field private mEnrollmentCallback:Lcom/samsung/android/bio/face/SemBioFaceManager$EnrollmentCallback;

.field private mErrorDialog:Landroid/app/AlertDialog;

.field private mExitToast:Landroid/widget/Toast;

.field private mFaceGuideText:Landroid/widget/TextView;

.field private mFaceHelpGuideText:Landroid/widget/TextView;

.field private mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

.field private mFaceProgressText:Landroid/widget/TextView;

.field private mGlassesOffVi:Lcom/airbnb/lottie/LottieAnimationView;

.field private mGuideContinueBtn:Landroid/widget/Button;

.field protected mHWToken:[B

.field private mHelpHandler:Landroid/os/Handler;

.field private mHelpRunnable:Ljava/lang/Runnable;

.field private mIsBackSecond:Z

.field private mIsCheckedNotchSupport:Z

.field private mIsEnrolling:Z

.field private mIsFaceManagerBinded:Z

.field private mIsGlassGuideShown:Z

.field private mIsHelpEnabled:Z

.field private mIsPreviewStart:Z

.field protected mIsSetupWizard:Z

.field private mIsSpokenPositionCorrect:Z

.field private mIsSupportDualDisplay:Z

.field private mIsTalkbackEnabled:Z

.field private mIsUSA:Z

.field protected mIsWearingGlasses:Z

.field private mLastDecodingTimestamp:J

.field private mPreviewCBHandler:Landroid/os/Handler;

.field private mPreviewCBThread:Landroid/os/HandlerThread;

.field private mPreviewData:[B

.field private mPreviewHandler:Landroid/os/Handler;

.field private mPreviewImage:Landroid/graphics/Bitmap;

.field private mPunchCutView:Landroid/view/View;

.field private mPunchHoleIcon:Lcom/airbnb/lottie/LottieAnimationView;

.field private mSecuredKnoxLogoView:Landroid/view/View;

.field private mSetupWizardNextButton:Landroid/widget/Button;

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field private mSoundPool:Landroid/media/SoundPool;

.field private mTts:Landroid/speech/tts/TextToSpeech;

.field private mUserId:I


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mIsFaceManagerBinded:Z

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mHWToken:[B

    iput-boolean v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mIsWearingGlasses:Z

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mFaceGuideText:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mFaceHelpGuideText:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mFaceProgressText:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mGlassesOffVi:Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mGuideContinueBtn:Landroid/widget/Button;

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mCameraPreview:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mEnrollAnimationView:Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mSetupWizardNextButton:Landroid/widget/Button;

    iput-boolean v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mIsUSA:Z

    new-instance v2, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollFragment;

    invoke-direct {v2}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollFragment;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mEnrollFragment:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollFragment;

    iput-boolean v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mIsHelpEnabled:Z

    iput-boolean v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mIsEnrolling:Z

    iput-boolean v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mIsBackSecond:Z

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mHelpHandler:Landroid/os/Handler;

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mHelpRunnable:Ljava/lang/Runnable;

    new-instance v2, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$1;-><init>(Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;)V

    iput-object v2, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mBackHandler:Landroid/os/Handler;

    iput-boolean v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mIsSetupWizard:Z

    iput-boolean v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mEnrollPaused:Z

    iput-boolean v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mIsTalkbackEnabled:Z

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mTts:Landroid/speech/tts/TextToSpeech;

    iput-boolean v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mIsCheckedNotchSupport:Z

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mPunchHoleIcon:Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mPunchCutView:Landroid/view/View;

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mSecuredKnoxLogoView:Landroid/view/View;

    sget-boolean v1, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FEATURE_SUPPORT_DUAL_DISPLAY:Z

    iput-boolean v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mIsSupportDualDisplay:Z

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mPreviewImage:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mPreviewData:[B

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mPreviewHandler:Landroid/os/Handler;

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mPreviewCBHandler:Landroid/os/Handler;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mLastDecodingTimestamp:J

    new-instance v0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$5;-><init>(Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;)V

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mEnrollmentCallback:Lcom/samsung/android/bio/face/SemBioFaceManager$EnrollmentCallback;

    return-void
.end method

.method static synthetic access$002(Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mIsBackSecond:Z

    return p1
.end method

.method static synthetic access$100(Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mIsCheckedNotchSupport:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->startPreviewImageEffect()V

    return-void
.end method

.method static synthetic access$102(Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mIsCheckedNotchSupport:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mIsHelpEnabled:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mIsHelpEnabled:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mIsTalkbackEnabled:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;Z)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->getPositionGuideText(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->runTextToSpeech(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;IZI)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->setHelpString(IZI)V

    return-void
.end method

.method static synthetic access$1600(Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mHelpHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mHelpRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mHelpRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;)Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mEnrollAnimationView:Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->pausePunchHoleAnimation()V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;Landroid/view/DisplayCutout;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->isSupportNotch(Landroid/view/DisplayCutout;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mIsFaceManagerBinded:Z

    return v0
.end method

.method static synthetic access$2100(Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;ILjava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->showFaceErrorDialog(ILjava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mPreviewHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mPreviewCBHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;)[B
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mPreviewData:[B

    return-object v0
.end method

.method static synthetic access$2402(Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;[B)[B
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mPreviewData:[B

    return-object p1
.end method

.method static synthetic access$2500(Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mPreviewImage:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mPreviewImage:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$2600(Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;)J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mLastDecodingTimestamp:J

    return-wide v0
.end method

.method static synthetic access$2602(Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;J)J
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mLastDecodingTimestamp:J

    return-wide p1
.end method

.method static synthetic access$2700(Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mIsPreviewStart:Z

    return v0
.end method

.method static synthetic access$2702(Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mIsPreviewStart:Z

    return p1
.end method

.method static synthetic access$2800(Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mCameraPreview:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->setDisplayCutOutModelUi()V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;)Landroid/speech/tts/TextToSpeech;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mTts:Landroid/speech/tts/TextToSpeech;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mIsEnrolling:Z

    return v0
.end method

.method static synthetic access$502(Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mIsEnrolling:Z

    return p1
.end method

.method static synthetic access$600(Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->startHelpGuideEffect(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mEnrollPaused:Z

    return v0
.end method

.method static synthetic access$702(Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mEnrollPaused:Z

    return p1
.end method

.method static synthetic access$802(Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mIsSpokenPositionCorrect:Z

    return p1
.end method

.method static synthetic access$900(Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->startGlassesGuide()V

    return-void
.end method

.method private dismissSecuredKnoxLogo()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mSecuredKnoxLogoView:Landroid/view/View;

    if-eqz v0, :cond_0

    const-string v0, "window"

    invoke-virtual {p0, v0}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mSecuredKnoxLogoView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mSecuredKnoxLogoView:Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BSS_FaceEnrollActivity"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private getAlphaAnimation(FFI)Landroid/view/animation/AlphaAnimation;
    .locals 6

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, p1, p2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    int-to-long v1, p3

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v2, 0x3ea8f5c3    # 0.33f

    const/4 v3, 0x0

    const v4, 0x3e4ccccd    # 0.2f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    return-object v0
.end method

.method private getFaceManager()Z
    .locals 3

    const-string v0, "BSS_FaceEnrollActivity"

    const-string v1, "getFaceManager"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mIsFaceManagerBinded:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    return v2

    :cond_0
    invoke-static {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/bio/face/SemBioFaceManager;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    if-nez v1, :cond_1

    const-string v1, "getFaceManager() : mFaceManager == null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mIsFaceManagerBinded:Z

    return v0

    :cond_1
    iput-boolean v2, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mIsFaceManagerBinded:Z

    return v2
.end method

.method private getPositionGuideText(Z)Ljava/lang/String;
    .locals 7

    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mIsTalkbackEnabled:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mIsUSA:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v0, :cond_0

    const v0, 0x7f10006d

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b000b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0b000c

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v1

    invoke-virtual {p0, v0, v3}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const v0, 0x7f0b000a

    const v4, 0x7f0b0009

    if-eqz p1, :cond_1

    const v5, 0x7f10006f

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v1

    invoke-virtual {p0, v5, v3}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const v5, 0x7f10006e

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v1

    invoke-virtual {p0, v5, v3}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const v0, 0x7f10006b

    invoke-virtual {p0, v0}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private hideGlassesGuide(Landroid/view/View;)V
    .locals 5

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    const/16 v2, 0xe6

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->getAlphaAnimation(FFI)Landroid/view/animation/AlphaAnimation;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mIsGlassGuideShown:Z

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mFaceGuideText:Landroid/widget/TextView;

    const v3, 0x7f1000d4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    const/4 v2, -0x1

    const/4 v3, 0x1

    const/16 v4, 0x14a

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->setHelpString(IZI)V

    const/16 v2, 0x8

    if-eqz p1, :cond_0

    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mGlassesOffVi:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mGlassesOffVi:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v1, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mGlassesOffVi:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mCameraPreview:Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mEnrollAnimationView:Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->startScanEffect()V

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/samsung/android/bio/face/SemBioFaceManager;->requestEnrollResume()V

    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->playPunchHoleAnimation()V

    :cond_4
    iget-boolean v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mIsSetupWizard:Z

    if-eqz v1, :cond_5

    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->showSecuredKnoxLogo()V

    :cond_5
    return-void
.end method

.method private isSupportNotch(Landroid/view/DisplayCutout;)Z
    .locals 5

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "config_mainBuiltInDisplayCutoutForUDC"

    const-string v3, "string"

    const-string v4, "android"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez p1, :cond_0

    const-string v2, ""

    invoke-virtual {p0, v1}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_0

    return v0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "BSS_FaceEnrollActivity"

    const-string v3, "Notch resources not found"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method static synthetic lambda$playSuccessSound$4(IFLandroid/media/SoundPool;II)V
    .locals 7

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v0, p2

    move v1, p0

    move v2, p1

    move v3, p1

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    return-void
.end method

.method private pausePunchHoleAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mPunchHoleIcon:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mPunchCutView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mPunchHoleIcon:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->pauseAnimation()V

    :cond_0
    return-void
.end method

.method private playPunchHoleAnimation()V
    .locals 2

    invoke-static {p0}, Lcom/samsung/android/biometrics/app/setting/Utils;->isOneHandedModeActive(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->pausePunchHoleAnimation()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mPunchHoleIcon:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mPunchCutView:Landroid/view/View;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mPunchHoleIcon:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    :cond_1
    return-void
.end method

.method private playSuccessSound()V
    .locals 8

    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    new-instance v1, Landroid/media/SoundPool$Builder;

    invoke-direct {v1}, Landroid/media/SoundPool$Builder;-><init>()V

    invoke-virtual {v1, v0}, Landroid/media/SoundPool$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/SoundPool$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/media/SoundPool$Builder;->setMaxStreams(I)Landroid/media/SoundPool$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/SoundPool$Builder;->build()Landroid/media/SoundPool;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mSoundPool:Landroid/media/SoundPool;

    const-string v1, "audio"

    invoke-virtual {p0, v1}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v3

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v4

    if-lez v3, :cond_0

    int-to-float v5, v4

    int-to-float v6, v3

    div-float/2addr v5, v6

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    iget-object v6, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mSoundPool:Landroid/media/SoundPool;

    const/high16 v7, 0x7f0f0000

    invoke-virtual {v6, p0, v7, v2}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    iget-object v6, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mSoundPool:Landroid/media/SoundPool;

    new-instance v7, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$$ExternalSyntheticLambda3;

    invoke-direct {v7, v2, v5}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$$ExternalSyntheticLambda3;-><init>(IF)V

    invoke-virtual {v6, v7}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    return-void
.end method

.method private releaseFaceManager()V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mIsFaceManagerBinded:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mCancellationSignal:Landroid/os/CancellationSignal;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    iput-object v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mCancellationSignal:Landroid/os/CancellationSignal;

    :cond_0
    iput-object v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mIsFaceManagerBinded:Z

    :cond_1
    return-void
.end method

.method private removePunchHoleAnimation()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mPunchCutView:Landroid/view/View;

    if-eqz v0, :cond_0

    const-string v0, "window"

    invoke-virtual {p0, v0}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mPunchCutView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mPunchCutView:Landroid/view/View;

    iput-object v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mPunchHoleIcon:Lcom/airbnb/lottie/LottieAnimationView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BSS_FaceEnrollActivity"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private runTextToSpeech(Ljava/lang/String;I)V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mIsTalkbackEnabled:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mTts:Landroid/speech/tts/TextToSpeech;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    :cond_1
    return-void
.end method

.method private setDisplayCutOutModelUi()V
    .locals 10

    const-string v0, "BSS_FaceEnrollActivity"

    const-string v1, "setDisplayCutOutModelUi s"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "layout_inflater"

    invoke-virtual {p0, v1}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const v2, 0x7f0d0027

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mPunchCutView:Landroid/view/View;

    const v3, 0x7f0a0111

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v2, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mPunchHoleIcon:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-static {p0}, Lcom/samsung/android/biometrics/app/setting/Utils;->isNightThemeOn(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mPunchHoleIcon:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f10007d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mPunchHoleIcon:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f10007e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mPunchHoleIcon:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/LottieAnimationView;->loop(Z)V

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mPunchHoleIcon:Lcom/airbnb/lottie/LottieAnimationView;

    sget-object v4, Lcom/airbnb/lottie/RenderMode;->HARDWARE:Lcom/airbnb/lottie/RenderMode;

    invoke-virtual {v2, v4}, Lcom/airbnb/lottie/LottieAnimationView;->setRenderMode(Lcom/airbnb/lottie/RenderMode;)V

    new-instance v2, Lcom/samsung/android/biometrics/app/setting/face/PunchHoleVIHelper;

    invoke-direct {v2, p0}, Lcom/samsung/android/biometrics/app/setting/face/PunchHoleVIHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/samsung/android/biometrics/app/setting/face/PunchHoleVIHelper;->getPunchHoleVIRect()Landroid/graphics/Rect;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mPunchHoleIcon:Lcom/airbnb/lottie/LottieAnimationView;

    iget v6, v4, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Lcom/airbnb/lottie/LottieAnimationView;->setTranslationX(F)V

    iget-object v5, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mPunchHoleIcon:Lcom/airbnb/lottie/LottieAnimationView;

    iget v6, v4, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Lcom/airbnb/lottie/LottieAnimationView;->setTranslationY(F)V

    iget-object v5, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mPunchHoleIcon:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v5}, Lcom/airbnb/lottie/LottieAnimationView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v6

    iput v6, v5, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v6

    iput v6, v5, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget-object v6, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mPunchHoleIcon:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v6, v5}, Lcom/airbnb/lottie/LottieAnimationView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    const/16 v7, 0x7d8

    const/16 v8, 0x128

    const/4 v9, -0x3

    invoke-direct {v6, v7, v8, v9}, Landroid/view/WindowManager$LayoutParams;-><init>(III)V

    iput v3, v6, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    const v7, 0x7f09001c

    invoke-static {p0, v7, v3}, Lcom/samsung/android/biometrics/app/setting/Utils;->getLengthFromPercent(Landroid/content/Context;II)D

    move-result-wide v7

    double-to-int v3, v7

    iput v3, v6, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 v3, 0x30

    iput v3, v6, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const-string v3, "window"

    invoke-virtual {p0, v3}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    iget-object v7, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mPunchCutView:Landroid/view/View;

    invoke-interface {v3, v7, v6}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const-string v7, "setDisplayCutOutModelUi e"

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private setHelpString(IZI)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mFaceHelpGuideText:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    iget-boolean v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mIsGlassGuideShown:Z

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz p2, :cond_1

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, v2, v1, p3}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->getAlphaAnimation(FFI)Landroid/view/animation/AlphaAnimation;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mFaceHelpGuideText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void

    :cond_1
    const/4 v0, 0x0

    sparse-switch p1, :sswitch_data_0

    const/4 v3, 0x0

    goto :goto_0

    :sswitch_0
    const v3, 0x7f100072

    invoke-virtual {p0, v3}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :sswitch_1
    const v3, 0x7f100073

    invoke-virtual {p0, v3}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :sswitch_2
    const v3, 0x7f100070

    invoke-virtual {p0, v3}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :sswitch_3
    invoke-direct {p0, v0}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->getPositionGuideText(Z)Ljava/lang/String;

    move-result-object v3

    nop

    :goto_0
    iget-object v4, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mFaceHelpGuideText:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0, v1, v2, p3}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->getAlphaAnimation(FFI)Landroid/view/animation/AlphaAnimation;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mFaceHelpGuideText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mFaceHelpGuideText:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mFaceHelpGuideText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void

    :cond_3
    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_3
        0x3 -> :sswitch_2
        0x5 -> :sswitch_3
        0x6 -> :sswitch_3
        0x3f7 -> :sswitch_1
        0x3f9 -> :sswitch_0
    .end sparse-switch
.end method

.method private setViewHeight(Landroid/view/View;D)V
    .locals 3

    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    double-to-int v1, p2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setGuIComponentHeight Error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BSS_FaceEnrollActivity"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private showFaceErrorDialog(ILjava/lang/CharSequence;)V
    .locals 5

    invoke-static {p0}, Lcom/samsung/android/biometrics/app/setting/Utils;->isNightThemeOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    :goto_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f10005d

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, p1}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;I)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/16 v2, 0x3ed

    if-ne p1, v2, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f10005f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100064

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    :goto_1
    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->dismissSecuredKnoxLogo()V

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mErrorDialog:Landroid/app/AlertDialog;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f06006e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTextColor(I)V

    return-void
.end method

.method private showFolderOpenDialog()V
    .locals 7

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10005f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10005e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/samsung/android/biometrics/app/setting/Utils;->isNightThemeOn(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :cond_0
    const/4 v2, 0x5

    :goto_0
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f10005d

    new-instance v5, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v4

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f06006e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setTextColor(I)V

    return-void
.end method

.method private showSecuredKnoxLogo()V
    .locals 7

    const-string v0, "showSecuredKnoxLogo error : + "

    const-string v1, "BSS_FaceEnrollActivity"

    const-string v2, "showSecuredKnoxLogo"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "layout_inflater"

    invoke-virtual {p0, v2}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    const v3, 0x7f0d0029

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mSecuredKnoxLogoView:Landroid/view/View;

    :try_start_0
    new-instance v3, Landroid/view/WindowManager$LayoutParams;

    const/16 v4, 0x7d8

    const/16 v5, 0x128

    const/4 v6, -0x3

    invoke-direct {v3, v4, v5, v6}, Landroid/view/WindowManager$LayoutParams;-><init>(III)V

    const v4, 0x800055

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f07013b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f07013d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    const-string v4, "window"

    invoke-virtual {p0, v4}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    iget-object v5, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mSecuredKnoxLogoView:Landroid/view/View;

    invoke-interface {v4, v5, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/view/WindowManager$InvalidDisplayException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/view/WindowManager$InvalidDisplayException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_1
    move-exception v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/view/WindowManager$BadTokenException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    nop

    :goto_1
    return-void
.end method

.method private startCompleteGuideEffect()V
    .locals 6

    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->playSuccessSound()V

    iget v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mUserId:I

    const/4 v1, 0x1

    const/16 v2, 0x64

    invoke-static {p0, v0, v1, v2}, Lcom/samsung/android/biometrics/app/setting/Utils;->playVibration(Landroid/content/Context;III)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mFaceGuideText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v4, 0xfa

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mFaceGuideText:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mFaceGuideText:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mFaceGuideText:Landroid/widget/TextView;

    const v2, 0x7f10005c

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mFaceGuideText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mFaceHelpGuideText:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    const v0, 0x7f0a009f

    invoke-virtual {p0, v0}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->semRequestAccessibilityFocus()Z

    :cond_2
    return-void
.end method

.method private startGlassesGuide()V
    .locals 5

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const/16 v2, 0xe6

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->getAlphaAnimation(FFI)Landroid/view/animation/AlphaAnimation;

    move-result-object v0

    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->pausePunchHoleAnimation()V

    iget v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mUserId:I

    const/4 v2, 0x1

    const/16 v3, 0x64

    invoke-static {p0, v1, v2, v3}, Lcom/samsung/android/biometrics/app/setting/Utils;->playVibration(Landroid/content/Context;III)V

    iget-boolean v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mIsSetupWizard:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->dismissSecuredKnoxLogo()V

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mCameraPreview:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    const v3, 0x7f060075

    invoke-virtual {p0, v3}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setColorFilter(I)V

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mEnrollAnimationView:Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->stopScanEffect()V

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mEnrollAnimationView:Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;

    invoke-virtual {v1}, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->setErrorState()V

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mGlassesOffVi:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    invoke-static {p0}, Lcom/samsung/android/biometrics/app/setting/Utils;->isNightThemeOn(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mGlassesOffVi:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v4, "face_help_glasses_dark.json"

    invoke-virtual {v1, v4}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mGlassesOffVi:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mGlassesOffVi:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v1, v3}, Lcom/airbnb/lottie/LottieAnimationView;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mGlassesOffVi:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v4, -0x1

    invoke-virtual {v1, v4}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatCount(I)V

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mGlassesOffVi:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    const/16 v1, 0x14a

    invoke-direct {p0, v4, v2, v1}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->setHelpString(IZI)V

    const v1, 0x7f100074

    invoke-virtual {p0, v1}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mFaceGuideText:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0, v1, v3}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->runTextToSpeech(Ljava/lang/String;I)V

    const v4, 0x7f10004f

    invoke-virtual {p0, v4}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, v2}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->runTextToSpeech(Ljava/lang/String;I)V

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mGuideContinueBtn:Landroid/widget/Button;

    if-eqz v1, :cond_7

    iget-boolean v4, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mIsSetupWizard:Z

    if-eqz v4, :cond_5

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mSetupWizardNextButton:Landroid/widget/Button;

    if-eqz v1, :cond_7

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mSetupWizardNextButton:Landroid/widget/Button;

    new-instance v2, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$$ExternalSyntheticLambda5;-><init>(Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_5
    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    iput-boolean v2, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mIsGlassGuideShown:Z

    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mGuideContinueBtn:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_6
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mGuideContinueBtn:Landroid/widget/Button;

    new-instance v2, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$$ExternalSyntheticLambda6;-><init>(Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_7
    :goto_0
    return-void
.end method

.method private startHelpGuideEffect(ILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mFaceGuideText:Landroid/widget/TextView;

    if-nez v0, :cond_0

    const-string v0, "BSS_FaceEnrollActivity"

    const-string v1, "Help view is null : close effect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mIsGlassGuideShown:Z

    if-eqz v1, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    if-nez p1, :cond_3

    iget-boolean v2, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mIsHelpEnabled:Z

    if-eqz v2, :cond_3

    const v2, 0x7f1000d4

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    const/4 v0, -0x1

    const/16 v2, 0x14a

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->setHelpString(IZI)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mIsHelpEnabled:Z

    :cond_3
    :goto_0
    return-void
.end method

.method private startPreviewImageEffect()V
    .locals 9

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mFaceProgressText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mFaceGuideText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v3, 0xe6

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    new-instance v3, Landroid/view/animation/PathInterpolator;

    const v4, 0x3ea8f5c3    # 0.33f

    const v5, 0x3e4ccccd    # 0.2f

    invoke-direct {v3, v4, v1, v5, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v3}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    iget-object v6, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mFaceProgressText:Landroid/widget/TextView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v6, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mFaceProgressText:Landroid/widget/TextView;

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v6, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mFaceGuideText:Landroid/widget/TextView;

    const v7, 0x7f1000d4

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    iget-object v6, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mFaceGuideText:Landroid/widget/TextView;

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    new-instance v6, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v6, v2, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v7, 0x64

    invoke-virtual {v6, v7, v8}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    new-instance v7, Landroid/view/animation/PathInterpolator;

    invoke-direct {v7, v4, v1, v5, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v6, v7}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v6, v3}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->playPunchHoleAnimation()V

    :cond_0
    return-void
.end method

.method private stopEnrollment()V
    .locals 2

    const-string v0, "BSS_FaceEnrollActivity"

    const-string v1, "stopEnrollment"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mIsFaceManagerBinded:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mCancellationSignal:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mCancellationSignal:Landroid/os/CancellationSignal;

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->releaseFaceManager()V

    return-void
.end method


# virtual methods
.method protected initFaceEnroll(Landroid/view/View;)V
    .locals 6

    const-string v0, "BSS_FaceEnrollActivity"

    const-string v1, "initFaceEnroll"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f0a00b4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mFaceGuideText:Landroid/widget/TextView;

    const v0, 0x7f0a0110

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mFaceProgressText:Landroid/widget/TextView;

    const v0, 0x7f0a00ab

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mGuideContinueBtn:Landroid/widget/Button;

    const v0, 0x7f0a00ac

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mGlassesOffVi:Lcom/airbnb/lottie/LottieAnimationView;

    const v0, 0x7f0a00b5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mFaceHelpGuideText:Landroid/widget/TextView;

    const v0, 0x7f0a012a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mEnrollAnimationView:Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;

    sget-boolean v0, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FEATURE_FACE_HAL:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const v0, 0x7f0a0064

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mCameraPreview:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    sget-boolean v0, Lcom/samsung/android/biometrics/app/setting/Utils;->DEBUG:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v2, 0x2000

    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    :cond_1
    invoke-static {p0}, Lcom/samsung/android/biometrics/app/setting/Utils;->isFolderModel(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mIsSupportDualDisplay:Z

    invoke-static {p0, v0}, Lcom/samsung/android/biometrics/app/setting/Utils;->getFolderOpenState(Landroid/content/Context;Z)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->showFolderOpenDialog()V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mFaceProgressText:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    iget-boolean v2, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mIsTalkbackEnabled:Z

    if-eqz v2, :cond_3

    new-instance v2, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$3;

    invoke-direct {v2, p0}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$3;-><init>(Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mFaceProgressText:Landroid/widget/TextView;

    const v2, 0x7f100061

    invoke-virtual {p0, v2}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/CharSequence;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v1

    const-string v5, "%d"

    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v1

    invoke-static {v2, v4}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mFaceGuideText:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    iget-boolean v2, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mIsTalkbackEnabled:Z

    if-eqz v2, :cond_5

    invoke-direct {p0, v1}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->getPositionGuideText(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mFaceGuideText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mGuideContinueBtn:Landroid/widget/Button;

    if-eqz v0, :cond_6

    iget-boolean v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mIsSetupWizard:Z

    if-eqz v1, :cond_6

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    :cond_6
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mEnrollAnimationView:Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->showStartingAnimation()V

    :cond_7
    return-void
.end method

.method protected initSetupWizardUi()V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mIsSetupWizard:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0a00a1

    invoke-virtual {p0, v0}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f0a00f6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mSetupWizardNextButton:Landroid/widget/Button;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mSetupWizardNextButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mSetupWizardNextButton:Landroid/widget/Button;

    new-instance v1, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$$ExternalSyntheticLambda4;-><init>(Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method public synthetic lambda$initSetupWizardUi$1$FaceEnrollActivity(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->setEnrollFragment()V

    return-void
.end method

.method public synthetic lambda$onMultiWindowModeChanged$0$FaceEnrollActivity()V
    .locals 2

    const v0, 0x7f100059

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public synthetic lambda$showFaceErrorDialog$5$FaceEnrollActivity(ILandroid/content/DialogInterface;)V
    .locals 1

    const/16 v0, 0x3ed

    if-eq p1, v0, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->setEnrollResult(I)V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, -0x3

    invoke-virtual {p0, v0}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->setEnrollResult(I)V

    :goto_1
    return-void
.end method

.method public synthetic lambda$showFolderOpenDialog$6$FaceEnrollActivity(Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->setEnrollResult(I)V

    return-void
.end method

.method public synthetic lambda$showFolderOpenDialog$7$FaceEnrollActivity(Landroid/content/DialogInterface;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->setEnrollResult(I)V

    return-void
.end method

.method public synthetic lambda$startGlassesGuide$2$FaceEnrollActivity(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->hideGlassesGuide(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$startGlassesGuide$3$FaceEnrollActivity(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->hideGlassesGuide(Landroid/view/View;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    const-string v0, "BSS_FaceEnrollActivity"

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget v0, p1, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    iget-boolean v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mIsSupportDualDisplay:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mDisplayType:I

    if-eq v0, v1, :cond_1

    const v1, 0x7f10005b

    invoke-virtual {p0, v1}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    iget-boolean v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mIsSetupWizard:Z

    if-eqz v1, :cond_0

    const/4 v1, -0x5

    invoke-virtual {p0, v1}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->setEnrollResult(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->finish()V

    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "BSS_FaceEnrollActivity"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, " "

    invoke-virtual {p0, v0}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->setTitle(Ljava/lang/CharSequence;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0d0028

    invoke-virtual {p0, v0}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.biometrics.face"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FEATURE_FACE_HAL:Z

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    iput v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mDisplayType:I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mHelpHandler:Landroid/os/Handler;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mPreviewHandler:Landroid/os/Handler;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Preview Thread"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mPreviewCBThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mPreviewCBThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mPreviewCBHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "fromSetupWizard"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mIsSetupWizard:Z

    invoke-virtual {p0, v2}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-static {}, Lcom/samsung/android/biometrics/app/setting/Utils;->isUSA()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mIsUSA:Z

    invoke-static {p0}, Lcom/samsung/android/biometrics/app/setting/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mIsTalkbackEnabled:Z

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.USER_ID"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mUserId:I

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->initSetupWizardUi()V

    invoke-static {p0}, Lcom/samsung/android/biometrics/app/setting/Utils;->isNightThemeOn(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    or-int/lit16 v0, v0, 0x2000

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v2, 0x7f060075

    invoke-static {p0, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/Window;->setStatusBarColor(I)V

    :cond_0
    const v0, 0x7f0a003f

    invoke-virtual {p0, v0}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    new-instance v1, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$2;-><init>(Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :cond_1
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5

    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mIsBackSecond:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "BSS_FaceEnrollActivity"

    const-string v2, "Face enroll screen is terminated by Back key !!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mIsBackSecond:Z

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mExitToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    invoke-virtual {p0, v1}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->setEnrollResult(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mIsBackSecond:Z

    iget-boolean v2, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mIsTalkbackEnabled:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mBackHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x7d0

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mExitToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    return v0

    :cond_2
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V
    .locals 4

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onMultiWindowModeChanged : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BSS_FaceEnrollActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->setEnrollResult(I)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$$ExternalSyntheticLambda7;-><init>(Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;)V

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 2

    const-string v0, "BSS_FaceEnrollActivity"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->setRequestedOrientation(I)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mTts:Landroid/speech/tts/TextToSpeech;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->stop()I

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    iput-object v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mTts:Landroid/speech/tts/TextToSpeech;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    iput-object v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mSoundPool:Landroid/media/SoundPool;

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->pausePunchHoleAnimation()V

    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->removePunchHoleAnimation()V

    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->dismissSecuredKnoxLogo()V

    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mIsSetupWizard:Z

    if-eqz v0, :cond_2

    const/4 v0, -0x2

    invoke-virtual {p0, v0}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->setEnrollResult(I)V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->stopEnrollment()V

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->finish()V

    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 8

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const-string v0, "BSS_FaceEnrollActivity"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v1, 0x7f10005a

    invoke-virtual {p0, v1}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mExitToast:Landroid/widget/Toast;

    iget-boolean v3, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mIsTalkbackEnabled:Z

    if-eqz v3, :cond_0

    new-instance v3, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$4;

    invoke-direct {v3, p0}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$4;-><init>(Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/Toast;->addCallback(Landroid/widget/Toast$Callback;)V

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    const-string v4, "face_disclaimer_key"

    invoke-interface {v1, v4, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "face_enroll_retry"

    invoke-virtual {v4, v5, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onResume, isRetry = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onResume, isEnabledDisclaimer = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v5, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mIsTalkbackEnabled:Z

    if-eqz v5, :cond_2

    invoke-direct {p0, v3}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->getPositionGuideText(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->setTitle(Ljava/lang/CharSequence;)V

    :cond_2
    iget-boolean v5, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mIsTalkbackEnabled:Z

    if-eqz v5, :cond_3

    new-instance v5, Landroid/speech/tts/TextToSpeech;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v5, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mTts:Landroid/speech/tts/TextToSpeech;

    nop

    new-instance v6, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v6}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/16 v7, 0xb

    invoke-virtual {v6, v7}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/speech/tts/TextToSpeech;->setAudioAttributes(Landroid/media/AudioAttributes;)I

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "sidesync_source_connect"

    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v3, :cond_4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onResume, sidesyncEnabled = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f100062

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->setEnrollResult(I)V

    return-void

    :cond_4
    invoke-static {p0}, Lcom/samsung/android/biometrics/app/setting/Utils;->isDesktopStandaloneMode(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b0008

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    if-ne v6, v3, :cond_5

    const v0, 0x7f100057

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->setEnrollResult(I)V

    return-void

    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "hw_auth_token"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mHWToken:[B

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onResume, mHWToken = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mHWToken:[B

    if-eqz v3, :cond_6

    invoke-static {v3}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_6
    const-string v3, "NULL"

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->getFaceManager()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mHWToken:[B

    if-nez v0, :cond_8

    :cond_7
    const v0, 0x7f100063

    invoke-virtual {p0, v0}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->getString(I)Ljava/lang/String;

    const/4 v2, -0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->showFaceErrorDialog(ILjava/lang/CharSequence;)V

    :cond_8
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mSetupWizardNextButton:Landroid/widget/Button;

    if-eqz v0, :cond_9

    if-eqz v4, :cond_9

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    :cond_9
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->setEnrollFragment()V

    return-void
.end method

.method public readFully(Ljava/io/FileInputStream;I)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v1, p2, [B

    :goto_0
    array-length v2, v1

    sub-int/2addr v2, v0

    invoke-virtual {p1, v1, v0, v2}, Ljava/io/FileInputStream;->read([BII)I

    move-result v2

    if-gtz v2, :cond_0

    return-object v1

    :cond_0
    add-int/2addr v0, v2

    invoke-virtual {p1}, Ljava/io/FileInputStream;->available()I

    move-result p2

    array-length v3, v1

    sub-int/2addr v3, v0

    if-le p2, v3, :cond_1

    add-int v3, v0, p2

    new-array v3, v3, [B

    const/4 v4, 0x0

    invoke-static {v1, v4, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v3

    :cond_1
    goto :goto_0
.end method

.method public setEnrollFragment()V
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "BSS_FaceEnrollActivity"

    const-string v1, "setEnrollFragment fail : isFinishing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f0a00a0

    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mEnrollFragment:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollFragment;

    invoke-virtual {v1, v2, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method

.method public setEnrollProgressText(I)V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mEnrollAnimationView:Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->setProgress(I)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mFaceProgressText:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    const v3, 0x7f100061

    invoke-virtual {p0, v3}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/CharSequence;

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    const-string v6, "%d"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v3, v4}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mIsTalkbackEnabled:Z

    if-eqz v0, :cond_5

    if-lez p1, :cond_2

    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mIsSpokenPositionCorrect:Z

    if-nez v0, :cond_2

    iput-boolean v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mIsSpokenPositionCorrect:Z

    const v0, 0x7f1000d4

    invoke-virtual {p0, v0}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->runTextToSpeech(Ljava/lang/String;I)V

    :cond_2
    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mIsSpokenPositionCorrect:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->isSpeaking()Z

    move-result v0

    if-nez v0, :cond_5

    const/16 v0, 0x1e

    const v3, 0x7f1000d5

    if-ne p1, v0, :cond_3

    invoke-virtual {p0, v3}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->runTextToSpeech(Ljava/lang/String;I)V

    :cond_3
    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mIsWearingGlasses:Z

    if-eqz v0, :cond_4

    const/16 v0, 0x3c

    if-ne p1, v0, :cond_5

    invoke-virtual {p0, v3}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->runTextToSpeech(Ljava/lang/String;I)V

    goto :goto_0

    :cond_4
    const/16 v0, 0x46

    if-ne p1, v0, :cond_5

    invoke-virtual {p0, v3}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->runTextToSpeech(Ljava/lang/String;I)V

    :cond_5
    :goto_0
    const/16 v0, 0x64

    if-ne p1, v0, :cond_8

    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mIsHelpEnabled:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mHelpHandler:Landroid/os/Handler;

    if-eqz v0, :cond_6

    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mHelpRunnable:Ljava/lang/Runnable;

    if-eqz v3, :cond_6

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_6
    const/4 v0, -0x1

    const/16 v3, 0x14a

    invoke-direct {p0, v0, v1, v3}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->setHelpString(IZI)V

    iput-boolean v2, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mIsHelpEnabled:Z

    :cond_7
    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->pausePunchHoleAnimation()V

    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->removePunchHoleAnimation()V

    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->dismissSecuredKnoxLogo()V

    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->startCompleteGuideEffect()V

    :cond_8
    return-void
.end method

.method public setEnrollResult(I)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setEnrollResult to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BSS_FaceEnrollActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mErrorDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-boolean v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mIsWearingGlasses:Z

    const-string v2, "face_wear_glasses"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->setResult(ILandroid/content/Intent;)V

    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->stopEnrollment()V

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->finish()V

    return-void
.end method

.method protected startEnrollment(Landroid/view/View;)V
    .locals 14

    invoke-static {p0}, Lcom/samsung/android/biometrics/app/setting/Utils;->isFolderModel(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "BSS_FaceEnrollActivity"

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mIsSupportDualDisplay:Z

    invoke-static {p0, v0}, Lcom/samsung/android/biometrics/app/setting/Utils;->getFolderOpenState(Landroid/content/Context;Z)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->showFolderOpenDialog()V

    const-string v0, "startEnrollment fail : Not open flip"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mIsFaceManagerBinded:Z

    if-eqz v0, :cond_3

    const-string v0, "startEnrollment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mCancellationSignal:Landroid/os/CancellationSignal;

    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mIsWearingGlasses:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-virtual {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->requestEnrollPause()V

    :cond_1
    invoke-static {}, Lcom/samsung/android/biometrics/app/setting/knox/KnoxUtils;->supportKnoxContainer()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mUserId:I

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mHWToken:[B

    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mCancellationSignal:Landroid/os/CancellationSignal;

    const/4 v4, 0x0

    iget v5, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mUserId:I

    iget-object v6, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mEnrollmentCallback:Lcom/samsung/android/bio/face/SemBioFaceManager$EnrollmentCallback;

    const/4 v7, 0x0

    move-object v8, p1

    invoke-virtual/range {v1 .. v8}, Lcom/samsung/android/bio/face/SemBioFaceManager;->enroll([BLandroid/os/CancellationSignal;IILcom/samsung/android/bio/face/SemBioFaceManager$EnrollmentCallback;Landroid/os/Bundle;Landroid/view/View;)V

    goto :goto_0

    :cond_2
    iget-object v8, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    iget-object v9, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mHWToken:[B

    iget-object v10, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mCancellationSignal:Landroid/os/CancellationSignal;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mEnrollmentCallback:Lcom/samsung/android/bio/face/SemBioFaceManager$EnrollmentCallback;

    move-object v13, p1

    invoke-virtual/range {v8 .. v13}, Lcom/samsung/android/bio/face/SemBioFaceManager;->enroll([BLandroid/os/CancellationSignal;ILcom/samsung/android/bio/face/SemBioFaceManager$EnrollmentCallback;Landroid/view/View;)V

    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->showSecuredKnoxLogo()V

    :cond_3
    return-void
.end method
