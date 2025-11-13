.class public Lcom/android/settings/applications/credentials/DefaultCombinedPreferenceController;
.super Lcom/android/settings/applications/defaultapps/DefaultAppPreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mAutofillManager:Landroid/view/autofill/AutofillManager;

.field public final mCredentialManager:Landroid/credentials/CredentialManager;

.field public final mExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public static synthetic $r8$lambda$TX8DIJ6kP_AqZdFFsvYHGVJyh08(Lcom/android/settings/applications/credentials/DefaultCombinedPreferenceController;Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/settings/applications/credentials/DefaultCombinedPreferenceController;->getUser()I

    move-result p0

    invoke-static {v0, p1, p2, p0}, Lcom/android/settings/applications/credentials/CombinedProviderInfo;->launchSettingsActivityIntent(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.service.autofill.AutofillService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/settings/applications/defaultapps/DefaultAppPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/credentials/DefaultCombinedPreferenceController;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-class v1, Landroid/view/autofill/AutofillManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillManager;

    iput-object v0, p0, Lcom/android/settings/applications/credentials/DefaultCombinedPreferenceController;->mAutofillManager:Landroid/view/autofill/AutofillManager;

    invoke-static {p1}, Landroid/credentials/CredentialManager;->isServiceEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-class v0, Landroid/credentials/CredentialManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/credentials/CredentialManager;

    iput-object p1, p0, Lcom/android/settings/applications/credentials/DefaultCombinedPreferenceController;->mCredentialManager:Landroid/credentials/CredentialManager;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/settings/applications/credentials/DefaultCombinedPreferenceController;->mCredentialManager:Landroid/credentials/CredentialManager;

    :goto_0
    return-void
.end method

.method public static synthetic access$000(Lcom/android/settings/applications/credentials/DefaultCombinedPreferenceController;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public final createIntentToOpenPicker()Landroid/content/Intent;
    .locals 2

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/settings/applications/credentials/DefaultCombinedPreferenceController;->getUser()I

    move-result p0

    invoke-static {p0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object p0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/applications/credentials/CredentialsPickerActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method public final getAllProviders$1(I)Ljava/util/List;
    .locals 4

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Landroid/service/autofill/AutofillServiceInfo;->getAvailableServices(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-string v2, "DefaultCombinedPreferenceController"

    invoke-static {v1, p1, v2}, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;->getSelectedAutofillProvider(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lcom/android/settings/applications/credentials/DefaultCombinedPreferenceController;->mCredentialManager:Landroid/credentials/CredentialManager;

    if-eqz p0, :cond_0

    const/4 v3, 0x3

    invoke-virtual {p0, p1, v3}, Landroid/credentials/CredentialManager;->getCredentialProviderServices(II)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    invoke-static {v0, v2, v1}, Lcom/android/settings/applications/credentials/CombinedProviderInfo;->buildMergedList(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getDefaultAppInfo()Lcom/android/settingslib/applications/DefaultAppInfo;
    .locals 13

    invoke-virtual {p0}, Lcom/android/settings/applications/credentials/DefaultCombinedPreferenceController;->getUser()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/credentials/DefaultCombinedPreferenceController;->getAllProviders$1(I)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/applications/credentials/CombinedProviderInfo;->getTopProvider(Ljava/util/List;)Lcom/android/settings/applications/credentials/CombinedProviderInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/settings/applications/credentials/CombinedProviderInfo;->getBrandingService()Landroid/content/pm/ServiceInfo;

    move-result-object v5

    if-nez v5, :cond_0

    new-instance v1, Lcom/android/settingslib/applications/DefaultAppInfo;

    iget-object v7, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/settings/applications/defaultapps/DefaultAppPreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p0}, Lcom/android/settings/applications/credentials/DefaultCombinedPreferenceController;->getUser()I

    move-result v9

    invoke-virtual {v0}, Lcom/android/settings/applications/credentials/CombinedProviderInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v10

    invoke-virtual {v0}, Lcom/android/settings/applications/credentials/CombinedProviderInfo;->getSettingsSubtitle()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    move-object v6, v1

    invoke-direct/range {v6 .. v12}, Lcom/android/settingslib/applications/DefaultAppInfo;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;ILandroid/content/pm/PackageItemInfo;Ljava/lang/String;Z)V

    return-object v1

    :cond_0
    new-instance v8, Lcom/android/settingslib/applications/DefaultAppInfo;

    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/applications/defaultapps/DefaultAppPreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p0}, Lcom/android/settings/applications/credentials/DefaultCombinedPreferenceController;->getUser()I

    move-result v4

    invoke-virtual {v0}, Lcom/android/settings/applications/credentials/CombinedProviderInfo;->getSettingsSubtitle()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/settingslib/applications/DefaultAppInfo;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;ILandroid/content/pm/PackageItemInfo;Ljava/lang/String;Z)V

    return-object v8

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "default_credman_autofill_main"

    return-object p0
.end method

.method public final getSettingIntent(Lcom/android/settingslib/applications/DefaultAppInfo;)Landroid/content/Intent;
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/applications/credentials/DefaultCombinedPreferenceController;->createIntentToOpenPicker()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public getUser()I
    .locals 0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p0

    return p0
.end method

.method public isAvailable()Z
    .locals 2

    iget-object v0, p0, Lcom/android/settings/applications/credentials/DefaultCombinedPreferenceController;->mAutofillManager:Landroid/view/autofill/AutofillManager;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/applications/credentials/DefaultCombinedPreferenceController;->mCredentialManager:Landroid/credentials/CredentialManager;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/view/autofill/AutofillManager;->hasAutofillFeature()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settings/applications/credentials/DefaultCombinedPreferenceController;->mAutofillManager:Landroid/view/autofill/AutofillManager;

    invoke-virtual {p0}, Landroid/view/autofill/AutofillManager;->isAutofillSupported()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final showAppSummary()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final showLabelAsTitle()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public updatePreferenceForProvider(Landroidx/preference/Preference;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    if-nez p2, :cond_0

    const p3, 0x7f140383

    invoke-virtual {p1, p3}, Landroidx/preference/Preference;->setTitle(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    :goto_0
    const-string p3, "com.samsung.android.samsungpassautofill"

    invoke-virtual {p3, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    const p3, 0x7f1426a0

    invoke-virtual {p1, p3}, Landroidx/preference/Preference;->setTitle(I)V

    :cond_1
    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, p3}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    instance-of p3, p1, Lcom/samsung/android/settings/widget/SecGearPreference;

    if-eqz p3, :cond_2

    move-object p3, p1

    check-cast p3, Lcom/samsung/android/settings/widget/SecGearPreference;

    new-instance p4, Lcom/android/settings/applications/credentials/DefaultCombinedPreferenceController$$ExternalSyntheticLambda0;

    invoke-direct {p4, p0, p5, p6}, Lcom/android/settings/applications/credentials/DefaultCombinedPreferenceController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/applications/credentials/DefaultCombinedPreferenceController;Ljava/lang/String;Ljava/lang/CharSequence;)V

    invoke-virtual {p3, p4}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    :cond_2
    instance-of p3, p1, Lcom/android/settings/applications/credentials/PrimaryProviderPreference;

    if-eqz p3, :cond_7

    check-cast p1, Lcom/android/settings/applications/credentials/PrimaryProviderPreference;

    const/4 p3, 0x1

    iput p3, p1, Lcom/android/settingslib/widget/TwoTargetPreference;->mIconSize:I

    new-instance p4, Lcom/android/settings/applications/credentials/DefaultCombinedPreferenceController$1;

    invoke-direct {p4, p0, p5, p6}, Lcom/android/settings/applications/credentials/DefaultCombinedPreferenceController$1;-><init>(Lcom/android/settings/applications/credentials/DefaultCombinedPreferenceController;Ljava/lang/String;Ljava/lang/CharSequence;)V

    iput-object p4, p1, Lcom/android/settings/applications/credentials/PrimaryProviderPreference;->mDelegate:Lcom/android/settings/applications/credentials/DefaultCombinedPreferenceController$1;

    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/2addr p0, p3

    iget-object p4, p1, Lcom/android/settings/applications/credentials/PrimaryProviderPreference;->mOpenButton:Landroid/widget/Button;

    const/4 p5, 0x0

    if-eqz p4, :cond_5

    const/16 p6, 0x8

    if-eqz p0, :cond_3

    move v0, p5

    goto :goto_1

    :cond_3
    move v0, p6

    :goto_1
    invoke-virtual {p4, v0}, Landroid/widget/Button;->setVisibility(I)V

    iget-object p4, p1, Lcom/android/settings/applications/credentials/PrimaryProviderPreference;->mOpenButton:Landroid/widget/Button;

    if-eqz p0, :cond_4

    move p6, p5

    :cond_4
    invoke-virtual {p4, p6}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    iput-boolean p0, p1, Lcom/android/settings/applications/credentials/PrimaryProviderPreference;->mOpenButtonVisible:Z

    if-eqz p2, :cond_6

    goto :goto_2

    :cond_6
    move p3, p5

    :goto_2
    iput-boolean p3, p1, Lcom/android/settings/applications/credentials/PrimaryProviderPreference;->mButtonsCompactMode:Z

    invoke-virtual {p1}, Lcom/android/settings/applications/credentials/PrimaryProviderPreference;->updateButtonFramePadding()V

    :cond_7
    return-void
.end method

.method public final updateState(Landroidx/preference/Preference;)V
    .locals 11

    invoke-super {p0, p1}, Lcom/android/settings/applications/defaultapps/DefaultAppPreferenceController;->updateState(Landroidx/preference/Preference;)V

    invoke-virtual {p0}, Lcom/android/settings/applications/credentials/DefaultCombinedPreferenceController;->getUser()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/settings/applications/credentials/DefaultCombinedPreferenceController;->getAllProviders$1(I)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/applications/credentials/CombinedProviderInfo;->getTopProvider(Ljava/util/List;)Lcom/android/settings/applications/credentials/CombinedProviderInfo;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    iget-object v4, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v4, v1}, Lcom/android/settings/applications/credentials/CombinedProviderInfo;->getDeviceAdminRestrictions(Landroid/content/Context;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/applications/credentials/DefaultCombinedPreferenceController;->mCredentialManager:Landroid/credentials/CredentialManager;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/applications/credentials/DefaultCombinedPreferenceController;->getUser()I

    move-result v2

    const-string v4, "autofill_service"

    invoke-static {v1, v4, v3, v2}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    iget-object v5, p0, Lcom/android/settings/applications/credentials/DefaultCombinedPreferenceController;->mCredentialManager:Landroid/credentials/CredentialManager;

    invoke-static {}, Ljava/util/List;->of()Ljava/util/List;

    move-result-object v6

    invoke-static {}, Ljava/util/List;->of()Ljava/util/List;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/settings/applications/credentials/DefaultCombinedPreferenceController;->getUser()I

    move-result v8

    iget-object v9, p0, Lcom/android/settings/applications/credentials/DefaultCombinedPreferenceController;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v10, Lcom/android/settings/applications/credentials/DefaultCombinedPreferenceController$2;

    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    invoke-virtual/range {v5 .. v10}, Landroid/credentials/CredentialManager;->setEnabledProviders(Ljava/util/List;Ljava/util/List;ILjava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    :goto_0
    move-object v2, v3

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/applications/credentials/DefaultCombinedPreferenceController;->getUser()I

    move-result v1

    if-eqz v2, :cond_6

    iget-object v4, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    if-eqz v4, :cond_6

    invoke-virtual {v2, v4}, Lcom/android/settings/applications/credentials/CombinedProviderInfo;->getAppName(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2}, Lcom/android/settings/applications/credentials/CombinedProviderInfo;->getSettingsSubtitle()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/util/IconDrawableFactory;->newInstance(Landroid/content/Context;)Landroid/util/IconDrawableFactory;

    move-result-object v6

    invoke-virtual {v2}, Lcom/android/settings/applications/credentials/CombinedProviderInfo;->getBrandingService()Landroid/content/pm/ServiceInfo;

    move-result-object v7

    invoke-virtual {v2}, Lcom/android/settings/applications/credentials/CombinedProviderInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    if-eqz v7, :cond_2

    if-eqz v8, :cond_2

    invoke-virtual {v6, v7, v8, v1}, Landroid/util/IconDrawableFactory;->getBadgedIcon(Landroid/content/pm/PackageItemInfo;Landroid/content/pm/ApplicationInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    goto :goto_1

    :cond_2
    move-object v7, v3

    :goto_1
    if-eqz v7, :cond_3

    goto :goto_2

    :cond_3
    if-eqz v8, :cond_4

    invoke-virtual {v6, v8, v1}, Landroid/util/IconDrawableFactory;->getBadgedIcon(Landroid/content/pm/ApplicationInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object v7, v1

    goto :goto_2

    :cond_4
    move-object v7, v3

    :goto_2
    invoke-virtual {v2}, Lcom/android/settings/applications/credentials/CombinedProviderInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object v6, v1

    goto :goto_3

    :cond_5
    move-object v6, v3

    :goto_3
    invoke-virtual {v2}, Lcom/android/settings/applications/credentials/CombinedProviderInfo;->getSettingsActivity()Ljava/lang/String;

    move-result-object v8

    move-object v0, p0

    move-object v1, p1

    move-object v2, v4

    move-object v3, v5

    move-object v4, v7

    move-object v5, v6

    move-object v6, v8

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/applications/credentials/DefaultCombinedPreferenceController;->updatePreferenceForProvider(Landroidx/preference/Preference;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_6
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/applications/credentials/DefaultCombinedPreferenceController;->updatePreferenceForProvider(Landroidx/preference/Preference;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/CharSequence;)V

    :goto_4
    return-void
.end method
