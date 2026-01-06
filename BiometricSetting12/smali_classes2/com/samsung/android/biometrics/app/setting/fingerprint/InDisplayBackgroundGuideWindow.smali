.class public Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplayBackgroundGuideWindow;
.super Lcom/samsung/android/biometrics/app/setting/SysUiWindow;
.source "InDisplayBackgroundGuideWindow.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BSS_SysUiWindow.B"


# instance fields
.field private mBottomView:Landroid/view/View;

.field private mCancelButton:Landroid/widget/Button;

.field private mGuideImage:Landroid/widget/ImageView;

.field private mGuideString:Ljava/lang/String;

.field private mGuideText:Landroid/widget/TextView;

.field private mInDisplayHelper:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper;

.field private mLayout:Landroid/widget/LinearLayout;

.field private mRunnableClearMessage:Ljava/lang/Runnable;

.field private mTitleText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;-><init>(Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;)V

    new-instance v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplayBackgroundGuideWindow$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplayBackgroundGuideWindow$1;-><init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplayBackgroundGuideWindow;)V

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplayBackgroundGuideWindow;->mRunnableClearMessage:Ljava/lang/Runnable;

    invoke-virtual {p1}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->getInDisplaySensorHelper()Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplayBackgroundGuideWindow;->mInDisplayHelper:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper;

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplayBackgroundGuideWindow;->getLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplayBackgroundGuideWindow;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplayBackgroundGuideWindow;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d003a

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplayBackgroundGuideWindow;->mBaseView:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplayBackgroundGuideWindow;->mBaseView:Landroid/view/View;

    const v2, 0x7f0a0145

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplayBackgroundGuideWindow;->mLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplayBackgroundGuideWindow;->mBaseView:Landroid/view/View;

    const v2, 0x7f0a0141

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplayBackgroundGuideWindow;->mBottomView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplayBackgroundGuideWindow;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f100102

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplayBackgroundGuideWindow;->mGuideString:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplayBackgroundGuideWindow;->mBaseView:Landroid/view/View;

    const v3, 0x7f0a0146

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplayBackgroundGuideWindow;->mTitleText:Landroid/widget/TextView;

    const v3, 0x7f100103

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplayBackgroundGuideWindow;->mBaseView:Landroid/view/View;

    const v3, 0x7f0a0144

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplayBackgroundGuideWindow;->mGuideText:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplayBackgroundGuideWindow;->mBaseView:Landroid/view/View;

    const v2, 0x7f0a0143

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplayBackgroundGuideWindow;->mGuideImage:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplayBackgroundGuideWindow;->mBaseView:Landroid/view/View;

    const v2, 0x7f0a0142

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplayBackgroundGuideWindow;->mCancelButton:Landroid/widget/Button;

    const v2, 0x7f0800ba

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplayBackgroundGuideWindow;->mCancelButton:Landroid/widget/Button;

    const/high16 v2, 0x1040000

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplayBackgroundGuideWindow;->mCancelButton:Landroid/widget/Button;

    const v2, 0x7f07007a

    invoke-static {v1, v2}, Lcom/samsung/android/biometrics/app/setting/Utils;->setMaxTextScaleSize(Landroid/widget/TextView;I)V

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplayBackgroundGuideWindow;->mCancelButton:Landroid/widget/Button;

    new-instance v2, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplayBackgroundGuideWindow$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplayBackgroundGuideWindow$2;-><init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplayBackgroundGuideWindow;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplayBackgroundGuideWindow;->mBaseView:Landroid/view/View;

    new-instance v2, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplayBackgroundGuideWindow$3;

    invoke-direct {v2, p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplayBackgroundGuideWindow$3;-><init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplayBackgroundGuideWindow;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplayBackgroundGuideWindow;->mInDisplayHelper:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper;

    invoke-virtual {v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper;->getSensorInfo()Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$SensorInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$SensorInfo;->isNaviBarHide()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplayBackgroundGuideWindow;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/biometrics/app/setting/SettingHelper;->isNavigationBarHidden(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplayBackgroundGuideWindow;->mBaseView:Landroid/view/View;

    const/high16 v2, 0x1200000

    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplayBackgroundGuideWindow;->mBaseView:Landroid/view/View;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplayBackgroundGuideWindow;->mBaseView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplayBackgroundGuideWindow;->checkWindowFocus()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "InDisplayBackgroundGuideWindow: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BSS_SysUiWindow.B"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplayBackgroundGuideWindow;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplayBackgroundGuideWindow;->resetMessage()V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplayBackgroundGuideWindow;)Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplayBackgroundGuideWindow;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplayBackgroundGuideWindow;)Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplayBackgroundGuideWindow;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    return-object v0
.end method

.method private resetMessage()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplayBackgroundGuideWindow;->mGuideText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplayBackgroundGuideWindow;->mGuideString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplayBackgroundGuideWindow;->mGuideImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private showTemporaryMessage(ILjava/lang/String;Z)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplayBackgroundGuideWindow;->mGuideImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-direct {p0, p1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplayBackgroundGuideWindow;->updateIcon(I)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplayBackgroundGuideWindow;->mGuideText:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    if-eqz p3, :cond_2

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplayBackgroundGuideWindow;->mH:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplayBackgroundGuideWindow;->mRunnableClearMessage:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return-void
.end method

.method private updateIcon(I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplayBackgroundGuideWindow;->mGuideImage:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const v1, 0x7f0800be

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :sswitch_1
    const v1, 0x7f0800bf

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :sswitch_2
    const v1, 0x7f0800c0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :sswitch_3
    const v1, 0x7f0800bd

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :sswitch_4
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :sswitch_5
    const v1, 0x7f0800c2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    nop

    :goto_0
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
.method public dismiss()Z
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplayBackgroundGuideWindow;->removeView()V

    const/4 v0, 0x1

    return v0
.end method

.method public getLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 7

    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x1

    const/16 v3, 0xa3a

    const v4, 0x1080802

    const/4 v5, -0x3

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    const/4 v1, 0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    const v1, 0x3f4ccccd    # 0.8f

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FP BG"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplayBackgroundGuideWindow;->HASH_CODE:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public getLogTag()Ljava/lang/String;
    .locals 1

    const-string v0, "BSS_SysUiWindow.B"

    return-object v0
.end method

.method public handleAuthenticationError(IILjava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplayBackgroundGuideWindow;->mH:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplayBackgroundGuideWindow;->mRunnableClearMessage:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplayBackgroundGuideWindow;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Landroid/hardware/fingerprint/FingerprintManager;->getErrorString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    invoke-direct {p0, v1, v0, v2}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplayBackgroundGuideWindow;->showTemporaryMessage(ILjava/lang/String;Z)V

    return v2
.end method

.method public handleAuthenticationFailed(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplayBackgroundGuideWindow;->mH:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplayBackgroundGuideWindow;->mRunnableClearMessage:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplayBackgroundGuideWindow;->mContext:Landroid/content/Context;

    const v1, 0x1040c50

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    invoke-direct {p0, v1, v0, v2}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplayBackgroundGuideWindow;->showTemporaryMessage(ILjava/lang/String;Z)V

    return-void
.end method

.method public handleAuthenticationHelp(ILjava/lang/String;)V
    .locals 2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplayBackgroundGuideWindow;->mH:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplayBackgroundGuideWindow;->mRunnableClearMessage:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplayBackgroundGuideWindow;->showTemporaryMessage(ILjava/lang/String;Z)V

    return-void
.end method

.method public handleEvent(IILandroid/os/Bundle;)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    nop

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplayBackgroundGuideWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x6

    invoke-static {v0, v1, p2}, Landroid/hardware/fingerprint/FingerprintManager;->getAcquiredString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplayBackgroundGuideWindow;->handleAuthenticationHelp(ILjava/lang/String;)V

    goto :goto_0

    :pswitch_1
    nop

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplayBackgroundGuideWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p2, v1}, Landroid/hardware/fingerprint/FingerprintManager;->getAcquiredString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplayBackgroundGuideWindow;->handleAuthenticationHelp(ILjava/lang/String;)V

    nop

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xc9
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public handleTspBlock(Z)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplayBackgroundGuideWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x6

    const/16 v2, 0x3ec

    invoke-static {v0, v1, v2}, Landroid/hardware/fingerprint/FingerprintManager;->getAcquiredString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0, v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplayBackgroundGuideWindow;->showTemporaryMessage(ILjava/lang/String;Z)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplayBackgroundGuideWindow;->resetMessage()V

    :goto_0
    return-void
.end method

.method public onRotationInfoChanged(I)V
    .locals 11

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplayBackgroundGuideWindow;->mLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplayBackgroundGuideWindow;->mBottomView:Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplayBackgroundGuideWindow;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/biometrics/app/setting/Utils;->getDisplaySize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplayBackgroundGuideWindow;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/biometrics/app/setting/Utils;->getDisplayMetrics(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplayBackgroundGuideWindow;->mBottomView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v5, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplayBackgroundGuideWindow;->mLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v6, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplayBackgroundGuideWindow;->mInDisplayHelper:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper;

    invoke-virtual {v6}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper;->getSensorInfo()Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$SensorInfo;

    move-result-object v6

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-wide/high16 v7, 0x4030000000000000L    # 16.0

    invoke-virtual {p0, v3, v7, v8}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplayBackgroundGuideWindow;->getPxValue(Landroid/util/DisplayMetrics;D)I

    move-result v7

    iput v7, v4, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iget v1, v2, Landroid/graphics/Point;->x:I

    int-to-double v7, v1

    const-wide v9, 0x3fe02de00d1b7176L    # 0.5056

    mul-double/2addr v7, v9

    double-to-int v7, v7

    iput v7, v5, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    goto :goto_0

    :pswitch_1
    invoke-virtual {v6}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$SensorInfo;->getMarginBottom()I

    move-result v7

    invoke-virtual {v6}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$SensorInfo;->getAreaWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    invoke-virtual {v6}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$SensorInfo;->getImageSize()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    iput v7, v4, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v7, -0x1

    iput v7, v5, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    nop

    :goto_0
    iget-object v7, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplayBackgroundGuideWindow;->mBottomView:Landroid/view/View;

    invoke-virtual {v7, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v7, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplayBackgroundGuideWindow;->mLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_1
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public show()V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplayBackgroundGuideWindow;->addView()V

    return-void
.end method
