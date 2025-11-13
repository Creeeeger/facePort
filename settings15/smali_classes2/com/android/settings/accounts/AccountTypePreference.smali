.class public Lcom/android/settings/accounts/AccountTypePreference;
.super Lcom/android/settingslib/widget/AppPreference;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field public final mFragment:Ljava/lang/String;

.field public final mFragmentArguments:Landroid/os/Bundle;

.field public final mMetricsCategory:I

.field public final mSummary:Ljava/lang/CharSequence;

.field public final mTitle:Ljava/lang/CharSequence;

.field public final mTitleResId:I

.field public final mTitleResPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/accounts/Account;Ljava/lang/String;ILjava/lang/CharSequence;Ljava/lang/String;Landroid/os/Bundle;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settingslib/widget/AppPreference;-><init>(Landroid/content/Context;)V

    const p1, 0x7f0d092e

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    iget-object p1, p3, Landroid/accounts/Account;->name:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/settings/accounts/AccountTypePreference;->mTitle:Ljava/lang/CharSequence;

    iput-object p4, p0, Lcom/android/settings/accounts/AccountTypePreference;->mTitleResPackageName:Ljava/lang/String;

    iput p5, p0, Lcom/android/settings/accounts/AccountTypePreference;->mTitleResId:I

    iput-object p6, p0, Lcom/android/settings/accounts/AccountTypePreference;->mSummary:Ljava/lang/CharSequence;

    iput-object p7, p0, Lcom/android/settings/accounts/AccountTypePreference;->mFragment:Ljava/lang/String;

    iput-object p8, p0, Lcom/android/settings/accounts/AccountTypePreference;->mFragmentArguments:Landroid/os/Bundle;

    iput p2, p0, Lcom/android/settings/accounts/AccountTypePreference;->mMetricsCategory:I

    invoke-virtual {p3}, Landroid/accounts/Account;->hashCode()I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSingleLineTitle(Z)V

    invoke-virtual {p0, p6}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, p9}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method


# virtual methods
.method public final getSummary()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/accounts/AccountTypePreference;->mSummary:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public final getTitle()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/accounts/AccountTypePreference;->mTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public final onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settingslib/widget/AppPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const p0, 0x7f0a0125

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    if-eqz p0, :cond_0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 4

    iget-object p1, p0, Lcom/android/settings/accounts/AccountTypePreference;->mTitleResPackageName:Ljava/lang/String;

    const-string v0, "com.sec.android.softphone"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.sec.android.softphone.SoftphoneMainActivity"

    invoke-direct {v2, v0, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const v0, 0x10008000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return v1

    :cond_0
    iget-object p1, p0, Lcom/android/settings/accounts/AccountTypePreference;->mFragment:Ljava/lang/String;

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iget-object v0, p0, Lcom/android/settings/accounts/AccountTypePreference;->mFragmentArguments:Landroid/os/Bundle;

    const-string v2, "android.intent.extra.USER"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-static {v2, p1, v3}, Lcom/android/settings/Utils;->startQuietModeDialogIfNecessary(Landroid/content/Context;Landroid/os/UserManager;I)Z

    move-result p1

    if-eqz p1, :cond_1

    return v1

    :cond_1
    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    sget-object v2, Lcom/android/settings/Utils;->sBuilder:Ljava/lang/StringBuilder;

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    const/4 v3, 0x2

    invoke-interface {v2, v0, v3}, Landroid/app/IActivityManager;->isUserRunning(II)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v2, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    const-string v2, "keyguard"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3, v0}, Landroid/app/KeyguardManager;->createConfirmDeviceCredentialIntent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return v1

    :catch_0
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/android/settings/accounts/AccountTypePreference;->mFragmentArguments:Landroid/os/Bundle;

    const-string v0, "account_summary"

    iget-object v2, p0, Lcom/android/settings/accounts/AccountTypePreference;->mSummary:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    new-instance p1, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/settings/accounts/AccountTypePreference;->mFragment:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    iput-object v0, v2, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mDestinationName:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/accounts/AccountTypePreference;->mFragmentArguments:Landroid/os/Bundle;

    iput-object v0, v2, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mArguments:Landroid/os/Bundle;

    iget-object v0, p0, Lcom/android/settings/accounts/AccountTypePreference;->mTitleResPackageName:Ljava/lang/String;

    iget v3, p0, Lcom/android/settings/accounts/AccountTypePreference;->mTitleResId:I

    invoke-virtual {p1, v3, v0}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(ILjava/lang/String;)V

    iget p0, p0, Lcom/android/settings/accounts/AccountTypePreference;->mMetricsCategory:I

    iput p0, v2, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mSourceMetricsCategory:I

    invoke-virtual {p1}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return v1

    :cond_5
    const/4 p0, 0x0

    return p0
.end method
