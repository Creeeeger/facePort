.class public Lcom/android/settings/accounts/AccountTypePreference;
.super Lcom/android/settingslib/widget/AppPreference;
.source "AccountTypePreference.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private final mFragment:Ljava/lang/String;

.field private final mFragmentArguments:Landroid/os/Bundle;

.field private final mMetricsCategory:I

.field private final mSummary:Ljava/lang/CharSequence;

.field private final mTitle:Ljava/lang/CharSequence;

.field private final mTitleResId:I

.field private final mTitleResPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/accounts/Account;Ljava/lang/String;ILjava/lang/CharSequence;Ljava/lang/String;Landroid/os/Bundle;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 119
    invoke-direct {p0, p1}, Lcom/android/settingslib/widget/AppPreference;-><init>(Landroid/content/Context;)V

    .line 120
    sget p1, Lcom/android/settings/R$layout;->sec_preference_app_icon:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    .line 121
    iget-object p1, p3, Landroid/accounts/Account;->name:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/settings/accounts/AccountTypePreference;->mTitle:Ljava/lang/CharSequence;

    .line 122
    iput-object p4, p0, Lcom/android/settings/accounts/AccountTypePreference;->mTitleResPackageName:Ljava/lang/String;

    .line 123
    iput p5, p0, Lcom/android/settings/accounts/AccountTypePreference;->mTitleResId:I

    .line 124
    iput-object p6, p0, Lcom/android/settings/accounts/AccountTypePreference;->mSummary:Ljava/lang/CharSequence;

    .line 125
    iput-object p7, p0, Lcom/android/settings/accounts/AccountTypePreference;->mFragment:Ljava/lang/String;

    .line 126
    iput-object p8, p0, Lcom/android/settings/accounts/AccountTypePreference;->mFragmentArguments:Landroid/os/Bundle;

    .line 127
    iput p2, p0, Lcom/android/settings/accounts/AccountTypePreference;->mMetricsCategory:I

    .line 129
    invoke-static {p3}, Lcom/android/settings/accounts/AccountTypePreference;->buildKey(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 131
    invoke-virtual {p0, p6}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 132
    invoke-virtual {p0, p9}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 134
    invoke-virtual {p0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method

.method public static buildKey(Landroid/accounts/Account;)Ljava/lang/String;
    .locals 0

    .line 189
    invoke-virtual {p0}, Landroid/accounts/Account;->hashCode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getSummary()Ljava/lang/CharSequence;
    .locals 0

    .line 197
    iget-object p0, p0, Lcom/android/settings/accounts/AccountTypePreference;->mSummary:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 0

    .line 193
    iget-object p0, p0, Lcom/android/settings/accounts/AccountTypePreference;->mTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 0

    .line 139
    invoke-super {p0, p1}, Lcom/android/settingslib/widget/AppPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 140
    sget p0, Lcom/android/settings/R$id;->appendix:I

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    if-eqz p0, :cond_0

    const/16 p1, 0x8

    .line 142
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 4

    .line 150
    iget-object p1, p0, Lcom/android/settings/accounts/AccountTypePreference;->mTitleResPackageName:Ljava/lang/String;

    const-string v0, "com.sec.android.softphone"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 151
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 152
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.sec.android.softphone.SoftphoneMainActivity"

    invoke-direct {v2, v0, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const v0, 0x10008000

    .line 154
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 155
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return v1

    .line 160
    :cond_0
    iget-object p1, p0, Lcom/android/settings/accounts/AccountTypePreference;->mFragment:Ljava/lang/String;

    if-eqz p1, :cond_3

    .line 162
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string/jumbo v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    .line 163
    iget-object v0, p0, Lcom/android/settings/accounts/AccountTypePreference;->mFragmentArguments:Landroid/os/Bundle;

    const-string v2, "android.intent.extra.USER"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    if-eqz v0, :cond_1

    .line 164
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 165
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    .line 164
    invoke-static {v2, p1, v3}, Lcom/android/settings/Utils;->startQuietModeDialogIfNecessary(Landroid/content/Context;Landroid/os/UserManager;I)Z

    move-result p1

    if-eqz p1, :cond_1

    return v1

    :cond_1
    if-eqz v0, :cond_2

    .line 167
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 168
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 167
    invoke-static {p1, v0}, Lcom/android/settings/Utils;->unlockWorkProfileIfNecessary(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_2

    return v1

    .line 172
    :cond_2
    iget-object p1, p0, Lcom/android/settings/accounts/AccountTypePreference;->mFragmentArguments:Landroid/os/Bundle;

    iget-object v0, p0, Lcom/android/settings/accounts/AccountTypePreference;->mSummary:Ljava/lang/CharSequence;

    const-string v2, "account_summary"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 174
    new-instance p1, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/settings/accounts/AccountTypePreference;->mFragment:Ljava/lang/String;

    .line 175
    invoke-virtual {p1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/accounts/AccountTypePreference;->mFragmentArguments:Landroid/os/Bundle;

    .line 176
    invoke-virtual {p1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/accounts/AccountTypePreference;->mTitleResPackageName:Ljava/lang/String;

    iget v2, p0, Lcom/android/settings/accounts/AccountTypePreference;->mTitleResId:I

    .line 177
    invoke-virtual {p1, v0, v2}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(Ljava/lang/String;I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    iget p0, p0, Lcom/android/settings/accounts/AccountTypePreference;->mMetricsCategory:I

    .line 178
    invoke-virtual {p1, p0}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 179
    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return v1

    :cond_3
    const/4 p0, 0x0

    return p0
.end method
