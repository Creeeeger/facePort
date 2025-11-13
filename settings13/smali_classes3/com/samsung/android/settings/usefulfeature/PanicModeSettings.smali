.class public Lcom/samsung/android/settings/usefulfeature/PanicModeSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "PanicModeSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private mSendSOSMessageSwa:Landroidx/preference/PreferenceScreen;

.field private mSendSOSMessageSwaObserver:Landroid/database/ContentObserver;


# direct methods
.method static bridge synthetic -$$Nest$mupdateSendSOSMessageSummary(Lcom/samsung/android/settings/usefulfeature/PanicModeSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/PanicModeSettings;->updateSendSOSMessageSummary()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 50
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 59
    new-instance v0, Lcom/samsung/android/settings/usefulfeature/PanicModeSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/usefulfeature/PanicModeSettings$1;-><init>(Lcom/samsung/android/settings/usefulfeature/PanicModeSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/PanicModeSettings;->mSendSOSMessageSwaObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method private updatePreferenceHierarchy()Landroidx/preference/PreferenceScreen;
    .locals 3

    .line 161
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "key_safety_assistance_swa"

    .line 162
    invoke-virtual {p0, v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Landroidx/preference/PreferenceScreen;

    iput-object v2, p0, Lcom/samsung/android/settings/usefulfeature/PanicModeSettings;->mSendSOSMessageSwa:Landroidx/preference/PreferenceScreen;

    if-eqz v2, :cond_0

    .line 164
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isSendSOSMessageSupported(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 165
    invoke-virtual {p0, v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_0
    return-object v0
.end method

.method private updateSendSOSMessageSummary()V
    .locals 3

    .line 175
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/PanicModeSettings;->mSendSOSMessageSwa:Landroidx/preference/PreferenceScreen;

    if-eqz v0, :cond_2

    .line 177
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "send_emergency_message"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v2, v1

    .line 178
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/PanicModeSettings;->mSendSOSMessageSwa:Landroidx/preference/PreferenceScreen;

    if-ne v2, v1, :cond_1

    sget v0, Lcom/android/settings/R$string;->switch_on_text:I

    goto :goto_0

    :cond_1
    sget v0, Lcom/android/settings/R$string;->switch_off_text:I

    :goto_0
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(I)V

    :cond_2
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 73
    sget p0, Lcom/android/settings/R$xml;->sec_panicmode_settings:I

    return p0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 184
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 185
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/android/settings/R$layout;->sec_pager_adapter:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 186
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/usefulfeature/PanicModeSettings;->rebuildLayout(Landroid/view/View;)V

    .line 187
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->removeHeaderView()V

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 189
    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 190
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->setHeaderView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "PanicModeSettings"

    const-string v1, "onCreate"

    .line 78
    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 109
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    const-string p2, "PanicModeSettings"

    const-string p3, "onCreateView"

    .line 110
    invoke-static {p2, p3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    sget p3, Lcom/android/settings/R$layout;->sec_pager_adapter:I

    const/4 v0, 0x0

    invoke-static {p2, p3, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 115
    invoke-virtual {p0, p2}, Lcom/samsung/android/settings/usefulfeature/PanicModeSettings;->rebuildLayout(Landroid/view/View;)V

    const/4 p3, 0x1

    .line 116
    invoke-virtual {p2, p3}, Landroid/view/View;->setFocusable(Z)V

    .line 117
    invoke-virtual {p0, p2}, Lcom/android/settings/SettingsPreferenceFragment;->setHeaderView(Landroid/view/View;)V

    :cond_0
    return-object p1
.end method

.method public onPause()V
    .locals 1

    .line 196
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    .line 197
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/PanicModeSettings;->mSendSOSMessageSwa:Landroidx/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    .line 198
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/PanicModeSettings;->mSendSOSMessageSwaObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 3

    .line 89
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/PanicModeSettings;->mSendSOSMessageSwa:Landroidx/preference/PreferenceScreen;

    if-ne p1, v0, :cond_0

    .line 90
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/PanicModeSettings;->getMetricsCategory()I

    move-result v0

    const/16 v1, 0x1205

    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    .line 92
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.MAIN"

    .line 93
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.sec.android.app.safetyassurance"

    const-string v2, "com.sec.android.app.safetyassurance.settings.SafetyAssuranceSetting"

    .line 94
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 96
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception v0

    const-string v1, "PanicModeSettings"

    const-string v2, "ActivityNotFoundException in safetyassurance"

    .line 99
    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    .line 103
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public onResume()V
    .locals 3

    .line 149
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    const-string v0, "PanicModeSettings"

    const-string v1, "onResume"

    .line 150
    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/PanicModeSettings;->updatePreferenceHierarchy()Landroidx/preference/PreferenceScreen;

    .line 153
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/PanicModeSettings;->mSendSOSMessageSwa:Landroidx/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    .line 154
    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/PanicModeSettings;->updateSendSOSMessageSummary()V

    .line 156
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "send_emergency_message"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/PanicModeSettings;->mSendSOSMessageSwaObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method public rebuildLayout(Landroid/view/View;)V
    .locals 3

    .line 123
    sget v0, Lcom/android/settings/R$id;->description_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 124
    sget v1, Lcom/android/settings/R$id;->description_summary:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 125
    sget v2, Lcom/android/settings/R$id;->animation:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    const/16 v2, 0x8

    .line 127
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 129
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isSendSOSMessageSupported(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 130
    sget p0, Lcom/android/settings/R$string;->panic_mode_description_text_wo_sos:I

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 132
    :cond_0
    sget p0, Lcom/android/settings/R$string;->panic_mode_description_text:I

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setText(I)V

    .line 135
    :goto_0
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 136
    sget p0, Lcom/android/settings/R$drawable;->sec_panic_mode_anim_tablet:I

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 138
    :cond_1
    sget p0, Lcom/android/settings/R$drawable;->sec_panic_mode_anim:I

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 141
    :goto_1
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz p0, :cond_2

    .line 143
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    :cond_2
    return-void
.end method
