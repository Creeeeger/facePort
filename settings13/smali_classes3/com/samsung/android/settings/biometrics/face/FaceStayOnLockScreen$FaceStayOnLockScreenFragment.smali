.class public Lcom/samsung/android/settings/biometrics/face/FaceStayOnLockScreen$FaceStayOnLockScreenFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "FaceStayOnLockScreen.java"

# interfaces
.implements Lcom/android/settingslib/widget/OnMainSwitchChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/biometrics/face/FaceStayOnLockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FaceStayOnLockScreenFragment"
.end annotation


# static fields
.field private static mIsFinished:Z = false


# instance fields
.field private final ButtonAreaHeightRate:D

.field private final MAX_BUTTON_FONT_SCALE:F

.field private final MAX_BUTTON_SIZE:D

.field private final MAX_BUTTON_SIZE_TABLET:D

.field private mDisplay:Landroid/view/Display;

.field private mFromSettingsPreference:Z

.field private mImageContainerView:Landroid/view/View;

.field private mIsStayOnLockScreenEnabled:Z

.field private mNeedFaceUseFulFeature:Z

.field private mNextButton:Landroid/widget/Button;

.field private mNextButtonContainer:Landroid/widget/LinearLayout;

.field private mOrientation:I

.field private mStayOnLockScreenOffVI:Lcom/airbnb/lottie/LottieAnimationView;

.field private mStayOnLockScreenVI:Lcom/airbnb/lottie/LottieAnimationView;

.field private mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

.field private mUserId:I

.field private mView:Landroid/view/View;


# direct methods
.method public static synthetic $r8$lambda$pyMcCB3u-Hfw3mukkJbNccH3DzI(Lcom/samsung/android/settings/biometrics/face/FaceStayOnLockScreen$FaceStayOnLockScreenFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/biometrics/face/FaceStayOnLockScreen$FaceStayOnLockScreenFragment;->lambda$createStayOnLockScreenView$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$u7JaukzUOnAXpxb-IL65Fhpzcpk(Lcom/samsung/android/settings/biometrics/face/FaceStayOnLockScreen$FaceStayOnLockScreenFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/biometrics/face/FaceStayOnLockScreen$FaceStayOnLockScreenFragment;->lambda$createStayOnLockScreenView$1(Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmStayOnLockScreenOffVI(Lcom/samsung/android/settings/biometrics/face/FaceStayOnLockScreen$FaceStayOnLockScreenFragment;)Lcom/airbnb/lottie/LottieAnimationView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/face/FaceStayOnLockScreen$FaceStayOnLockScreenFragment;->mStayOnLockScreenOffVI:Lcom/airbnb/lottie/LottieAnimationView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmStayOnLockScreenVI(Lcom/samsung/android/settings/biometrics/face/FaceStayOnLockScreen$FaceStayOnLockScreenFragment;)Lcom/airbnb/lottie/LottieAnimationView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/face/FaceStayOnLockScreen$FaceStayOnLockScreenFragment;->mStayOnLockScreenVI:Lcom/airbnb/lottie/LottieAnimationView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetAnimationDescription(Lcom/samsung/android/settings/biometrics/face/FaceStayOnLockScreen$FaceStayOnLockScreenFragment;Z)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/biometrics/face/FaceStayOnLockScreen$FaceStayOnLockScreenFragment;->getAnimationDescription(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smsetFinishValue(Z)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/settings/biometrics/face/FaceStayOnLockScreen$FaceStayOnLockScreenFragment;->setFinishValue(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 86
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const-wide/high16 v0, 0x3fe8000000000000L    # 0.75

    .line 88
    iput-wide v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceStayOnLockScreen$FaceStayOnLockScreenFragment;->MAX_BUTTON_SIZE:D

    const-wide v0, 0x3fe3333333333333L    # 0.6

    .line 89
    iput-wide v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceStayOnLockScreen$FaceStayOnLockScreenFragment;->MAX_BUTTON_SIZE_TABLET:D

    const-wide v0, 0x3fceb851eb851eb8L    # 0.24

    .line 90
    iput-wide v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceStayOnLockScreen$FaceStayOnLockScreenFragment;->ButtonAreaHeightRate:D

    const v0, 0x3fa66666    # 1.3f

    .line 91
    iput v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceStayOnLockScreen$FaceStayOnLockScreenFragment;->MAX_BUTTON_FONT_SCALE:F

    const/4 v0, 0x0

    .line 95
    iput v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceStayOnLockScreen$FaceStayOnLockScreenFragment;->mUserId:I

    .line 97
    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceStayOnLockScreen$FaceStayOnLockScreenFragment;->mIsStayOnLockScreenEnabled:Z

    .line 98
    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceStayOnLockScreen$FaceStayOnLockScreenFragment;->mFromSettingsPreference:Z

    .line 99
    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceStayOnLockScreen$FaceStayOnLockScreenFragment;->mNeedFaceUseFulFeature:Z

    const/4 v0, 0x0

    .line 102
    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceStayOnLockScreen$FaceStayOnLockScreenFragment;->mView:Landroid/view/View;

    return-void
.end method

.method private adjustFontScale()V
    .locals 4

    const-string v0, "FcstFaceStayOnLockScreen"

    const-string v1, "adjustFontScale"

    .line 305
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 308
    iget v0, v0, Landroid/content/res/Configuration;->fontScale:F

    const v1, 0x3fa66666    # 1.3f

    invoke-static {v0, v1}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->getAdjustedFontScale(FF)F

    move-result v0

    .line 310
    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/face/FaceStayOnLockScreen$FaceStayOnLockScreenFragment;->mNextButton:Landroid/widget/Button;

    if-eqz p0, :cond_0

    const/4 v1, 0x0

    .line 311
    invoke-virtual {p0}, Landroid/widget/Button;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$dimen;->sec_biometrics_guide_common_continue_button_text_size:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    invoke-virtual {p0, v1, v2}, Landroid/widget/Button;->setTextSize(IF)V

    :cond_0
    return-void
.end method

.method private createStayOnLockScreenView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    const-string v0, "FcstFaceStayOnLockScreen"

    const-string v1, "createStayOnLockScreenView"

    .line 154
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    .line 157
    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    .line 160
    :cond_0
    sget v1, Lcom/android/settings/R$layout;->sec_face_stay_on_lock_screen:I

    invoke-virtual {p1, v1, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceStayOnLockScreen$FaceStayOnLockScreenFragment;->mView:Landroid/view/View;

    const/16 p2, 0xf

    .line 161
    invoke-virtual {p1, p2}, Landroid/view/View;->semSetRoundedCorners(I)V

    .line 162
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceStayOnLockScreen$FaceStayOnLockScreenFragment;->mView:Landroid/view/View;

    .line 163
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$color;->sec_widget_round_and_bgcolor:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 162
    invoke-virtual {p1, p2, v1}, Landroid/view/View;->semSetRoundedCornerColor(II)V

    .line 165
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceStayOnLockScreen$FaceStayOnLockScreenFragment;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->face_stay_on_lock_screen_image_container:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceStayOnLockScreen$FaceStayOnLockScreenFragment;->mImageContainerView:Landroid/view/View;

    .line 166
    invoke-virtual {p1, p2}, Landroid/view/View;->semSetRoundedCorners(I)V

    .line 167
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceStayOnLockScreen$FaceStayOnLockScreenFragment;->mImageContainerView:Landroid/view/View;

    .line 168
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 167
    invoke-virtual {p1, p2, v1}, Landroid/view/View;->semSetRoundedCornerColor(II)V

    .line 169
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceStayOnLockScreen$FaceStayOnLockScreenFragment;->mImageContainerView:Landroid/view/View;

    sget p2, Lcom/android/settings/R$id;->face_stay_on_lock_screen_image:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceStayOnLockScreen$FaceStayOnLockScreenFragment;->mStayOnLockScreenVI:Lcom/airbnb/lottie/LottieAnimationView;

    .line 170
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceStayOnLockScreen$FaceStayOnLockScreenFragment;->mImageContainerView:Landroid/view/View;

    sget p2, Lcom/android/settings/R$id;->face_stay_on_lock_screen_off_image:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceStayOnLockScreen$FaceStayOnLockScreenFragment;->mStayOnLockScreenOffVI:Lcom/airbnb/lottie/LottieAnimationView;

    .line 172
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 173
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceStayOnLockScreen$FaceStayOnLockScreenFragment;->mStayOnLockScreenVI:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 174
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceStayOnLockScreen$FaceStayOnLockScreenFragment;->mStayOnLockScreenVI:Lcom/airbnb/lottie/LottieAnimationView;

    new-instance v1, Lcom/samsung/android/settings/biometrics/face/FaceStayOnLockScreen$FaceStayOnLockScreenFragment$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/biometrics/face/FaceStayOnLockScreen$FaceStayOnLockScreenFragment$1;-><init>(Lcom/samsung/android/settings/biometrics/face/FaceStayOnLockScreen$FaceStayOnLockScreenFragment;)V

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 183
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceStayOnLockScreen$FaceStayOnLockScreenFragment;->mStayOnLockScreenVI:Lcom/airbnb/lottie/LottieAnimationView;

    new-instance v1, Lcom/samsung/android/settings/biometrics/face/FaceStayOnLockScreen$FaceStayOnLockScreenFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/biometrics/face/FaceStayOnLockScreen$FaceStayOnLockScreenFragment$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/biometrics/face/FaceStayOnLockScreen$FaceStayOnLockScreenFragment;)V

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceStayOnLockScreen$FaceStayOnLockScreenFragment;->mStayOnLockScreenOffVI:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 194
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceStayOnLockScreen$FaceStayOnLockScreenFragment;->mStayOnLockScreenOffVI:Lcom/airbnb/lottie/LottieAnimationView;

    new-instance p2, Lcom/samsung/android/settings/biometrics/face/FaceStayOnLockScreen$FaceStayOnLockScreenFragment$2;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/biometrics/face/FaceStayOnLockScreen$FaceStayOnLockScreenFragment$2;-><init>(Lcom/samsung/android/settings/biometrics/face/FaceStayOnLockScreen$FaceStayOnLockScreenFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 203
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceStayOnLockScreen$FaceStayOnLockScreenFragment;->mStayOnLockScreenOffVI:Lcom/airbnb/lottie/LottieAnimationView;

    new-instance p2, Lcom/samsung/android/settings/biometrics/face/FaceStayOnLockScreen$FaceStayOnLockScreenFragment$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/biometrics/face/FaceStayOnLockScreen$FaceStayOnLockScreenFragment$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/biometrics/face/FaceStayOnLockScreen$FaceStayOnLockScreenFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceStayOnLockScreen$FaceStayOnLockScreenFragment;->mView:Landroid/view/View;

    sget p2, Lcom/android/settings/R$id;->nextButtonContainer:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceStayOnLockScreen$FaceStayOnLockScreenFragment;->mNextButtonContainer:Landroid/widget/LinearLayout;

    .line 215
    iget-boolean p2, p0, Lcom/samsung/android/settings/biometrics/face/FaceStayOnLockScreen$FaceStayOnLockScreenFragment;->mFromSettingsPreference:Z

    if-eqz p2, :cond_2

    const/16 p2, 0x8

    .line 216
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :cond_2
    const-string p1, "onViewCreated : Remove action bar button"

    .line 218
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/app/AppCompatActivity;

    .line 220
    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    const/4 p2, 0x0

    .line 221
    invoke-virtual {p1, p2}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 223
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceStayOnLockScreen$FaceStayOnLockScreenFragment;->setNextButtonGUI()V

    .line 226
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/face/FaceStayOnLockScreen$FaceStayOnLockScreenFragment;->mView:Landroid/view/View;

    return-object p0
.end method

.method private finishFaceStayOnLockScreen(I)V
    .locals 2

    const-string v0, "FcstFaceStayOnLockScreen"

    const-string v1, "finishFaceStayOnLockScreen"

    .line 392
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 393
    invoke-static {v0}, Lcom/samsung/android/settings/biometrics/face/FaceStayOnLockScreen$FaceStayOnLockScreenFragment;->setFinishValue(Z)V

    .line 394
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->setResult(I)V

    .line 395
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    return-void
.end method

.method private getAnimationDescription(Z)Ljava/lang/String;
    .locals 2

    .line 424
    new-instance v0, Ljava/lang/StringBuilder;

    sget v1, Lcom/android/settings/R$string;->sec_biometrics_common_option_stay_on_lock_screen_animation:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 425
    sget p1, Lcom/android/settings/R$string;->sec_biometrics_common_stop:I

    goto :goto_0

    :cond_0
    sget p1, Lcom/android/settings/R$string;->sec_biometrics_common_play:I

    :goto_0
    const-string v1, ", "

    .line 426
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 427
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getSwitchDescription(Z)Ljava/lang/StringBuilder;
    .locals 2

    if-eqz p1, :cond_0

    .line 412
    sget p1, Lcom/android/settings/R$string;->sec_biometrics_common_on:I

    goto :goto_0

    :cond_0
    sget p1, Lcom/android/settings/R$string;->sec_biometrics_common_off:I

    .line 413
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 414
    iget-boolean p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceStayOnLockScreen$FaceStayOnLockScreenFragment;->mFromSettingsPreference:Z

    const-string v1, ", "

    if-eqz p1, :cond_1

    .line 415
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p1, Lcom/android/settings/R$string;->sec_biometrics_common_option_title_stay_on_lock_screen:I

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 417
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p1, Lcom/android/settings/R$string;->sec_biometrics_common_option_title_set_up_stay_on_lock_screen:I

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p1, Lcom/android/settings/R$string;->sec_switch:I

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object v0
.end method

.method private isLandscapeMode()Z
    .locals 2

    .line 404
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isLandscapeMode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceStayOnLockScreen$FaceStayOnLockScreenFragment;->mOrientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FcstFaceStayOnLockScreen"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    iget p0, p0, Lcom/samsung/android/settings/biometrics/face/FaceStayOnLockScreen$FaceStayOnLockScreenFragment;->mOrientation:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x3

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    return v0
.end method

.method private synthetic lambda$createStayOnLockScreenView$0(Landroid/view/View;)V
    .locals 1

    .line 184
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceStayOnLockScreen$FaceStayOnLockScreenFragment;->mStayOnLockScreenVI:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->isAnimating()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 185
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceStayOnLockScreen$FaceStayOnLockScreenFragment;->mStayOnLockScreenVI:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->pauseAnimation()V

    .line 186
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceStayOnLockScreen$FaceStayOnLockScreenFragment;->mStayOnLockScreenVI:Lcom/airbnb/lottie/LottieAnimationView;

    sget v0, Lcom/android/settings/R$string;->sec_biometrics_common_stopped:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 188
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceStayOnLockScreen$FaceStayOnLockScreenFragment;->mStayOnLockScreenVI:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    .line 189
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceStayOnLockScreen$FaceStayOnLockScreenFragment;->mStayOnLockScreenVI:Lcom/airbnb/lottie/LottieAnimationView;

    sget v0, Lcom/android/settings/R$string;->sec_biometrics_common_playing:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$createStayOnLockScreenView$1(Landroid/view/View;)V
    .locals 1

    .line 204
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceStayOnLockScreen$FaceStayOnLockScreenFragment;->mStayOnLockScreenOffVI:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->isAnimating()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 205
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceStayOnLockScreen$FaceStayOnLockScreenFragment;->mStayOnLockScreenOffVI:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->pauseAnimation()V

    .line 206
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceStayOnLockScreen$FaceStayOnLockScreenFragment;->mStayOnLockScreenOffVI:Lcom/airbnb/lottie/LottieAnimationView;

    sget v0, Lcom/android/settings/R$string;->sec_biometrics_common_stopped:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 208
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceStayOnLockScreen$FaceStayOnLockScreenFragment;->mStayOnLockScreenOffVI:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    .line 209
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceStayOnLockScreen$FaceStayOnLockScreenFragment;->mStayOnLockScreenOffVI:Lcom/airbnb/lottie/LottieAnimationView;

    sget v0, Lcom/android/settings/R$string;->sec_biometrics_common_playing:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private static setFinishValue(Z)V
    .locals 2

    .line 399
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setFinishValue : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FcstFaceStayOnLockScreen"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    sput-boolean p0, Lcom/samsung/android/settings/biometrics/face/FaceStayOnLockScreen$FaceStayOnLockScreenFragment;->mIsFinished:Z

    return-void
.end method

.method private setLottieAnimationView(Z)V
    .locals 4

    .line 316
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setLottieAnimationView : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FcstFaceStayOnLockScreen"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceStayOnLockScreen$FaceStayOnLockScreenFragment;->mStayOnLockScreenVI:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceStayOnLockScreen$FaceStayOnLockScreenFragment;->mStayOnLockScreenOffVI:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    const/4 v3, 0x4

    if-eqz p1, :cond_0

    .line 320
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 321
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceStayOnLockScreen$FaceStayOnLockScreenFragment;->mStayOnLockScreenOffVI:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->pauseAnimation()V

    .line 322
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceStayOnLockScreen$FaceStayOnLockScreenFragment;->mStayOnLockScreenVI:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 323
    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/face/FaceStayOnLockScreen$FaceStayOnLockScreenFragment;->mStayOnLockScreenVI:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    goto :goto_0

    .line 325
    :cond_0
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 326
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceStayOnLockScreen$FaceStayOnLockScreenFragment;->mStayOnLockScreenVI:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->pauseAnimation()V

    .line 327
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceStayOnLockScreen$FaceStayOnLockScreenFragment;->mStayOnLockScreenOffVI:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 328
    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/face/FaceStayOnLockScreen$FaceStayOnLockScreenFragment;->mStayOnLockScreenOffVI:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    :cond_1
    :goto_0
    return-void
.end method

.method private setNextButtonGUI()V
    .locals 6

    const-string v0, "FcstFaceStayOnLockScreen"

    const-string v1, "setNextButtonGUI"

    .line 334
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceStayOnLockScreen$FaceStayOnLockScreenFragment;->mView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->continue_button:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceStayOnLockScreen$FaceStayOnLockScreenFragment;->mNextButton:Landroid/widget/Button;

    if-eqz v1, :cond_2

    .line 338
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/settings/biometrics/face/FaceStayOnLockScreen$FaceStayOnLockScreenFragment;->mNeedFaceUseFulFeature:Z

    if-eqz v2, :cond_0

    .line 339
    sget v2, Lcom/android/settings/R$string;->sec_face_stay_on_lock_screen_button_next_text:I

    goto :goto_0

    .line 340
    :cond_0
    sget v2, Lcom/android/settings/R$string;->sec_face_stay_on_lock_screen_button_done_text:I

    .line 338
    :goto_0
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 341
    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/face/FaceStayOnLockScreen$FaceStayOnLockScreenFragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 342
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceStayOnLockScreen$FaceStayOnLockScreenFragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$dimen;->sec_biometrics_guide_common_continue_button_width:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setMinimumWidth(I)V

    .line 343
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceStayOnLockScreen$FaceStayOnLockScreenFragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->getScreenWidth(Landroid/content/Context;)I

    move-result v2

    int-to-double v2, v2

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_1

    const-wide v4, 0x3fe3333333333333L    # 0.6

    goto :goto_1

    :cond_1
    const-wide/high16 v4, 0x3fe8000000000000L    # 0.75

    :goto_1
    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setMaxWidth(I)V

    .line 347
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceStayOnLockScreen$FaceStayOnLockScreenFragment;->mNextButtonContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 348
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 349
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/settings/R$dimen;->sec_biometrics_guide_common_continue_button_area_margin_top:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 350
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/settings/R$dimen;->sec_biometrics_guide_common_continue_button_area_margin_bottom:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    goto :goto_3

    .line 352
    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceStayOnLockScreen$FaceStayOnLockScreenFragment;->isLandscapeMode()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 353
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->getScreenHeight(Landroid/content/Context;)I

    move-result v2

    int-to-double v2, v2

    const-wide v4, 0x3fceb851eb851eb8L    # 0.24

    mul-double/2addr v2, v4

    double-to-int v2, v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    goto :goto_2

    .line 355
    :cond_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$dimen;->sec_biometrics_guide_common_continue_button_area_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 357
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "buttonAreaHeight - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    :goto_3
    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/face/FaceStayOnLockScreen$FaceStayOnLockScreenFragment;->mNextButtonContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "FcstFaceStayOnLockScreen"

    const-string v1, "onActivityCreated"

    .line 286
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SettingsMainSwitchBar;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceStayOnLockScreen$FaceStayOnLockScreenFragment;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    if-eqz v0, :cond_0

    .line 289
    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->addOnSwitchChangeListener(Lcom/android/settingslib/widget/OnMainSwitchChangeListener;)V

    .line 290
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceStayOnLockScreen$FaceStayOnLockScreenFragment;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    iget-boolean v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceStayOnLockScreen$FaceStayOnLockScreenFragment;->mIsStayOnLockScreenEnabled:Z

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setChecked(Z)V

    .line 291
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceStayOnLockScreen$FaceStayOnLockScreenFragment;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {v0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->show()V

    .line 292
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceStayOnLockScreen$FaceStayOnLockScreenFragment;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {v0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->getSwitch()Landroid/widget/Switch;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceStayOnLockScreen$FaceStayOnLockScreenFragment;->mIsStayOnLockScreenEnabled:Z

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/biometrics/face/FaceStayOnLockScreen$FaceStayOnLockScreenFragment;->getSwitchDescription(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 294
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 231
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string p1, "FcstFaceStayOnLockScreen"

    const-string v0, "onConfigurationChanged"

    .line 232
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceStayOnLockScreen$FaceStayOnLockScreenFragment;->mDisplay:Landroid/view/Display;

    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceStayOnLockScreen$FaceStayOnLockScreenFragment;->mOrientation:I

    .line 234
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/biometrics/face/FaceStayOnLockScreen$FaceStayOnLockScreenFragment;->createStayOnLockScreenView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 117
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 119
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "FcstFaceStayOnLockScreen"

    if-nez p1, :cond_0

    const-string p1, "intent is null"

    .line 121
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/biometrics/face/FaceStayOnLockScreen$FaceStayOnLockScreenFragment;->finishFaceStayOnLockScreen(I)V

    return-void

    .line 126
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/biometrics/face/FaceStayOnLockScreen$FaceStayOnLockScreenFragment;->mDisplay:Landroid/view/Display;

    .line 127
    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/settings/biometrics/face/FaceStayOnLockScreen$FaceStayOnLockScreenFragment;->mOrientation:I

    .line 128
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mOrientation : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/samsung/android/settings/biometrics/face/FaceStayOnLockScreen$FaceStayOnLockScreenFragment;->mOrientation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    const-string v3, "android.intent.extra.USER_ID"

    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/settings/biometrics/face/FaceStayOnLockScreen$FaceStayOnLockScreenFragment;->mUserId:I

    const-string v2, "fromSettingsPreference"

    .line 131
    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/settings/biometrics/face/FaceStayOnLockScreen$FaceStayOnLockScreenFragment;->mFromSettingsPreference:Z

    const-string v2, "needFaceUseFulFeature"

    .line 132
    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceStayOnLockScreen$FaceStayOnLockScreenFragment;->mNeedFaceUseFulFeature:Z

    .line 133
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget v2, p0, Lcom/samsung/android/settings/biometrics/face/FaceStayOnLockScreen$FaceStayOnLockScreenFragment;->mUserId:I

    invoke-static {p1, v2}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->getFaceStayOnLockScreenBooleanValue(Landroid/content/Context;I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceStayOnLockScreen$FaceStayOnLockScreenFragment;->mIsStayOnLockScreenEnabled:Z

    .line 135
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate : userId "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/settings/biometrics/face/FaceStayOnLockScreen$FaceStayOnLockScreenFragment;->mUserId:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate : mFromSettingsPreference "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/settings/biometrics/face/FaceStayOnLockScreen$FaceStayOnLockScreenFragment;->mFromSettingsPreference:Z

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    sget v2, Lcom/android/settings/R$string;->bio_face_recognition_title:I

    invoke-static {p1, v2, v1}, Lcom/samsung/android/settings/security/SecurityUtils;->isNotAvailableBiometricsWithDexAndMultiWindow(Landroid/app/Activity;ILjava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 139
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/biometrics/face/FaceStayOnLockScreen$FaceStayOnLockScreenFragment;->finishFaceStayOnLockScreen(I)V

    return-void

    .line 143
    :cond_1
    iget-boolean p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceStayOnLockScreen$FaceStayOnLockScreenFragment;->mFromSettingsPreference:Z

    if-nez p1, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 144
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->sec_biometrics_common_option_title_set_up_stay_on_lock_screen:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(I)V

    :cond_2
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    const/4 p2, 0x0

    .line 150
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/biometrics/face/FaceStayOnLockScreen$FaceStayOnLockScreenFragment;->createStayOnLockScreenView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "FcstFaceStayOnLockScreen"

    const-string v1, "onDestroy"

    .line 299
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 300
    invoke-static {v0}, Lcom/samsung/android/settings/biometrics/face/FaceStayOnLockScreen$FaceStayOnLockScreenFragment;->setFinishValue(Z)V

    .line 301
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 2

    const-string v0, "FcstFaceStayOnLockScreen"

    const-string v1, "onDestroyView"

    .line 279
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceStayOnLockScreen$FaceStayOnLockScreenFragment;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {v0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->hide()V

    .line 281
    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onDestroyView()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 381
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    const-string v0, "FcstFaceStayOnLockScreen"

    const-string v1, "ActionBar clicked"

    .line 384
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    .line 385
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/biometrics/face/FaceStayOnLockScreen$FaceStayOnLockScreenFragment;->finishFaceStayOnLockScreen(I)V

    .line 388
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public onPause()V
    .locals 7

    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPause : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/samsung/android/settings/biometrics/face/FaceStayOnLockScreen$FaceStayOnLockScreenFragment;->mIsFinished:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FcstFaceStayOnLockScreen"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceStayOnLockScreen$FaceStayOnLockScreenFragment;->mStayOnLockScreenVI:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_0

    .line 252
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->pauseAnimation()V

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceStayOnLockScreen$FaceStayOnLockScreenFragment;->mStayOnLockScreenOffVI:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_1

    .line 255
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->pauseAnimation()V

    .line 257
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceStayOnLockScreen$FaceStayOnLockScreenFragment;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    if-eqz v0, :cond_2

    .line 258
    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->removeOnSwitchChangeListener(Lcom/android/settingslib/widget/OnMainSwitchChangeListener;)V

    .line 261
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x20f7

    const/16 v3, 0x2105

    .line 264
    iget-boolean v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceStayOnLockScreen$FaceStayOnLockScreenFragment;->mIsStayOnLockScreenEnabled:Z

    if-eqz v0, :cond_3

    const-string v0, "1"

    goto :goto_0

    :cond_3
    const-string v0, "0"

    :goto_0
    move-object v4, v0

    const-wide/16 v5, 0x0

    .line 261
    invoke-static/range {v1 .. v6}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->insertSaLog(Landroid/content/Context;IILjava/lang/String;J)V

    .line 267
    sget-boolean v0, Lcom/samsung/android/settings/biometrics/face/FaceStayOnLockScreen$FaceStayOnLockScreenFragment;->mIsFinished:Z

    if-nez v0, :cond_4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->hasWindowFocus()Z

    move-result v0

    if-nez v0, :cond_4

    .line 268
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/4 v1, 0x1

    const-string v2, "biometrics_settings_destroy"

    .line 269
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v1, 0x0

    .line 270
    invoke-virtual {p0, v1, v0}, Lcom/android/settings/SettingsPreferenceFragment;->setResult(ILandroid/content/Intent;)V

    .line 271
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    .line 274
    :cond_4
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 2

    const-string v0, "FcstFaceStayOnLockScreen"

    const-string v1, "onResume"

    .line 239
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 242
    iget-boolean v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceStayOnLockScreen$FaceStayOnLockScreenFragment;->mIsStayOnLockScreenEnabled:Z

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/biometrics/face/FaceStayOnLockScreen$FaceStayOnLockScreenFragment;->setLottieAnimationView(Z)V

    .line 244
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceStayOnLockScreen$FaceStayOnLockScreenFragment;->adjustFontScale()V

    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 7

    .line 364
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onSwitchChanged : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FcstFaceStayOnLockScreen"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceStayOnLockScreen$FaceStayOnLockScreenFragment;->mUserId:I

    invoke-static {p1, p2, v0}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->setFaceStayOnLockScreen(Landroid/content/Context;ZI)V

    .line 367
    iput-boolean p2, p0, Lcom/samsung/android/settings/biometrics/face/FaceStayOnLockScreen$FaceStayOnLockScreenFragment;->mIsStayOnLockScreenEnabled:Z

    .line 368
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceStayOnLockScreen$FaceStayOnLockScreenFragment;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-direct {p0, p2}, Lcom/samsung/android/settings/biometrics/face/FaceStayOnLockScreen$FaceStayOnLockScreenFragment;->getSwitchDescription(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 370
    invoke-direct {p0, p2}, Lcom/samsung/android/settings/biometrics/face/FaceStayOnLockScreen$FaceStayOnLockScreenFragment;->setLottieAnimationView(Z)V

    .line 372
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz p2, :cond_0

    const-string p0, "1"

    goto :goto_0

    :cond_0
    const-string p0, "0"

    :goto_0
    move-object v4, p0

    const-wide/16 v5, 0x0

    const/16 v2, 0x20f7

    const/16 v3, 0x2104

    invoke-static/range {v1 .. v6}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->insertSaLog(Landroid/content/Context;IILjava/lang/String;J)V

    return-void
.end method
