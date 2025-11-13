.class public Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;
.super Lcom/android/settings/core/InstrumentedFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment$Status;
    }
.end annotation


# instance fields
.field public mBackButton:Landroid/widget/Button;

.field public mButtonContainer1:Landroid/widget/FrameLayout;

.field public mButtonContainer2:Landroid/widget/FrameLayout;

.field public mButtonContainer3:Landroid/widget/FrameLayout;

.field public mContext:Landroid/content/Context;

.field public mCurrenStatus:Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment$Status;

.field public mDoneButton:Landroid/widget/Button;

.field public mExperienceDescription:Landroid/widget/TextView;

.field public final mHandler:Landroid/os/Handler;

.field public mHorizontalPadding:I

.field public mParams:Landroid/widget/FrameLayout$LayoutParams;

.field public mPressTimeContainer:Landroid/widget/LinearLayout;

.field public mRootView:Landroid/view/View;

.field public mStartPressTime:J

.field public mStatusContainer:Landroid/widget/FrameLayout;

.field public mStatusTextView:Landroid/widget/TextView;

.field public mTimeTextView:Landroid/widget/TextView;

.field public mTimer:Ljava/lang/Runnable;

.field public mTotalPressedTime:J

.field public mTryAgainButton:Landroid/widget/Button;

.field public mTryAgainContainer:Landroid/widget/LinearLayout;

.field public final onBackPressedCallback:Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment$1;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedFragment;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->mTimer:Ljava/lang/Runnable;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->mStartPressTime:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->mTotalPressedTime:J

    sget-object v0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment$Status;->STAND_BY:Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment$Status;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->mCurrenStatus:Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment$Status;

    new-instance v0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment$1;-><init>(Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->onBackPressedCallback:Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment$1;

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final init()V
    .locals 4

    sget-object v0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment$Status;->STAND_BY:Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment$Status;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->mCurrenStatus:Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment$Status;

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0a05f5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->mExperienceDescription:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0a0f05

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->mStatusTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0a0f01

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->mStatusContainer:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0a0b89

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->mPressTimeContainer:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0a1091

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->mTryAgainContainer:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0a016c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->mBackButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0a055e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->mDoneButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0a1090

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->mTryAgainButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0a08ff

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->mTimeTextView:Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    iget-wide v2, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->mTotalPressedTime:J

    long-to-float v2, v2

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "%.2f"

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0a029f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->mButtonContainer1:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0a02a0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->mButtonContainer2:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0a02a1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->mButtonContainer3:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0a029e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->semSetRoundedCorners(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0604f4

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->semSetRoundedCornerColor(II)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->mRootView:Landroid/view/View;

    iget v1, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->mHorizontalPadding:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->mDoneButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/samsung/android/settings/accessibility/SecAccessibilityUtils;->setButtonsColor(Landroid/content/Context;Landroid/widget/Button;)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->mDoneButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->mParams:Landroid/widget/FrameLayout$LayoutParams;

    const/16 p0, 0x11

    iput p0, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    return-void
.end method

.method public initViews$1()V
    .locals 0

    return-void
.end method

.method public final launchFragment$1(ILjava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/android/settings/core/SubSettingLauncher;

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    iget-object v1, v0, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    iput-object p2, v1, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mDestinationName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->getMetricsCategory()I

    move-result p0

    iput p0, v1, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mSourceMetricsCategory:I

    const/4 p0, 0x0

    invoke-virtual {v0, p1, p0}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(ILjava/lang/String;)V

    const/high16 p0, 0x14000000

    invoke-virtual {v0, p0}, Lcom/android/settings/core/SubSettingLauncher;->addFlags(I)V

    invoke-virtual {v0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedFragment;->onAttach(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/activity/ComponentActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->onBackPressedCallback:Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment$1;

    invoke-virtual {p1, p0}, Landroidx/activity/OnBackPressedDispatcher;->addCallback(Landroidx/activity/OnBackPressedCallback;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 0

    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->removeViews()V

    const v1, 0x7f0d0451

    invoke-virtual {p1, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->mRootView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->initViews$1()V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const v0, 0x7f0d0451

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->mRootView:Landroid/view/View;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->getListHorizontalPadding(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->mHorizontalPadding:I

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->onBackPressed()V

    iget-object p1, p0, Lcom/android/settings/core/InstrumentedFragment;->mMetricsFeatureProvider:Lcom/android/settings/core/instrumentation/SettingsMetricsFeatureProvider;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->getMetricsCategory()I

    move-result p0

    const-string v0, "A11Y0001"

    invoke-virtual {p1, p0, v0}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->clicked(ILjava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservableFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public removeViews()V
    .locals 0

    return-void
.end method
