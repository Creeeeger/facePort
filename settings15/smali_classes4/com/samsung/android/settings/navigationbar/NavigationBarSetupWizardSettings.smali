.class public Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings;
.super Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public isBottomGestureRestored:Z

.field public mAnimationIdx:I

.field public final mAnimationValues:[I

.field public final mAnimatorListener:Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings$$ExternalSyntheticLambda1;

.field public mButtonContainer:Landroid/widget/LinearLayout;

.field public mGestureContainer:Landroid/widget/LinearLayout;

.field public final mHandler:Landroid/os/Handler;

.field public mIsFromSmartSwitch:Z

.field public mIsFromSuw:Z

.field public mLastAnimationIdx:I

.field public mNavBarOverlayInteractor:Lcom/samsung/android/settings/navigationbar/NavigationBarOverlayInteractor;

.field public final mOnClickListener:Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings$1;

.field public final mOnTouchListener:Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings$$ExternalSyntheticLambda2;

.field public mPrefs:Landroid/content/SharedPreferences;

.field public final mSideAndBottomAnimationDescs:[I

.field public mSwipeBottomAndSideAnimator:Lcom/airbnb/lottie/LottieAnimationView;

.field public selectedMode:I


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings;->selectedMode:I

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings;->mHandler:Landroid/os/Handler;

    const v1, 0x7f14192b

    const v2, 0x7f14192f

    const v3, 0x7f14192d

    filled-new-array {v2, v3, v1}, [I

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings;->mSideAndBottomAnimationDescs:[I

    const/16 v1, 0x1e5

    const/16 v2, 0xab

    const/16 v3, 0x15e

    filled-new-array {v2, v3, v1}, [I

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings;->mAnimationValues:[I

    iput-boolean v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings;->mIsFromSuw:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings;->mIsFromSmartSwitch:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings;->isBottomGestureRestored:Z

    new-instance v0, Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings;->mAnimatorListener:Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings$$ExternalSyntheticLambda1;

    new-instance v0, Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings$1;-><init>(Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings;->mOnClickListener:Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings$1;

    new-instance v0, Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings;->mOnTouchListener:Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings$$ExternalSyntheticLambda2;

    return-void
.end method


# virtual methods
.method public final onBackPressed()V
    .locals 3

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onBackPressed()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onBackPressed() Selected : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings;->selectedMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NavigationBarSetupWizardSettings"

    invoke-static {v1, v0}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "NavigationBarType"

    iget v2, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings;->selectedMode:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 13

    invoke-super {p0, p1}, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    const-string v3, "fota_suw"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings;->mIsFromSuw:Z

    const-string/jumbo v3, "smart_switch"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings;->mIsFromSmartSwitch:Z

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "device_provisioned"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-boolean v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings;->mIsFromSuw:Z

    xor-int/2addr v0, v1

    or-int/2addr v0, v3

    iput-boolean v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings;->mIsFromSuw:Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "from suw="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings;->mIsFromSuw:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", ss="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings;->mIsFromSmartSwitch:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "NavigationBarSetupWizardSettings"

    invoke-static {v3, v0}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    new-instance v0, Lcom/samsung/android/settings/navigationbar/NavigationBarOverlayInteractor;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/samsung/android/settings/navigationbar/NavigationBarOverlayInteractor;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings;->mNavBarOverlayInteractor:Lcom/samsung/android/settings/navigationbar/NavigationBarOverlayInteractor;

    invoke-static {}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettingsUtil;->isSimplifiedGesture()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "sem_bottom_gesture_restored"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    goto :goto_1

    :cond_2
    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings;->isBottomGestureRestored:Z

    const v0, 0x7f0d07cb

    invoke-virtual {p0, v0, v2}, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->setContentView(IZ)V

    if-eqz p1, :cond_3

    const-string/jumbo v0, "saved_mode"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings;->selectedMode:I

    goto :goto_4

    :cond_3
    iget-boolean p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings;->isBottomGestureRestored:Z

    if-eqz p1, :cond_4

    :goto_2
    move p1, v2

    goto :goto_3

    :cond_4
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v0, "navigation_bar_gesture_while_hidden"

    invoke-static {p1, v0, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-nez p1, :cond_5

    goto :goto_2

    :cond_5
    move p1, v1

    :goto_3
    iput p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings;->selectedMode:I

    :goto_4
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "NavigationBarSetupWizardPref"

    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings;->selectedMode:I

    const-string v3, "NavigationBarType"

    invoke-interface {p1, v3, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f080800

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->setHeaderIcon(Landroid/graphics/drawable/Drawable;)V

    const p1, 0x7f14191e

    invoke-virtual {p0, p1}, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->setHeaderTitle(I)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(I)V

    new-instance p1, Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings;)V

    const v0, 0x7f14197b

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->setPrimaryActionButton(ILandroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    const/16 v0, 0x258

    const v4, 0x7f0a0a37

    const v5, 0x7f0a0a36

    if-gt p1, v0, :cond_6

    goto/16 :goto_b

    :cond_6
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    if-nez p1, :cond_7

    move p1, v1

    goto :goto_5

    :cond_7
    move p1, v2

    :goto_5
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Display;->getRotation()I

    move-result v6

    if-eq v6, v1, :cond_9

    const/4 v7, 0x3

    if-ne v6, v7, :cond_8

    goto :goto_6

    :cond_8
    move v6, v2

    goto :goto_7

    :cond_9
    :goto_6
    move v6, v1

    :goto_7
    invoke-virtual {p0, v5}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    invoke-virtual {p0, v4}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    if-eqz v7, :cond_f

    if-eqz v8, :cond_f

    if-nez p1, :cond_a

    if-eqz v0, :cond_f

    :cond_a
    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout$LayoutParams;

    iget v11, v9, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v12, -0x1

    if-eqz p1, :cond_c

    if-eqz v6, :cond_b

    move v11, v12

    goto :goto_8

    :cond_b
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070889

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    move v11, p1

    :goto_8
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f07088c

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v0

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v6

    invoke-virtual {v7, p1, v0, p1, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v0

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v6

    invoke-virtual {v8, p1, v0, p1, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto :goto_a

    :cond_c
    if-eqz v0, :cond_e

    if-eqz v6, :cond_d

    move v11, v12

    goto :goto_9

    :cond_d
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f07088a

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    move v11, p1

    :goto_9
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f07088d

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v0

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v6

    invoke-virtual {v7, p1, v0, p1, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    :cond_e
    :goto_a
    iput v11, v9, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v11, v10, Landroid/widget/LinearLayout$LayoutParams;->width:I

    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v8, v10}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_f
    :goto_b
    invoke-virtual {p0, v4}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings;->mGestureContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v5}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings;->mButtonContainer:Landroid/widget/LinearLayout;

    iget-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings;->mGestureContainer:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings;->mOnClickListener:Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings$1;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings;->mButtonContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings;->mGestureContainer:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings;->mOnTouchListener:Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings$$ExternalSyntheticLambda2;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings;->mButtonContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {p1, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings;->selectedMode:I

    if-nez p1, :cond_10

    goto :goto_c

    :cond_10
    move v1, v2

    :goto_c
    iget-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings;->mGestureContainer:Landroid/widget/LinearLayout;

    const v0, 0x7f080a61

    const v3, 0x7f080a62

    if-nez v1, :cond_11

    move v4, v3

    goto :goto_d

    :cond_11
    move v4, v0

    :goto_d
    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    iget-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings;->mButtonContainer:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_12

    move v0, v3

    :cond_12
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings;->registerAnimatorListener()V

    const p1, 0x7f0a0a32

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iget-boolean p0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings;->isBottomGestureRestored:Z

    if-eqz p0, :cond_13

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_13
    return-void
.end method

.method public final onResume()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings;->registerAnimatorListener()V

    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string/jumbo v0, "saved_mode"

    iget p0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings;->selectedMode:I

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public final onStop()V
    .locals 2

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings;->mSwipeBottomAndSideAnimator:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->pauseAnimation()V

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings;->mSwipeBottomAndSideAnimator:Lcom/airbnb/lottie/LottieAnimationView;

    iget-object v0, v0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    iget-object v1, v0, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    invoke-virtual {v1}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->removeAllUpdateListeners()V

    iget-object v1, v0, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    iget-object v0, v0, Lcom/airbnb/lottie/LottieDrawable;->progressUpdateListener:Lcom/airbnb/lottie/LottieDrawable$$ExternalSyntheticLambda1;

    invoke-virtual {v1, v0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings;->mSwipeBottomAndSideAnimator:Lcom/airbnb/lottie/LottieAnimationView;

    iget-object v0, v0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    iget-object v0, v0, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    iget-object p0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings;->mAnimatorListener:Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings$$ExternalSyntheticLambda1;

    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->removeUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_0
    return-void
.end method

.method public final registerAnimatorListener()V
    .locals 2

    const v0, 0x7f0a0a30

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings;->mSwipeBottomAndSideAnimator:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings;->mAnimationIdx:I

    iput v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings;->mLastAnimationIdx:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings;->updateDescription(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings;->mSwipeBottomAndSideAnimator:Lcom/airbnb/lottie/LottieAnimationView;

    iget-object v0, v0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    iget-object v0, v0, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings;->mAnimatorListener:Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings$$ExternalSyntheticLambda1;

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings;->mSwipeBottomAndSideAnimator:Lcom/airbnb/lottie/LottieAnimationView;

    iget-object v0, v0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    iget-object v0, v0, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    iget-object p0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings;->mSwipeBottomAndSideAnimator:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation$1()V

    return-void
.end method

.method public final updateDescription(I)V
    .locals 2

    const v0, 0x7f0a0a35

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object p0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings;->mSideAndBottomAnimationDescs:[I

    aget p0, p0, p1

    invoke-virtual {v1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final updateSettings()V
    .locals 4

    iget v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings;->selectedMode:I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "updateSettings() : Selected = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NavigationBarSetupWizardSettings"

    invoke-static {v2, v1}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "NavigationBarType"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "navigation_bar_gesture_while_hidden"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-boolean v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings;->isBottomGestureRestored:Z

    const/4 v2, 0x1

    if-nez v1, :cond_0

    if-ne v0, v2, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v3, "navigation_bar_gesture_detail_type"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v3, "navigation_bar_gesture_hint"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1
    const v1, 0xb6c38

    int-to-long v2, v0

    const/16 v0, 0x1d2e

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    iget-boolean v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings;->mIsFromSuw:Z

    if-nez v0, :cond_2

    iget-object p0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings;->mNavBarOverlayInteractor:Lcom/samsung/android/settings/navigationbar/NavigationBarOverlayInteractor;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarOverlayInteractor;->setInteractionMode()V

    :cond_2
    return-void
.end method
