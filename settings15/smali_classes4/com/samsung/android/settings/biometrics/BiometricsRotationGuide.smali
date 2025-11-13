.class public Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;
.super Lcom/android/settings/core/SettingsBaseActivity;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mContext:Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;

.field public mContinueButton:Landroid/widget/Button;

.field public mContinueButtonArea:Landroid/widget/LinearLayout;

.field public mFromSetupWizard:Z

.field public mGuideScrollView:Landroid/widget/ScrollView;

.field public mGuideVideoContainer:Landroid/widget/FrameLayout;

.field public mGuideVideoView:Landroid/view/TextureView;

.field public mIsFinished:Z

.field public mMediaPlayer:Landroid/media/MediaPlayer;

.field public mOrientation:I

.field public mRequestBiometricsType:I

.field public mScreenWidth:I

.field public mSetupWizardButtonContainer:Landroid/widget/RelativeLayout;

.field public mSurface:Landroid/view/Surface;

.field public mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mContext:Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mIsFinished:Z

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mGuideVideoView:Landroid/view/TextureView;

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mGuideVideoContainer:Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mGuideScrollView:Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mContinueButton:Landroid/widget/Button;

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mContinueButtonArea:Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mSetupWizardButtonContainer:Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mWindowManager:Landroid/view/WindowManager;

    return-void
.end method


# virtual methods
.method public final finishRotationGuide(I)V
    .locals 2

    const-string v0, "BiometricsRotationGuide"

    const-string v1, "finishRotationGuide"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mIsFinished:Z

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final initBiometricsRotationGuideGUI()V
    .locals 15

    const-string v0, "BiometricsRotationGuide"

    const-string v1, "initBiometricsRotationGuideGUI"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mOrientation:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v1, v3, :cond_1

    const/4 v4, 0x3

    if-ne v1, v4, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "isPortrait : true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    :goto_0
    const-string v1, "isPortrait : false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v2

    :goto_1
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mContext:Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;

    invoke-static {v1}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->getScreenWidth(Landroid/content/Context;)I

    move-result v1

    int-to-double v4, v1

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mContext:Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;

    invoke-static {v1}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->getFullScreenHeight(Landroid/content/Context;)I

    move-result v1

    int-to-double v6, v1

    iget-boolean v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mFromSetupWizard:Z

    const/16 v8, 0x8

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mContinueButtonArea:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_3

    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mSetupWizardButtonContainer:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_3

    invoke-virtual {v1, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_3
    :goto_2
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mGuideVideoContainer:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_4

    const/16 v8, 0xf

    invoke-virtual {v1, v8}, Landroid/widget/FrameLayout;->semSetRoundedCorners(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mGuideVideoContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f060738

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v1, v8, v9}, Landroid/widget/FrameLayout;->semSetRoundedCornerColor(II)V

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mGuideVideoContainer:Landroid/widget/FrameLayout;

    const-wide v8, 0x3fe3333333333333L    # 0.6

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v10, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mContext:Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;

    if-eqz v3, :cond_5

    invoke-static {v10}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->getScreenWidth(Landroid/content/Context;)I

    move-result v10

    goto :goto_3

    :cond_5
    invoke-static {v10}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->getFullScreenHeight(Landroid/content/Context;)I

    move-result v10

    :goto_3
    int-to-double v10, v10

    mul-double/2addr v10, v8

    double-to-int v10, v10

    iget-object v11, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mContext:Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;

    if-eqz v3, :cond_6

    invoke-static {v11}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->getFullScreenHeight(Landroid/content/Context;)I

    move-result v11

    goto :goto_4

    :cond_6
    invoke-static {v11}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->getScreenWidth(Landroid/content/Context;)I

    move-result v11

    :goto_4
    int-to-double v11, v11

    const-wide v13, 0x3fd6d916872b020cL    # 0.357

    mul-double/2addr v11, v13

    double-to-int v11, v11

    if-eqz v3, :cond_7

    const-wide v12, 0x3fc70a3d70a3d70aL    # 0.18

    mul-double/2addr v6, v12

    double-to-int v6, v6

    const-string v7, "marginTop : "

    invoke-static {v6, v7, v0}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iput v6, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_5

    :cond_7
    int-to-double v6, v10

    const-wide/high16 v12, 0x3fe8000000000000L    # 0.75

    mul-double/2addr v6, v12

    double-to-int v10, v6

    int-to-double v6, v11

    mul-double/2addr v6, v12

    double-to-int v11, v6

    iget-object v6, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mContext:Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;

    invoke-static {v6}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->getFullScreenHeight(Landroid/content/Context;)I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v6, v11

    div-int/lit8 v6, v6, 0x2

    const-string v7, "margin : "

    invoke-static {v6, v7, v0}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iput v6, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iput v6, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    :goto_5
    const-string v6, "VideoSize - width : "

    const-string v7, ", height : "

    invoke-static {v6, v7, v10, v11, v0}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    iput v11, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iput v10, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iget-object v6, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mGuideVideoContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_8
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mGuideScrollView:Landroid/widget/ScrollView;

    if-eqz v1, :cond_a

    if-eqz v3, :cond_9

    const-wide v6, 0x3fbeb851eb851eb8L    # 0.12

    goto :goto_6

    :cond_9
    const-wide v6, 0x3fca666666666666L    # 0.20625

    :goto_6
    mul-double/2addr v4, v6

    double-to-int v3, v4

    invoke-virtual {v1, v3, v2, v3, v2}, Landroid/widget/ScrollView;->setPadding(IIII)V

    :cond_a
    const-string/jumbo v1, "setButtonSize"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mScreenWidth:I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mScreenWidth : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mScreenWidth:I

    invoke-static {v1, v2, v0}, Landroidx/preference/Preference$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mContinueButton:Landroid/widget/Button;

    if-eqz v0, :cond_b

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mContext:Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;

    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07094f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setMinimumWidth(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mContinueButton:Landroid/widget/Button;

    iget v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mScreenWidth:I

    int-to-double v1, v1

    mul-double/2addr v1, v8

    double-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setMaxWidth(I)V

    :cond_b
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mContinueButtonArea:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mContext:Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;

    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070948

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mContext:Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;

    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070947

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mContinueButtonArea:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_c
    return-void
.end method

.method public final onBackPressed()V
    .locals 2

    const-string v0, "BiometricsRotationGuide"

    const-string/jumbo v1, "onBackPressed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->finishRotationGuide(I)V

    return-void
.end method

.method public onClickContinue(Landroid/view/View;)V
    .locals 1

    const-string p1, "BiometricsRotationGuide"

    const-string/jumbo v0, "onClickContinue"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->finishRotationGuide(I)V

    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-static {p0, p1}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->isBlockedInMultiWindowMode(Landroid/content/Context;Landroid/content/res/Configuration;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onConfigurationChanged : past = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mOrientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " , current = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricsRotationGuide"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mOrientation:I

    if-eq v0, p1, :cond_2

    invoke-static {}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->isLandscapeDefaultModel()V

    if-nez p1, :cond_1

    const-string p1, "Rotation changed! Finish the activity"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->finishRotationGuide(I)V

    goto :goto_0

    :cond_1
    iput p1, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mOrientation:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->initBiometricsRotationGuideGUI()V

    const-string p1, "Change the guide video!"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mGuideVideoView:Landroid/view/TextureView;

    invoke-virtual {p1}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->setMediaPlayer(Landroid/graphics/SurfaceTexture;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/android/settings/core/SettingsBaseActivity;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "BiometricsRotationGuide"

    const-string/jumbo v0, "onCreate"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p0, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mContext:Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;

    const-string/jumbo v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mOrientation:I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "rotation : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mOrientation:I

    invoke-static {v1, v2, p1}, Landroidx/preference/Preference$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mOrientation:I

    invoke-static {}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->isLandscapeDefaultModel()V

    if-nez v1, :cond_0

    const-string v0, "The right direction! Finish the rotation guide."

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->finishRotationGuide(I)V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "fromSetupWizard"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mFromSetupWizard:Z

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "BIOMETRICS_LOCK_TYPE"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mRequestBiometricsType:I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mFromSetupWizard : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mFromSetupWizard:Z

    const-string v4, "mRequestBiometricsType : "

    invoke-static {v1, v2, p1, v4}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mRequestBiometricsType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_5

    const/4 v2, 0x6

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const v1, 0x7f0d081d

    invoke-virtual {p0, v1}, Lcom/android/settings/core/SettingsBaseActivity;->setContentView(I)V

    const v1, 0x7f0a01e9

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mGuideVideoContainer:Landroid/widget/FrameLayout;

    const v1, 0x7f0a01ea

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/TextureView;

    iput-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mGuideVideoView:Landroid/view/TextureView;

    const v1, 0x7f0a0700

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    iput-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mGuideScrollView:Landroid/widget/ScrollView;

    const v1, 0x7f0a042c

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mContinueButton:Landroid/widget/Button;

    const v1, 0x7f0a042b

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mContinueButtonArea:Landroid/widget/LinearLayout;

    const v1, 0x7f0a0e25

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mSetupWizardButtonContainer:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mGuideVideoView:Landroid/view/TextureView;

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mGuideVideoContainer:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_2

    invoke-virtual {v1, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mWindowManager:Landroid/view/WindowManager;

    if-nez v1, :cond_3

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mWindowManager:Landroid/view/WindowManager;

    :cond_3
    const-string/jumbo v0, "onCreate : hide the action bar"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->hideAppBar()V

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-static {p0}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->removeSideMargin(Landroid/app/Activity;)V

    :cond_4
    return-void

    :cond_5
    :goto_0
    const p1, 0x7f14214b

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->finishRotationGuide(I)V

    return-void
.end method

.method public final onDestroy()V
    .locals 2

    const-string v0, "BiometricsRotationGuide"

    const-string/jumbo v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mGuideVideoView:Landroid/view/TextureView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/TextureView;->destroyDrawingCache()V

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mGuideVideoView:Landroid/view/TextureView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    iput-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mGuideVideoView:Landroid/view/TextureView;

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mIsFinished:Z

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method public final onPause()V
    .locals 3

    const-string/jumbo v0, "onPause"

    const-string v1, "BiometricsRotationGuide"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    iput-object v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mMediaPlayer:Landroid/media/MediaPlayer;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    iput-object v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mSurface:Landroid/view/Surface;

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Finish called : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mIsFinished:Z

    invoke-static {v0, v2, v1}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-boolean v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mIsFinished:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "biometrics_settings_destroy"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_2
    invoke-super {p0}, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->onResume()V

    const-string v0, "BiometricsRotationGuide"

    const-string/jumbo v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->initBiometricsRotationGuideGUI()V

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mGuideVideoView:Landroid/view/TextureView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/TextureView;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mGuideVideoView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->setMediaPlayer(Landroid/graphics/SurfaceTexture;)V

    :cond_0
    return-void
.end method

.method public final onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    const-string p2, "BiometricsRotationGuide"

    const-string/jumbo p3, "onSurfaceTextureAvailable: setMediaPlayer"

    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->setMediaPlayer(Landroid/graphics/SurfaceTexture;)V

    return-void
.end method

.method public final onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    return-void
.end method

.method public final onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method

.method public final setMediaPlayer(Landroid/graphics/SurfaceTexture;)V
    .locals 5

    iget v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mOrientation:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v2, :cond_2

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->isLandscapeDefaultModel()V

    const-string v0, "/raw/rotation_guide_help_270"

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->isLandscapeDefaultModel()V

    const-string v0, "/raw/rotation_guide_help_180"

    goto :goto_0

    :cond_2
    const-string v0, "/raw/rotation_guide_help_90"

    goto :goto_0

    :cond_3
    const-string v0, "/raw/rotation_guide_help_horizontal_0"

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "android.resource://com.samsung.android.biometrics.app.setting"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v3, Landroid/view/Surface;

    invoke-direct {v3, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v3, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_5

    :try_start_0
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    iput-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mMediaPlayer:Landroid/media/MediaPlayer;

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_4
    :goto_1
    new-instance p1, Landroid/media/MediaPlayer;

    invoke-direct {p1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1, p0, v0}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mSurface:Landroid/view/Surface;

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1, v2}, Landroid/media/MediaPlayer;->setLooping(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepareAsync()V

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;)V

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_2
    const-string p1, "Exception : "

    const-string v0, "BiometricsRotationGuide"

    invoke-static {p1, p0, v0}, Landroidx/glance/session/SessionManagerImpl$scope$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :cond_5
    :goto_3
    return-void
.end method
