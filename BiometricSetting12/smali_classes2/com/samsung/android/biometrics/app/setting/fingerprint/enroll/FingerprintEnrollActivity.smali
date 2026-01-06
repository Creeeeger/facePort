.class public Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;
.super Landroid/app/Activity;
.source "FingerprintEnrollActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$LiftFingerMessage;,
        Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$ReduceScreenMode;,
        Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$EnrollState;
    }
.end annotation


# static fields
.field private static final ANIMATION_BUTTON_IN:I = 0xd1

.field private static final ANIMATION_COMPLETE:I = 0xcd

.field private static final ANIMATION_DIMMING_FINGER:I = 0xca

.field private static final ANIMATION_DIMMING_FINGER_RETURN:I = 0xce

.field private static final ANIMATION_ERROR_IN:I = 0xd2

.field private static final ANIMATION_FADE_IN:I = 0xc8

.field private static final ANIMATION_FADE_OUT:I = 0xc9

.field private static final ANIMATION_GUIDE_IN:I = 0xcf

.field private static final ANIMATION_GUIDE_OUT:I = 0xd0

.field private static final ANIMATION_GUIDE_TEXT_FADEIN:I = 0xcc

.field private static final ANIMATION_GUIDE_TEXT_FADEOUT:I = 0xcb

.field private static final ANIMATION_INVISIBLE:I = 0xd3

.field private static final AUTH_STATE_NOMATCH:I = 0x65

.field private static final AUTH_STATE_READY:I = 0x64

.field private static final BACK_KEY_LATENCY:I = 0x7d0

.field private static final BAD_QUALITY_COUNT_THRESHOLDS:I = 0xa

.field private static final BLANK_TEXT:I = 0x192

.field private static final COMPLETED_TEXT:I = 0x193

.field private static final EXTRA_KEY_CHALLENGE_TOKEN:Ljava/lang/String; = "hw_auth_token"

.field private static final FINGERPRINT_SETTINGS_DESTROY:Ljava/lang/String; = "fingerprint_settings_destroy"

.field private static final GUIDE_DIALOG_FOR_PROTECTIVE_FLIM:I = 0x258

.field private static final LIFT_TEXT:I = 0x191

.field private static final PREF_FINGERPRINT_BLF_OFF_GUIDE_SHOWN:Ljava/lang/String; = "fingerprint_blf_off_guide_shown"

.field private static final PREF_FINGERPRINT_GUIDE_SHOWN:Ljava/lang/String; = "fingerprint_guide_shown"

.field private static final REGISTER_GUIDE_FIRST:I = 0x12c

.field private static final REGISTER_GUIDE_OPEN_PHONE:I = 0x12f

.field private static final REGISTER_GUIDE_SECOND:I = 0x12d

.field private static final REGISTER_GUIDE_SWIPE_ENROLL:I = 0x12e

.field private static final REPOSITION_TEXT:I = 0x194

.field private static final START_TEXT:I = 0x190

.field private static final TAG:Ljava/lang/String; = "BSS_FingerprintEnrollActivity"

.field private static final TIME_AUTH_ERROR_DELAY:I = 0x1388

.field private static final TIME_AUTH_FINISH_DELAY:I = 0x5dc

.field private static final TIME_ENROLL_DELAY:I


# instance fields
.field private fromShowGuideWithTipDialog:Z

.field private mAuthErrorHandler:Landroid/os/Handler;

.field private mAuthErrorImage:Landroid/widget/ImageView;

.field private mAuthErrorRunnable:Ljava/lang/Runnable;

.field private mAuthErrorText:Landroid/widget/TextView;

.field private mAuthGuidePlayCount:I

.field private mAuthenticateCancel:Landroid/os/CancellationSignal;

.field private mBackEnabled:Z

.field private mBackHandler:Landroid/os/Handler;

.field private mCurrentPercent:I

.field private mDetailGuideText:Landroid/widget/TextView;

.field private mDisplayType:I

.field private mEnrollState:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$EnrollState;

.field private mEnrolledCount:I

.field private mEnrollmentCallback:Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;

.field private mEnrollmentCancel:Landroid/os/CancellationSignal;

.field private mExitToast:Landroid/widget/Toast;

.field private mFilmErrorCount:I

.field private mFingerPosition:Landroid/graphics/Rect;

.field private mFinger_ProgressView:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;

.field private mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field private mFirstGuideScreen:Landroid/widget/RelativeLayout;

.field private mGuideStep:I

.field private mGuideTitle:Landroid/widget/TextView;

.field private mHideErrorHandler:Landroid/os/Handler;

.field private mHideErrorRunnable:Ljava/lang/Runnable;

.field private mImageViewKnoxBi:Landroid/widget/ImageView;

.field private mIsBackSecond:Z

.field private mIsBlockedPowerKey:Z

.field private mIsBlockedWinkKey:Z

.field private mIsButtonClicked:Z

.field private mIsCalledLiftMsg:Z

.field private mIsCaptureStarted:Z

.field private mIsDisplaySensor:Z

.field private mIsFingerGestureSet:Z

.field private mIsFinishRegistration:Z

.field private mIsFirstGuideShow:Z

.field private mIsFirstGuideShowClose:Z

.field private mIsForcedPortrait:Z

.field private mIsFromKnoxFingerprintPlus:Z

.field private mIsFromSetupWizard:Z

.field private mIsInMultiWindowMode:Z

.field private mIsPauseRegistration:Z

.field private mIsReCreated:Z

.field private mIsRearSensor:Z

.field private mIsRegisterCompleted:Z

.field private mIsRegisterStarted:Z

.field private mIsRotateGuideShow:Z

.field private mIsSensorInLandscape:Z

.field private mIsShowErrorMsg:Z

.field private mIsShowSensorErrorDialog:Z

.field private mIsShownLiftMsg:Z

.field private mIsSideSensor:Z

.field private mIsSkipGuideScreen:Z

.field private mIsSupportCenterVi:Z

.field private mIsSupportDualDisplay:Z

.field private mIsSupportSecondGuide:Z

.field private mIsSupportSwipeEnroll:Z

.field private mIsSwipeEnrollGuideShow:Z

.field private mIsTouchedOutside:Z

.field private mIsTouchedSensorRectView:Z

.field private mIsTspBlock:Z

.field private mIsVibrationSupport:Z

.field private mKeyboardDialog:Landroid/app/AlertDialog;

.field private mLiftFingerMessage:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$LiftFingerMessage;

.field private mLogging_Dirty:I

.field private mLogging_LiftOff:I

.field private mLogging_Ok:I

.field private mLogging_Partial:I

.field private mLogging_PressHarder:I

.field private mLogging_TooShort:I

.field private mLogging_UpAndDown:I

.field private mMaskViewToken:Landroid/os/IBinder;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mMsgHandler:Landroid/os/Handler;

.field private mMsgRunnable:Ljava/lang/Runnable;

.field private mNextButton:Landroid/widget/Button;

.field private mNextButtonArea:Landroid/widget/RelativeLayout;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mRegisterScreen:Landroid/widget/RelativeLayout;

.field private mSecondGuideScreen:Landroid/widget/RelativeLayout;

.field private mSemAuthCallback:Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$AuthenticationCallback;

.field private mSemFingerprintManager:Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;

.field private mSensorPositionView:Landroid/view/View;

.field private mSensorRectView:Landroid/view/View;

.field private mSensorStatus:I

.field private mShowErrorHandler:Landroid/os/Handler;

.field private mShowErrorRunnable:Ljava/lang/Runnable;

.field private mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field private mStatusBarToken:Landroid/os/IBinder;

.field private mSurface:Landroid/view/Surface;

.field private mSwipeEnrollGuideScreen:Landroid/widget/RelativeLayout;

.field private mTextureView:Landroid/view/TextureView;

.field private mToken:[B

.field private mTts:Landroid/speech/tts/TextToSpeech;

.field private mTxtViewProgress:Landroid/widget/TextView;

.field private mUnfoldGuideScreen:Landroid/widget/RelativeLayout;

.field private mUserId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/samsung/android/biometrics/app/setting/Utils;->isRearSensor()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/samsung/android/biometrics/app/setting/Utils;->isJapanModel()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x7d0

    goto :goto_0

    :cond_0
    const/16 v0, 0x3e8

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    sput v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->TIME_ENROLL_DELAY:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->fromShowGuideWithTipDialog:Z

    iput v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mCurrentPercent:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mTts:Landroid/speech/tts/TextToSpeech;

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mBackEnabled:Z

    iput v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mFilmErrorCount:I

    iput-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mFinger_ProgressView:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;

    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsShowErrorMsg:Z

    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsFirstGuideShow:Z

    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsFirstGuideShowClose:Z

    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsShownLiftMsg:Z

    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsCalledLiftMsg:Z

    iput-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mMsgHandler:Landroid/os/Handler;

    iput-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mMsgRunnable:Ljava/lang/Runnable;

    iput-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mKeyboardDialog:Landroid/app/AlertDialog;

    sget-object v2, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$EnrollState;->NONE:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$EnrollState;

    iput-object v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mEnrollState:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$EnrollState;

    iput-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mToken:[B

    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsPauseRegistration:Z

    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsFromSetupWizard:Z

    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsRegisterStarted:Z

    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsRegisterCompleted:Z

    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsFinishRegistration:Z

    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsSkipGuideScreen:Z

    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsInMultiWindowMode:Z

    iput v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mUserId:I

    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsRotateGuideShow:Z

    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsSwipeEnrollGuideShow:Z

    iput v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mAuthGuidePlayCount:I

    iput v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mSensorStatus:I

    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsRearSensor:Z

    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsSideSensor:Z

    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsDisplaySensor:Z

    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsSensorInLandscape:Z

    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsSupportSwipeEnroll:Z

    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsFingerGestureSet:Z

    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsReCreated:Z

    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsButtonClicked:Z

    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsBackSecond:Z

    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsVibrationSupport:Z

    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsShowSensorErrorDialog:Z

    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsBlockedPowerKey:Z

    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsBlockedWinkKey:Z

    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsForcedPortrait:Z

    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsFromKnoxFingerprintPlus:Z

    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsTouchedSensorRectView:Z

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mStatusBarToken:Landroid/os/IBinder;

    new-instance v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$1;-><init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;)V

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mBackHandler:Landroid/os/Handler;

    new-instance v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$4;-><init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;)V

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mEnrollmentCallback:Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;

    new-instance v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$19;

    invoke-direct {v0, p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$19;-><init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;)V

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mSemAuthCallback:Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$AuthenticationCallback;

    return-void
.end method

.method static synthetic access$002(Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsBackSecond:Z

    return p1
.end method

.method static synthetic access$100(Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;)Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$EnrollState;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mEnrollState:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$EnrollState;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsCalledLiftMsg:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsCalledLiftMsg:Z

    return p1
.end method

.method static synthetic access$102(Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$EnrollState;)Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$EnrollState;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mEnrollState:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$EnrollState;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsRegisterCompleted:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;)Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$LiftFingerMessage;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mLiftFingerMessage:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$LiftFingerMessage;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$LiftFingerMessage;)Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$LiftFingerMessage;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mLiftFingerMessage:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$LiftFingerMessage;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsPauseRegistration:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mCurrentPercent:I

    return v0
.end method

.method static synthetic access$1402(Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mCurrentPercent:I

    return p1
.end method

.method static synthetic access$1500(Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;)Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mFinger_ProgressView:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsSupportCenterVi:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;)I
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->getFingerRegisterText()I

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsShowErrorMsg:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsShowErrorMsg:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->runTextToSpeech(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->setFingerGuideTitle(I)V

    return-void
.end method

.method static synthetic access$2000(Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsSupportSecondGuide:Z

    return v0
.end method

.method static synthetic access$2100(Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsSupportDualDisplay:Z

    return v0
.end method

.method static synthetic access$2200(Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsRotateGuideShow:Z

    return v0
.end method

.method static synthetic access$2300(Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;)Landroid/hardware/fingerprint/FingerprintManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->showGuideScreen(I)V

    return-void
.end method

.method static synthetic access$2500(Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->runCompleteRegistration()V

    return-void
.end method

.method static synthetic access$2600(Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;ILjava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->eventProcess(ILjava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;ILjava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->showSensorErrorDialog(ILjava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsTspBlock:Z

    return v0
.end method

.method static synthetic access$2802(Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsTspBlock:Z

    return p1
.end method

.method static synthetic access$2900(Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->removeErrorMessageHandler()V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->setFingerGuideText(I)V

    return-void
.end method

.method static synthetic access$3000(Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mHideErrorHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mHideErrorRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$3208(Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;)I
    .locals 2

    iget v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mLogging_Partial:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mLogging_Partial:I

    return v0
.end method

.method static synthetic access$3300(Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->showErrorMessage(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$3408(Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;)I
    .locals 2

    iget v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mLogging_Dirty:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mLogging_Dirty:I

    return v0
.end method

.method static synthetic access$3508(Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;)I
    .locals 2

    iget v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mLogging_TooShort:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mLogging_TooShort:I

    return v0
.end method

.method static synthetic access$3608(Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;)I
    .locals 2

    iget v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mLogging_UpAndDown:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mLogging_UpAndDown:I

    return v0
.end method

.method static synthetic access$3708(Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;)I
    .locals 2

    iget v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mLogging_PressHarder:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mLogging_PressHarder:I

    return v0
.end method

.method static synthetic access$3800(Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mMsgHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3802(Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mMsgHandler:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic access$3900(Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mMsgRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$3902(Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mMsgRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$4000(Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsFirstGuideShow:Z

    return v0
.end method

.method static synthetic access$408(Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;)I
    .locals 2

    iget v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mLogging_LiftOff:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mLogging_LiftOff:I

    return v0
.end method

.method static synthetic access$4100(Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsCaptureStarted:Z

    return v0
.end method

.method static synthetic access$4102(Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsCaptureStarted:Z

    return p1
.end method

.method static synthetic access$4200(Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;)Landroid/os/PowerManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->hideGuideScreen(I)V

    return-void
.end method

.method static synthetic access$4400(Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsDisplaySensor:Z

    return v0
.end method

.method static synthetic access$4500(Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsSupportSwipeEnroll:Z

    return v0
.end method

.method static synthetic access$4608(Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;)I
    .locals 2

    iget v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mLogging_Ok:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mLogging_Ok:I

    return v0
.end method

.method static synthetic access$4700(Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;)Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mFirstGuideScreen:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;Landroid/view/ViewGroup;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->setViewVisibility(Landroid/view/ViewGroup;Z)V

    return-void
.end method

.method static synthetic access$4900(Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;)Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mSecondGuideScreen:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsShownLiftMsg:Z

    return v0
.end method

.method static synthetic access$5000(Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->showAuthenticateResult(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$502(Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsShownLiftMsg:Z

    return p1
.end method

.method static synthetic access$5100(Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->fromShowGuideWithTipDialog:Z

    return v0
.end method

.method static synthetic access$5200(Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsTouchedSensorRectView:Z

    return v0
.end method

.method static synthetic access$5202(Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsTouchedSensorRectView:Z

    return p1
.end method

.method static synthetic access$5300(Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsFirstGuideShowClose:Z

    return v0
.end method

.method static synthetic access$5302(Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsFirstGuideShowClose:Z

    return p1
.end method

.method static synthetic access$5400(Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->changeGuideVideo(II)V

    return-void
.end method

.method static synthetic access$5500(Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;)[B
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mToken:[B

    return-object v0
.end method

.method static synthetic access$5600(Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->finishRegistration()V

    return-void
.end method

.method static synthetic access$5700(Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->showKnoxBi(Z)V

    return-void
.end method

.method static synthetic access$5800(Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->setFingerSensorArea(II)V

    return-void
.end method

.method static synthetic access$5900(Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mUserId:I

    return v0
.end method

.method static synthetic access$600(Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mTxtViewProgress:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$6000(Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mEnrolledCount:I

    return v0
.end method

.method static synthetic access$6002(Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mEnrolledCount:I

    return p1
.end method

.method static synthetic access$6100(Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsFromKnoxFingerprintPlus:Z

    return v0
.end method

.method static synthetic access$6200(Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsFromSetupWizard:Z

    return v0
.end method

.method static synthetic access$6300(Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;)Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mNextButtonArea:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$6400(Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mNextButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$6500(Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;)Landroid/media/MediaPlayer;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$6502(Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method static synthetic access$6600(Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->adjustTextureViewRatio(II)V

    return-void
.end method

.method static synthetic access$6700(Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mDisplayType:I

    return v0
.end method

.method static synthetic access$6800(Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->startEnrollment()V

    return-void
.end method

.method static synthetic access$6900(Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->showFingerIconForTalkBack()V

    return-void
.end method

.method static synthetic access$700(Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->startViewAnimation(ILandroid/view/View;)V

    return-void
.end method

.method static synthetic access$7000()I
    .locals 1

    sget v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->TIME_ENROLL_DELAY:I

    return v0
.end method

.method static synthetic access$7100(Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsSwipeEnrollGuideShow:Z

    return v0
.end method

.method static synthetic access$7200(Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->startAuthentication()V

    return-void
.end method

.method static synthetic access$800(Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mDetailGuideText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mGuideTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method private adjustTextureViewRatio(II)V
    .locals 9

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mTextureView:Landroid/view/TextureView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/TextureView;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v1}, Landroid/view/TextureView;->getHeight()I

    move-result v1

    int-to-double v2, p1

    int-to-double v4, p2

    div-double/2addr v2, v4

    int-to-double v4, v1

    mul-double/2addr v4, v2

    double-to-int v4, v4

    sub-int v5, v0, v4

    div-int/lit8 v5, v5, 0x2

    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    iget-object v7, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v7, v6}, Landroid/view/TextureView;->getTransform(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    int-to-float v7, v4

    int-to-float v8, v0

    div-float/2addr v7, v8

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Matrix;->setScale(FF)V

    int-to-float v7, v5

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v7, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v7, v6}, Landroid/view/TextureView;->setTransform(Landroid/graphics/Matrix;)V

    return-void
.end method

.method private cancelEnrollment()V
    .locals 2

    const-string v0, "BSS_FingerprintEnrollActivity"

    const-string v1, "cancelEnrollment"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsPauseRegistration:Z

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mEnrollmentCancel:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    return-void
.end method

.method private changeGuideVideo(II)V
    .locals 4

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->getGuideClipURI(II)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/16 v3, 0x12c

    if-ne p1, v3, :cond_0

    if-ne p2, v2, :cond_0

    iput-boolean v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsFirstGuideShowClose:Z

    :cond_0
    if-eqz v0, :cond_2

    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->reset()V

    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3, p0, v0}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    if-ne p2, v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2, v1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "BSS_FingerprintEnrollActivity"

    const-string v3, "IOException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->finish()V

    :cond_2
    :goto_0
    return-void
.end method

.method private disableSystemKey()V
    .locals 4

    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsRearSensor:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsSideSensor:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FP_FEATURE_SENSOR_SIDE_WINK:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x43a

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->requestSystemKeyEvent(IZ)Z

    iput-boolean v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsBlockedWinkKey:Z

    goto :goto_0

    :cond_1
    const/16 v0, 0x1a

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->requestSystemKeyEvent(IZ)Z

    iput-boolean v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsBlockedPowerKey:Z

    :goto_0
    return-void

    :cond_2
    invoke-static {p0}, Lcom/samsung/android/biometrics/app/setting/Utils;->isNaviBarHideAndGestureTurnOn(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x3

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->requestSystemKeyEvent(IZ)Z

    const/16 v0, 0xbb

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->requestSystemKeyEvent(IZ)Z

    const/16 v0, 0x3e9

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->requestSystemKeyEvent(IZ)Z

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez v0, :cond_3

    nop

    const-string v0, "statusbar"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-eqz v0, :cond_4

    const/high16 v1, 0x1200000

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mStatusBarToken:Landroid/os/IBinder;

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/statusbar/IStatusBarService;->disable(ILandroid/os/IBinder;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StatusBarService : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BSS_FingerprintEnrollActivity"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mBackEnabled:Z

    :cond_5
    return-void
.end method

.method private enableSystemKey()V
    .locals 4

    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsRearSensor:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->isSystemKeyEventRequested(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-direct {p0, v0, v2}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->requestSystemKeyEvent(IZ)Z

    :cond_1
    const/16 v0, 0xbb

    invoke-direct {p0, v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->isSystemKeyEventRequested(I)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, v0, v2}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->requestSystemKeyEvent(IZ)Z

    :cond_2
    const/16 v0, 0x3e9

    invoke-direct {p0, v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->isSystemKeyEventRequested(I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0, v0, v2}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->requestSystemKeyEvent(IZ)Z

    :cond_3
    const/16 v0, 0x1a

    invoke-direct {p0, v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->isSystemKeyEventRequested(I)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0, v0, v2}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->requestSystemKeyEvent(IZ)Z

    iput-boolean v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsBlockedPowerKey:Z

    :cond_4
    const/16 v0, 0x43a

    invoke-direct {p0, v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->isSystemKeyEventRequested(I)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-direct {p0, v0, v2}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->requestSystemKeyEvent(IZ)Z

    iput-boolean v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsBlockedWinkKey:Z

    :cond_5
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mStatusBarToken:Landroid/os/IBinder;

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v1, v3}, Lcom/android/internal/statusbar/IStatusBarService;->disable(ILandroid/os/IBinder;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StatusBarService : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BSS_FingerprintEnrollActivity"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private eventProcess(ILjava/lang/CharSequence;)V
    .locals 3

    move v0, p1

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    new-instance v2, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$5;

    invoke-direct {v2, p0, v0, v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$5;-><init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;ILjava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private finishRegistration()V
    .locals 4

    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsFinishRegistration:Z

    const-string v1, "BSS_FingerprintEnrollActivity"

    if-eqz v0, :cond_0

    const-string v0, "finishRegistration() already run."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v0, "finishRegistration()"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsFinishRegistration:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsReCreated:Z

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mToken:[B

    const-string v3, "hw_auth_token"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string v2, "enrollResult"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->finish()V

    invoke-virtual {p0, v0, v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->semOverridePendingTransition(II)V

    return-void
.end method

.method private getFingerRegisterText()I
    .locals 2

    iget v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mCurrentPercent:I

    const/16 v1, 0x64

    if-ge v0, v1, :cond_0

    const/16 v0, 0x190

    return v0

    :cond_0
    const/16 v0, 0x192

    return v0
.end method

.method private getGuideClipURI(II)Landroid/net/Uri;
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const-string v3, "android.resource://"

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/raw/sec_fingerprint_unfold"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/raw/sec_fingerprint_recognition_tap"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    if-ne p2, v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/raw/sec_fingerprint_h_01"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/raw/sec_fingerprint_h_02"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    if-ne p2, v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/raw/sec_fingerprint_v_01"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/raw/sec_fingerprint_v_02"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    nop

    :goto_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x12c
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private hideGuideScreen(I)V
    .locals 7

    const-wide/16 v0, 0x1f4

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0xc8

    const/16 v5, 0xc9

    const/4 v6, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    invoke-direct {p0, v2}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->showKnoxBi(Z)V

    const/16 v0, 0xd3

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mUnfoldGuideScreen:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->startViewAnimation(ILandroid/view/View;)V

    iget v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mGuideStep:I

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mEnrollState:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$EnrollState;

    sget-object v1, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$EnrollState;->PAUSE:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$EnrollState;

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v0, :cond_6

    sget-object v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$EnrollState;->ENROLL:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$EnrollState;

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mEnrollState:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$EnrollState;

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->semResumeEnroll()Z

    goto/16 :goto_0

    :pswitch_1
    iput-boolean v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsSwipeEnrollGuideShow:Z

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mTextureView:Landroid/view/TextureView;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setVisibility(I)V

    :cond_0
    const v0, 0x7f0a0184

    invoke-virtual {p0, v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v5, v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->startViewAnimation(ILandroid/view/View;)V

    const v0, 0x7f0a018a

    invoke-virtual {p0, v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v4, v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->startViewAnimation(ILandroid/view/View;)V

    goto/16 :goto_0

    :pswitch_2
    invoke-direct {p0, v2}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->showKnoxBi(Z)V

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mSecondGuideScreen:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v5, v2}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->startViewAnimation(ILandroid/view/View;)V

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mRegisterScreen:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v4, v2}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->startViewAnimation(ILandroid/view/View;)V

    iget-boolean v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsFromSetupWizard:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mNextButtonArea:Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_1

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_1
    const/16 v2, 0x190

    invoke-direct {p0, v2}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->setFingerGuideTitle(I)V

    invoke-direct {p0, v2}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->setFingerGuideText(I)V

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$7;

    invoke-direct {v3, p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$7;-><init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;)V

    const-wide/16 v4, 0x12c

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    new-instance v5, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$8;

    invoke-direct {v5, p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$8;-><init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;)V

    invoke-virtual {v4, v5, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :pswitch_3
    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mFirstGuideScreen:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v5, v2}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->startViewAnimation(ILandroid/view/View;)V

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mRegisterScreen:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v4, v2}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->startViewAnimation(ILandroid/view/View;)V

    iput-boolean v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsFirstGuideShow:Z

    iput-boolean v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsTouchedSensorRectView:Z

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mSensorPositionView:Landroid/view/View;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mSensorPositionView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_2
    iput-object v6, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mSensorPositionView:Landroid/view/View;

    :cond_3
    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mSensorRectView:Landroid/view/View;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    if-eqz v2, :cond_4

    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mSensorRectView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_4
    iput-object v6, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mSensorRectView:Landroid/view/View;

    :cond_5
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$6;

    invoke-direct {v3, p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$6;-><init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;)V

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    nop

    :cond_6
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    :cond_7
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mTextureView:Landroid/view/TextureView;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/view/TextureView;->destroyDrawingCache()V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v0, v6}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    iput-object v6, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mTextureView:Landroid/view/TextureView;

    :cond_8
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    iput-object v6, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mSurface:Landroid/view/Surface;

    :cond_9
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x12c
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private initLayoutHeight(Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$ReduceScreenMode;)V
    .locals 13

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->getDisplay()Landroid/view/Display;

    move-result-object v0

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    invoke-static {}, Lcom/samsung/android/biometrics/app/setting/Utils;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, v1, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070186

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v3

    mul-float/2addr v2, v3

    float-to-double v9, v2

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070178

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v2

    iget v3, v1, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    mul-float/2addr v3, v2

    float-to-double v11, v3

    const v4, 0x7f0a011d

    move-object v3, p0

    move-wide v5, v9

    move-wide v7, v11

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->redrawPercentLayout(IDD)V

    const v4, 0x7f0a00a6

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->redrawPercentLayout(IDD)V

    const v4, 0x7f0a013a

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->redrawPercentLayout(IDD)V

    const v4, 0x7f0a0186

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->redrawPercentLayout(IDD)V

    :cond_0
    sget-object v2, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$ReduceScreenMode;->KBD:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$ReduceScreenMode;

    if-ne p1, v2, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070176

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v2

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070175

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v2

    :goto_0
    iget v3, v1, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    mul-float/2addr v3, v2

    float-to-double v3, v3

    const v5, 0x7f0a0117

    invoke-direct {p0, v5, v3, v4}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->setViewHeight(ID)V

    const v5, 0x7f0a0118

    invoke-direct {p0, v5, v3, v4}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->setViewHeight(ID)V

    const v5, 0x7f0a011e

    invoke-direct {p0, v5, v3, v4}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->setViewHeight(ID)V

    const v5, 0x7f0a0184

    invoke-direct {p0, v5, v3, v4}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->setViewHeight(ID)V

    const v5, 0x7f0a018a

    invoke-direct {p0, v5, v3, v4}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->setViewHeight(ID)V

    const v5, 0x7f0a0120

    invoke-direct {p0, v5, v3, v4}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->setViewHeight(ID)V

    iget-boolean v5, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsForcedPortrait:Z

    if-nez v5, :cond_2

    iget v5, v1, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f070174

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v6

    mul-float/2addr v5, v6

    float-to-double v5, v5

    const v7, 0x7f0a00a5

    invoke-direct {p0, v7, v5, v6}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->setViewWidth(ID)V

    const v7, 0x7f0a0139

    invoke-direct {p0, v7, v5, v6}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->setViewWidth(ID)V

    const v7, 0x7f0a0183

    invoke-direct {p0, v7, v5, v6}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->setViewWidth(ID)V

    const v7, 0x7f0a01ac

    invoke-direct {p0, v7, v5, v6}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->setViewWidth(ID)V

    :cond_2
    iget-object v5, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mFinger_ProgressView:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;

    if-eqz v5, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f07017f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v5

    float-to-double v6, v5

    mul-double/2addr v6, v3

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f070177

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v8

    float-to-double v8, v8

    mul-double/2addr v6, v8

    iget-object v8, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mFinger_ProgressView:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;

    double-to-int v9, v6

    double-to-int v10, v6

    invoke-virtual {v8, v9, v10}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;->addEffectView(II)V

    iget-boolean v8, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsForcedPortrait:Z

    if-nez v8, :cond_5

    iget-boolean v8, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsFirstGuideShow:Z

    if-eqz v8, :cond_3

    iget-boolean v8, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsSwipeEnrollGuideShow:Z

    if-nez v8, :cond_5

    :cond_3
    iget-boolean v8, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsRegisterCompleted:Z

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mFinger_ProgressView:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;

    invoke-virtual {v8}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;->setCompleteImage()V

    goto :goto_1

    :cond_4
    iget-object v8, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mFinger_ProgressView:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;

    iget v9, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mCurrentPercent:I

    int-to-float v9, v9

    invoke-virtual {v8, v9}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;->setPercent(F)V

    :cond_5
    :goto_1
    iget-boolean v5, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsDisplaySensor:Z

    if-eqz v5, :cond_7

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->getDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Display;->getRotation()I

    move-result v5

    const v6, 0x7f0a00b2

    const v7, 0x7f0a00a3

    if-nez v5, :cond_6

    const/4 v5, -0x1

    invoke-direct {p0, v7, v5}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->setFingerSensorArea(II)V

    invoke-direct {p0, v6, v5}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->setFingerSensorArea(II)V

    goto :goto_2

    :cond_6
    const/4 v5, 0x0

    invoke-direct {p0, v7, v5}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->setFingerSensorArea(II)V

    invoke-direct {p0, v6, v5}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->setFingerSensorArea(II)V

    :cond_7
    :goto_2
    return-void
.end method

.method private isSystemKeyEventRequested(I)Z
    .locals 4

    const-string v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/view/IWindowManager;->isSystemKeyEventRequested(ILandroid/content/ComponentName;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSystemKeyEventRequested - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BSS_FingerprintEnrollActivity"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1
.end method

.method private isVibrationSupport()Z
    .locals 3

    const-class v0, Landroid/os/Vibrator;

    invoke-virtual {p0, v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Vibrator;->semGetSupportedVibrationType()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/biometrics/app/setting/Utils;->isMinVibrateMagnitude(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private redrawPercentLayout(IDD)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    double-to-int v2, p2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    double-to-int v2, p4

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method

.method private removeErrorMessageHandler()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mHideErrorHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mHideErrorRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mShowErrorHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mShowErrorRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method private requestSystemKeyEvent(IZ)Z
    .locals 4

    nop

    const-string v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-interface {v0, p1, v1, p2}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestSystemKeyEvent - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BSS_FingerprintEnrollActivity"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1
.end method

.method private runCompleteRegistration()V
    .locals 7

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsRegisterCompleted:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsRotateGuideShow:Z

    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mBackEnabled:Z

    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->setResult(I)V

    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->startCompleteEffect()V

    iget v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mLogging_Ok:I

    int-to-long v1, v1

    const/16 v3, 0x203f

    const/16 v4, 0x2040

    invoke-static {v3, v4, v0, v1, v2}, Lcom/samsung/android/biometrics/app/setting/SALoggingHelper;->insertEventLogging(IIIJ)V

    iget v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mLogging_UpAndDown:I

    int-to-long v1, v1

    const/4 v5, 0x2

    invoke-static {v3, v4, v5, v1, v2}, Lcom/samsung/android/biometrics/app/setting/SALoggingHelper;->insertEventLogging(IIIJ)V

    iget v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mLogging_TooShort:I

    int-to-long v1, v1

    const/4 v6, 0x3

    invoke-static {v3, v4, v6, v1, v2}, Lcom/samsung/android/biometrics/app/setting/SALoggingHelper;->insertEventLogging(IIIJ)V

    iget v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mLogging_Partial:I

    int-to-long v1, v1

    const/4 v6, 0x4

    invoke-static {v3, v4, v6, v1, v2}, Lcom/samsung/android/biometrics/app/setting/SALoggingHelper;->insertEventLogging(IIIJ)V

    iget v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mLogging_Dirty:I

    int-to-long v1, v1

    const/4 v6, 0x5

    invoke-static {v3, v4, v6, v1, v2}, Lcom/samsung/android/biometrics/app/setting/SALoggingHelper;->insertEventLogging(IIIJ)V

    iget v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mLogging_LiftOff:I

    int-to-long v1, v1

    const/4 v6, 0x6

    invoke-static {v3, v4, v6, v1, v2}, Lcom/samsung/android/biometrics/app/setting/SALoggingHelper;->insertEventLogging(IIIJ)V

    iget v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mLogging_PressHarder:I

    int-to-long v1, v1

    const/4 v6, 0x7

    invoke-static {v3, v4, v6, v1, v2}, Lcom/samsung/android/biometrics/app/setting/SALoggingHelper;->insertEventLogging(IIIJ)V

    const/16 v1, 0x202a

    invoke-static {v1}, Lcom/samsung/android/biometrics/app/setting/SALoggingHelper;->insertFlowLogging(I)V

    iget-boolean v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsFromSetupWizard:Z

    const/16 v3, 0x2046

    if-eqz v2, :cond_0

    invoke-static {v1, v3, v0}, Lcom/samsung/android/biometrics/app/setting/SALoggingHelper;->insertEventLogging(III)V

    goto :goto_0

    :cond_0
    invoke-static {v1, v3, v5}, Lcom/samsung/android/biometrics/app/setting/SALoggingHelper;->insertEventLogging(III)V

    :goto_0
    return-void
.end method

.method private runTextToSpeech(Ljava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mTts:Landroid/speech/tts/TextToSpeech;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    :cond_0
    return-void
.end method

.method private setFingerGuideText(I)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mDetailGuideText:Landroid/widget/TextView;

    if-nez v0, :cond_0

    const-string v0, "BSS_FingerprintEnrollActivity"

    const-string v1, "mDetailGuideText is NULL"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {p0}, Lcom/samsung/android/biometrics/app/setting/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mDetailGuideText:Landroid/widget/TextView;

    const v1, 0x7f1000b5

    invoke-virtual {p0, v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->runTextToSpeech(Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mDetailGuideText:Landroid/widget/TextView;

    const v1, 0x7f10009e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :pswitch_1
    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_2
    const v1, 0x7f1000ba

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0, v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->runTextToSpeech(Ljava/lang/String;I)V

    goto :goto_0

    :pswitch_3
    iget-boolean v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsRotateGuideShow:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsSupportDualDisplay:Z

    if-eqz v1, :cond_2

    const v1, 0x7f1000f0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_2
    const v1, 0x7f1000aa

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_3
    iget-boolean v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsSupportSwipeEnroll:Z

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsVibrationSupport:Z

    if-nez v1, :cond_4

    const v1, 0x7f1000ef

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_4
    const v1, 0x7f1000ed

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    nop

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x190
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setFingerGuideTitle(I)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mGuideTitle:Landroid/widget/TextView;

    if-nez v0, :cond_0

    const-string v0, "BSS_FingerprintEnrollActivity"

    const-string v1, "mGuideTitle is NULL"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    :pswitch_1
    const v2, 0x7f1000f0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0, v2}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->runTextToSpeech(Ljava/lang/String;I)V

    goto :goto_1

    :pswitch_2
    const v2, 0x7f1000a4

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0, v2}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->runTextToSpeech(Ljava/lang/String;I)V

    goto :goto_1

    :pswitch_3
    const v2, 0x7f1000a2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0, v2}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->runTextToSpeech(Ljava/lang/String;I)V

    goto :goto_1

    :pswitch_4
    iget-boolean v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsRotateGuideShow:Z

    if-eqz v2, :cond_1

    const v2, 0x7f1000f3

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_1
    const v2, 0x7f1000a3

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsSupportCenterVi:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mFinger_ProgressView:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;

    iget v0, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;->mEnrollSuccessCount:I

    if-gt v0, v1, :cond_2

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mGuideTitle:Landroid/widget/TextView;

    const v1, 0x7f1000f7

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_2
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x190
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private setFingerSensorArea(II)V
    .locals 5

    invoke-virtual {p0, p1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v0, :cond_1

    move v1, p2

    if-gez p2, :cond_0

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->semGetFingerIconRectInDisplay()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/biometrics/app/setting/Utils;->getScreenHeight(Landroid/content/Context;)I

    move-result v2

    iget v3, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/biometrics/app/setting/Utils;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07016b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int v1, v2, v3

    :cond_0
    int-to-double v2, v1

    invoke-direct {p0, p1, v2, v3}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->setViewHeight(ID)V

    :cond_1
    return-void
.end method

.method private setLayoutHeight()Z
    .locals 6

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/Utils;->isConnectedMobileKeypad(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "BSS_FingerprintEnrollActivity"

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsRearSensor:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsSideSensor:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "setLayoutHeight : Keyboard is mounted. Can\'t enroll finger."

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f1000b8

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const v3, 0x7f100081

    invoke-virtual {p0, v3}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v2, v5

    invoke-virtual {p0, v3}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->showFingerprintKeyboardDialog(Ljava/lang/String;)V

    return v5

    :cond_1
    :goto_0
    const-string v0, "setLayoutHeight : Keyboard is mounted. Reduce the layout."

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$ReduceScreenMode;->KBD:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$ReduceScreenMode;

    invoke-direct {p0, v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->initLayoutHeight(Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$ReduceScreenMode;)V

    goto :goto_1

    :cond_2
    const-string v0, "setLayoutHeight : Keyboard is not mounted."

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$ReduceScreenMode;->NONE:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$ReduceScreenMode;

    invoke-direct {p0, v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->initLayoutHeight(Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$ReduceScreenMode;)V

    :goto_1
    return v1
.end method

.method private setSensorPosition(Landroid/view/View;Z)V
    .locals 13

    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsDisplaySensor:Z

    if-eqz v0, :cond_8

    if-nez p1, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->semGetFingerIconRectInDisplay()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mFingerPosition:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->getDisplay()Landroid/view/Display;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Display;->getRotation()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-eqz p2, :cond_2

    div-int/lit8 v4, v2, 0x3

    div-int/lit8 v5, v3, 0xa

    :cond_2
    invoke-static {p0}, Lcom/samsung/android/biometrics/app/setting/SettingHelper;->isNavigationBarHidden(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_5

    invoke-static {}, Lcom/samsung/android/biometrics/app/setting/Utils;->isTablet()Z

    move-result v7

    if-nez v7, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1050222

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    goto :goto_0

    :pswitch_1
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-eqz p2, :cond_3

    div-int/lit8 v4, v2, 0x3

    div-int/lit8 v5, v3, 0xa

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v7

    if-eqz v7, :cond_5

    invoke-virtual {v7}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v8

    if-eqz v8, :cond_4

    invoke-virtual {v8}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v6

    :cond_4
    goto :goto_0

    :pswitch_2
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-eqz p2, :cond_5

    div-int/lit8 v4, v2, 0xa

    div-int/lit8 v5, v3, 0x3

    :cond_5
    :goto_0
    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v7, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget v8, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v8, v4

    sub-int/2addr v8, v6

    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    iget v8, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v4

    iput v8, v7, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    if-eqz p2, :cond_6

    iget v8, v7, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    mul-int/lit8 v9, v5, 0x2

    sub-int/2addr v8, v9

    iput v8, v7, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget v8, v7, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    mul-int/lit8 v9, v4, 0x2

    sub-int/2addr v8, v9

    iput v8, v7, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    :cond_6
    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const-string v10, "status_bar_height"

    const-string v11, "dimen"

    const-string v12, "android"

    invoke-virtual {v9, v10, v11, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    if-lez v9, :cond_7

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    :cond_7
    iget v10, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v10, v8

    add-int/2addr v10, v5

    iput v10, v7, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-virtual {p0, p1, v7}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_8
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private setViewHeight(ID)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    double-to-int v2, p2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method

.method private setViewVisibility(Landroid/view/ViewGroup;Z)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz p2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_1

    :cond_0
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private setViewWidth(ID)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    double-to-int v2, p2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method

.method private showAuthenticateResult(ILjava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mAuthErrorHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mAuthErrorRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mAuthErrorHandler:Landroid/os/Handler;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mPowerManager:Landroid/os/PowerManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, v1, v1}, Landroid/os/PowerManager;->userActivity(JII)V

    :cond_1
    invoke-direct {p0, p2, v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->runTextToSpeech(Ljava/lang/String;I)V

    const/16 v0, 0xc8

    const/4 v1, 0x4

    sparse-switch p1, :sswitch_data_0

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mAuthErrorText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_3

    const/16 v2, 0xcb

    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mAuthErrorText:Landroid/widget/TextView;

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->startViewAnimation(ILandroid/view/View;)V

    goto :goto_0

    :sswitch_0
    move-object v2, p2

    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mAuthErrorText:Landroid/widget/TextView;

    if-eqz v3, :cond_2

    if-eqz v2, :cond_2

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mAuthErrorText:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mAuthErrorText:Landroid/widget/TextView;

    invoke-direct {p0, v0, v3}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->startViewAnimation(ILandroid/view/View;)V

    :cond_2
    const v3, 0x7f1000a9

    invoke-virtual {p0, v3}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    :cond_3
    :goto_0
    const v2, 0x7f0a0188

    invoke-virtual {p0, v2}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_4

    if-eqz p2, :cond_4

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v3, 0xd2

    invoke-direct {p0, v3, v2}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->startViewAnimation(ILandroid/view/View;)V

    :cond_4
    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mAuthErrorImage:Landroid/widget/ImageView;

    if-eqz v3, :cond_5

    if-nez p1, :cond_5

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mAuthErrorImage:Landroid/widget/ImageView;

    const v3, 0x7f0800a7

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mAuthErrorImage:Landroid/widget/ImageView;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mAuthErrorImage:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->startViewAnimation(ILandroid/view/View;)V

    :cond_5
    if-eqz p1, :cond_7

    const/16 v0, 0x64

    if-eq p1, v0, :cond_7

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mAuthErrorRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_6

    new-instance v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$9;

    invoke-direct {v0, p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$9;-><init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;)V

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mAuthErrorRunnable:Ljava/lang/Runnable;

    :cond_6
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mAuthErrorHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mAuthErrorRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0x1388

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_7
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x64 -> :sswitch_0
    .end sparse-switch
.end method

.method private showErrorMessage(ILjava/lang/String;)V
    .locals 6

    invoke-static {p0}, Lcom/samsung/android/biometrics/app/setting/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsTouchedOutside:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "imageQuality["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BSS_FingerprintEnrollActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FP_FEATURE_SENSOR_IS_ULTRASONIC:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    if-eq p1, v3, :cond_1

    const/16 v0, 0x3eb

    if-ne p1, v0, :cond_2

    :cond_1
    iget v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mFilmErrorCount:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mFilmErrorCount:I

    const/16 v4, 0xa

    if-ne v0, v4, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-string v4, "fingerprint_protective_film_guideline_displayed"

    invoke-static {v0, v4, v3, v2}, Lcom/samsung/android/biometrics/app/setting/Utils;->getIntDb(Landroid/content/Context;Ljava/lang/String;ZI)I

    move-result v0

    const/4 v5, 0x2

    if-ge v0, v5, :cond_2

    const/16 v1, 0x258

    invoke-direct {p0, v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->showSensorErrorDialog(I)V

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    invoke-static {v1, v4, v3, v2}, Lcom/samsung/android/biometrics/app/setting/Utils;->putIntDb(Landroid/content/Context;Ljava/lang/String;ZI)V

    return-void

    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->removeErrorMessageHandler()V

    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsShowErrorMsg:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mDetailGuideText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    const/16 v4, 0xcb

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mDetailGuideText:Landroid/widget/TextView;

    invoke-direct {p0, v4, v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->startViewAnimation(ILandroid/view/View;)V

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mGuideTitle:Landroid/widget/TextView;

    invoke-direct {p0, v4, v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->startViewAnimation(ILandroid/view/View;)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mTxtViewProgress:Landroid/widget/TextView;

    invoke-direct {p0, v4, v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->startViewAnimation(ILandroid/view/View;)V

    iput-boolean v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsShowErrorMsg:Z

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mFinger_ProgressView:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;

    invoke-virtual {v0, v2}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;->showEnrollCenterGuideVI(Z)V

    :cond_4
    invoke-direct {p0, p2, v2}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->runTextToSpeech(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mDetailGuideText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v3}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->runTextToSpeech(Ljava/lang/String;I)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mShowErrorHandler:Landroid/os/Handler;

    new-instance v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$10;

    invoke-direct {v0, p0, p2}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$10;-><init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mShowErrorRunnable:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mShowErrorHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x12c

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mHideErrorHandler:Landroid/os/Handler;

    if-nez v0, :cond_5

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mHideErrorHandler:Landroid/os/Handler;

    new-instance v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$11;

    invoke-direct {v0, p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$11;-><init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;)V

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mHideErrorRunnable:Ljava/lang/Runnable;

    :cond_5
    if-eqz p1, :cond_6

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mHideErrorHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mHideErrorRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0x1388

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Run_Runnable_ErrorMSG : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return-void
.end method

.method private showFingerIconForTalkBack()V
    .locals 2

    invoke-static {p0}, Lcom/samsung/android/biometrics/app/setting/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsDisplaySensor:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mSensorPositionView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mSensorPositionView:Landroid/view/View;

    const v1, 0x7f1000af

    invoke-virtual {p0, v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mSensorPositionView:Landroid/view/View;

    new-instance v1, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mSensorPositionView:Landroid/view/View;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->setSensorPosition(Landroid/view/View;Z)V

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method private showFingerSensorRectView()V
    .locals 3

    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsDisplaySensor:Z

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/samsung/android/biometrics/app/setting/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mSensorRectView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mSensorRectView:Landroid/view/View;

    new-instance v2, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mSensorRectView:Landroid/view/View;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->setSensorPosition(Landroid/view/View;Z)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method private showFingerprintKeyboardDialog(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1000b9

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$13;

    invoke-direct {v1, p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$13;-><init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;)V

    const v2, 0x104000a

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$12;

    invoke-direct {v1, p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$12;-><init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mKeyboardDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mKeyboardDialog:Landroid/app/AlertDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06006e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    return-void
.end method

.method private showGuideScreen(I)V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mTextureView:Landroid/view/TextureView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/TextureView;->destroyDrawingCache()V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mTextureView:Landroid/view/TextureView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/TextureView;->setVisibility(I)V

    iput-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mTextureView:Landroid/view/TextureView;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mLiftFingerMessage:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$LiftFingerMessage;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$LiftFingerMessage;->interrupt()V

    iput-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mLiftFingerMessage:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$LiftFingerMessage;

    iput-boolean v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsShownLiftMsg:Z

    iput-boolean v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsCalledLiftMsg:Z

    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->getFingerRegisterText()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->setFingerGuideText(I)V

    :cond_1
    const/16 v0, 0xc9

    const/16 v1, 0xcf

    const/4 v3, 0x1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    invoke-direct {p0, v2}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->showKnoxBi(Z)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mEnrollState:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$EnrollState;

    sget-object v3, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$EnrollState;->ENROLL:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$EnrollState;

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$EnrollState;->PAUSE:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$EnrollState;

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mEnrollState:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$EnrollState;

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->semPauseEnroll()Z

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mUnfoldGuideScreen:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->startViewAnimation(ILandroid/view/View;)V

    const v0, 0x7f0a01ab

    invoke-virtual {p0, v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/TextureView;

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mTextureView:Landroid/view/TextureView;

    const v0, 0x7f1000ee

    invoke-virtual {p0, v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->runTextToSpeech(Ljava/lang/String;I)V

    goto/16 :goto_4

    :pswitch_1
    iput-boolean v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsSwipeEnrollGuideShow:Z

    const v4, 0x7f0a0187

    invoke-virtual {p0, v4}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mAuthErrorText:Landroid/widget/TextView;

    const v4, 0x7f0a0185

    invoke-virtual {p0, v4}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mAuthErrorImage:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mRegisterScreen:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0, v4}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->startViewAnimation(ILandroid/view/View;)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mNextButtonArea:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_3

    iget-boolean v4, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsFromSetupWizard:Z

    if-eqz v4, :cond_3

    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mSwipeEnrollGuideScreen:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->startViewAnimation(ILandroid/view/View;)V

    const v0, 0x7f0a0189

    invoke-virtual {p0, v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/TextureView;

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mTextureView:Landroid/view/TextureView;

    iget v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mUserId:I

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mUserId:I

    invoke-static {v0, v1}, Lcom/samsung/android/biometrics/app/setting/Utils;->getKnoxName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mAuthErrorText:Landroid/widget/TextView;

    const v4, 0x7f1000a8

    new-array v5, v3, [Ljava/lang/Object;

    aput-object v0, v5, v2

    invoke-virtual {p0, v4, v5}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    const v0, 0x7f0a0188

    invoke-virtual {p0, v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v3}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->runTextToSpeech(Ljava/lang/String;I)V

    :cond_5
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mAuthErrorText:Landroid/widget/TextView;

    if-eqz v1, :cond_f

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v3}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->runTextToSpeech(Ljava/lang/String;I)V

    goto/16 :goto_4

    :pswitch_2
    iput-boolean v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsRotateGuideShow:Z

    invoke-direct {p0, v2}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->showKnoxBi(Z)V

    iget-object v4, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mRegisterScreen:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0, v4}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->startViewAnimation(ILandroid/view/View;)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mSecondGuideScreen:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->startViewAnimation(ILandroid/view/View;)V

    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsFromSetupWizard:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mNextButtonArea:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mNextButton:Landroid/widget/Button;

    if-eqz v0, :cond_7

    const v1, 0x7f100084

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mNextButtonArea:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    :cond_6
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$14;

    invoke-direct {v1, p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$14;-><init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_7
    :goto_0
    const v0, 0x7f0a011c

    invoke-virtual {p0, v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/TextureView;

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mTextureView:Landroid/view/TextureView;

    const v0, 0x7f0a013c

    invoke-virtual {p0, v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v3}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->runTextToSpeech(Ljava/lang/String;I)V

    :cond_8
    const v1, 0x7f0a013b

    invoke-virtual {p0, v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, v3}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->runTextToSpeech(Ljava/lang/String;I)V

    :cond_9
    const v4, 0x7f10004f

    invoke-virtual {p0, v4}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, v3}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->runTextToSpeech(Ljava/lang/String;I)V

    goto/16 :goto_4

    :pswitch_3
    iput-boolean v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsFirstGuideShow:Z

    iput-boolean v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsFirstGuideShowClose:Z

    const v0, 0x7f0a00a7

    invoke-virtual {p0, v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_b

    iget-boolean v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsSupportCenterVi:Z

    if-eqz v1, :cond_a

    const v1, 0x7f1000f7

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :cond_a
    const v1, 0x7f1000a3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_1
    iget-boolean v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsDisplaySensor:Z

    if-eqz v1, :cond_b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v4, 0x7f1000af

    invoke-virtual {p0, v4}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_b
    const v1, 0x7f0a011f

    invoke-virtual {p0, v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_e

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-boolean v4, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsSupportSwipeEnroll:Z

    if-nez v4, :cond_c

    iget-boolean v4, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsRearSensor:Z

    if-nez v4, :cond_c

    iget-boolean v4, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsVibrationSupport:Z

    if-nez v4, :cond_c

    const v4, 0x7f1000ef

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    :cond_c
    const v4, 0x7f1000bc

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    :goto_2
    iget-boolean v4, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsSideSensor:Z

    if-eqz v4, :cond_d

    iget-boolean v4, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsBlockedPowerKey:Z

    if-eqz v4, :cond_d

    iget-boolean v4, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsBlockedWinkKey:Z

    if-nez v4, :cond_d

    const-string v4, " "

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    const v4, 0x7f1000a1

    invoke-virtual {p0, v4}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_d
    iget-boolean v4, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsRearSensor:Z

    if-eqz v4, :cond_e

    invoke-static {p0}, Lcom/samsung/android/biometrics/app/setting/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_e

    const-string v4, " \n\n"

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    const v4, 0x7f1000b6

    invoke-virtual {p0, v4}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    :cond_e
    :goto_3
    iget-object v4, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mFirstGuideScreen:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const v4, 0x7f0a011b

    invoke-virtual {p0, v4}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/TextureView;

    iput-object v4, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "fingerprint_guide_shown"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    sget-boolean v4, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FP_FEATURE_SENSOR_IS_OPTICAL:Z

    if-eqz v4, :cond_f

    sget-boolean v4, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FP_FEATURE_HW_LIGHT_SOURCE:Z

    if-nez v4, :cond_f

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "fingerprint_blf_off_guide_shown"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_f

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/biometrics/app/setting/SettingHelper;->isEnabledBlueLightFilter(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    const v6, 0x7f100098

    invoke-static {v4, v6, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_f
    :goto_4
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mTextureView:Landroid/view/TextureView;

    if-eqz v0, :cond_10

    invoke-virtual {v0, v2}, Landroid/view/TextureView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v0, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v0, v2}, Landroid/view/TextureView;->setFocusable(Z)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v1}, Landroid/view/TextureView;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v2}, Landroid/view/TextureView;->getHeight()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V

    :cond_10
    return-void

    :pswitch_data_0
    .packed-switch 0x12c
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private showGuidewithTipDialog()V
    .locals 4

    const-string v0, "BSS_FingerprintEnrollActivity"

    const-string v1, "showGuidewithTipDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f100096

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10008e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$16;

    invoke-direct {v1, p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$16;-><init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;)V

    const v2, 0x104000a

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$15;

    invoke-direct {v1, p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$15;-><init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06006e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    return-void
.end method

.method private showKnoxBi(Z)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mImageViewKnoxBi:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private showSensorErrorDialog(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->showSensorErrorDialog(ILjava/lang/CharSequence;)V

    return-void
.end method

.method private showSensorErrorDialog(ILjava/lang/CharSequence;)V
    .locals 9

    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsPauseRegistration:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsShowSensorErrorDialog:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v4, "fingerprint_settings_destroy"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const v6, 0x7f1000ea

    const v7, 0x7f100096

    sparse-switch p1, :sswitch_data_0

    const/4 v4, 0x5

    if-ne p1, v4, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "always_finish_activities"

    invoke-static {v4, v6, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f10008a

    new-array v0, v0, [Ljava/lang/Object;

    const v7, 0x7f1000c6

    invoke-virtual {p0, v7}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v5

    invoke-virtual {v4, v6, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    :sswitch_0
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f1000e7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto/16 :goto_1

    :sswitch_1
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f1000eb

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    :sswitch_2
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f1000e8

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f1000e9

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    :sswitch_3
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f10008e

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    :sswitch_4
    iget-boolean v7, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsTouchedSensorRectView:Z

    if-eqz v7, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f100090

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    :cond_1
    invoke-static {}, Lcom/samsung/android/biometrics/app/setting/Utils;->isOpticalSensor()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_2
    iget-boolean v6, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsFromSetupWizard:Z

    if-eqz v6, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f1000f6

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f100094

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto/16 :goto_1

    :sswitch_5
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f100097

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f10008b

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f100093

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\n"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f10008f

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f10008c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v4}, Landroid/hardware/fingerprint/FingerprintManager;->semPauseEnroll()Z

    goto :goto_1

    :sswitch_6
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f100095

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f10008d

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_4
    if-eqz p2, :cond_5

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f100091

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->semGetSensorStatus()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mSensorStatus:I

    :cond_6
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v0, :cond_8

    iget v4, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mSensorStatus:I

    const v6, 0x186c8

    if-eq v4, v6, :cond_7

    const v6, 0x186c9

    if-ne v4, v6, :cond_8

    :cond_7
    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->semIsEnrollSession()Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "BSS_FingerprintEnrollActivity"

    const-string v4, "Session closed!"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v5}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->finish()V

    goto :goto_2

    :cond_8
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v4, 0x104000a

    new-instance v6, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$18;

    invoke-direct {v6, p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$18;-><init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;)V

    invoke-virtual {v0, v4, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v4, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$17;

    invoke-direct {v4, p0, p1, v3}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$17;-><init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;ILandroid/content/Intent;)V

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    const/4 v4, -0x1

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v4

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f06006e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setTextColor(I)V

    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_6
        0x258 -> :sswitch_5
        0x3e9 -> :sswitch_4
        0x3eb -> :sswitch_3
        0x3ef -> :sswitch_2
        0x138c -> :sswitch_1
        0x186cd -> :sswitch_0
    .end sparse-switch
.end method

.method private startAuthentication()V
    .locals 10

    const-string v0, "BSS_FingerprintEnrollActivity"

    const-string v1, "startAuthentication"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mAuthGuidePlayCount:I

    const/4 v2, 0x1

    if-gtz v1, :cond_0

    iget-boolean v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsSideSensor:Z

    if-nez v3, :cond_0

    add-int/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mAuthGuidePlayCount:I

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    :cond_1
    const/16 v1, 0x12e

    invoke-direct {p0, v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->hideGuideScreen(I)V

    invoke-static {p0}, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->createInstance(Landroid/content/Context;)Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mSemFingerprintManager:Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;

    if-eqz v1, :cond_2

    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mAuthenticateCancel:Landroid/os/CancellationSignal;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "sem_privileged_attr"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mSemFingerprintManager:Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mAuthenticateCancel:Landroid/os/CancellationSignal;

    iget-object v6, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mSemAuthCallback:Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$AuthenticationCallback;

    const/4 v7, 0x0

    iget v8, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mUserId:I

    move-object v9, v0

    invoke-virtual/range {v3 .. v9}, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->authenticate(Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$CryptoObject;Landroid/os/CancellationSignal;Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$AuthenticationCallback;Landroid/os/Handler;ILandroid/os/Bundle;)V

    goto :goto_0

    :cond_2
    const-string v1, "mSemFingerprintManager == null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->showSensorErrorDialog(I)V

    :goto_0
    return-void
.end method

.method private startCompleteEffect()V
    .locals 4

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$20;

    invoke-direct {v1, p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$20;-><init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private startEnrollment()V
    .locals 7

    const-string v0, "BSS_FingerprintEnrollActivity"

    const-string v1, "startEnrollment"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsPauseRegistration:Z

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mEnrollState:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$EnrollState;

    sget-object v2, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$EnrollState;->NONE:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$EnrollState;

    if-eq v1, v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mToken:[B

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    array-length v4, v1

    if-ne v4, v3, :cond_1

    aget-byte v1, v1, v2

    const/4 v4, -0x1

    if-ne v1, v4, :cond_1

    const-string v1, "Challenge is incorrect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x3eb

    invoke-direct {p0, v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->showSensorErrorDialog(I)V

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mToken:[B

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-direct {p0, v3}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->showKnoxBi(Z)V

    sget-object v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$EnrollState;->ENROLL:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$EnrollState;

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mEnrollState:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$EnrollState;

    new-instance v3, Landroid/os/CancellationSignal;

    invoke-direct {v3}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mEnrollmentCancel:Landroid/os/CancellationSignal;

    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsPauseRegistration:Z

    if-nez v0, :cond_3

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mToken:[B

    iget v4, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mUserId:I

    iget-object v5, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mEnrollmentCallback:Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;

    const/4 v6, 0x2

    invoke-virtual/range {v1 .. v6}, Landroid/hardware/fingerprint/FingerprintManager;->enroll([BLandroid/os/CancellationSignal;ILandroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;I)V

    :cond_3
    const/16 v0, 0x203f

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/SALoggingHelper;->insertFlowLogging(I)V

    return-void

    :cond_4
    :goto_0
    const-string v1, "startEnrollment : mToken or mFingerprintManager is null"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v2}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->showSensorErrorDialog(I)V

    return-void

    :cond_5
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Skip startEnrollment!! mIsPauseRegistration = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsPauseRegistration:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " | mEnrollState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mEnrollState:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$EnrollState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private startViewAnimation(ILandroid/view/View;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const v2, 0x3f2b851f    # 0.67f

    const-wide/16 v3, 0x1f4

    const v5, 0x3ea8f5c3    # 0.33f

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x1

    if-eqz v1, :cond_2

    const-wide/16 v9, 0x14a

    const v11, 0x3e4ccccd    # 0.2f

    const/4 v12, 0x4

    const/4 v13, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    :pswitch_1
    new-instance v2, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v2, v7, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    invoke-virtual {v2, v8}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    invoke-virtual {v1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v1, v12}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :pswitch_2
    invoke-virtual {v1, v13}, Landroid/view/View;->setVisibility(I)V

    const v2, 0x7f01001e

    invoke-static {v0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    :pswitch_3
    invoke-virtual {v1, v13}, Landroid/view/View;->setVisibility(I)V

    new-instance v2, Landroid/view/animation/AnimationSet;

    invoke-direct {v2, v8}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    new-instance v5, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v5, v6, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v5, v3, v4}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    invoke-virtual {v5, v8}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    invoke-virtual {v2, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v2, v8}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    iget-boolean v3, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsDisplaySensor:Z

    if-eqz v3, :cond_0

    const-wide/16 v3, 0x2ee

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/AnimationSet;->setStartOffset(J)V

    :cond_0
    invoke-virtual {v1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    :pswitch_4
    new-instance v2, Landroid/view/animation/AnimationSet;

    invoke-direct {v2, v8}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    new-instance v22, Landroid/view/animation/TranslateAnimation;

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x1

    const/16 v19, 0x0

    const/16 v20, 0x1

    const v21, 0x3dcccccd    # 0.1f

    move-object/from16 v13, v22

    invoke-direct/range {v13 .. v21}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    invoke-virtual {v13, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v3, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v3, v7, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v3, v9, v10}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    invoke-virtual {v3, v8}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    new-instance v4, Landroid/view/animation/PathInterpolator;

    invoke-direct {v4, v5, v6, v11, v7}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v2, v4}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v2, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v2, v13}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v2, v8}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    invoke-virtual {v1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v1, v12}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :pswitch_5
    invoke-virtual {v1, v13}, Landroid/view/View;->setVisibility(I)V

    new-instance v11, Landroid/view/animation/AnimationSet;

    invoke-direct {v11, v8}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    new-instance v21, Landroid/view/animation/TranslateAnimation;

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x1

    const v18, 0x3dcccccd    # 0.1f

    const/16 v19, 0x1

    const/16 v20, 0x0

    move-object/from16 v12, v21

    invoke-direct/range {v12 .. v20}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    invoke-virtual {v12, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v3, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v3, v6, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v3, v9, v10}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    invoke-virtual {v3, v8}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    new-instance v4, Landroid/view/animation/PathInterpolator;

    invoke-direct {v4, v5, v6, v2, v7}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v11, v4}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v11, v12}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v11, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v11, v8}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    invoke-virtual {v1, v11}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    :pswitch_6
    invoke-virtual {v1, v13}, Landroid/view/View;->setVisibility(I)V

    new-instance v2, Landroid/view/animation/AnimationSet;

    invoke-direct {v2, v8}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    new-instance v5, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v5, v6, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v5, v3, v4}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    invoke-virtual {v5, v8}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    invoke-virtual {v2, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v2, v8}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    invoke-virtual {v1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    :pswitch_7
    invoke-virtual {v1, v13}, Landroid/view/View;->setVisibility(I)V

    new-instance v3, Landroid/view/animation/AnimationSet;

    invoke-direct {v3, v8}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    new-instance v4, Landroid/view/animation/TranslateAnimation;

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x1

    const v15, 0x3cf5c28f    # 0.03f

    const/16 v16, 0x1

    const/16 v17, 0x0

    move-object v9, v4

    invoke-direct/range {v9 .. v17}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    const-wide/16 v9, 0x190

    invoke-virtual {v4, v9, v10}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v11, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v11, v6, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v11, v9, v10}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    invoke-virtual {v11, v8}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    new-instance v9, Landroid/view/animation/PathInterpolator;

    invoke-direct {v9, v5, v6, v2, v7}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v3, v9}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v3, v11}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v3, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v3, v8}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    invoke-virtual {v1, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    :pswitch_8
    new-instance v3, Landroid/view/animation/AnimationSet;

    invoke-direct {v3, v8}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    new-instance v4, Landroid/view/animation/ScaleAnimation;

    const/high16 v14, 0x3f800000    # 1.0f

    const v15, 0x3f733333    # 0.95f

    const/high16 v16, 0x3f800000    # 1.0f

    const v17, 0x3f733333    # 0.95f

    const/16 v18, 0x1

    const/high16 v19, 0x3f000000    # 0.5f

    const/16 v20, 0x1

    const/high16 v21, 0x3f000000    # 0.5f

    move-object v13, v4

    invoke-direct/range {v13 .. v21}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    new-instance v9, Landroid/view/animation/PathInterpolator;

    invoke-direct {v9, v5, v6, v11, v7}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v4, v9}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v9, 0x96

    invoke-virtual {v4, v9, v10}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    invoke-virtual {v4, v8}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    new-instance v11, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v11, v7, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v11, v9, v10}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    invoke-virtual {v11, v8}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    new-instance v9, Landroid/view/animation/PathInterpolator;

    invoke-direct {v9, v5, v6, v2, v7}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v3, v9}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v3, v11}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v3, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v3, v8}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    invoke-virtual {v1, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getId()I

    move-result v2

    const v5, 0x7f0a007d

    if-ne v2, v5, :cond_1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :cond_1
    invoke-virtual {v1, v12}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :pswitch_9
    new-instance v2, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v2, v7, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v3, 0xc8

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    invoke-virtual {v2, v8}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    invoke-virtual {v1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v1, v12}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :pswitch_a
    invoke-virtual {v1, v13}, Landroid/view/View;->setVisibility(I)V

    new-instance v2, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v2, v6, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    invoke-virtual {v2, v8}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    invoke-virtual {v1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :cond_2
    const v9, 0x3e19999a    # 0.15f

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    new-instance v10, Landroid/view/animation/AnimationSet;

    invoke-direct {v10, v8}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    new-instance v11, Landroid/view/animation/PathInterpolator;

    invoke-direct {v11, v5, v6, v2, v7}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v10, v11}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v2, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v2, v9, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    invoke-virtual {v2, v8}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    invoke-virtual {v10, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v10, v8}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    iget-object v3, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mTxtViewProgress:Landroid/widget/TextView;

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :sswitch_1
    new-instance v10, Landroid/view/animation/AnimationSet;

    invoke-direct {v10, v8}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    new-instance v11, Landroid/view/animation/PathInterpolator;

    invoke-direct {v11, v5, v6, v2, v7}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v10, v11}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v2, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v2, v7, v9}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    invoke-virtual {v2, v8}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    invoke-virtual {v10, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v10, v8}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    iget-object v3, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mTxtViewProgress:Landroid/widget/TextView;

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    nop

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0xca -> :sswitch_1
        0xce -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public synthetic lambda$showFingerIconForTalkBack$1$FingerprintEnrollActivity(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x9

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsFirstGuideShow:Z

    if-eqz v0, :cond_0

    const v0, 0x7f1000f5

    invoke-virtual {p0, v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->runTextToSpeech(Ljava/lang/String;I)V

    iget v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mUserId:I

    const/4 v2, 0x1

    const/16 v3, 0x64

    invoke-static {p0, v0, v2, v3}, Lcom/samsung/android/biometrics/app/setting/Utils;->playVibration(Landroid/content/Context;III)V

    const/16 v0, 0x12c

    invoke-direct {p0, v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->hideGuideScreen(I)V

    :cond_0
    return v1
.end method

.method public synthetic lambda$showFingerIconForTalkBack$2$FingerprintEnrollActivity()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsShownLiftMsg:Z

    const/16 v0, 0x190

    invoke-direct {p0, v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->setFingerGuideTitle(I)V

    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->getFingerRegisterText()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->setFingerGuideText(I)V

    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsShowErrorMsg:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mGuideTitle:Landroid/widget/TextView;

    const/16 v1, 0xcc

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->startViewAnimation(ILandroid/view/View;)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mDetailGuideText:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->startViewAnimation(ILandroid/view/View;)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mTxtViewProgress:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->startViewAnimation(ILandroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mDetailGuideText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->runTextToSpeech(Ljava/lang/String;I)V

    return-void
.end method

.method public synthetic lambda$showFingerIconForTalkBack$3$FingerprintEnrollActivity(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mEnrollState:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$EnrollState;

    sget-object v1, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$EnrollState;->ENROLL:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$EnrollState;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsShownLiftMsg:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsCaptureStarted:Z

    if-nez v0, :cond_1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mMsgHandler:Landroid/os/Handler;

    new-instance v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;)V

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mMsgRunnable:Ljava/lang/Runnable;

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mMsgHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x14a

    invoke-virtual {v1, v0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsFirstGuideShow:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->isSpeaking()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mFingerPosition:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-static {v0, v1, v3}, Lcom/samsung/android/biometrics/app/setting/Utils;->getInDisplayFingerPositionStringId(Landroid/graphics/Rect;FF)I

    move-result v0

    if-lez v0, :cond_3

    invoke-virtual {p0, v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->runTextToSpeech(Ljava/lang/String;I)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsTouchedOutside:Z

    goto :goto_0

    :cond_3
    iput-boolean v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsTouchedOutside:Z

    :cond_4
    :goto_0
    return v2
.end method

.method public synthetic lambda$showFingerSensorRectView$0$FingerprintEnrollActivity(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsTouchedSensorRectView:Z

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/16 v1, 0x202a

    const/4 v2, 0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsRotateGuideShow:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x12d

    invoke-direct {p0, v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->hideGuideScreen(I)V

    goto/16 :goto_0

    :cond_0
    const/16 v0, 0x202c

    iget v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mEnrolledCount:I

    invoke-static {v1, v0, v3}, Lcom/samsung/android/biometrics/app/setting/SALoggingHelper;->insertEventLogging(III)V

    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsButtonClicked:Z

    if-nez v0, :cond_4

    iput-boolean v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsButtonClicked:Z

    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsSupportSwipeEnroll:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mUserId:I

    invoke-virtual {v0, v1}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x12e

    invoke-direct {p0, v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->showGuideScreen(I)V

    goto :goto_0

    :cond_1
    const/16 v0, 0xc9

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mRegisterScreen:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->startViewAnimation(ILandroid/view/View;)V

    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->finishRegistration()V

    goto :goto_0

    :sswitch_1
    const/16 v0, 0x202b

    invoke-static {v1, v0}, Lcom/samsung/android/biometrics/app/setting/SALoggingHelper;->insertEventLogging(II)V

    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsButtonClicked:Z

    if-nez v0, :cond_4

    iput-boolean v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsButtonClicked:Z

    iput-boolean v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsReCreated:Z

    iput-boolean v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsFinishRegistration:Z

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->finish()V

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsReCreated:Z

    const-string v2, "IsReCreated"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v1, 0x10000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mMaskViewToken:Landroid/os/IBinder;

    if-eqz v1, :cond_2

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mMaskViewToken:Landroid/os/IBinder;

    const-string v3, "MaskViewToken"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_2
    invoke-static {p0}, Lcom/samsung/android/biometrics/app/setting/Utils;->isDesktopStandaloneMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v1

    new-instance v2, Landroid/graphics/Rect;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1, v2}, Landroid/app/ActivityOptions;->setLaunchBounds(Landroid/graphics/Rect;)Landroid/app/ActivityOptions;

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->startActivity(Landroid/content/Intent;)V

    :cond_4
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0a0041 -> :sswitch_1
        0x7f0a0042 -> :sswitch_1
        0x7f0a0086 -> :sswitch_0
        0x7f0a0087 -> :sswitch_0
        0x7f0a00f7 -> :sswitch_0
    .end sparse-switch
.end method

.method public onClickContinue(Landroid/view/View;)V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsRotateGuideShow:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x12d

    invoke-direct {p0, v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->hideGuideScreen(I)V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 7

    const-string v0, "BSS_FingerprintEnrollActivity"

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsForcedPortrait:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->setLayoutHeight()Z

    goto :goto_2

    :cond_0
    iget v0, p1, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    iget v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mDisplayType:I

    const/4 v4, 0x2

    const/16 v5, 0x12f

    const/4 v6, 0x5

    if-nez v3, :cond_3

    if-ne v0, v6, :cond_3

    iput v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mDisplayType:I

    iput v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mGuideStep:I

    iget-boolean v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsFirstGuideShow:Z

    if-eqz v3, :cond_1

    iput v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mGuideStep:I

    goto :goto_0

    :cond_1
    iget-boolean v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsRotateGuideShow:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mEnrollState:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$EnrollState;

    sget-object v6, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$EnrollState;->PAUSE:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$EnrollState;

    if-ne v3, v6, :cond_2

    iput v4, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mGuideStep:I

    :cond_2
    :goto_0
    invoke-direct {p0, v5}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->showGuideScreen(I)V

    goto :goto_2

    :cond_3
    if-ne v3, v6, :cond_6

    if-nez v0, :cond_6

    iput v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mDisplayType:I

    invoke-direct {p0, v5}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->hideGuideScreen(I)V

    iget-boolean v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsRegisterCompleted:Z

    if-nez v3, :cond_6

    iget v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mGuideStep:I

    if-eq v3, v2, :cond_5

    iget-boolean v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsSkipGuideScreen:Z

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mEnrollState:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$EnrollState;

    sget-object v5, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$EnrollState;->NONE:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$EnrollState;

    if-ne v3, v5, :cond_4

    goto :goto_1

    :cond_4
    iget v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mGuideStep:I

    if-ne v3, v4, :cond_6

    const/16 v3, 0x12d

    invoke-direct {p0, v3}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->showGuideScreen(I)V

    goto :goto_2

    :cond_5
    :goto_1
    const/16 v3, 0x12c

    invoke-direct {p0, v3}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->showGuideScreen(I)V

    :cond_6
    :goto_2
    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsFirstGuideShow:Z

    if-eqz v0, :cond_8

    invoke-static {p0}, Lcom/samsung/android/biometrics/app/setting/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mSensorPositionView:Landroid/view/View;

    invoke-direct {p0, v0, v2}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->setSensorPosition(Landroid/view/View;Z)V

    goto :goto_3

    :cond_7
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mSensorRectView:Landroid/view/View;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->setSensorPosition(Landroid/view/View;Z)V

    :cond_8
    :goto_3
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11

    const-string v0, "BSS_FingerprintEnrollActivity"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x80000

    invoke-virtual {v1, v2}, Landroid/view/Window;->addSystemFlags(I)V

    const-string v1, " "

    invoke-virtual {p0, v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->setTitle(Ljava/lang/CharSequence;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/biometrics/app/setting/SALoggingHelper;->setConfiguration(Landroid/app/Application;)V

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->getRequestedOrientation()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    iput-boolean v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsForcedPortrait:Z

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    iput v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mDisplayType:I

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    if-nez v4, :cond_1

    const-string v2, "intent should have extra value"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->finish()V

    return-void

    :cond_1
    const-string v4, "fromSetupWizard"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsFromSetupWizard:Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mIsFromSetupwizard : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsFromSetupWizard:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v4, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsFromSetupWizard:Z

    if-eqz v4, :cond_2

    iget-boolean v4, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsForcedPortrait:Z

    if-nez v4, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b000e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->setRequestedOrientation(I)V

    :cond_2
    const v4, 0x7f0d0032

    invoke-virtual {p0, v4}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->setContentView(I)V

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    const-string v5, "android.intent.extra.USER_ID"

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mUserId:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mUserId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mUserId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "hw_auth_token"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mToken:[B

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mToken="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mToken:[B

    if-eqz v6, :cond_3

    invoke-static {v6}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_3
    const-string v6, "NULL"

    :goto_1
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "skipGuideScreen"

    invoke-virtual {v1, v5, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsSkipGuideScreen:Z

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mIsSkipGuideScreen : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsSkipGuideScreen:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v5

    iput-boolean v5, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsInMultiWindowMode:Z

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onCreate : isInMultiWindowMode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsInMultiWindowMode:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "IsReCreated"

    invoke-virtual {v1, v5, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsReCreated:Z

    const-string v5, "isFromKnoxFingerprintPlus"

    invoke-virtual {v1, v5, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsFromKnoxFingerprintPlus:Z

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onCreate : isFromKnoxFingerprintPlus = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsFromKnoxFingerprintPlus:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->isVibrationSupport()Z

    move-result v5

    iput-boolean v5, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsVibrationSupport:Z

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "MaskViewToken"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mMaskViewToken:Landroid/os/IBinder;

    iget-boolean v5, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsInMultiWindowMode:Z

    if-nez v5, :cond_1e

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/biometrics/app/setting/Utils;->isGuestUser(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto/16 :goto_9

    :cond_4
    const-class v4, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {p0, v4}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v4, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    const-class v4, Landroid/os/PowerManager;

    invoke-virtual {p0, v4}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    iput-object v4, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mPowerManager:Landroid/os/PowerManager;

    iget-object v4, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-nez v4, :cond_5

    const-string v2, "[onCreate] mFingerprintManager == null"

    invoke-static {v0, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v3}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->showSensorErrorDialog(I)V

    return-void

    :cond_5
    invoke-virtual {v4}, Landroid/hardware/fingerprint/FingerprintManager;->semGetMaxEnrollmentNumber()I

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v6, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mUserId:I

    invoke-virtual {v5, v6}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lt v5, v4, :cond_6

    const-string v5, "onCreate: Max Enrolled Fingerprints"

    invoke-static {v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->finish()V

    :cond_6
    iget-object v5, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v5}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v5

    iget-object v6, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v6}, Landroid/hardware/fingerprint/FingerprintManager;->semGetSensorStatus()I

    move-result v6

    iput v6, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mSensorStatus:I

    if-eqz v5, :cond_1d

    const v7, 0x186c8

    if-eq v6, v7, :cond_7

    const v7, 0x186c9

    if-eq v6, v7, :cond_7

    goto/16 :goto_8

    :cond_7
    iget-object v6, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Landroid/hardware/fingerprint/FingerprintManager;->semHasFeature(I)Z

    move-result v6

    iput-boolean v6, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsSupportSwipeEnroll:Z

    iget-boolean v6, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsReCreated:Z

    if-nez v6, :cond_8

    invoke-static {}, Lcom/samsung/android/biometrics/app/setting/Utils;->isOpticalSensor()Z

    move-result v6

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v6}, Landroid/hardware/fingerprint/FingerprintManager;->semAddMaskView()Landroid/os/IBinder;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mMaskViewToken:Landroid/os/IBinder;

    :cond_8
    invoke-static {}, Lcom/samsung/android/biometrics/app/setting/Utils;->isRearSensor()Z

    move-result v4

    iput-boolean v4, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsRearSensor:Z

    invoke-static {}, Lcom/samsung/android/biometrics/app/setting/Utils;->isSideSensor()Z

    move-result v4

    iput-boolean v4, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsSideSensor:Z

    invoke-static {}, Lcom/samsung/android/biometrics/app/setting/Utils;->isDisplaySensor()Z

    move-result v4

    iput-boolean v4, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsDisplaySensor:Z

    invoke-static {}, Lcom/samsung/android/biometrics/app/setting/Utils;->isSensorInLandscape()Z

    move-result v4

    iput-boolean v4, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsSensorInLandscape:Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCreate : mIsRearSensor="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsRearSensor:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ",mIsSideSensor="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsSideSensor:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ",mIsDisplaySensor="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsDisplaySensor:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ",mIsSensorInLandscape="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsSensorInLandscape:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mToken:[B

    if-eqz v4, :cond_1c

    array-length v5, v4

    if-ne v5, v2, :cond_9

    aget-byte v4, v4, v3

    const/4 v5, -0x1

    if-ne v4, v5, :cond_9

    goto/16 :goto_7

    :cond_9
    sget-boolean v4, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FEATURE_SUPPORT_DUAL_DISPLAY:Z

    iput-boolean v4, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsSupportDualDisplay:Z

    const v4, 0x7f0a011d

    invoke-virtual {p0, v4}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    iput-object v4, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mRegisterScreen:Landroid/widget/RelativeLayout;

    const v4, 0x7f0a00a6

    invoke-virtual {p0, v4}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    iput-object v4, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mFirstGuideScreen:Landroid/widget/RelativeLayout;

    const v4, 0x7f0a013a

    invoke-virtual {p0, v4}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    iput-object v4, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mSecondGuideScreen:Landroid/widget/RelativeLayout;

    const v4, 0x7f0a01ad

    invoke-virtual {p0, v4}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    iput-object v4, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mUnfoldGuideScreen:Landroid/widget/RelativeLayout;

    iget-boolean v4, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsSupportSwipeEnroll:Z

    if-eqz v4, :cond_a

    const v4, 0x7f0a0186

    invoke-virtual {p0, v4}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    iput-object v4, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mSwipeEnrollGuideScreen:Landroid/widget/RelativeLayout;

    :cond_a
    const v4, 0x7f0a00a4

    invoke-virtual {p0, v4}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;

    iput-object v4, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mFinger_ProgressView:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;

    if-eqz v4, :cond_b

    iget-boolean v4, v4, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;->mIsSupportCenterVi:Z

    if-eqz v4, :cond_b

    move v4, v2

    goto :goto_2

    :cond_b
    move v4, v3

    :goto_2
    iput-boolean v4, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsSupportCenterVi:Z

    iget-boolean v4, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsSensorInLandscape:Z

    if-nez v4, :cond_c

    invoke-static {}, Lcom/samsung/android/biometrics/app/setting/Utils;->isSupported2ndEnroll()Z

    move-result v4

    if-eqz v4, :cond_d

    :cond_c
    iget-boolean v4, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsSupportSwipeEnroll:Z

    if-nez v4, :cond_d

    invoke-static {}, Lcom/samsung/android/biometrics/app/setting/Utils;->isJdmModel()Z

    move-result v4

    if-nez v4, :cond_d

    move v4, v2

    goto :goto_3

    :cond_d
    move v4, v3

    :goto_3
    iput-boolean v4, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsSupportSecondGuide:Z

    const v4, 0x7f0a007d

    invoke-virtual {p0, v4}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mDetailGuideText:Landroid/widget/TextView;

    const v4, 0x7f0a0110

    invoke-virtual {p0, v4}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mTxtViewProgress:Landroid/widget/TextView;

    const/16 v4, 0x190

    invoke-direct {p0, v4}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->setFingerGuideText(I)V

    iget-object v5, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mTxtViewProgress:Landroid/widget/TextView;

    const v6, 0x7f1000ec

    invoke-virtual {p0, v6}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    new-array v8, v2, [Ljava/lang/CharSequence;

    new-array v9, v2, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v3

    const-string v10, "%d"

    invoke-static {v10, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v3

    invoke-static {v6, v8}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v5, 0x7f0a0042

    invoke-virtual {p0, v5}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    if-eqz v5, :cond_e

    const v6, 0x7f1000ab

    invoke-virtual {p0, v6}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {v5, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v5, v2}, Landroid/widget/Button;->semSetButtonShapeEnabled(Z)V

    :cond_e
    const v6, 0x7f0a0087

    invoke-virtual {p0, v6}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    if-eqz v6, :cond_f

    invoke-virtual {v6, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v6, v2}, Landroid/widget/Button;->semSetButtonShapeEnabled(Z)V

    :cond_f
    const v8, 0x7f0a0086

    invoke-virtual {p0, v8}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    if-eqz v8, :cond_10

    invoke-virtual {v8, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v8, v2}, Landroid/widget/Button;->semSetButtonShapeEnabled(Z)V

    :cond_10
    const v9, 0x7f0a011a

    invoke-virtual {p0, v9}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mGuideTitle:Landroid/widget/TextView;

    invoke-direct {p0, v4}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->setFingerGuideTitle(I)V

    const v4, 0x7f0a00dc

    invoke-virtual {p0, v4}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mImageViewKnoxBi:Landroid/widget/ImageView;

    iget-boolean v4, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsFromSetupWizard:Z

    if-eqz v4, :cond_12

    iput-boolean v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mBackEnabled:Z

    const v4, 0x7f0a00f6

    invoke-virtual {p0, v4}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    iput-object v4, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mNextButtonArea:Landroid/widget/RelativeLayout;

    const v4, 0x7f0a00f7

    invoke-virtual {p0, v4}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mNextButton:Landroid/widget/Button;

    if-eqz v4, :cond_11

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_11
    const v4, 0x7f0a0041

    invoke-virtual {p0, v4}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    if-eqz v4, :cond_12

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_12
    invoke-static {p0}, Lcom/samsung/android/biometrics/app/setting/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_13

    iget-boolean v4, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsDisplaySensor:Z

    if-eqz v4, :cond_13

    iput-boolean v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsSkipGuideScreen:Z

    iput-boolean v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsReCreated:Z

    :cond_13
    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->setLayoutHeight()Z

    move-result v4

    if-nez v4, :cond_14

    return-void

    :cond_14
    iput-boolean v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsRegisterStarted:Z

    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->disableSystemKey()V

    iget-boolean v4, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsFromSetupWizard:Z

    if-nez v4, :cond_15

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getWindowInsetsController()Landroid/view/WindowInsetsController;

    move-result-object v4

    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v9

    invoke-interface {v4, v9}, Landroid/view/WindowInsetsController;->hide(I)V

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getWindowInsetsController()Landroid/view/WindowInsetsController;

    move-result-object v4

    invoke-interface {v4, v7}, Landroid/view/WindowInsetsController;->setSystemBarsBehavior(I)V

    :cond_15
    sget-boolean v4, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FP_FEATURE_SUPPORT_GESTURE_CALIBRATION:Z

    if-nez v4, :cond_17

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "fingerprint_gesture_quick"

    invoke-static {v4, v7, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_16

    move v4, v2

    goto :goto_4

    :cond_16
    move v4, v3

    :goto_4
    iput-boolean v4, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsFingerGestureSet:Z

    if-eqz v4, :cond_17

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, v7, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_17
    iget v4, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mDisplayType:I

    const/4 v7, 0x5

    if-ne v4, v7, :cond_18

    const/16 v0, 0x12f

    invoke-direct {p0, v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->showGuideScreen(I)V

    iput-boolean v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsSkipGuideScreen:Z

    goto :goto_6

    :cond_18
    iget-boolean v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsSkipGuideScreen:Z

    if-nez v3, :cond_1a

    iget-boolean v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsReCreated:Z

    if-nez v3, :cond_1a

    sget-boolean v3, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FEATURE_SUPPORT_DISABLED_MENU_K05:Z

    if-eqz v3, :cond_19

    goto :goto_5

    :cond_19
    const/16 v2, 0x12c

    invoke-direct {p0, v2}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->showGuideScreen(I)V

    iget-boolean v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsDisplaySensor:Z

    if-eqz v2, :cond_1b

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v2, :cond_1b

    const-string v2, "CALL semStartCalibration()"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->semForceCBGE()I

    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->showFingerSensorRectView()V

    goto :goto_6

    :cond_1a
    :goto_5
    const/16 v0, 0xc8

    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mRegisterScreen:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0, v3}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->startViewAnimation(ILandroid/view/View;)V

    const/16 v0, 0xcf

    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mDetailGuideText:Landroid/widget/TextView;

    invoke-direct {p0, v0, v3}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->startViewAnimation(ILandroid/view/View;)V

    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->startEnrollment()V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mFinger_ProgressView:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;

    invoke-virtual {v0, v2}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintProgressEffectView;->showEnrollCenterGuideVI(Z)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$2;-><init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;)V

    const-wide/16 v3, 0x12c

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1b
    :goto_6
    return-void

    :cond_1c
    :goto_7
    const-string v2, "Token is not available!!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->finish()V

    return-void

    :cond_1d
    :goto_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[onCreate] isHardwareDetected = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", requestGetSensorStatus = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mSensorStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mSensorStatus:I

    invoke-direct {p0, v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->showSensorErrorDialog(I)V

    return-void

    :cond_1e
    :goto_9
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "enrollResult"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mToken:[B

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    invoke-virtual {p0, v3, v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->setResult(ILandroid/content/Intent;)V

    iget-boolean v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsInMultiWindowMode:Z

    if-eqz v2, :cond_1f

    const v2, 0x7f100088

    invoke-virtual {p0, v2}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    :cond_1f
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->finish()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 7

    const/4 v0, 0x4

    if-ne p1, v0, :cond_5

    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsSwipeEnrollGuideShow:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->finishRegistration()V

    return v1

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mToken:[B

    const-string v3, "hw_auth_token"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    iget-boolean v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsRegisterCompleted:Z

    const-string v3, "enrollResult"

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    const/4 v2, -0x1

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v2, v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->setResult(ILandroid/content/Intent;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v4, v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->setResult(ILandroid/content/Intent;)V

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mExitToast:Landroid/widget/Toast;

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mBackEnabled:Z

    if-nez v2, :cond_4

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_4

    iget-boolean v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsBackSecond:Z

    if-eqz v2, :cond_2

    const-string v1, "BSS_FingerprintEnrollActivity"

    const-string v2, "Fingerprint enroll screen is terminated by Back key !!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v4, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsBackSecond:Z

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mExitToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->cancel()V

    goto :goto_1

    :cond_2
    iput-boolean v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsBackSecond:Z

    invoke-static {p0}, Lcom/samsung/android/biometrics/app/setting/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mBackHandler:Landroid/os/Handler;

    const-wide/16 v5, 0x7d0

    invoke-virtual {v2, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_3
    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mExitToast:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    return v1

    :cond_4
    :goto_1
    iget-boolean v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsRegisterCompleted:Z

    if-eqz v1, :cond_5

    const/16 v1, 0x202a

    const/16 v2, 0x202d

    iget v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mEnrolledCount:I

    invoke-static {v1, v2, v3}, Lcom/samsung/android/biometrics/app/setting/SALoggingHelper;->insertEventLogging(III)V

    :cond_5
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onMultiWindowModeChanged(Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onMultiWindowModeChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BSS_FingerprintEnrollActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f100088

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->finish()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 5

    const-string v0, "BSS_FingerprintEnrollActivity"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->enableSystemKey()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsPauseRegistration:Z

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mTts:Landroid/speech/tts/TextToSpeech;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/speech/tts/TextToSpeech;->stop()I

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v1}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    iput-object v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mTts:Landroid/speech/tts/TextToSpeech;

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    iput-object v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mTextureView:Landroid/view/TextureView;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/view/TextureView;->destroyDrawingCache()V

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v1, v2}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    iput-object v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mTextureView:Landroid/view/TextureView;

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mSurface:Landroid/view/Surface;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    iput-object v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mSurface:Landroid/view/Surface;

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mLiftFingerMessage:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$LiftFingerMessage;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$LiftFingerMessage;->interrupt()V

    iput-object v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mLiftFingerMessage:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$LiftFingerMessage;

    :cond_4
    iget-boolean v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsReCreated:Z

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/samsung/android/biometrics/app/setting/Utils;->isOpticalSensor()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mMaskViewToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Landroid/hardware/fingerprint/FingerprintManager;->semRemoveMaskView(Landroid/os/IBinder;)I

    :cond_5
    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->removeErrorMessageHandler()V

    iget-boolean v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsRegisterStarted:Z

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mEnrollState:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$EnrollState;

    sget-object v2, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$EnrollState;->NONE:Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$EnrollState;

    if-eq v1, v2, :cond_6

    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->cancelEnrollment()V

    :cond_6
    iget-boolean v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsFinishRegistration:Z

    if-nez v1, :cond_a

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsReCreated:Z

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mToken:[B

    if-eqz v3, :cond_7

    const-string v4, "hw_auth_token"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    :cond_7
    const-string v3, "enrollResult"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-boolean v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsFromSetupWizard:Z

    if-eqz v3, :cond_8

    iget-boolean v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsButtonClicked:Z

    if-nez v3, :cond_8

    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mPowerManager:Landroid/os/PowerManager;

    if-eqz v3, :cond_8

    invoke-virtual {v3}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->setResult(ILandroid/content/Intent;)V

    goto :goto_0

    :cond_8
    iget-boolean v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsRegisterCompleted:Z

    if-nez v3, :cond_9

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->setResult(ILandroid/content/Intent;)V

    :cond_9
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->finish()V

    :cond_a
    iget-boolean v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsFingerGestureSet:Z

    if-eqz v1, :cond_b

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "fingerprint_gesture_quick"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_b
    return-void
.end method

.method public onResume()V
    .locals 5

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const-string v0, "BSS_FingerprintEnrollActivity"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/samsung/android/biometrics/app/setting/Utils;->isDesktopStandaloneMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "reduce_window"

    const-string v3, "id"

    const-string v4, "android"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    const v0, 0x7f1000bd

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mExitToast:Landroid/widget/Toast;

    invoke-static {p0}, Lcom/samsung/android/biometrics/app/setting/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mExitToast:Landroid/widget/Toast;

    new-instance v2, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$3;

    invoke-direct {v2, p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$3;-><init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Toast;->addCallback(Landroid/widget/Toast$Callback;)V

    new-instance v0, Landroid/speech/tts/TextToSpeech;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mTts:Landroid/speech/tts/TextToSpeech;

    nop

    new-instance v2, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v2}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/speech/tts/TextToSpeech;->setAudioAttributes(Landroid/media/AudioAttributes;)I

    :cond_1
    iput-boolean v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsPauseRegistration:Z

    iput-boolean v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsReCreated:Z

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "BSS_FingerprintEnrollActivity"

    const-string v1, "onSaveInstanceState"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsReCreated:Z

    const-string v1, "IsReCreated"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 7

    const-string v0, "BSS_FingerprintEnrollActivity"

    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mSurface:Landroid/view/Surface;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    iget v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mDisplayType:I

    const/4 v4, 0x5

    const/4 v5, 0x1

    if-ne v3, v4, :cond_0

    const/16 v3, 0x12f

    invoke-direct {p0, v3, v5}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->getGuideClipURI(II)Landroid/net/Uri;

    move-result-object v3

    move-object v1, v3

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    iget-boolean v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsFirstGuideShow:Z

    if-eqz v3, :cond_1

    const/16 v3, 0x12c

    invoke-direct {p0, v3, v5}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->getGuideClipURI(II)Landroid/net/Uri;

    move-result-object v3

    move-object v1, v3

    goto :goto_0

    :cond_1
    iget-boolean v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsRotateGuideShow:Z

    if-eqz v3, :cond_2

    const/16 v3, 0x12d

    invoke-direct {p0, v3, v5}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->getGuideClipURI(II)Landroid/net/Uri;

    move-result-object v3

    move-object v1, v3

    goto :goto_0

    :cond_2
    iget-boolean v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsSwipeEnrollGuideShow:Z

    if-eqz v3, :cond_3

    const/16 v3, 0x12e

    invoke-direct {p0, v3, v5}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->getGuideClipURI(II)Landroid/net/Uri;

    move-result-object v3

    move-object v1, v3

    :cond_3
    :goto_0
    if-eqz v1, :cond_6

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v4, :cond_4

    new-instance v4, Landroid/media/MediaPlayer;

    invoke-direct {v4}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v4, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/16 v6, 0x9c4

    invoke-virtual {v4, v6, v5}, Landroid/media/MediaPlayer;->semSetParameter(II)Z

    iget-object v4, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    const v6, 0x88bc

    invoke-virtual {v4, v6, v5}, Landroid/media/MediaPlayer;->semSetParameter(II)Z

    goto :goto_1

    :cond_4
    invoke-virtual {v4}, Landroid/media/MediaPlayer;->reset()V

    const/4 v3, 0x1

    :goto_1
    iget-object v4, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v5, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mSurface:Landroid/view/Surface;

    invoke-virtual {v4, v5}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    iget-object v4, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v4, p0, v1}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    iget-object v4, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v4, v2}, Landroid/media/MediaPlayer;->setLooping(Z)V

    if-eqz v3, :cond_5

    iget-object v4, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->prepare()V

    iget-object v4, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->start()V

    goto :goto_2

    :cond_5
    iget-object v4, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->prepareAsync()V

    :goto_2
    iget-object v4, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v5, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$21;

    invoke-direct {v5, p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$21;-><init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;)V

    invoke-virtual {v4, v5}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iget-object v4, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v5, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$22;

    invoke-direct {v5, p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity$22;-><init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;)V

    invoke-virtual {v4, v5}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v1

    const-string v2, "IOException"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->finish()V

    goto :goto_4

    :catch_1
    move-exception v1

    const-string v2, "IllegalStateException"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->finish()V

    goto :goto_3

    :catch_2
    move-exception v1

    const-string v2, "SecurityException"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->finish()V

    goto :goto_3

    :catch_3
    move-exception v1

    const-string v2, "IllegalArgumentException"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->finish()V

    :cond_6
    :goto_3
    nop

    :goto_4
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->adjustTextureViewRatio(II)V

    :cond_0
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mHideErrorHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const-string v0, "BSS_FingerprintEnrollActivity"

    const-string v1, "Remove_Error_Runnable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mHideErrorHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mHideErrorRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsDisplaySensor:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->mIsShowSensorErrorDialog:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onWindowFocusChanged : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BSS_FingerprintEnrollActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/enroll/FingerprintEnrollActivity;->finish()V

    :cond_0
    return-void
.end method
