.class public Lcom/android/settings/applications/credentials/DefaultCombinedPicker;
.super Lcom/samsung/android/settings/applications/defaultapps/DefaultCombinedProviderAppPickerFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/credentials/DefaultCombinedPicker$AutofillPickerConfirmationDialogFragment;
    }
.end annotation


# static fields
.field public static final STATUS_LOGGING_PROVIDER:Lcom/samsung/android/settings/logging/status/StatusLogger$StatusLoggingProvider;

.field public static final sMainHandler:Landroid/os/Handler;


# instance fields
.field public mCancelListener:Lcom/android/settings/applications/credentials/DefaultCombinedPicker$$ExternalSyntheticLambda0;

.field public mCredentialManager:Landroid/credentials/CredentialManager;

.field public mIntentSenderUserId:I

.field public final mSettingsPackageMonitor:Lcom/android/settings/applications/credentials/DefaultCombinedPicker$1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/android/settings/applications/credentials/DefaultCombinedPicker;->sMainHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/settings/applications/credentials/DefaultCombinedPicker$3;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/settings/applications/credentials/DefaultCombinedPicker;->STATUS_LOGGING_PROVIDER:Lcom/samsung/android/settings/logging/status/StatusLogger$StatusLoggingProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/applications/defaultapps/DefaultCombinedProviderAppPickerFragment;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/applications/credentials/DefaultCombinedPicker;->mIntentSenderUserId:I

    new-instance v0, Lcom/android/settings/applications/credentials/DefaultCombinedPicker$1;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/credentials/DefaultCombinedPicker$1;-><init>(Lcom/android/settings/applications/credentials/DefaultCombinedPicker;)V

    iput-object v0, p0, Lcom/android/settings/applications/credentials/DefaultCombinedPicker;->mSettingsPackageMonitor:Lcom/android/settings/applications/credentials/DefaultCombinedPicker$1;

    return-void
.end method


# virtual methods
.method public final bindPreferenceExtra(Lcom/android/settingslib/widget/SelectorWithWidgetPreference;Ljava/lang/String;Lcom/android/settingslib/widget/CandidateInfo;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/samsung/android/settings/applications/defaultapps/DefaultCombinedProviderAppPickerFragment;->bindPreferenceExtra(Lcom/android/settingslib/widget/SelectorWithWidgetPreference;Ljava/lang/String;Lcom/android/settingslib/widget/CandidateInfo;Ljava/lang/String;)V

    instance-of p2, p3, Lcom/android/settings/applications/credentials/DefaultCombinedPicker$CredentialManagerDefaultAppInfo;

    const-string p4, "DefaultCombinedPicker"

    if-nez p2, :cond_0

    const-string p0, "Candidate info should be a subclass of CredentialManagerDefaultAppInfo"

    invoke-static {p4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    instance-of p2, p1, Lcom/android/settingslib/RestrictedSelectorWithWidgetPreference;

    if-nez p2, :cond_1

    const-string p0, "Preference should be a subclass of RestrictedSelectorWithWidgetPreference"

    invoke-static {p4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    check-cast p3, Lcom/android/settings/applications/credentials/DefaultCombinedPicker$CredentialManagerDefaultAppInfo;

    check-cast p1, Lcom/android/settingslib/RestrictedSelectorWithWidgetPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p0}, Lcom/android/settings/applications/credentials/DefaultCombinedPicker;->getUser()I

    move-result p0

    iget-object p3, p3, Lcom/android/settings/applications/credentials/DefaultCombinedPicker$CredentialManagerDefaultAppInfo;->mCombinedProviderInfo:Lcom/android/settings/applications/credentials/CombinedProviderInfo;

    invoke-virtual {p3, p2, p0}, Lcom/android/settings/applications/credentials/CombinedProviderInfo;->getDeviceAdminRestrictions(Landroid/content/Context;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p0

    iget-object p2, p1, Lcom/android/settingslib/RestrictedSelectorWithWidgetPreference;->mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

    invoke-virtual {p2, p0}, Lcom/android/settingslib/RestrictedPreferenceHelper;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {p1}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_2
    return-void
.end method

.method public final createPreference()Lcom/android/settingslib/widget/SelectorWithWidgetPreference;
    .locals 1

    new-instance v0, Lcom/android/settingslib/RestrictedSelectorWithWidgetPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/settingslib/RestrictedSelectorWithWidgetPreference;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public final getAllProviders(I)Ljava/util/List;
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/service/autofill/AutofillServiceInfo;->getAvailableServices(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/applications/credentials/DefaultCombinedPicker;->mCredentialManager:Landroid/credentials/CredentialManager;

    if-nez v2, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Landroid/credentials/CredentialManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/credentials/CredentialManager;

    iput-object v2, p0, Lcom/android/settings/applications/credentials/DefaultCombinedPicker;->mCredentialManager:Landroid/credentials/CredentialManager;

    :cond_0
    iget-object p0, p0, Lcom/android/settings/applications/credentials/DefaultCombinedPicker;->mCredentialManager:Landroid/credentials/CredentialManager;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_1

    const/4 v3, 0x3

    invoke-virtual {p0, p1, v3}, Landroid/credentials/CredentialManager;->getCredentialProviderServices(II)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_1
    const-string p0, "DefaultCombinedPicker"

    invoke-static {v0, p1, p0}, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;->getSelectedAutofillProvider(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, v2, p0}, Lcom/android/settings/applications/credentials/CombinedProviderInfo;->buildMergedList(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getCandidates()Ljava/util/List;
    .locals 12

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/settings/applications/credentials/DefaultCombinedPicker;->getUser()I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/android/settings/applications/credentials/DefaultCombinedPicker;->getAllProviders(I)Ljava/util/List;

    move-result-object v0

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/settings/applications/credentials/CombinedProviderInfo;

    invoke-virtual {v5}, Lcom/android/settings/applications/credentials/CombinedProviderInfo;->getBrandingService()Landroid/content/pm/ServiceInfo;

    move-result-object v4

    invoke-virtual {v5}, Lcom/android/settings/applications/credentials/CombinedProviderInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v10

    if-eqz v4, :cond_1

    new-instance v10, Lcom/android/settings/applications/credentials/DefaultCombinedPicker$CredentialManagerDefaultAppInfo;

    iget-object v2, p0, Lcom/samsung/android/settings/applications/defaultapps/DefaultCombinedProviderAppPickerFragment;->mPm:Landroid/content/pm/PackageManager;

    move-object v0, v10

    move-object v1, v6

    move v3, v7

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/applications/credentials/DefaultCombinedPicker$CredentialManagerDefaultAppInfo;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;ILandroid/content/pm/PackageItemInfo;Lcom/android/settings/applications/credentials/CombinedProviderInfo;)V

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    if-eqz v10, :cond_0

    new-instance v11, Lcom/android/settings/applications/credentials/DefaultCombinedPicker$CredentialManagerDefaultAppInfo;

    iget-object v2, p0, Lcom/samsung/android/settings/applications/defaultapps/DefaultCombinedProviderAppPickerFragment;->mPm:Landroid/content/pm/PackageManager;

    move-object v0, v11

    move-object v1, v6

    move v3, v7

    move-object v4, v10

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/applications/credentials/DefaultCombinedPicker$CredentialManagerDefaultAppInfo;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;ILandroid/content/pm/PackageItemInfo;Lcom/android/settings/applications/credentials/CombinedProviderInfo;)V

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v8
.end method

.method public final getConfirmationMessage(Lcom/android/settingslib/widget/CandidateInfo;)Ljava/lang/CharSequence;
    .locals 2

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/android/settingslib/widget/CandidateInfo;->loadLabel()Ljava/lang/CharSequence;

    move-result-object v0

    instance-of v1, p1, Lcom/android/settings/applications/credentials/DefaultCombinedPicker$CredentialManagerDefaultAppInfo;

    if-eqz v1, :cond_1

    check-cast p1, Lcom/android/settings/applications/credentials/DefaultCombinedPicker$CredentialManagerDefaultAppInfo;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p1, p1, Lcom/android/settings/applications/credentials/DefaultCombinedPicker$CredentialManagerDefaultAppInfo;->mCombinedProviderInfo:Lcom/android/settings/applications/credentials/CombinedProviderInfo;

    invoke-virtual {p1, v0}, Lcom/android/settings/applications/credentials/CombinedProviderInfo;->getAppName(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {v0}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const v0, 0x7f140518

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p0

    return-object p0
.end method

.method public final getConfirmationTitle(Lcom/android/settingslib/widget/CandidateInfo;)Ljava/lang/CharSequence;
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const p1, 0x7f142109

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final getDefaultKey()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/applications/credentials/DefaultCombinedPicker;->getUser()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/credentials/DefaultCombinedPicker;->getAllProviders(I)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/applications/credentials/CombinedProviderInfo;->getTopProvider(Ljava/util/List;)Lcom/android/settings/applications/credentials/CombinedProviderInfo;

    move-result-object v1

    const-string v2, ""

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v1, p0, v0}, Lcom/android/settings/applications/credentials/CombinedProviderInfo;->getDeviceAdminRestrictions(Landroid/content/Context;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object v2

    :cond_0
    invoke-virtual {v1}, Lcom/android/settings/applications/credentials/CombinedProviderInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    return-object p0

    :cond_1
    return-object v2
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x318

    return p0
.end method

.method public final getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f17008a

    return p0
.end method

.method public getUser()I
    .locals 0

    iget p0, p0, Lcom/android/settings/applications/credentials/DefaultCombinedPicker;->mIntentSenderUserId:I

    if-ltz p0, :cond_0

    return p0

    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p0

    return p0
.end method

.method public final newConfirmationDialogFragment(Ljava/lang/String;Ljava/lang/CharSequence;)Lcom/samsung/android/settings/applications/defaultapps/DefaultCombinedProviderAppPickerFragment$ConfirmationDialogFragment;
    .locals 2

    new-instance v0, Lcom/android/settings/applications/credentials/DefaultCombinedPicker$AutofillPickerConfirmationDialogFragment;

    invoke-direct {v0}, Lcom/android/settings/applications/credentials/DefaultCombinedPicker$AutofillPickerConfirmationDialogFragment;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, p2, v1}, Lcom/samsung/android/settings/applications/defaultapps/DefaultCombinedProviderAppPickerFragment$ConfirmationDialogFragment;->init(Lcom/samsung/android/settings/applications/defaultapps/DefaultCombinedProviderAppPickerFragment;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "package_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/settings/applications/credentials/DefaultCombinedPicker$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/android/settings/applications/credentials/DefaultCombinedPicker$$ExternalSyntheticLambda0;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    iput-object v0, p0, Lcom/android/settings/applications/credentials/DefaultCombinedPicker;->mCancelListener:Lcom/android/settings/applications/credentials/DefaultCombinedPicker$$ExternalSyntheticLambda0;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    iput v0, p0, Lcom/android/settings/applications/credentials/DefaultCombinedPicker;->mIntentSenderUserId:I

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/applications/credentials/DefaultCombinedPicker;->getUser()I

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/settings/applications/credentials/DefaultCombinedPicker;->mSettingsPackageMonitor:Lcom/android/settings/applications/credentials/DefaultCombinedPicker$1;

    invoke-virtual {p1}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/applications/credentials/DefaultCombinedPicker;->update$7$1()V

    const-string p0, "ST8502"

    invoke-static {p0}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;)V

    return-void
.end method

.method public final onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/credentials/DefaultCombinedPicker;->mSettingsPackageMonitor:Lcom/android/settings/applications/credentials/DefaultCombinedPicker$1;

    invoke-virtual {v0}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onDestroy()V

    return-void
.end method

.method public final setDefaultKey(Ljava/lang/String;)Z
    .locals 6

    invoke-virtual {p0}, Lcom/android/settings/applications/credentials/DefaultCombinedPicker;->getUser()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/credentials/DefaultCombinedPicker;->getAllProviders(I)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/credentials/CombinedProviderInfo;

    invoke-virtual {v1}, Lcom/android/settings/applications/credentials/CombinedProviderInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    const/4 v0, 0x1

    if-nez v1, :cond_2

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v2, p1}, Lcom/android/settings/applications/credentials/DefaultCombinedPicker;->setProviders(Ljava/lang/String;Ljava/util/List;)V

    return v0

    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, v1, Lcom/android/settings/applications/credentials/CombinedProviderInfo;->mCredentialProviderInfos:Ljava/util/List;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/credentials/CredentialProviderInfo;

    invoke-virtual {v5}, Landroid/credentials/CredentialProviderInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    iget-object v1, v1, Lcom/android/settings/applications/credentials/CombinedProviderInfo;->mAutofillServiceInfo:Landroid/service/autofill/AutofillServiceInfo;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/service/autofill/AutofillServiceInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    :cond_4
    invoke-virtual {p0, v2, v3}, Lcom/android/settings/applications/credentials/DefaultCombinedPicker;->setProviders(Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "package_name"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    if-eqz p1, :cond_5

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p1, -0x1

    goto :goto_2

    :cond_5
    const/4 p1, 0x0

    :goto_2
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_6
    return v0
.end method

.method public final setProviders(Ljava/lang/String;Ljava/util/List;)V
    .locals 10

    invoke-virtual {p0}, Lcom/android/settings/applications/credentials/DefaultCombinedPicker;->getDefaultKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const-string v1, "DefaultCombinedPicker"

    const-string v2, "com.samsung.android.samsungpassautofill"

    const/4 v3, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/applications/credentials/DefaultCombinedPicker;->getDefaultKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v3

    goto :goto_1

    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "previous top provider is "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/applications/credentials/DefaultCombinedPicker;->getDefaultKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    :goto_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    move-object v4, p2

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_3

    invoke-static {}, Landroid/service/autofill/Flags;->autofillCredmanDevIntegration()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;->getCredentialAutofillService(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_2
    const-string p1, "credential-provider"

    :cond_3
    :goto_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "autofill_service"

    invoke-virtual {p0}, Lcom/android/settings/applications/credentials/DefaultCombinedPicker;->getUser()I

    move-result v5

    invoke-static {v1, v4, p1, v5}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/android/settings/applications/credentials/DefaultCombinedPicker;->mCredentialManager:Landroid/credentials/CredentialManager;

    if-nez v1, :cond_4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v4, Landroid/credentials/CredentialManager;

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/credentials/CredentialManager;

    iput-object v1, p0, Lcom/android/settings/applications/credentials/DefaultCombinedPicker;->mCredentialManager:Landroid/credentials/CredentialManager;

    :cond_4
    iget-object v4, p0, Lcom/android/settings/applications/credentials/DefaultCombinedPicker;->mCredentialManager:Landroid/credentials/CredentialManager;

    if-nez v4, :cond_5

    return-void

    :cond_5
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/applications/credentials/DefaultCombinedPicker;->getUser()I

    move-result v1

    const/4 v5, 0x3

    invoke-virtual {v4, v1, v5}, Landroid/credentials/CredentialManager;->getCredentialProviderServices(II)Ljava/util/List;

    move-result-object v1

    if-eqz v0, :cond_7

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_6
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/credentials/CredentialProviderInfo;

    invoke-virtual {v7}, Landroid/credentials/CredentialProviderInfo;->isEnabled()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-virtual {v7}, Landroid/credentials/CredentialProviderInfo;->isPrimary()Z

    move-result v7

    if-nez v7, :cond_6

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_7
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/credentials/CredentialProviderInfo;

    invoke-virtual {v5}, Landroid/credentials/CredentialProviderInfo;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-virtual {v5}, Landroid/credentials/CredentialProviderInfo;->isPrimary()Z

    move-result v7

    if-nez v7, :cond_9

    invoke-virtual {v5}, Landroid/credentials/CredentialProviderInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_9
    if-eqz v0, :cond_8

    invoke-virtual {v5}, Landroid/credentials/CredentialProviderInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v7

    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    const/4 v7, 0x4

    if-ge v3, v7, :cond_8

    invoke-virtual {v5}, Landroid/credentials/CredentialProviderInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_a
    invoke-virtual {v6, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_b

    move-object p1, p2

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    :cond_b
    invoke-virtual {p0}, Lcom/android/settings/applications/credentials/DefaultCombinedPicker;->getUser()I

    move-result v7

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v8

    new-instance v9, Lcom/android/settings/applications/credentials/DefaultCombinedPicker$2;

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    move-object v5, p2

    invoke-virtual/range {v4 .. v9}, Landroid/credentials/CredentialManager;->setEnabledProviders(Ljava/util/List;Ljava/util/List;ILjava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    return-void
.end method

.method public final shouldShowItemNone()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final update$7$1()V
    .locals 5

    invoke-virtual {p0}, Lcom/samsung/android/settings/applications/defaultapps/DefaultCombinedProviderAppPickerFragment;->updateCandidates()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "autofill_service_search_uri"

    invoke-virtual {p0}, Lcom/android/settings/applications/credentials/DefaultCombinedPicker;->getUser()I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v3, v2

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    new-instance v3, Landroidx/preference/Preference;

    invoke-direct {v3, v0}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    new-instance v4, Lcom/android/settings/applications/credentials/DefaultCombinedPicker$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0, v0, v1}, Lcom/android/settings/applications/credentials/DefaultCombinedPicker$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/applications/credentials/DefaultCombinedPicker;Landroid/content/Context;Landroid/content/Intent;)V

    invoke-virtual {v3, v4}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    const v0, 0x7f142108

    invoke-virtual {v3, v0}, Landroidx/preference/Preference;->setTitle(I)V

    const v0, 0x7f0d094f

    invoke-virtual {v3, v0}, Landroidx/preference/Preference;->setLayoutResource(I)V

    const v0, 0x7f0d095b

    invoke-virtual {v3, v0}, Landroidx/preference/Preference;->setWidgetLayoutResource(I)V

    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Landroidx/preference/Preference;->setIconSpaceReserved(Z)V

    const v0, 0x7ffffffe

    invoke-virtual {v3, v0}, Landroidx/preference/Preference;->setOrder(I)V

    invoke-virtual {v3}, Landroidx/preference/Preference;->setPersistent()V

    :goto_0
    if-eqz v3, :cond_1

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    :cond_1
    new-instance v0, Lcom/samsung/android/settings/widget/SecUnclickablePreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/widget/SecUnclickablePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const v1, 0x7f1427b8

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(I)V

    const-string v1, "description"

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOrder(I)V

    const/4 v1, 0x1

    iput v1, v0, Lcom/samsung/android/settings/widget/SecUnclickablePreference;->mPositionMode:I

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    return-void
.end method
