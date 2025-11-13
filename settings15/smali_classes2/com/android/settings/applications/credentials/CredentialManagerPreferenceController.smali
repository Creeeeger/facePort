.class public Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController$NewProviderConfirmationDialogFragment;,
        Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController$ErrorDialogFragment;
    }
.end annotation


# static fields
.field public static final ADD_SERVICE_DEVICE_CONFIG:Ljava/lang/String; = "credential_manager_service_search_uri"

.field private static final ALTERNATE_INTENT:Ljava/lang/String; = "android.settings.SYNC_SETTINGS"

.field public static final AUTOFILL_CREDMAN_ONLY_PROVIDER_PLACEHOLDER:Ljava/lang/String; = "credential-provider"

.field public static final MAX_ADDITIONAL_PROVIDER_COUNT:I = 0x4

.field private static final MAX_SELECTABLE_PROVIDERS:I = 0x5

.field private static final PRIMARY_INTENT:Ljava/lang/String; = "android.settings.CREDENTIAL_PROVIDER"

.field private static final TAG:Ljava/lang/String; = "CredentialManagerPreferenceController"


# instance fields
.field private final mCredentialManager:Landroid/credentials/CredentialManager;

.field private mDelegate:Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController$Delegate;

.field private final mEnabledPackageNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private mFlagOverrideForTest:Ljava/lang/String;

.field private mFragmentManager:Landroidx/fragment/app/FragmentManager;

.field private final mHandler:Landroid/os/Handler;

.field private final mIconResizer:Lcom/android/settings/applications/credentials/ImageUtils$IconResizer;

.field private mIsWorkProfile:Z

.field private final mPendingServiceInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/ServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mPm:Landroid/content/pm/PackageManager;

.field private mPreferenceGroup:Landroidx/preference/PreferenceGroup;

.field private mPreferenceScreen:Landroidx/preference/PreferenceScreen;

.field private final mPrefs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;",
            ">;"
        }
    .end annotation
.end field

.field private mServiceId:I

.field private final mServices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/credentials/CredentialProviderInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mSettingsContentObserver:Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController$SettingContentObserver;

.field private final mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field private mSimulateConnectedForTests:Z

.field private mSimulateHiddenForTests:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$2_v4T72_-2NymaIOREjMPeTPV90(Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;Landroid/content/Context;Landroid/content/Intent;Landroidx/preference/Preference;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;->lambda$newAddServicePreference$0(Landroid/content/Context;Landroid/content/Intent;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPrefs(Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;->mPrefs:Ljava/util/Map;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmServiceId(Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;)I
    .locals 0

    iget p0, p0, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;->mServiceId:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmServiceId(Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;I)V
    .locals 0

    iput p1, p0, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;->mServiceId:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhasProviderLimitBeenReached(Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;)Z
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;->hasProviderLimitBeenReached()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mupdateFromExternal(Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;->updateFromExternal()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;->mPrefs:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;->mPendingServiceInfos:Ljava/util/List;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    iput-object v1, p0, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;->mDelegate:Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController$Delegate;

    iput-object v1, p0, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;->mFlagOverrideForTest:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;->mSimulateHiddenForTests:Ljava/util/Optional;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;->mIsWorkProfile:Z

    iput-boolean v1, p0, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;->mSimulateConnectedForTests:Z

    const/4 v2, 0x1

    iput v2, p0, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;->mServiceId:I

    new-instance v2, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController$6;

    invoke-direct {v2, p0}, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController$6;-><init>(Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;)V

    iput-object v2, p0, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;->mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;->mPm:Landroid/content/pm/PackageManager;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;->mServices:Ljava/util/List;

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, p0, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;->mEnabledPackageNames:Ljava/util/Set;

    iget-object v3, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;->mExecutor:Ljava/util/concurrent/Executor;

    const-string v3, "credentials_test"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;->getCredentialManager(Landroid/content/Context;Z)Landroid/credentials/CredentialManager;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;->mCredentialManager:Landroid/credentials/CredentialManager;

    new-instance p2, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController$SettingContentObserver;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-direct {p2, p0, v0, v3}, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController$SettingContentObserver;-><init>(Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;Landroid/os/Handler;Landroid/content/ContentResolver;)V

    iput-object p2, p0, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;->mSettingsContentObserver:Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController$SettingContentObserver;

    invoke-virtual {p2}, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController$SettingContentObserver;->register()V

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-virtual {v2, p1, p2, v1}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    invoke-static {p1}, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;->getResizer(Landroid/content/Context;)Lcom/android/settings/applications/credentials/ImageUtils$IconResizer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;->mIconResizer:Lcom/android/settings/applications/credentials/ImageUtils$IconResizer;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private addProviderPreference(Landroid/content/Context;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;
    .locals 1

    new-instance p5, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    invoke-direct {p5, p1}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;->mEnabledPackageNames:Ljava/util/Set;

    invoke-interface {v0, p4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p5, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    invoke-virtual {p5, p2}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    const p2, 0x7f0d0520

    invoke-virtual {p5, p2}, Landroidx/preference/Preference;->setLayoutResource(I)V

    const/4 p2, 0x1

    invoke-virtual {p5, p2}, Landroidx/preference/Preference;->setIconSpaceReserved(Z)V

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/credentials/flags/Flags;->newSettingsUi()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p0, p3}, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;->processIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p5, p2}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p5, p3}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    :goto_0
    iget-object p2, p5, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;->mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

    invoke-virtual {p2, p7}, Lcom/android/settingslib/RestrictedPreferenceHelper;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p5}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_2
    new-instance p2, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController$1;

    invoke-direct {p2, p0, p4, p6}, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController$1;-><init>(Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;Ljava/lang/String;Ljava/lang/CharSequence;)V

    invoke-virtual {p5, p2}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    new-instance p2, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController$2;

    invoke-direct {p2, p0, p1, p4}, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController$2;-><init>(Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p5, p2}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-object p5
.end method

.method private buildComponentNameSet(Ljava/util/List;Z)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/credentials/CredentialProviderInfo;",
            ">;Z)",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/credentials/CredentialProviderInfo;

    if-eqz p2, :cond_0

    invoke-virtual {v0}, Landroid/credentials/CredentialProviderInfo;->isPrimary()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/credentials/CredentialProviderInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method private commitEnabledPackages()V
    .locals 7

    iget-object v0, p0, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;->mCredentialManager:Landroid/credentials/CredentialManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;->getEnabledSettings()Ljava/util/List;

    move-result-object v3

    iget-object v1, p0, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;->mServices:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/credentials/CredentialProviderInfo;

    invoke-virtual {v2}, Landroid/credentials/CredentialProviderInfo;->isPrimary()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v2}, Landroid/credentials/CredentialProviderInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;->mCredentialManager:Landroid/credentials/CredentialManager;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0}, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;->getUser()I

    move-result v4

    iget-object v5, p0, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v6, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController$3;

    invoke-direct {v6, p0}, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController$3;-><init>(Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;)V

    invoke-virtual/range {v1 .. v6}, Landroid/credentials/CredentialManager;->setEnabledProviders(Ljava/util/List;Ljava/util/List;ILjava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    return-void
.end method

.method public static getCredentialAutofillService(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x1040316

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "Failed to find credential autofill service."

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string p0, ""

    return-object p0
.end method

.method private getCredentialManager(Landroid/content/Context;Z)Landroid/credentials/CredentialManager;
    .locals 0

    const/4 p0, 0x0

    if-eqz p2, :cond_0

    return-object p0

    :cond_0
    const-string p2, "credential"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-static {p1}, Landroid/credentials/CredentialManager;->isServiceEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    check-cast p2, Landroid/credentials/CredentialManager;

    return-object p2

    :cond_1
    return-object p0
.end method

.method private getProviders()Landroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/util/List<",
            "Lcom/android/settings/applications/credentials/CombinedProviderInfo;",
            ">;",
            "Lcom/android/settings/applications/credentials/CombinedProviderInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;->getUser()I

    move-result v1

    const-string v2, "CredentialManagerPreferenceController"

    invoke-static {v0, v1, v2}, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;->getSelectedAutofillProvider(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;->getUser()I

    move-result v2

    invoke-static {v1, v2}, Landroid/service/autofill/AutofillServiceInfo;->getAvailableServices(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v1

    iget-object p0, p0, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;->mServices:Ljava/util/List;

    invoke-static {v1, p0, v0}, Lcom/android/settings/applications/credentials/CombinedProviderInfo;->buildMergedList(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    new-instance v0, Landroid/util/Pair;

    invoke-static {p0}, Lcom/android/settings/applications/credentials/CombinedProviderInfo;->getTopProvider(Ljava/util/List;)Lcom/android/settings/applications/credentials/CombinedProviderInfo;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method private static getResizer(Landroid/content/Context;)Lcom/android/settings/applications/credentials/ImageUtils$IconResizer;
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const/high16 v0, 0x1050000

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    new-instance v1, Lcom/android/settings/applications/credentials/ImageUtils$IconResizer;

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    invoke-direct {v1, v0, v0, p0}, Lcom/android/settings/applications/credentials/ImageUtils$IconResizer;-><init>(IILandroid/util/DisplayMetrics;)V

    return-object v1
.end method

.method public static getSelectedAutofillProvider(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "autofill_service"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    const-string v0, "credential-provider"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_1

    return-object v1

    :cond_1
    invoke-static {}, Landroid/service/autofill/Flags;->autofillCredmanDevIntegration()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0, p2}, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;->getCredentialAutofillService(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    move-object p0, v1

    :goto_0
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    return-object v1

    :cond_3
    return-object p1
.end method

.method private getWorkProfileUserHandle()Landroid/os/UserHandle;
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;->mIsWorkProfile:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/Utils;->getManagedProfile(Landroid/os/UserManager;)Landroid/os/UserHandle;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private handleIntent()V
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;->mPendingServiceInfos:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;->mPendingServiceInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ServiceInfo;

    iget-object v1, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string v1, ""

    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-void

    :cond_2
    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;->newNewProviderConfirmationDialogFragment(Ljava/lang/String;Ljava/lang/CharSequence;Z)Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController$NewProviderConfirmationDialogFragment;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object p0, p0, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    if-nez p0, :cond_3

    goto :goto_1

    :cond_3
    const-string v1, "CredentialManagerDialogFragment"

    invoke-virtual {v0, p0, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-void
.end method

.method private hasProviderLimitBeenReached()Z
    .locals 0

    iget-object p0, p0, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;->mEnabledPackageNames:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result p0

    invoke-static {p0}, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;->hasProviderLimitBeenReached(I)Z

    move-result p0

    return p0
.end method

.method public static hasProviderLimitBeenReached(I)Z
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const/4 v0, 0x1

    add-int/2addr p0, v0

    const/4 v1, 0x5

    if-lt p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private synthetic lambda$newAddServicePreference$0(Landroid/content/Context;Landroid/content/Intent;Landroidx/preference/Preference;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;->getUser()I

    move-result p0

    invoke-static {p0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const/4 p0, 0x1

    return p0
.end method

.method private maybeUpdateListOfPrefs(Landroid/util/Pair;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Ljava/util/List<",
            "Lcom/android/settings/applications/credentials/CombinedProviderInfo;",
            ">;",
            "Lcom/android/settings/applications/credentials/CombinedProviderInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;->buildPreferenceList(Landroid/content/Context;Landroid/util/Pair;)Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;->mPrefs:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;->mPrefs:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    iget-object v0, p0, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;->mPrefs:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private maybeUpdatePreferenceVisibility(Landroid/util/Pair;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Ljava/util/List<",
            "Lcom/android/settings/applications/credentials/CombinedProviderInfo;",
            ">;",
            "Lcom/android/settings/applications/credentials/CombinedProviderInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;->getAvailabilityStatus()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;->isHiddenDueToNoProviderSet(Landroid/util/Pair;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    iget-object v0, p0, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    iget-object p0, p0, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    iget-object v0, p0, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    iget-object p0, p0, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method private newErrorDialogFragment()Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController$ErrorDialogFragment;
    .locals 1

    new-instance p0, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController$ErrorDialogFragment;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController$CredentialManagerDialogFragment;-><init>(Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController$DialogHost;)V

    return-object v0
.end method

.method private newNewProviderConfirmationDialogFragment(Ljava/lang/String;Ljava/lang/CharSequence;Z)Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController$NewProviderConfirmationDialogFragment;
    .locals 1

    new-instance v0, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController$4;

    invoke-direct {v0, p0, p1, p3}, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController$4;-><init>(Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;Ljava/lang/String;Z)V

    new-instance p0, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController$NewProviderConfirmationDialogFragment;

    invoke-direct {p0, v0}, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController$CredentialManagerDialogFragment;-><init>(Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController$DialogHost;)V

    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    const-string v0, "package_name"

    invoke-virtual {p3, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "app_name"

    invoke-virtual {p3, p1, p2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    invoke-virtual {p0, p3}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object p0
.end method

.method private setActivityResult(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;->mDelegate:Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController$Delegate;

    if-nez p0, :cond_0

    const-string p0, "CredentialManagerPreferenceController"

    const-string p1, "Missing delegate"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-interface {p0, p1}, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController$Delegate;->setActivityResult(I)V

    return-void
.end method

.method private update()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;->mCredentialManager:Landroid/credentials/CredentialManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;->getUser()I

    move-result v1

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/credentials/CredentialManager;->getCredentialProviderServices(II)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;->setAvailableServices(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method private updateFromExternal()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;->mCredentialManager:Landroid/credentials/CredentialManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;->getUser()I

    move-result v1

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/credentials/CredentialManager;->getCredentialProviderServices(II)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;->setAvailableServices(Ljava/util/List;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    :cond_1
    iget-object p0, p0, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;->mDelegate:Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController$Delegate;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController$Delegate;->forceDelegateRefresh()V

    :cond_2
    return-void
.end method


# virtual methods
.method public buildPreferenceList(Landroid/content/Context;Landroid/util/Pair;)Ljava/util/Map;
    .locals 12
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/util/Pair<",
            "Ljava/util/List<",
            "Lcom/android/settings/applications/credentials/CombinedProviderInfo;",
            ">;",
            "Lcom/android/settings/applications/credentials/CombinedProviderInfo;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;",
            ">;"
        }
    .end annotation

    iget-object v0, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/android/settings/applications/credentials/CombinedProviderInfo;

    iget-object v1, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-virtual {p0, p2}, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;->isHiddenDueToNoProviderSet(Landroid/util/Pair;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;->forceDelegateRefresh()V

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-object p0

    :cond_0
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/applications/credentials/CombinedProviderInfo;

    invoke-virtual {v2}, Lcom/android/settings/applications/credentials/CombinedProviderInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/settings/applications/credentials/CombinedProviderInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v0}, Lcom/android/settings/applications/credentials/CombinedProviderInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    iget-object v4, v2, Lcom/android/settings/applications/credentials/CombinedProviderInfo;->mCredentialProviderInfos:Ljava/util/List;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;->getUser()I

    move-result v4

    invoke-static {p1}, Landroid/util/IconDrawableFactory;->newInstance(Landroid/content/Context;)Landroid/util/IconDrawableFactory;

    move-result-object v5

    invoke-virtual {v2}, Lcom/android/settings/applications/credentials/CombinedProviderInfo;->getBrandingService()Landroid/content/pm/ServiceInfo;

    move-result-object v6

    invoke-virtual {v2}, Lcom/android/settings/applications/credentials/CombinedProviderInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    const/4 v8, 0x0

    if-eqz v6, :cond_3

    if-eqz v7, :cond_3

    invoke-virtual {v5, v6, v7, v4}, Landroid/util/IconDrawableFactory;->getBadgedIcon(Landroid/content/pm/PackageItemInfo;Landroid/content/pm/ApplicationInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    goto :goto_1

    :cond_3
    move-object v6, v8

    :goto_1
    if-eqz v6, :cond_4

    move-object v7, v6

    goto :goto_2

    :cond_4
    if-eqz v7, :cond_5

    invoke-virtual {v5, v7, v4}, Landroid/util/IconDrawableFactory;->getBadgedIcon(Landroid/content/pm/ApplicationInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    move-object v7, v4

    goto :goto_2

    :cond_5
    move-object v7, v8

    :goto_2
    invoke-virtual {v2, p1}, Lcom/android/settings/applications/credentials/CombinedProviderInfo;->getAppName(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v4

    if-nez v4, :cond_6

    const-string v4, ""

    :cond_6
    move-object v6, v4

    invoke-virtual {v2}, Lcom/android/settings/applications/credentials/CombinedProviderInfo;->getSettingsSubtitle()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2}, Lcom/android/settings/applications/credentials/CombinedProviderInfo;->getSettingsActivity()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0}, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;->getUser()I

    move-result v4

    invoke-virtual {v2, p1, v4}, Lcom/android/settings/applications/credentials/CombinedProviderInfo;->getDeviceAdminRestrictions(Landroid/content/Context;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v11

    move-object v4, p0

    move-object v5, p1

    move-object v8, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;->addProviderPreference(Landroid/content/Context;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    move-result-object v2

    invoke-virtual {p2, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_7
    invoke-virtual {p0}, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;->forceDelegateRefresh()V

    return-object p2
.end method

.method public completeEnableProviderDialogBox(ILjava/lang/String;Z)I
    .locals 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_4

    invoke-virtual {p0, p2}, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;->togglePackageNameEnabled(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;->mPrefs:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;->mPrefs:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;->newErrorDialogFragment()Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController$ErrorDialogFragment;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p2, p0, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    const-string v2, "CredentialManagerDialogFragment"

    invoke-virtual {p1, p2, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    :goto_0
    return v0

    :cond_4
    :goto_1
    if-eq v0, v1, :cond_5

    if-nez p3, :cond_6

    :cond_5
    invoke-direct {p0, v0}, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;->setActivityResult(I)V

    :cond_6
    return v0
.end method

.method public createPreference(Landroid/content/Context;Landroid/credentials/CredentialProviderInfo;)Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;
    .locals 9
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    invoke-virtual {p2, p1}, Landroid/credentials/CredentialProviderInfo;->getLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    move-object v3, v0

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v0}, Landroid/credentials/CredentialProviderInfo;->getServiceIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {p2}, Landroid/credentials/CredentialProviderInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v0

    iget-object v5, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/credentials/CredentialProviderInfo;->getSettingsSubtitle()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {p2}, Landroid/credentials/CredentialProviderInfo;->getSettingsActivity()Ljava/lang/CharSequence;

    move-result-object v7

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v8}, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;->addProviderPreference(Landroid/content/Context;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    move-result-object p0

    return-object p0
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, "CredentialManagerPreferenceController"

    const-string p1, "Skipping displayPreference because key is empty"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    if-nez v1, :cond_1

    iput-object p1, p0, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceGroup;

    iput-object p1, p0, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    :cond_1
    invoke-direct {p0}, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;->getProviders()Landroid/util/Pair;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;->maybeUpdateListOfPrefs(Landroid/util/Pair;)V

    invoke-direct {p0, p1}, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;->maybeUpdatePreferenceVisibility(Landroid/util/Pair;)V

    return-void
.end method

.method public forceDelegateRefresh()V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;->mDelegate:Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController$Delegate;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController$Delegate;->forceDelegateRefresh()V

    :cond_0
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x3

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;->hasNonPrimaryServices()Z

    move-result v0

    const/4 v1, 0x2

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-boolean v0, p0, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;->mIsWorkProfile:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;->getWorkProfileUserHandle()Landroid/os/UserHandle;

    move-result-object p0

    if-nez p0, :cond_2

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getBackupKeys()Ljava/util/List;
    .locals 0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public getEnabledProviders()Ljava/util/Set;
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;->mEnabledPackageNames:Ljava/util/Set;

    return-object p0
.end method

.method public getEnabledSettings()Ljava/util/List;
    .locals 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;->mServices:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/credentials/CredentialProviderInfo;

    invoke-virtual {v2}, Landroid/credentials/CredentialProviderInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;->mEnabledPackageNames:Ljava/util/Set;

    invoke-virtual {v2}, Landroid/credentials/CredentialProviderInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-interface {v4, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getLaunchIntent()Landroid/content/Intent;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getSliceHighlightMenuRes()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getUser()I
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;->mIsWorkProfile:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;->getWorkProfileUserHandle()Landroid/os/UserHandle;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p0

    return p0

    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p0

    return p0
.end method

.method public bridge synthetic getValue()Lcom/samsung/android/settings/cube/ControlValue;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public hasNonPrimaryServices()Z
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;->mServices:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/credentials/CredentialProviderInfo;

    invoke-virtual {v0}, Landroid/credentials/CredentialProviderInfo;->isPrimary()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic ignoreUserInteraction()V
    .locals 0

    return-void
.end method

.method public init(Lcom/android/settings/dashboard/DashboardFragment;Landroidx/fragment/app/FragmentManager;Landroid/content/Intent;Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController$Delegate;Z)V
    .locals 0

    invoke-virtual {p1}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    iput-object p2, p0, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    iput-boolean p5, p0, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;->mIsWorkProfile:Z

    invoke-virtual {p0, p4}, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;->setDelegate(Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController$Delegate;)V

    invoke-virtual {p0, p3}, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;->verifyReceivedIntent(Landroid/content/Intent;)Z

    iget-object p1, p0, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;->mSettingsContentObserver:Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController$SettingContentObserver;

    iget-object p2, p1, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController$SettingContentObserver;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p2, p1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object p0, p0, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;->mSettingsContentObserver:Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController$SettingContentObserver;

    invoke-virtual {p0}, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController$SettingContentObserver;->register()V

    return-void
.end method

.method public isConnected()Z
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;->mCredentialManager:Landroid/credentials/CredentialManager;

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;->mSimulateConnectedForTests:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public bridge synthetic isControllable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isHiddenDueToNoProviderSet(Landroid/util/Pair;)Z
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Ljava/util/List<",
            "Lcom/android/settings/applications/credentials/CombinedProviderInfo;",
            ">;",
            "Lcom/android/settings/applications/credentials/CombinedProviderInfo;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;->mSimulateHiddenForTests:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;->mSimulateHiddenForTests:Ljava/util/Optional;

    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_0
    iget-object p0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-eqz p0, :cond_2

    iget-object p0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public bridge synthetic isPublicSlice()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic isSliceable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;
    .locals 0

    sget-object p0, Lcom/samsung/android/settings/cube/Controllable$ControllableType;->NO_INTERACTION:Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    return-object p0
.end method

.method public newAddServicePreference(Ljava/lang/String;Landroid/content/Context;)Landroidx/preference/Preference;
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    new-instance p1, Landroidx/preference/Preference;

    invoke-direct {p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p2, v0}, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;Landroid/content/Context;Landroid/content/Intent;)V

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    const p0, 0x7f141cf8

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setTitle(I)V

    const p0, 0x7ffffffe

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOrder(I)V

    invoke-virtual {p1}, Landroidx/preference/Preference;->setPersistent()V

    const p0, 0x7f080333

    :try_start_0
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setIcon(I)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p2, "CredentialManagerPreferenceController"

    const-string v0, "Failed to find icon for add services link"

    invoke-static {p2, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-object p1
.end method

.method public onCreate(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_CREATE:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    invoke-direct {p0}, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;->update()V

    return-void
.end method

.method public processIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 9
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p1}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :cond_0
    invoke-static {p1}, Lcom/android/settings/Utils;->getSafeIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;->mIconResizer:Lcom/android/settings/applications/credentials/ImageUtils$IconResizer;

    iget v0, p0, Lcom/android/settings/applications/credentials/ImageUtils$IconResizer;->mIconWidth:I

    iget v1, p0, Lcom/android/settings/applications/credentials/ImageUtils$IconResizer;->mIconHeight:I

    if-nez p1, :cond_1

    new-instance p0, Lcom/android/settings/applications/credentials/ImageUtils$EmptyDrawable;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/applications/credentials/ImageUtils$EmptyDrawable;-><init>(II)V

    goto/16 :goto_7

    :cond_1
    :try_start_0
    instance-of v2, p1, Landroid/graphics/drawable/PaintDrawable;

    if-eqz v2, :cond_2

    move-object v2, p1

    check-cast v2, Landroid/graphics/drawable/PaintDrawable;

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicWidth(I)V

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicHeight(I)V

    goto :goto_0

    :cond_2
    instance-of v2, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_3

    move-object v2, p1

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/settings/applications/credentials/ImageUtils$IconResizer;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V

    :cond_3
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    if-lez v2, :cond_9

    if-lez v3, :cond_9

    const/4 v4, 0x0

    if-lt v0, v2, :cond_5

    if-ge v1, v3, :cond_4

    goto :goto_1

    :cond_4
    if-ge v2, v0, :cond_9

    if-ge v3, v1, :cond_9

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/applications/credentials/ImageUtils$IconResizer;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v6, v5}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    iget-object v7, p0, Lcom/android/settings/applications/credentials/ImageUtils$IconResizer;->mOldBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    sub-int v7, v0, v2

    div-int/lit8 v7, v7, 0x2

    sub-int v8, v1, v3

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v2, v7

    add-int/2addr v3, v8

    invoke-virtual {p1, v7, v8, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p1, v6}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v2, p0, Lcom/android/settings/applications/credentials/ImageUtils$IconResizer;->mOldBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p1, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v2, p0, Lcom/android/settings/applications/credentials/ImageUtils$IconResizer;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V

    iget-object p0, p0, Lcom/android/settings/applications/credentials/ImageUtils$IconResizer;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p0, v4}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_5

    :cond_5
    :goto_1
    int-to-float v5, v2

    int-to-float v6, v3

    div-float/2addr v5, v6

    if-le v2, v3, :cond_6

    int-to-float v2, v0

    div-float/2addr v2, v5

    float-to-int v2, v2

    move v3, v2

    move v2, v0

    goto :goto_3

    :cond_6
    if-le v3, v2, :cond_7

    int-to-float v2, v1

    mul-float/2addr v2, v5

    float-to-int v2, v2

    :goto_2
    move v3, v1

    goto :goto_3

    :cond_7
    move v2, v0

    goto :goto_2

    :goto_3
    :try_start_1
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_8

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_4

    :catchall_0
    move v0, v2

    move v1, v3

    goto :goto_6

    :cond_8
    sget-object v5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    :goto_4
    invoke-static {v0, v1, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/applications/credentials/ImageUtils$IconResizer;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v6, v5}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    iget-object v7, p0, Lcom/android/settings/applications/credentials/ImageUtils$IconResizer;->mOldBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    add-int v7, v0, v2

    add-int v8, v1, v3

    invoke-virtual {p1, v0, v1, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p1, v6}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/android/settings/applications/credentials/ImageUtils$IconResizer;->mOldBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p1, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/android/settings/applications/credentials/ImageUtils$IconResizer;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V

    iget-object p0, p0, Lcom/android/settings/applications/credentials/ImageUtils$IconResizer;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p0, v4}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_9
    :goto_5
    move-object p0, p1

    goto :goto_7

    :catchall_1
    :goto_6
    new-instance p0, Lcom/android/settings/applications/credentials/ImageUtils$EmptyDrawable;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/applications/credentials/ImageUtils$EmptyDrawable;-><init>(II)V

    :goto_7
    return-object p0
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public setAvailableServices(Ljava/util/List;Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/credentials/CredentialProviderInfo;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iput-object p2, p0, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;->mFlagOverrideForTest:Ljava/lang/String;

    iget-object p2, p0, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;->mServices:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    iget-object p2, p0, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;->mServices:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-direct {p0}, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;->handleIntent()V

    iget-object p2, p0, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;->mEnabledPackageNames:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->clear()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/credentials/CredentialProviderInfo;

    invoke-virtual {p2}, Landroid/credentials/CredentialProviderInfo;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/credentials/CredentialProviderInfo;->isPrimary()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;->mEnabledPackageNames:Ljava/util/Set;

    invoke-virtual {p2}, Landroid/credentials/CredentialProviderInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object p2

    iget-object p2, p2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;->mPrefs:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;->mPrefs:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;->mEnabledPackageNames:Ljava/util/Set;

    invoke-interface {v1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    invoke-virtual {v0, p2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public setDelegate(Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController$Delegate;)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iput-object p1, p0, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;->mDelegate:Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController$Delegate;

    return-void
.end method

.method public setSimulateConnectedForTests(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;->mSimulateConnectedForTests:Z

    return-void
.end method

.method public setSimulateHiddenForTests(Ljava/util/Optional;)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;->mSimulateHiddenForTests:Ljava/util/Optional;

    return-void
.end method

.method public bridge synthetic setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public togglePackageNameDisabled(Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;->mEnabledPackageNames:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;->commitEnabledPackages()V

    return-void
.end method

.method public togglePackageNameEnabled(Ljava/lang/String;)Z
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;->hasProviderLimitBeenReached()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;->mEnabledPackageNames:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;->commitEnabledPackages()V

    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public verifyReceivedIntent(Landroid/content/Intent;)Z
    .locals 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.settings.CREDENTIAL_PROVIDER"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "android.settings.SYNC_SETTINGS"

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v2, :cond_2

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    return v0

    :cond_2
    :goto_0
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_3

    invoke-direct {p0, v0}, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;->setActivityResult(I)V

    return v0

    :cond_3
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_4

    invoke-direct {p0, v0}, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;->setActivityResult(I)V

    return v0

    :cond_4
    iget-object v1, p0, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;->mPendingServiceInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;->mServices:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/credentials/CredentialProviderInfo;

    invoke-virtual {v2}, Landroid/credentials/CredentialProviderInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v2

    iget-object v3, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;->mPendingServiceInfos:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    iget-object p1, p0, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;->mPendingServiceInfos:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_7

    const/4 p0, 0x1

    return p0

    :cond_7
    invoke-direct {p0, v0}, Lcom/android/settings/applications/credentials/CredentialManagerPreferenceController;->setActivityResult(I)V

    :cond_8
    :goto_2
    return v0
.end method
