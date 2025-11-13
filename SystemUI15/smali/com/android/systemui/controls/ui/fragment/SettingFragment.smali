.class public final Lcom/android/systemui/controls/ui/fragment/SettingFragment;
.super Landroidx/preference/PreferenceFragmentCompat;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public controlDevicePreference:Landroidx/preference/SwitchPreferenceCompat;

.field public final saLogger:Lcom/android/systemui/controls/util/SALogger;

.field public screen:Landroidx/preference/PreferenceScreen;

.field public showDevicePreference:Landroidx/preference/SwitchPreferenceCompat;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/controls/ui/fragment/SettingFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/controls/ui/fragment/SettingFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/controls/util/SALogger;)V
    .locals 0

    invoke-direct {p0}, Landroidx/preference/PreferenceFragmentCompat;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/controls/ui/fragment/SettingFragment;->saLogger:Lcom/android/systemui/controls/util/SALogger;

    return-void
.end method


# virtual methods
.method public final onCreatePreferences(Ljava/lang/String;)V
    .locals 4

    iget-object p1, p0, Landroidx/preference/PreferenceFragmentCompat;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    if-eqz p1, :cond_a

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroidx/preference/PreferenceFragmentCompat;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    iget-object v1, v1, Landroidx/preference/PreferenceManager;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    const v2, 0x7f170014

    invoke-virtual {p1, v0, v2, v1}, Landroidx/preference/PreferenceManager;->inflateFromResource(Landroid/content/Context;ILandroidx/preference/PreferenceScreen;)Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object v0, p0, Landroidx/preference/PreferenceFragmentCompat;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    iget-object v1, v0, Landroidx/preference/PreferenceManager;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    if-eq p1, v1, :cond_2

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroidx/preference/PreferenceGroup;->onDetached()V

    :cond_0
    iput-object p1, v0, Landroidx/preference/PreferenceManager;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/preference/PreferenceFragmentCompat;->mHavePrefs:Z

    iget-boolean v0, p0, Landroidx/preference/PreferenceFragmentCompat;->mInitDone:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/preference/PreferenceFragmentCompat;->mHandler:Landroidx/preference/PreferenceFragmentCompat$1;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/preference/PreferenceFragmentCompat;->mHandler:Landroidx/preference/PreferenceFragmentCompat$1;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_2
    :goto_0
    const-string p1, "screen"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceScreen;

    if-nez p1, :cond_3

    return-void

    :cond_3
    iput-object p1, p0, Lcom/android/systemui/controls/ui/fragment/SettingFragment;->screen:Landroidx/preference/PreferenceScreen;

    const-string p1, "ControlsSettingsUseWhilePhoneIsLocked"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SwitchPreferenceCompat;

    if-nez p1, :cond_4

    return-void

    :cond_4
    iput-object p1, p0, Lcom/android/systemui/controls/ui/fragment/SettingFragment;->showDevicePreference:Landroidx/preference/SwitchPreferenceCompat;

    const-string p1, "ControlsSettingsControlWhilePhoneIsLocked"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SwitchPreferenceCompat;

    if-nez p1, :cond_5

    return-void

    :cond_5
    iput-object p1, p0, Lcom/android/systemui/controls/ui/fragment/SettingFragment;->controlDevicePreference:Landroidx/preference/SwitchPreferenceCompat;

    iget-object p1, p0, Lcom/android/systemui/controls/ui/fragment/SettingFragment;->showDevicePreference:Landroidx/preference/SwitchPreferenceCompat;

    const/4 v0, 0x0

    if-nez p1, :cond_6

    move-object p1, v0

    :cond_6
    sget-boolean v1, Lcom/android/systemui/BasicRune;->CONTROLS_SAMSUNG_STYLE_TABLET:Z

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f130487

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f130488

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_7
    new-instance v2, Lcom/android/systemui/controls/ui/fragment/SettingFragment$onCreatePreferences$1$1;

    invoke-direct {v2, p0, p1}, Lcom/android/systemui/controls/ui/fragment/SettingFragment$onCreatePreferences$1$1;-><init>(Lcom/android/systemui/controls/ui/fragment/SettingFragment;Landroidx/preference/SwitchPreferenceCompat;)V

    iput-object v2, p1, Landroidx/preference/Preference;->mOnClickListener:Landroidx/preference/Preference$OnPreferenceClickListener;

    iget-object p1, p0, Lcom/android/systemui/controls/ui/fragment/SettingFragment;->controlDevicePreference:Landroidx/preference/SwitchPreferenceCompat;

    if-nez p1, :cond_8

    goto :goto_1

    :cond_8
    move-object v0, p1

    :goto_1
    if-eqz v1, :cond_9

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f13047f

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f130480

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_9
    new-instance p1, Lcom/android/systemui/controls/ui/fragment/SettingFragment$onCreatePreferences$2$1;

    invoke-direct {p1, p0, v0}, Lcom/android/systemui/controls/ui/fragment/SettingFragment$onCreatePreferences$2$1;-><init>(Lcom/android/systemui/controls/ui/fragment/SettingFragment;Landroidx/preference/SwitchPreferenceCompat;)V

    iput-object p1, v0, Landroidx/preference/Preference;->mOnClickListener:Landroidx/preference/Preference$OnPreferenceClickListener;

    iget-object p0, p0, Lcom/android/systemui/controls/ui/fragment/SettingFragment;->saLogger:Lcom/android/systemui/controls/util/SALogger;

    sget-object p1, Lcom/android/systemui/controls/util/SALogger$Screen$Settings;->INSTANCE:Lcom/android/systemui/controls/util/SALogger$Screen$Settings;

    invoke-virtual {p0, p1}, Lcom/android/systemui/controls/util/SALogger;->sendScreenView(Lcom/android/systemui/controls/util/SALogger$Screen;)V

    return-void

    :cond_a
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "This should be called after super.onCreate."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v1, v0, Landroidx/appcompat/app/AppCompatActivity;

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v1

    if-eqz v1, :cond_1

    const v2, 0x7f130460

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroidx/preference/PreferenceFragmentCompat;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f0600d0

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    return-object p0
.end method

.method public final onResume()V
    .locals 6

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    iget-object v1, p0, Lcom/android/systemui/controls/ui/fragment/SettingFragment;->showDevicePreference:Landroidx/preference/SwitchPreferenceCompat;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v1, v2

    :cond_0
    iget-object v3, v1, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "lockscreen_show_controls"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_1

    move v3, v0

    goto :goto_0

    :cond_1
    move v3, v5

    :goto_0
    invoke-virtual {v1, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-boolean v1, v1, Landroidx/preference/TwoStatePreference;->mChecked:Z

    invoke-virtual {p0, v1}, Lcom/android/systemui/controls/ui/fragment/SettingFragment;->updatePreference(Z)V

    iget-object p0, p0, Lcom/android/systemui/controls/ui/fragment/SettingFragment;->controlDevicePreference:Landroidx/preference/SwitchPreferenceCompat;

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    move-object v2, p0

    :goto_1
    iget-object p0, v2, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "lockscreen_allow_trivial_controls"

    invoke-static {p0, v1, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_2

    :cond_3
    move v0, v5

    :goto_2
    invoke-virtual {v2, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method

.method public final updatePreference(Z)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/android/systemui/controls/ui/fragment/SettingFragment;->screen:Landroidx/preference/PreferenceScreen;

    if-nez p1, :cond_0

    move-object p1, v0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/controls/ui/fragment/SettingFragment;->controlDevicePreference:Landroidx/preference/SwitchPreferenceCompat;

    if-nez v1, :cond_1

    move-object v1, v0

    :cond_1
    iget-object v1, v1, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_2

    return-void

    :cond_2
    iget-object p1, p0, Lcom/android/systemui/controls/ui/fragment/SettingFragment;->screen:Landroidx/preference/PreferenceScreen;

    if-nez p1, :cond_3

    move-object p1, v0

    :cond_3
    iget-object p0, p0, Lcom/android/systemui/controls/ui/fragment/SettingFragment;->controlDevicePreference:Landroidx/preference/SwitchPreferenceCompat;

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    move-object v0, p0

    :goto_0
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    goto :goto_2

    :cond_5
    iget-object p1, p0, Lcom/android/systemui/controls/ui/fragment/SettingFragment;->screen:Landroidx/preference/PreferenceScreen;

    if-nez p1, :cond_6

    move-object p1, v0

    :cond_6
    iget-object p0, p0, Lcom/android/systemui/controls/ui/fragment/SettingFragment;->controlDevicePreference:Landroidx/preference/SwitchPreferenceCompat;

    if-nez p0, :cond_7

    goto :goto_1

    :cond_7
    move-object v0, p0

    :goto_1
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)V

    :goto_2
    return-void
.end method
