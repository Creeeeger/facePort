.class public Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;
.super Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;
.source "FingerprintPromptGuiHelper.java"


# static fields
.field private static final TIMEOUT_FINGERPRINT_PROMPT:I = 0xea60


# instance fields
.field private mBottomHeight:I

.field private mDescriptionTextViewHeight:I

.field private mDialogHeight:I

.field private mDialogLayout:Landroid/widget/LinearLayout;

.field private mDialogLeftMarginView:Landroid/view/View;

.field private mDialogMinimumHeight:I

.field private mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mFingerPosition:Landroid/graphics/Rect;

.field private mH:Landroid/os/Handler;

.field private mRunnableClearMessage:Ljava/lang/Runnable;

.field private mRunnableHandlePromptTimeout:Ljava/lang/Runnable;

.field private mSensorIconEdge:I

.field private mTitleTextViewHeight:I

.field private mTopSpaceView:Landroid/view/View;

.field private mTts:Landroid/speech/tts/TextToSpeech;


# direct methods
.method public constructor <init>(Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;Landroid/view/View;Landroid/os/Handler;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;-><init>(Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mTts:Landroid/speech/tts/TextToSpeech;

    new-instance v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper$1;-><init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;)V

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mRunnableHandlePromptTimeout:Ljava/lang/Runnable;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".P"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->TAG:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mH:Landroid/os/Handler;

    invoke-virtual {p1}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/Utils;->getDisplayMetrics(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;ILjava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->showTemporaryMessage(ILjava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mDialogMinimumHeight:I

    return p1
.end method

.method static synthetic access$1200(Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mDialogLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mDialogHeight:I

    return v0
.end method

.method static synthetic access$1302(Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mDialogHeight:I

    return p1
.end method

.method static synthetic access$1400(Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mTitleTextViewHeight:I

    return v0
.end method

.method static synthetic access$1402(Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mTitleTextViewHeight:I

    return p1
.end method

.method static synthetic access$1500(Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mTitleTxtView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mBottomHeight:I

    return v0
.end method

.method static synthetic access$1602(Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mBottomHeight:I

    return p1
.end method

.method static synthetic access$1700(Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mBottomButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mDescriptionTextViewHeight:I

    return v0
.end method

.method static synthetic access$1802(Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mDescriptionTextViewHeight:I

    return p1
.end method

.method static synthetic access$1900(Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mBottomButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mBottomButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mH:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;)Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;)Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;)Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    return-object v0
.end method

.method static synthetic access$900()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->DEBUG:Z

    return v0
.end method

.method private resetMessage()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mDescriptionText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, ""

    invoke-direct {p0, v1, v0, v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->showTemporaryMessage(ILjava/lang/String;Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mDescriptionText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0, v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->showTemporaryMessage(ILjava/lang/String;Z)V

    :goto_0
    invoke-direct {p0, v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->updateIcon(I)V

    return-void
.end method

.method private restartPromptTimeout()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mH:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mRunnableHandlePromptTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mH:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mRunnableHandlePromptTimeout:Ljava/lang/Runnable;

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private runFingerPositionTalkBack()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FP_FEATURE_SENSOR_IS_IN_DISPLAY_TYPE:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/speech/tts/TextToSpeech;

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mTts:Landroid/speech/tts/TextToSpeech;

    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/speech/tts/TextToSpeech;->setAudioAttributes(Landroid/media/AudioAttributes;)I

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mContext:Landroid/content/Context;

    const-string v1, "fingerprint"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->TAG:Ljava/lang/String;

    const-string v2, "onRotationInfoChanged: fingerprintManager is NULL."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->semGetFingerIconRectInDisplay()Landroid/graphics/Rect;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mFingerPosition:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mBaseView:Landroid/view/View;

    new-instance v2, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method private runTextToSpeech(Ljava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mTts:Landroid/speech/tts/TextToSpeech;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    :cond_0
    return-void
.end method

.method private setEventListener()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mBaseView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mBaseView:Landroid/view/View;

    new-instance v1, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper$2;-><init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mDialogLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper$3;-><init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mBottomButton:Landroid/widget/Button;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mBottomButton:Landroid/widget/Button;

    new-instance v1, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    return-void
.end method

.method private setSizeInfo(Landroid/content/Context;)V
    .locals 4

    const-string v0, ", "

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSizeInfo: mScreenLandWidth="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mScreenLandWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mScreenPortraitWidth="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mScreenPortraitWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mNavigationBarHeight="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mNavigationBarHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v1, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FP_FEATURE_SENSOR_IS_IN_DISPLAY_TYPE:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mInDisplayHelper:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper;

    invoke-virtual {v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper;->getSensorInfo()Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$SensorInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$SensorInfo;->getMarginBottom()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mInDisplayHelper:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper;

    invoke-virtual {v2}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper;->getSensorInfo()Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$SensorInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$SensorInfo;->getAreaHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mInDisplayHelper:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper;

    invoke-virtual {v2}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper;->getSensorInfo()Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$SensorInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$SensorInfo;->getImageSize()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mNavigationBarHeight:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mSensorIconEdge:I

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FingerprintPromptWindow: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mNavigationBarHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mBottomMarginForPortrait:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mSensorIconEdge:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->TAG:Ljava/lang/String;

    const-string v2, "setSizeInfo: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private showFingerprintNameMessage(Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mH:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mRunnableClearMessage:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mDescriptionTxtView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0700fb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mDescriptionTxtView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mDescriptionTxtView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mDescriptionTxtView:Landroid/widget/TextView;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mIsCheckToEnrolledBiometricMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mDialogLayout:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mDialogMinimumHeight:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mDescriptionTxtView:Landroid/widget/TextView;

    iget v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mDescriptionTextViewHeight:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMinimumHeight(I)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mIconImgView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mIconImgView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v1, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mIconImgView:Lcom/airbnb/lottie/LottieAnimationView;

    const v2, 0x7f0800b1

    invoke-virtual {v1, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setImageResource(I)V

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mIconImgView:Lcom/airbnb/lottie/LottieAnimationView;

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06006c

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setColorFilter(I)V

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0700f6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0700f4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0700f5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mIconImgView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mH:Landroid/os/Handler;

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mRunnableClearMessage:Ljava/lang/Runnable;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private showTemporaryMessage(ILjava/lang/String;Z)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mH:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mRunnableClearMessage:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mDescriptionTxtView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mIsCheckToEnrolledBiometricMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mDialogLayout:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mDialogMinimumHeight:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mDescriptionTxtView:Landroid/widget/TextView;

    iget v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mDescriptionTextViewHeight:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMinimumHeight(I)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mDescriptionTxtView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-direct {p0, p1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->updateIcon(I)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mDescriptionTxtView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0700f9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mDescriptionTxtView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mDescriptionTxtView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mDescriptionTxtView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    if-eqz p3, :cond_2

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mH:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mRunnableClearMessage:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return-void
.end method

.method private updateIcon(I)V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mIconImgView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-boolean v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mIsCheckToEnrolledBiometricMode:Z

    const/16 v2, 0x8

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mIconImgView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v1, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mDescriptionTxtView:Landroid/widget/TextView;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mIconImgView:Lcom/airbnb/lottie/LottieAnimationView;

    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f06006d

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/airbnb/lottie/LottieAnimationView;->setColorFilter(I)V

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0700fe

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0700fc

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mIconImgView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-boolean v1, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FP_FEATURE_SENSOR_IS_IN_DISPLAY_TYPE:Z

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mIconImgView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v1, v3}, Lcom/airbnb/lottie/LottieAnimationView;->setVisibility(I)V

    :cond_1
    iget-boolean v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mIsOnlyOneBioAble:Z

    if-nez v1, :cond_2

    if-nez p1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mIconImgView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v1, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setVisibility(I)V

    return-void

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mIconImgView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v1, v5}, Lcom/airbnb/lottie/LottieAnimationView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mIconImgView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v1, v3}, Lcom/airbnb/lottie/LottieAnimationView;->setVisibility(I)V

    const v1, 0x7f0800b1

    sparse-switch p1, :sswitch_data_0

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mIconImgView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v2, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setImageResource(I)V

    goto :goto_0

    :sswitch_0
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mIconImgView:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v2, "fingerprint_error_presslong.json"

    invoke-virtual {v1, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mIconImgView:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v2, "fingerprint_error_timeout.json"

    invoke-virtual {v1, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_2
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mIconImgView:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v2, "fingerprint_error_wipe.json"

    invoke-virtual {v1, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_3
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mIconImgView:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v2, "fingerprint_error_move.json"

    invoke-virtual {v1, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_4
    sget-boolean v3, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FP_FEATURE_SENSOR_IS_IN_DISPLAY_TYPE:Z

    if-eqz v3, :cond_3

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mIconImgView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v1, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setVisibility(I)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mIconImgView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v2, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setImageResource(I)V

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mIconImgView:Lcom/airbnb/lottie/LottieAnimationView;

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setColorFilter(I)V

    goto :goto_0

    :sswitch_5
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mIconImgView:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v2, "fingerprint_error_nomatch.json"

    invoke-virtual {v1, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    nop

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mIconImgView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_5
        0x0 -> :sswitch_4
        0x1 -> :sswitch_3
        0x2 -> :sswitch_3
        0x3 -> :sswitch_2
        0x5 -> :sswitch_1
        0x3eb -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public cleanUpPrompt()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mPositiveButtonLayout:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mTopSpaceView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mTopSpaceView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mH:Landroid/os/Handler;

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mRunnableClearMessage:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mH:Landroid/os/Handler;

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mRunnableHandlePromptTimeout:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/speech/tts/TextToSpeech;->stop()I

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v1}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mTts:Landroid/speech/tts/TextToSpeech;

    :cond_0
    return-void
.end method

.method public getPromptType()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public handleAuthenticationError(IILjava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Landroid/hardware/fingerprint/FingerprintManager;->getErrorString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0, v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->showTemporaryMessage(ILjava/lang/String;Z)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mH:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mRunnableHandlePromptTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    return v0
.end method

.method public handleAuthenticationFailed(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mContext:Landroid/content/Context;

    const v1, 0x1040c50

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    invoke-direct {p0, v1, v0, v2}, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->showTemporaryMessage(ILjava/lang/String;Z)V

    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mIsCheckToEnrolledBiometricMode:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->restartPromptTimeout()V

    :cond_0
    return-void
.end method

.method public handleAuthenticationHelp(ILjava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mIsCheckToEnrolledBiometricMode:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->restartPromptTimeout()V

    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->showTemporaryMessage(ILjava/lang/String;Z)V

    return-void
.end method

.method public handleAuthenticationSucceeded(Ljava/lang/String;Z)Z
    .locals 4

    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mIsCheckToEnrolledBiometricMode:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->showFingerprintNameMessage(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    const/16 v3, 0x64

    invoke-virtual {v0, v3, v2}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->handleOnButtonPressed(II)V

    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->restartPromptTimeout()V

    return v1

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->isKnoxProfile()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->getKnoxSysUiClientHelper()Lcom/samsung/android/biometrics/app/setting/knox/KnoxSysUiClientHelper;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/biometrics/app/setting/knox/KnoxSysUiClientHelper;->interceptHandleAuthenticationSucceededIfNeeded()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    const/4 v1, 0x4

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->handleOnDismissed(I[B)V

    return v2
.end method

.method public handleEvent(IILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public handleTspBlock(Z)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x6

    const/16 v2, 0x3ec

    invoke-static {v0, v1, v2}, Landroid/hardware/fingerprint/FingerprintManager;->getAcquiredString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0, v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->showTemporaryMessage(ILjava/lang/String;Z)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->resetMessage()V

    :goto_0
    return-void
.end method

.method public initPrompt()V
    .locals 5

    new-instance v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;)V

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mRunnableClearMessage:Ljava/lang/Runnable;

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    iput v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mDisplayType:I

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/Utils;->isScreenLandscape(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mLastOrientation:I

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mBaseView:Landroid/view/View;

    const v2, 0x7f0a00c6

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mDialogLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mBaseView:Landroid/view/View;

    const v2, 0x7f0a00c7

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mDialogLeftMarginView:Landroid/view/View;

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v0}, Landroid/hardware/biometrics/PromptInfo;->getDescription()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mDescriptionText:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mDescriptionText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mContext:Landroid/content/Context;

    const v2, 0x7f1000b7

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mDescriptionText:Ljava/lang/CharSequence;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mDescriptionTxtView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mDescriptionText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mPositiveButtonLayout:Landroid/widget/FrameLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mBaseView:Landroid/view/View;

    const v2, 0x7f0a00cb

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mTopSpaceView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/biometrics/app/setting/Utils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mTopSpaceView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mBottomButton:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mBottomButton:Landroid/widget/Button;

    invoke-virtual {v3, v1}, Landroid/widget/Button;->semSetButtonShapeEnabled(Z)V

    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mBottomButton:Landroid/widget/Button;

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3}, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->setSizeInfo(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->setEventListener()V

    sget-boolean v3, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FP_FEATURE_SENSOR_IS_IN_DISPLAY_TYPE:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mInDisplayHelper:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper;

    invoke-virtual {v3}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper;->getSensorInfo()Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$SensorInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$SensorInfo;->isNaviBarHide()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/biometrics/app/setting/SettingHelper;->isNavigationBarHidden(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mBaseView:Landroid/view/View;

    const/high16 v4, 0x1200000

    invoke-virtual {v3, v4}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_2
    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/biometrics/app/setting/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->runFingerPositionTalkBack()V

    :cond_3
    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mBaseView:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mBaseView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    nop

    goto :goto_1

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FingerprintPromptWindow: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->handleOnUerCancel(I)V

    :goto_1
    return-void
.end method

.method public synthetic lambda$initPrompt$0$FingerprintPromptGuiHelper()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->resetMessage()V

    return-void
.end method

.method public synthetic lambda$runFingerPositionTalkBack$2$FingerprintPromptGuiHelper(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x9

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mTts:Landroid/speech/tts/TextToSpeech;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mFingerPosition:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-static {v0, v2, v3}, Lcom/samsung/android/biometrics/app/setting/Utils;->getInDisplayFingerPositionStringId(Landroid/graphics/Rect;FF)I

    move-result v0

    if-lez v0, :cond_1

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->runTextToSpeech(Ljava/lang/String;I)V

    :cond_1
    return v1

    :cond_2
    :goto_0
    return v1
.end method

.method public synthetic lambda$setEventListener$1$FingerprintPromptGuiHelper(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/Utils;->isDeviceCredentialAllowed(Landroid/hardware/biometrics/PromptInfo;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->isKnoxProfile()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->getKnoxSysUiClientHelper()Lcom/samsung/android/biometrics/app/setting/knox/KnoxSysUiClientHelper;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/biometrics/app/setting/knox/KnoxSysUiClientHelper;->interceptNegativeButtonEventIfNeeded()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    const/16 v2, 0x66

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->handleOnButtonPressed(II)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->handleOnButtonPressed(II)V

    :goto_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mDialogHeight:I

    iget v3, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mTitleTextViewHeight:I

    sub-int/2addr v2, v3

    iget v3, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mBottomHeight:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07007f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    sub-float/2addr v2, v3

    iget-object v3, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0700f8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    sub-float/2addr v2, v3

    iget-object v3, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0700f1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    sub-float/2addr v2, v3

    iget-object v3, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0700ff

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mDescriptionTextViewHeight:I

    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v3, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    iget-object v3, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onConfigurationChanged(last="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mLastOrientation:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", orientation="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", type="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mDisplayType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", prevWidth="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", currWidth="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mLastOrientation:I

    iget v4, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-ne v3, v4, :cond_0

    iget v3, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mDisplayType:I

    iget v4, v1, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    if-ne v3, v4, :cond_0

    iget v3, v1, Landroid/content/res/Configuration;->orientation:I

    if-eq v3, v5, :cond_0

    iget-object v3, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v4, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    if-eq v3, v4, :cond_a

    :cond_0
    iget-object v3, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mDialogLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v4, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mTopSpaceView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v6, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mDialogLeftMarginView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v7, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mBaseView:Landroid/view/View;

    const v8, 0x7f0a00d0

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v9, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/samsung/android/biometrics/app/setting/Utils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v9

    iput v9, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    const/4 v9, 0x0

    iput v9, v6, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput-object v2, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget-object v10, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f070139

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v10, v10

    iput v10, v8, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget v10, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v12, 0x5

    const/4 v13, 0x1

    if-ne v10, v5, :cond_5

    iget-object v10, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/samsung/android/biometrics/app/setting/Utils;->getDisplayHeight(Landroid/content/Context;)I

    move-result v10

    iget v14, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mNavigationBarHeight:I

    sub-int/2addr v10, v14

    iput v10, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mScreenLandWidth:I

    iget v10, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mBottomMarginForLandscape:I

    iput v10, v3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-static {}, Lcom/samsung/android/biometrics/app/setting/Utils;->isTablet()Z

    move-result v10

    if-eqz v10, :cond_1

    iget-object v10, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f09000f

    invoke-virtual {v10, v11, v13, v13}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v10

    iget-object v11, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v11, v11, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v11, v11

    mul-float/2addr v10, v11

    float-to-int v10, v10

    iput v10, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget v10, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mScreenLandWidth:I

    iget v11, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    sub-int/2addr v10, v11

    div-int/2addr v10, v5

    iput v10, v6, Landroid/widget/LinearLayout$LayoutParams;->width:I

    goto/16 :goto_2

    :cond_1
    iget-boolean v10, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mIsSupportDualDisplay:Z

    const/4 v14, 0x3

    if-eqz v10, :cond_2

    iget v10, v1, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    if-eq v10, v12, :cond_2

    iget-object v10, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v12, 0x7f090010

    invoke-virtual {v10, v12, v13, v13}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v10

    iget-object v12, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v12, v12, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v12, v12

    mul-float/2addr v10, v12

    float-to-int v10, v10

    iput v10, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget v10, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mScreenLandWidth:I

    iget v12, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    sub-int/2addr v10, v12

    div-int/2addr v10, v5

    iput v10, v6, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget-object v5, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Display;->getRotation()I

    move-result v5

    if-ne v5, v14, :cond_8

    iget-object v5, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    iget-object v10, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/samsung/android/biometrics/app/setting/Utils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v5, v10

    float-to-int v5, v5

    iput v5, v8, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    goto/16 :goto_2

    :cond_2
    iget-object v10, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f09000e

    invoke-virtual {v10, v11, v13, v13}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v10

    iget-object v11, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v11, v11, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v11, v11

    mul-float/2addr v10, v11

    float-to-int v10, v10

    iput v10, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget v10, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mScreenLandWidth:I

    iget v11, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    sub-int/2addr v10, v11

    div-int/2addr v10, v5

    iput v10, v6, Landroid/widget/LinearLayout$LayoutParams;->width:I

    sget-boolean v10, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FP_FEATURE_SENSOR_IS_IN_DISPLAY_TYPE:Z

    if-eqz v10, :cond_8

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    iget-object v15, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/Display;->getRotation()I

    move-result v15

    const v9, 0x7f0700f0

    if-ne v15, v13, :cond_3

    iget v13, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mScreenLandWidth:I

    iget v14, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    sub-int/2addr v13, v14

    div-int/2addr v13, v5

    iget v5, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    add-int/2addr v13, v5

    iget-object v5, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/samsung/android/biometrics/app/setting/Utils;->getDisplayHeight(Landroid/content/Context;)I

    move-result v5

    iget v11, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mSensorIconEdge:I

    sub-int/2addr v5, v11

    iget v11, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mNavigationBarHeight:I

    sub-int/2addr v5, v11

    if-lt v13, v5, :cond_4

    sub-int v10, v13, v5

    iget-object v11, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    float-to-int v9, v9

    add-int/2addr v10, v9

    iget v9, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    sub-int/2addr v9, v10

    iput v9, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    goto :goto_0

    :cond_3
    if-ne v15, v14, :cond_4

    iget v13, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mScreenLandWidth:I

    iget v14, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    sub-int/2addr v13, v14

    div-int/2addr v13, v5

    iget v5, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mSensorIconEdge:I

    if-gt v13, v5, :cond_4

    sub-int v10, v5, v13

    iget-object v11, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    float-to-int v9, v9

    add-int/2addr v10, v9

    iget v9, v6, Landroid/widget/LinearLayout$LayoutParams;->width:I

    add-int/2addr v9, v10

    iput v9, v6, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget v9, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    sub-int/2addr v9, v10

    iput v9, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    :cond_4
    :goto_0
    goto :goto_2

    :cond_5
    iget-object v9, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/samsung/android/biometrics/app/setting/Utils;->getDisplayWidth(Landroid/content/Context;)I

    move-result v9

    iput v9, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mScreenPortraitWidth:I

    invoke-static {}, Lcom/samsung/android/biometrics/app/setting/Utils;->isTablet()Z

    move-result v9

    if-eqz v9, :cond_6

    iget-object v9, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f090012

    invoke-virtual {v9, v10, v13, v13}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v9

    iget-object v10, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v10, v10, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v10, v10

    mul-float/2addr v9, v10

    float-to-int v9, v9

    iput v9, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    goto :goto_1

    :cond_6
    iget-boolean v9, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mIsSupportDualDisplay:Z

    if-eqz v9, :cond_7

    iget v9, v1, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    if-eq v9, v12, :cond_7

    iget-object v9, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f090013

    invoke-virtual {v9, v10, v13, v13}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v9

    iget-object v10, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v10, v10, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v10, v10

    mul-float/2addr v9, v10

    float-to-int v9, v9

    iput v9, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    goto :goto_1

    :cond_7
    iget-object v9, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f090011

    invoke-virtual {v9, v10, v13, v13}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v9

    iget-object v10, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v10, v10, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v10, v10

    mul-float/2addr v9, v10

    float-to-int v9, v9

    iput v9, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    :goto_1
    iget v9, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mScreenPortraitWidth:I

    iget v10, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    sub-int/2addr v9, v10

    div-int/2addr v9, v5

    iput v9, v6, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v13, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget v5, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mBottomMarginForPortrait:I

    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    :cond_8
    :goto_2
    iget-boolean v5, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mIsCheckToEnrolledBiometricMode:Z

    if-eqz v5, :cond_9

    iget-object v5, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mDialogLayout:Landroid/widget/LinearLayout;

    iget v9, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mDialogMinimumHeight:I

    invoke-virtual {v5, v9}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    iget-object v5, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mDescriptionTxtView:Landroid/widget/TextView;

    iget v9, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mDescriptionTextViewHeight:I

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setMinimumHeight(I)V

    :cond_9
    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget v5, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v9, 0x0

    invoke-virtual {v0, v5, v9}, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->customizeSwitch(II)V

    iget-object v5, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mDialogLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mTopSpaceView:Landroid/view/View;

    invoke-virtual {v5, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mDialogLeftMarginView:Landroid/view/View;

    invoke-virtual {v5, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget v5, v1, Landroid/content/res/Configuration;->orientation:I

    iput v5, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mLastOrientation:I

    iget v5, v1, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    iput v5, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mDisplayType:I

    :cond_a
    return-void
.end method

.method public onRotationInfoChanged(I)V
    .locals 5

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mLastOrientation:I

    iget v2, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v2, :cond_1

    invoke-virtual {p0, v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/biometrics/app/setting/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FP_FEATURE_SENSOR_IS_IN_DISPLAY_TYPE:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mContext:Landroid/content/Context;

    const-string v2, "fingerprint"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/fingerprint/FingerprintManager;

    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->TAG:Ljava/lang/String;

    const-string v3, "onRotationInfoChanged: fingerprintManager is NULL."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/hardware/fingerprint/FingerprintManager;->semGetFingerIconRectInDisplay()Landroid/graphics/Rect;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mFingerPosition:Landroid/graphics/Rect;

    const/4 v2, 0x3

    if-ne p1, v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/biometrics/app/setting/Utils;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mFingerPosition:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v2

    iput v4, v3, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mFingerPosition:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v2

    iput v4, v3, Landroid/graphics/Rect;->right:I

    :cond_1
    :goto_0
    return-void
.end method

.method public show()V
    .locals 10

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mDialogLeftMarginView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mDialogLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/biometrics/app/setting/Utils;->isScreenLandscape(Landroid/content/Context;)Z

    move-result v2

    const/4 v3, 0x5

    const/4 v4, 0x1

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/samsung/android/biometrics/app/setting/Utils;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09000f

    invoke-virtual {v2, v3, v4, v4}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mScreenLandWidth:I

    iget v3, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    goto/16 :goto_0

    :cond_0
    iget-boolean v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mIsSupportDualDisplay:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mDisplayType:I

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090010

    invoke-virtual {v2, v3, v4, v4}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mScreenLandWidth:I

    iget v3, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    goto/16 :goto_0

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09000e

    invoke-virtual {v2, v3, v4, v4}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mScreenLandWidth:I

    iget v3, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    sget-boolean v2, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FP_FEATURE_SENSOR_IS_IN_DISPLAY_TYPE:Z

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Display;->getRotation()I

    move-result v6

    const v7, 0x7f0700f0

    if-ne v6, v4, :cond_2

    iget v8, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mScreenLandWidth:I

    iget v9, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    sub-int/2addr v8, v9

    div-int/lit8 v8, v8, 0x2

    iget v9, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    add-int/2addr v8, v9

    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/biometrics/app/setting/Utils;->getDisplayHeight(Landroid/content/Context;)I

    move-result v3

    iget v9, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mSensorIconEdge:I

    sub-int/2addr v3, v9

    iget v9, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mNavigationBarHeight:I

    sub-int/2addr v3, v9

    if-lt v8, v3, :cond_3

    sub-int v2, v8, v3

    iget-object v9, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    add-int/2addr v2, v7

    iget v5, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    sub-int/2addr v5, v2

    iput v5, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    goto :goto_0

    :cond_2
    const/4 v8, 0x3

    if-ne v6, v8, :cond_3

    iget v8, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mScreenLandWidth:I

    iget v9, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    sub-int/2addr v8, v9

    div-int/lit8 v8, v8, 0x2

    iget v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mSensorIconEdge:I

    if-gt v8, v2, :cond_3

    sub-int v3, v2, v8

    iget-object v9, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    add-int/2addr v3, v7

    iget v5, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    add-int/2addr v5, v3

    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget v5, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    sub-int/2addr v5, v3

    iput v5, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    :cond_3
    :goto_0
    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mDialogLeftMarginView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mDialogLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_2

    :cond_4
    invoke-static {}, Lcom/samsung/android/biometrics/app/setting/Utils;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090012

    invoke-virtual {v2, v3, v4, v4}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    goto :goto_1

    :cond_5
    iget-boolean v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mIsSupportDualDisplay:Z

    if-eqz v2, :cond_6

    iget v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mDisplayType:I

    if-eq v2, v3, :cond_6

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090013

    invoke-virtual {v2, v3, v4, v4}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    goto :goto_1

    :cond_6
    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090011

    invoke-virtual {v2, v3, v4, v4}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    :goto_1
    iget v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mScreenPortraitWidth:I

    iget v3, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FingerprintPromptWindow: called with: Left Margin="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FingerprintPromptWindow: called with: mDialogLayout width="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mDialogLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mDialogLeftMarginView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_2
    iget v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->customizeSwitch(II)V

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/biometrics/app/setting/Utils;->isScreenLandscape(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mBottomMarginForLandscape:I

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    goto :goto_3

    :cond_7
    iget v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mBottomMarginForPortrait:I

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    :goto_3
    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mDescriptionTxtView:Landroid/widget/TextView;

    const/16 v4, 0x11

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mDialogLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-boolean v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mIsCheckToEnrolledBiometricMode:Z

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mIconImgView:Lcom/airbnb/lottie/LottieAnimationView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/LottieAnimationView;->setVisibility(I)V

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mDescriptionTxtView:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_4

    :cond_8
    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mIconImgView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/LottieAnimationView;->setVisibility(I)V

    invoke-direct {p0, v3}, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->updateIcon(I)V

    :goto_4
    iget-boolean v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->mIsCheckToEnrolledBiometricMode:Z

    if-eqz v2, :cond_9

    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintPromptGuiHelper;->restartPromptTimeout()V

    :cond_9
    return-void
.end method
