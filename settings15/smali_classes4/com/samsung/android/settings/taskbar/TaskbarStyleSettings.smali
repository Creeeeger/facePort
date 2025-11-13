.class public Lcom/samsung/android/settings/taskbar/TaskbarStyleSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/samsung/android/settings/widget/SecRadioButtonPreference$OnClickListener;


# instance fields
.field public final TASK_BAR_REFRESH_URI:Landroid/net/Uri;

.field public animationView:Lcom/airbnb/lottie/LottieAnimationView;

.field public animationViewContainer:Landroid/widget/LinearLayout;

.field public fixedTaskbar:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

.field public floatingTaskbar:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

.field public helpContainerPref:Lcom/android/settingslib/widget/LayoutPreference;

.field public final mRefreshObserver:Lcom/samsung/android/settings/taskbar/TaskbarStyleSettings$1;

.field public stayOnScreenImageView:Landroid/widget/ImageView;

.field public taskbarStyleValue:I


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const-string/jumbo v0, "taskbar_style_type"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/taskbar/TaskbarStyleSettings;->TASK_BAR_REFRESH_URI:Landroid/net/Uri;

    new-instance v0, Lcom/samsung/android/settings/taskbar/TaskbarStyleSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/taskbar/TaskbarStyleSettings$1;-><init>(Lcom/samsung/android/settings/taskbar/TaskbarStyleSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/taskbar/TaskbarStyleSettings;->mRefreshObserver:Lcom/samsung/android/settings/taskbar/TaskbarStyleSettings$1;

    return-void
.end method


# virtual methods
.method public final changeVIIfRequired(Ljava/lang/Integer;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/settings/taskbar/TaskbarStyleSettings;->stayOnScreenImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/samsung/android/settings/taskbar/TaskbarStyleSettings;->animationView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p1, p1, 0x30

    const/16 v0, 0x20

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/taskbar/TaskbarStyleSettings;->animationView:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v0, "Task_Bar_Help_VI_floating_bar_dark.json"

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/taskbar/TaskbarStyleSettings;->animationView:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v0, "Task_Bar_Help_VI_floating_bar_light.json"

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    :goto_0
    iget-object p0, p0, Lcom/samsung/android/settings/taskbar/TaskbarStyleSettings;->animationView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation$1()V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/taskbar/TaskbarStyleSettings;->animationView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/samsung/android/settings/taskbar/TaskbarStyleSettings;->stayOnScreenImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p0, p0, Lcom/samsung/android/settings/taskbar/TaskbarStyleSettings;->stayOnScreenImageView:Landroid/widget/ImageView;

    const p1, 0x7f080dcb

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_1
    return-void
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/settings/taskbar/TaskBarUtils;->isFrontDisplay(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/settings/taskbar/TaskBarUtils;->isSmartViewEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    :cond_1
    const p1, 0x7f1701fd

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    const-string/jumbo p1, "task_bar_style_help_preview"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/widget/LayoutPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/taskbar/TaskbarStyleSettings;->helpContainerPref:Lcom/android/settingslib/widget/LayoutPreference;

    const-string p1, "auto_hide_taskbar_on"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/taskbar/TaskbarStyleSettings;->floatingTaskbar:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    if-eqz p1, :cond_2

    iput-object p0, p1, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;->mListener:Lcom/samsung/android/settings/widget/SecRadioButtonPreference$OnClickListener;

    :cond_2
    const-string/jumbo p1, "stay_on_screen"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/taskbar/TaskbarStyleSettings;->fixedTaskbar:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    if-eqz p1, :cond_3

    iput-object p0, p1, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;->mListener:Lcom/samsung/android/settings/widget/SecRadioButtonPreference$OnClickListener;

    :cond_3
    iget-object p1, p0, Lcom/samsung/android/settings/taskbar/TaskbarStyleSettings;->helpContainerPref:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object p1, p1, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v0, 0x7f0a10f0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/samsung/android/settings/taskbar/TaskbarStyleSettings;->animationViewContainer:Landroid/widget/LinearLayout;

    iget-object p1, p0, Lcom/samsung/android/settings/taskbar/TaskbarStyleSettings;->helpContainerPref:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object p1, p1, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v0, 0x7f0a10f1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object p1, p0, Lcom/samsung/android/settings/taskbar/TaskbarStyleSettings;->animationView:Lcom/airbnb/lottie/LottieAnimationView;

    iget-object p1, p0, Lcom/samsung/android/settings/taskbar/TaskbarStyleSettings;->helpContainerPref:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object p1, p1, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v0, 0x7f0a07d5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/samsung/android/settings/taskbar/TaskbarStyleSettings;->stayOnScreenImageView:Landroid/widget/ImageView;

    iget-object p1, p0, Lcom/samsung/android/settings/taskbar/TaskbarStyleSettings;->animationViewContainer:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_4

    const/16 v0, 0xf

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->semSetRoundedCorners(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060738

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->semSetRoundedCornerColor(II)V

    :cond_4
    iget-object p1, p0, Lcom/samsung/android/settings/taskbar/TaskbarStyleSettings;->floatingTaskbar:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    const v0, 0x7f140fe4

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(I)V

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v0, "taskbar_style_type"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/settings/taskbar/TaskbarStyleSettings;->taskbarStyleValue:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/taskbar/TaskbarStyleSettings;->setCheckedValue(Ljava/lang/Integer;)V

    iget p1, p0, Lcom/samsung/android/settings/taskbar/TaskbarStyleSettings;->taskbarStyleValue:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/taskbar/TaskbarStyleSettings;->changeVIIfRequired(Ljava/lang/Integer;)V

    return-void
.end method

.method public final onRadioButtonClicked(Lcom/samsung/android/settings/widget/SecRadioButtonPreference;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/taskbar/TaskbarStyleSettings;->floatingTaskbar:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string/jumbo v0, "taskbar_style_type"

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/taskbar/TaskbarStyleSettings;->setCheckedValue(Ljava/lang/Integer;)V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/taskbar/TaskbarStyleSettings;->changeVIIfRequired(Ljava/lang/Integer;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/taskbar/TaskbarStyleSettings;->setCheckedValue(Ljava/lang/Integer;)V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/taskbar/TaskbarStyleSettings;->changeVIIfRequired(Ljava/lang/Integer;)V

    :goto_0
    iget-object p0, p0, Lcom/samsung/android/settings/taskbar/TaskbarStyleSettings;->floatingTaskbar:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    const p1, 0x7f140fe4

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(I)V

    return-void
.end method

.method public final onStart()V
    .locals 3

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onStart()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/taskbar/TaskbarStyleSettings;->TASK_BAR_REFRESH_URI:Landroid/net/Uri;

    iget-object p0, p0, Lcom/samsung/android/settings/taskbar/TaskbarStyleSettings;->mRefreshObserver:Lcom/samsung/android/settings/taskbar/TaskbarStyleSettings$1;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public final onStop()V
    .locals 1

    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onStop()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/settings/taskbar/TaskbarStyleSettings;->mRefreshObserver:Lcom/samsung/android/settings/taskbar/TaskbarStyleSettings$1;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public final setCheckedValue(Ljava/lang/Integer;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setChecked value:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TaskBarStyleSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/taskbar/TaskbarStyleSettings;->fixedTaskbar:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {p1, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p0, p0, Lcom/samsung/android/settings/taskbar/TaskbarStyleSettings;->floatingTaskbar:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {p0, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/taskbar/TaskbarStyleSettings;->fixedTaskbar:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p0, p0, Lcom/samsung/android/settings/taskbar/TaskbarStyleSettings;->floatingTaskbar:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {p0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :goto_0
    return-void
.end method
