.class public Lcom/android/settings/accounts/AccountPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "AccountPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settingslib/accounts/AuthenticatorHelper$OnAccountsUpdateListener;
.implements Landroidx/preference/Preference$OnPreferenceClickListener;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/accounts/AccountPreferenceController$ManagedProfileBroadcastReceiver;,
        Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;
    }
.end annotation


# instance fields
.field private mAccountProfileOrder:I

.field private mAuthorities:[Ljava/lang/String;

.field private mAuthoritiesCount:I

.field private mDpm:Landroid/app/admin/DevicePolicyManager;

.field private mFragment:Lcom/android/settings/SettingsPreferenceFragment;

.field private final mHandler:Landroid/os/Handler;

.field private mHelper:Lcom/android/settings/accounts/AccountRestrictionHelper;

.field private mManagedProfileBroadcastReceiver:Lcom/android/settings/accounts/AccountPreferenceController$ManagedProfileBroadcastReceiver;

.field private mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

.field private mProfileNotAvailablePreference:Landroidx/preference/Preference;

.field private mProfiles:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;",
            ">;"
        }
    .end annotation
.end field

.field private final mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field private mType:I

.field private mUm:Landroid/os/UserManager;

.field private final mUpdateRunnable:Ljava/lang/Runnable;


# direct methods
.method public static synthetic $r8$lambda$-GQGXNvtugJ3YOVWNySG3Ic8SCY(Lcom/android/settings/accounts/AccountPreferenceController;Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/accounts/AccountPreferenceController;->lambda$getWorkGroupSummary$9(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$-buqvCjHfk4EBpa8-m3AjKfpMfg(Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/android/settings/accounts/AccountPreferenceController;->lambda$updateDynamicRawDataToIndex$1(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$0JqPYcckv4v002Kf-Gh65yqxmCQ(Lcom/android/settings/accounts/AccountPreferenceController;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/accounts/AccountPreferenceController;->lambda$newRemoveWorkProfilePreference$7()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$8B45jDiTaFog9BKlPh1Z6DAWOt0(Lcom/android/settings/accounts/AccountPreferenceController;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/accounts/AccountPreferenceController;->lambda$updateProfileUi$6()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$AN0eCa-Go-LoBHoA8Db8Lj0HTv8(Lcom/android/settings/accounts/AccountPreferenceController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/accounts/AccountPreferenceController;->lambda$updateProfileUi$4(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Dgl7Kcz7YcOYfS5NR0gXH6Pm3t0(Lcom/android/settings/accounts/AccountPreferenceController;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/accounts/AccountPreferenceController;->lambda$updateAccountTypes$10()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$IzrrYR7a_J_LcQl31vT0aclHV70(Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/android/settings/accounts/AccountPreferenceController;->lambda$updateDynamicRawDataToIndex$0(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$VpKkL1inQHqKxabqCXNWfq28Rb8(Lcom/android/settings/accounts/AccountPreferenceController;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/accounts/AccountPreferenceController;->lambda$updateProfileUi$5()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Vs-HexRl0CPs-5uma-6BjT9e68k(Lcom/android/settings/accounts/AccountPreferenceController;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/accounts/AccountPreferenceController;->lambda$onPreferenceClick$2()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$rmiXXe8dzv10tM69ls2M4omN5d0(Lcom/android/settings/accounts/AccountPreferenceController;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/accounts/AccountPreferenceController;->lambda$newManagedProfileSettings$8()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$y-3mvByVtMIghmgpJtTPm2MyKN0(Lcom/android/settings/accounts/AccountPreferenceController;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/accounts/AccountPreferenceController;->lambda$updateProfileUi$3()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFragment(Lcom/android/settings/accounts/AccountPreferenceController;)Lcom/android/settings/SettingsPreferenceFragment;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mFragment:Lcom/android/settings/SettingsPreferenceFragment;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/settings/accounts/AccountPreferenceController;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUpdateRunnable(Lcom/android/settings/accounts/AccountPreferenceController;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mUpdateRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mlistenToAccountUpdates(Lcom/android/settings/accounts/AccountPreferenceController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/accounts/AccountPreferenceController;->listenToAccountUpdates()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstopListeningToAccountUpdates(Lcom/android/settings/accounts/AccountPreferenceController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/accounts/AccountPreferenceController;->stopListeningToAccountUpdates()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateUi(Lcom/android/settings/accounts/AccountPreferenceController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/accounts/AccountPreferenceController;->updateUi()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;[Ljava/lang/String;I)V
    .locals 6

    .line 170
    new-instance v4, Lcom/android/settings/accounts/AccountRestrictionHelper;

    invoke-direct {v4, p1}, Lcom/android/settings/accounts/AccountRestrictionHelper;-><init>(Landroid/content/Context;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/accounts/AccountPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;[Ljava/lang/String;Lcom/android/settings/accounts/AccountRestrictionHelper;I)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;[Ljava/lang/String;Lcom/android/settings/accounts/AccountRestrictionHelper;I)V
    .locals 2

    .line 177
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 113
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mProfiles:Landroid/util/SparseArray;

    .line 114
    new-instance v0, Lcom/android/settings/accounts/AccountPreferenceController$ManagedProfileBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/accounts/AccountPreferenceController$ManagedProfileBroadcastReceiver;-><init>(Lcom/android/settings/accounts/AccountPreferenceController;Lcom/android/settings/accounts/AccountPreferenceController$ManagedProfileBroadcastReceiver-IA;)V

    iput-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mManagedProfileBroadcastReceiver:Lcom/android/settings/accounts/AccountPreferenceController$ManagedProfileBroadcastReceiver;

    const/4 v0, 0x0

    .line 118
    iput v0, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mAuthoritiesCount:I

    const/16 v0, 0x65

    .line 120
    iput v0, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mAccountProfileOrder:I

    .line 127
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mHandler:Landroid/os/Handler;

    .line 839
    new-instance v0, Lcom/android/settings/accounts/AccountPreferenceController$2;

    invoke-direct {v0, p0}, Lcom/android/settings/accounts/AccountPreferenceController$2;-><init>(Lcom/android/settings/accounts/AccountPreferenceController;)V

    iput-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    .line 860
    new-instance v0, Lcom/android/settings/accounts/AccountPreferenceController$3;

    invoke-direct {v0, p0}, Lcom/android/settings/accounts/AccountPreferenceController$3;-><init>(Lcom/android/settings/accounts/AccountPreferenceController;)V

    iput-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mUpdateRunnable:Ljava/lang/Runnable;

    const-string/jumbo v0, "user"

    .line 178
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mUm:Landroid/os/UserManager;

    .line 179
    const-class v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/admin/DevicePolicyManager;

    iput-object p1, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 180
    iput-object p3, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mAuthorities:[Ljava/lang/String;

    .line 181
    iput-object p2, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mFragment:Lcom/android/settings/SettingsPreferenceFragment;

    if-eqz p3, :cond_0

    .line 183
    array-length p1, p3

    iput p1, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mAuthoritiesCount:I

    .line 185
    :cond_0
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object p1

    .line 186
    invoke-virtual {p1}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    .line 187
    iput-object p4, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mHelper:Lcom/android/settings/accounts/AccountRestrictionHelper;

    .line 188
    iput p5, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mType:I

    return-void
.end method

.method private accountTypeHasAnyRequestedAuthorities(Lcom/android/settingslib/accounts/AuthenticatorHelper;Ljava/lang/String;)Z
    .locals 3

    .line 765
    iget v0, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mAuthoritiesCount:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 769
    :cond_0
    invoke-virtual {p1, p2}, Lcom/android/settingslib/accounts/AuthenticatorHelper;->getAuthoritiesForAccountType(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 772
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "No sync authorities for account type: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AccountPrefController"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    move p2, v0

    .line 775
    :goto_0
    iget v2, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mAuthoritiesCount:I

    if-ge p2, v2, :cond_3

    .line 776
    iget-object v2, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mAuthorities:[Ljava/lang/String;

    aget-object v2, v2, p2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return v1

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_3
    return v0
.end method

.method private getAccountTypePreferences(Lcom/android/settingslib/accounts/AuthenticatorHelper;Landroid/os/UserHandle;Landroid/util/ArrayMap;)Ljava/util/ArrayList;
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settingslib/accounts/AuthenticatorHelper;",
            "Landroid/os/UserHandle;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/settings/accounts/AccountTypePreference;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/accounts/AccountTypePreference;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 673
    invoke-virtual/range {p1 .. p1}, Lcom/android/settingslib/accounts/AuthenticatorHelper;->getEnabledAccountTypes()[Ljava/lang/String;

    move-result-object v3

    .line 674
    new-instance v4, Ljava/util/ArrayList;

    array-length v5, v3

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v6, 0x0

    .line 677
    :goto_0
    array-length v7, v3

    if-ge v6, v7, :cond_8

    .line 678
    aget-object v7, v3, v6

    .line 680
    invoke-direct {v0, v1, v7}, Lcom/android/settings/accounts/AccountPreferenceController;->accountTypeHasAnyRequestedAuthorities(Lcom/android/settingslib/accounts/AuthenticatorHelper;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    :goto_1
    move-object/from16 v22, v3

    goto/16 :goto_5

    .line 683
    :cond_0
    iget-object v8, v0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v8, v7}, Lcom/android/settingslib/accounts/AuthenticatorHelper;->getLabelForType(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v8

    if-nez v8, :cond_1

    goto :goto_1

    .line 689
    :cond_1
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v9

    const-string v10, "CscFeature_VoiceCall_SupportCallProtect"

    invoke-virtual {v9, v10}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    if-eqz v7, :cond_2

    const-string v9, "com.att.callprotect.account"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    goto :goto_1

    .line 695
    :cond_2
    invoke-virtual {v1, v7}, Lcom/android/settingslib/accounts/AuthenticatorHelper;->getPackageForType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 696
    invoke-virtual {v1, v7}, Lcom/android/settingslib/accounts/AuthenticatorHelper;->getLabelIdForType(Ljava/lang/String;)I

    move-result v15

    .line 698
    iget-object v9, v0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v9}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v9

    .line 699
    invoke-virtual {v9, v7, v2}, Landroid/accounts/AccountManager;->getAccountsByTypeAsUser(Ljava/lang/String;Landroid/os/UserHandle;)[Landroid/accounts/Account;

    move-result-object v14

    .line 700
    iget-object v9, v0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v9, v7}, Lcom/android/settingslib/accounts/AuthenticatorHelper;->getDrawableForType(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    .line 701
    iget-object v9, v0, Lcom/android/settings/accounts/AccountPreferenceController;->mFragment:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {v9}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v9

    invoke-virtual {v9}, Landroidx/preference/PreferenceManager;->getContext()Landroid/content/Context;

    move-result-object v21

    .line 704
    array-length v13, v14

    const/4 v12, 0x0

    :goto_2
    if-ge v12, v13, :cond_7

    aget-object v11, v14, v12

    .line 706
    invoke-static {v11}, Lcom/android/settings/accounts/AccountTypePreference;->buildKey(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v10, p3

    invoke-virtual {v10, v9}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/settings/accounts/AccountTypePreference;

    if-eqz v9, :cond_3

    .line 708
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    move-object/from16 v22, v3

    move v2, v12

    move/from16 v23, v13

    move-object/from16 v24, v14

    move/from16 v25, v15

    goto/16 :goto_4

    :cond_3
    const-string v9, "com.samsung.android.coreapps"

    .line 713
    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    const-string v5, "AccountPrefController"

    if-eqz v9, :cond_4

    const-string v9, "Hide Easysignup account"

    .line 714
    invoke-static {v5, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_4
    const-string v9, "com.samsung.android.mobileservice"

    .line 720
    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    const-string v9, "Hide mobileservice account"

    .line 721
    invoke-static {v5, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 727
    :cond_5
    iget-object v5, v11, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 728
    invoke-virtual {v1, v5}, Lcom/android/settingslib/accounts/AuthenticatorHelper;->getAuthoritiesForAccountType(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 729
    iget-object v9, v0, Lcom/android/settings/accounts/AccountPreferenceController;->mAuthorities:[Ljava/lang/String;

    invoke-static {v9, v5}, Lcom/android/settings/accounts/AccountRestrictionHelper;->showAccount([Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v5

    if-nez v5, :cond_6

    goto :goto_3

    .line 732
    :cond_6
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v9, "account"

    .line 733
    invoke-virtual {v5, v9, v11}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string/jumbo v9, "user_handle"

    .line 735
    invoke-virtual {v5, v9, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v9, "account_type"

    .line 737
    invoke-virtual {v5, v9, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 740
    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v22, v3

    const-string v3, "account_label"

    .line 739
    invoke-virtual {v5, v3, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "account_title_res"

    .line 741
    invoke-virtual {v5, v3, v15}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "android.intent.extra.USER"

    .line 743
    invoke-virtual {v5, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 744
    new-instance v3, Lcom/android/settings/accounts/AccountTypePreference;

    iget-object v9, v0, Lcom/android/settings/accounts/AccountPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object v2, v0, Lcom/android/settings/accounts/AccountPreferenceController;->mFragment:Lcom/android/settings/SettingsPreferenceFragment;

    .line 745
    invoke-virtual {v9, v2}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->getMetricsCategory(Ljava/lang/Object;)I

    move-result v2

    const-class v9, Lcom/android/settings/accounts/AccountDetailDashboardFragment;

    .line 747
    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v16

    move-object v9, v3

    move-object/from16 v10, v21

    move-object/from16 v17, v11

    move v11, v2

    move v2, v12

    move-object/from16 v12, v17

    move/from16 v23, v13

    move-object/from16 v13, v19

    move-object/from16 v24, v14

    move v14, v15

    move/from16 v25, v15

    move-object v15, v8

    move-object/from16 v17, v5

    move-object/from16 v18, v20

    invoke-direct/range {v9 .. v18}, Lcom/android/settings/accounts/AccountTypePreference;-><init>(Landroid/content/Context;ILandroid/accounts/Account;Ljava/lang/String;ILjava/lang/CharSequence;Ljava/lang/String;Landroid/os/Bundle;Landroid/graphics/drawable/Drawable;)V

    .line 744
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_4
    add-int/lit8 v12, v2, 0x1

    move-object/from16 v2, p2

    move-object/from16 v3, v22

    move/from16 v13, v23

    move-object/from16 v14, v24

    move/from16 v15, v25

    goto/16 :goto_2

    :cond_7
    move-object/from16 v22, v3

    .line 749
    iget-object v2, v0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v7}, Lcom/android/settingslib/accounts/AuthenticatorHelper;->preloadDrawableForType(Landroid/content/Context;Ljava/lang/String;)V

    :goto_5
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v2, p2

    move-object/from16 v3, v22

    goto/16 :goto_0

    .line 752
    :cond_8
    new-instance v1, Lcom/android/settings/accounts/AccountPreferenceController$1;

    invoke-direct {v1, v0}, Lcom/android/settings/accounts/AccountPreferenceController$1;-><init>(Lcom/android/settings/accounts/AccountPreferenceController;)V

    invoke-static {v4, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v4
.end method

.method private getWorkGroupSummary(Landroid/content/Context;Landroid/content/pm/UserInfo;)Ljava/lang/String;
    .locals 2

    .line 560
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 561
    iget p2, p2, Landroid/content/pm/UserInfo;->id:I

    invoke-static {p1, p2}, Lcom/android/settings/Utils;->getAdminApplicationInfo(Landroid/content/Context;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 565
    :cond_0
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 566
    iget-object p2, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p2}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object p2

    new-instance v0, Lcom/android/settings/accounts/AccountPreferenceController$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/accounts/AccountPreferenceController$$ExternalSyntheticLambda8;-><init>(Lcom/android/settings/accounts/AccountPreferenceController;Ljava/lang/CharSequence;)V

    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, p0, v1

    const-string p1, "Settings.MANAGED_BY"

    invoke-virtual {p2, p1, v0, p0}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private isSingleProfile()Z
    .locals 2

    .line 785
    iget-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mUm:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v0

    .line 786
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/samsung/android/settings/account/AccountUtils;->removeDualAppManagedProfiles(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 787
    iget-object p0, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mUm:Landroid/os/UserManager;

    invoke-virtual {p0}, Landroid/os/UserManager;->isLinkedUser()Z

    move-result p0

    const/4 v1, 0x1

    if-nez p0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method private synthetic lambda$getWorkGroupSummary$9(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 3

    .line 567
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->managing_admin:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$newManagedProfileSettings$8()Ljava/lang/String;
    .locals 1

    .line 546
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->managed_profile_settings_title:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$newRemoveWorkProfilePreference$7()Ljava/lang/String;
    .locals 1

    .line 530
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->remove_managed_profile_label:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$onPreferenceClick$2()Ljava/lang/String;
    .locals 1

    .line 317
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->managed_profile_settings_title:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$updateAccountTypes$10()Ljava/lang/String;
    .locals 1

    .line 659
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->managed_profile_not_available_label:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$updateDynamicRawDataToIndex$0(Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 1

    .line 244
    sget v0, Lcom/android/settings/R$string;->remove_managed_profile_label:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$updateDynamicRawDataToIndex$1(Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 1

    .line 251
    sget v0, Lcom/android/settings/R$string;->managed_profile_settings_title:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$updateProfileUi$3()Ljava/lang/String;
    .locals 1

    .line 458
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->category_work:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$updateProfileUi$4(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 463
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->accessibility_category_work:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$updateProfileUi$5()Ljava/lang/String;
    .locals 1

    .line 483
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->category_personal:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$updateProfileUi$6()Ljava/lang/String;
    .locals 1

    .line 486
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->accessibility_category_personal:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private listenToAccountUpdates()V
    .locals 3

    .line 598
    iget-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 600
    iget-object v2, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;

    iget-object v2, v2, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;->authenticatorHelper:Lcom/android/settingslib/accounts/AuthenticatorHelper;

    if-eqz v2, :cond_0

    .line 602
    invoke-virtual {v2}, Lcom/android/settingslib/accounts/AuthenticatorHelper;->listenToAccountUpdates()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private newAddAccountPreference()Lcom/android/settingslib/RestrictedPreference;
    .locals 2

    .line 510
    new-instance v0, Lcom/android/settingslib/RestrictedPreference;

    iget-object v1, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mFragment:Lcom/android/settings/SettingsPreferenceFragment;

    .line 511
    invoke-virtual {v1}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/preference/PreferenceManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settingslib/RestrictedPreference;-><init>(Landroid/content/Context;)V

    const-string v1, "add_account"

    .line 512
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 513
    sget v1, Lcom/android/settings/R$string;->add_account_label:I

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(I)V

    .line 516
    sget v1, Lcom/android/settings/R$drawable;->sec_tw_list_icon_create_mtrl:I

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setIcon(I)V

    .line 517
    sget v1, Lcom/android/settings/R$layout;->sec_widget_preference_with_app_icon:I

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    .line 519
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    const/16 p0, 0x3e8

    .line 520
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOrder(I)V

    return-object v0
.end method

.method private newManagedProfileSettings()Landroidx/preference/Preference;
    .locals 4

    .line 543
    new-instance v0, Landroidx/preference/Preference;

    iget-object v1, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mFragment:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {v1}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/preference/PreferenceManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    const-string/jumbo v1, "work_profile_setting"

    .line 544
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 545
    iget-object v1, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v1

    new-instance v2, Lcom/android/settings/accounts/AccountPreferenceController$$ExternalSyntheticLambda9;

    invoke-direct {v2, p0}, Lcom/android/settings/accounts/AccountPreferenceController$$ExternalSyntheticLambda9;-><init>(Lcom/android/settings/accounts/AccountPreferenceController;)V

    const-string v3, "Settings.MANAGED_PROFILE_SETTINGS_TITLE"

    invoke-virtual {v1, v3, v2}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 549
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$drawable;->sec_st_list_icon_setting:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 550
    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$color;->sec_widget_list_item_config_normal_color:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 551
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 552
    sget v1, Lcom/android/settings/R$layout;->sec_widget_preference_with_app_icon:I

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    .line 553
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    const/16 p0, 0x3ea

    .line 554
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOrder(I)V

    return-object v0
.end method

.method private newRemoveWorkProfilePreference()Lcom/android/settingslib/RestrictedPreference;
    .locals 4

    .line 525
    new-instance v0, Lcom/android/settingslib/RestrictedPreference;

    iget-object v1, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mFragment:Lcom/android/settings/SettingsPreferenceFragment;

    .line 526
    invoke-virtual {v1}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/preference/PreferenceManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settingslib/RestrictedPreference;-><init>(Landroid/content/Context;)V

    const-string v1, "remove_profile"

    .line 527
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 528
    iget-object v1, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 529
    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v1

    new-instance v2, Lcom/android/settings/accounts/AccountPreferenceController$$ExternalSyntheticLambda10;

    invoke-direct {v2, p0}, Lcom/android/settings/accounts/AccountPreferenceController$$ExternalSyntheticLambda10;-><init>(Lcom/android/settings/accounts/AccountPreferenceController;)V

    const-string v3, "Settings.REMOVE_WORK_PROFILE"

    invoke-virtual {v1, v3, v2}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v1

    .line 528
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 533
    sget v1, Lcom/android/settings/R$drawable;->sec_tw_list_icon_minus_mtrl:I

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setIcon(I)V

    .line 534
    sget v1, Lcom/android/settings/R$layout;->sec_widget_preference_with_app_icon:I

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    .line 535
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    const/16 p0, 0x3e9

    .line 536
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOrder(I)V

    return-object v0
.end method

.method private stopListeningToAccountUpdates()V
    .locals 3

    .line 608
    iget-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 610
    iget-object v2, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;

    iget-object v2, v2, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;->authenticatorHelper:Lcom/android/settingslib/accounts/AuthenticatorHelper;

    if-eqz v2, :cond_0

    .line 612
    invoke-virtual {v2}, Lcom/android/settingslib/accounts/AuthenticatorHelper;->stopListeningToAccountUpdates()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private updateAccountTypes(Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;)V
    .locals 6

    .line 618
    iget-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mFragment:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {v0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p1, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;->preferenceGroup:Landroidx/preference/PreferenceGroup;

    .line 619
    invoke-virtual {v0}, Landroidx/preference/Preference;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 623
    :cond_0
    iget-object v0, p1, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;->userInfo:Landroid/content/pm/UserInfo;

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 624
    new-instance v0, Landroid/util/ArrayMap;

    iget-object v2, p1, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;->accountPreferences:Landroid/util/ArrayMap;

    invoke-direct {v0, v2}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    .line 626
    iget-object v2, p1, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;->authenticatorHelper:Lcom/android/settingslib/accounts/AuthenticatorHelper;

    iget-object v3, p1, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;->userInfo:Landroid/content/pm/UserInfo;

    .line 627
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    .line 626
    invoke-direct {p0, v2, v3, v0}, Lcom/android/settings/accounts/AccountPreferenceController;->getAccountTypePreferences(Lcom/android/settingslib/accounts/AuthenticatorHelper;Landroid/os/UserHandle;Landroid/util/ArrayMap;)Ljava/util/ArrayList;

    move-result-object p0

    .line 629
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_2

    .line 631
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/accounts/AccountTypePreference;

    .line 632
    invoke-virtual {v3, v1}, Landroidx/preference/Preference;->setOrder(I)V

    .line 633
    invoke-virtual {v3}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    .line 634
    iget-object v5, p1, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;->accountPreferences:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 635
    iget-object v5, p1, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;->preferenceGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v5, v3}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 636
    iget-object v5, p1, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;->accountPreferences:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 639
    :cond_2
    iget-object p0, p1, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;->addAccountPreference:Lcom/android/settingslib/RestrictedPreference;

    if-eqz p0, :cond_3

    .line 640
    iget-object v1, p1, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;->preferenceGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v1, p0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 642
    :cond_3
    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 643
    iget-object v1, p1, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;->preferenceGroup:Landroidx/preference/PreferenceGroup;

    iget-object v2, p1, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;->accountPreferences:Landroid/util/ArrayMap;

    .line 644
    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/preference/Preference;

    .line 643
    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 645
    iget-object v1, p1, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;->accountPreferences:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 648
    :cond_4
    iget-object v0, p1, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;->preferenceGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 650
    iget-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mProfileNotAvailablePreference:Landroidx/preference/Preference;

    if-nez v0, :cond_5

    .line 651
    new-instance v0, Landroidx/preference/Preference;

    iget-object v2, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mFragment:Lcom/android/settings/SettingsPreferenceFragment;

    .line 652
    invoke-virtual {v2}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/preference/PreferenceManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mProfileNotAvailablePreference:Landroidx/preference/Preference;

    .line 654
    :cond_5
    iget-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mProfileNotAvailablePreference:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 655
    iget-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mProfileNotAvailablePreference:Landroidx/preference/Preference;

    sget v1, Lcom/android/settings/R$drawable;->empty_icon:I

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setIcon(I)V

    .line 656
    iget-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mProfileNotAvailablePreference:Landroidx/preference/Preference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 657
    iget-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mProfileNotAvailablePreference:Landroidx/preference/Preference;

    iget-object v1, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 658
    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v1

    new-instance v2, Lcom/android/settings/accounts/AccountPreferenceController$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lcom/android/settings/accounts/AccountPreferenceController$$ExternalSyntheticLambda3;-><init>(Lcom/android/settings/accounts/AccountPreferenceController;)V

    const-string v3, "Settings.WORK_PROFILE_NOT_AVAILABLE"

    invoke-virtual {v1, v3, v2}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v1

    .line 657
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 661
    iget-object v0, p1, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;->preferenceGroup:Landroidx/preference/PreferenceGroup;

    iget-object p0, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mProfileNotAvailablePreference:Landroidx/preference/Preference;

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 663
    :cond_6
    iget-object p0, p1, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;->removeWorkProfilePreference:Lcom/android/settingslib/RestrictedPreference;

    if-eqz p0, :cond_7

    .line 664
    iget-object v0, p1, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;->preferenceGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 666
    :cond_7
    iget-object p0, p1, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;->managedProfilePreference:Landroidx/preference/Preference;

    if-eqz p0, :cond_8

    .line 667
    iget-object p1, p1, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;->preferenceGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    :cond_8
    :goto_2
    return-void
.end method

.method private updateProfileUi(Landroid/content/pm/UserInfo;)V
    .locals 7

    .line 419
    iget-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mFragment:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {v0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 422
    :cond_0
    iget-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mProfiles:Landroid/util/SparseArray;

    iget v1, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 424
    iput-boolean v1, v0, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;->pendingRemoval:Z

    .line 425
    iput-object p1, v0, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;->userInfo:Landroid/content/pm/UserInfo;

    .line 426
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 428
    new-instance v1, Lcom/android/settingslib/accounts/AuthenticatorHelper;

    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 429
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object p1

    invoke-direct {v1, v2, p1, p0}, Lcom/android/settingslib/accounts/AuthenticatorHelper;-><init>(Landroid/content/Context;Landroid/os/UserHandle;Lcom/android/settingslib/accounts/AuthenticatorHelper$OnAccountsUpdateListener;)V

    iput-object v1, v0, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;->authenticatorHelper:Lcom/android/settingslib/accounts/AuthenticatorHelper;

    :cond_1
    return-void

    .line 433
    :cond_2
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 434
    new-instance v1, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;

    invoke-direct {v1}, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;-><init>()V

    .line 435
    iput-object p1, v1, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;->userInfo:Landroid/content/pm/UserInfo;

    .line 436
    iget-object v2, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mHelper:Lcom/android/settings/accounts/AccountRestrictionHelper;

    iget-object v3, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mFragment:Lcom/android/settings/SettingsPreferenceFragment;

    .line 438
    invoke-virtual {v3}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/preference/PreferenceManager;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 437
    invoke-virtual {v2, v3}, Lcom/android/settings/accounts/AccountRestrictionHelper;->createAccessiblePreferenceCategory(Landroid/content/Context;)Lcom/android/settings/AccessiblePreferenceCategory;

    move-result-object v2

    .line 439
    iget v3, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mAccountProfileOrder:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mAccountProfileOrder:I

    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setOrder(I)V

    .line 447
    invoke-direct {p0}, Lcom/android/settings/accounts/AccountPreferenceController;->isSingleProfile()Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_8

    .line 448
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-static {v3}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v3

    if-nez v3, :cond_8

    iget-object v3, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 449
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-static {v3, v5}, Lcom/samsung/android/knox/SemPersonaManager;->isAppSeparationUserId(Landroid/content/Context;I)Z

    move-result v3

    if-nez v3, :cond_8

    iget-object v3, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 450
    invoke-static {v3}, Lcom/samsung/android/settings/account/AccountUtils;->isSecureFolderActivated(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/settings/account/AccountUtils;->isKnoxActivated(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-static {v3}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v3

    if-eqz v3, :cond_8

    :cond_3
    iget-object v3, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 451
    invoke-static {v3}, Lcom/samsung/android/settings/account/AccountUtils;->isAppSeparationActivated(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/settings/account/AccountUtils;->isKnoxActivated(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-static {v3}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v3

    if-nez v3, :cond_4

    goto/16 :goto_1

    .line 454
    :cond_4
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v3

    const/4 v5, 0x3

    if-eqz v3, :cond_6

    .line 455
    iget v3, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mType:I

    if-ne v3, v5, :cond_5

    .line 456
    iget-object v3, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 457
    invoke-virtual {v3}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v3

    new-instance v4, Lcom/android/settings/accounts/AccountPreferenceController$$ExternalSyntheticLambda4;

    invoke-direct {v4, p0}, Lcom/android/settings/accounts/AccountPreferenceController$$ExternalSyntheticLambda4;-><init>(Lcom/android/settings/accounts/AccountPreferenceController;)V

    const-string v5, "Settings.WORK_CATEGORY_HEADER"

    invoke-virtual {v3, v5, v4}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v3

    .line 456
    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 459
    invoke-direct {p0, v0, p1}, Lcom/android/settings/accounts/AccountPreferenceController;->getWorkGroupSummary(Landroid/content/Context;Landroid/content/pm/UserInfo;)Ljava/lang/String;

    move-result-object v3

    .line 460
    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 461
    iget-object v4, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 462
    invoke-virtual {v4}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v4

    new-instance v5, Lcom/android/settings/accounts/AccountPreferenceController$$ExternalSyntheticLambda5;

    invoke-direct {v5, p0, v3}, Lcom/android/settings/accounts/AccountPreferenceController$$ExternalSyntheticLambda5;-><init>(Lcom/android/settings/accounts/AccountPreferenceController;Ljava/lang/String;)V

    const-string v3, "Settings.ACCESSIBILITY_CATEGORY_WORK"

    invoke-virtual {v4, v3, v5}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v3

    .line 461
    invoke-virtual {v2, v3}, Lcom/android/settings/AccessiblePreferenceCategory;->setContentDescription(Ljava/lang/String;)V

    goto :goto_0

    .line 468
    :cond_5
    invoke-virtual {v2, v4}, Landroidx/preference/SecPreferenceCategory;->setEmptyHeight(I)V

    .line 471
    :goto_0
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isSecureFolder()Z

    move-result v3

    if-nez v3, :cond_9

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isUserTypeAppSeparation()Z

    move-result v3

    if-nez v3, :cond_9

    .line 473
    invoke-direct {p0}, Lcom/android/settings/accounts/AccountPreferenceController;->newRemoveWorkProfilePreference()Lcom/android/settingslib/RestrictedPreference;

    move-result-object v3

    iput-object v3, v1, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;->removeWorkProfilePreference:Lcom/android/settingslib/RestrictedPreference;

    .line 474
    iget-object v4, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mHelper:Lcom/android/settings/accounts/AccountRestrictionHelper;

    .line 475
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    const-string v6, "no_remove_managed_profile"

    .line 474
    invoke-virtual {v4, v3, v6, v5}, Lcom/android/settings/accounts/AccountRestrictionHelper;->enforceRestrictionOnPreference(Lcom/android/settingslib/RestrictedPreference;Ljava/lang/String;I)V

    .line 476
    invoke-direct {p0}, Lcom/android/settings/accounts/AccountPreferenceController;->newManagedProfileSettings()Landroidx/preference/Preference;

    move-result-object v3

    iput-object v3, v1, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;->managedProfilePreference:Landroidx/preference/Preference;

    goto :goto_2

    .line 480
    :cond_6
    iget v3, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mType:I

    if-ne v3, v5, :cond_7

    .line 481
    iget-object v3, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 482
    invoke-virtual {v3}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v3

    new-instance v4, Lcom/android/settings/accounts/AccountPreferenceController$$ExternalSyntheticLambda6;

    invoke-direct {v4, p0}, Lcom/android/settings/accounts/AccountPreferenceController$$ExternalSyntheticLambda6;-><init>(Lcom/android/settings/accounts/AccountPreferenceController;)V

    const-string v5, "Settings.PERSONAL_CATEGORY_HEADER"

    invoke-virtual {v3, v5, v4}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v3

    .line 481
    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 484
    iget-object v3, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 485
    invoke-virtual {v3}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v3

    new-instance v4, Lcom/android/settings/accounts/AccountPreferenceController$$ExternalSyntheticLambda7;

    invoke-direct {v4, p0}, Lcom/android/settings/accounts/AccountPreferenceController$$ExternalSyntheticLambda7;-><init>(Lcom/android/settings/accounts/AccountPreferenceController;)V

    const-string v5, "Settings.ACCESSIBILITY_CATEGORY_PERSONAL"

    invoke-virtual {v3, v5, v4}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v3

    .line 484
    invoke-virtual {v2, v3}, Lcom/android/settings/AccessiblePreferenceCategory;->setContentDescription(Ljava/lang/String;)V

    goto :goto_2

    .line 490
    :cond_7
    invoke-virtual {v2, v4}, Landroidx/preference/SecPreferenceCategory;->setEmptyHeight(I)V

    goto :goto_2

    .line 452
    :cond_8
    :goto_1
    invoke-virtual {v2, v4}, Landroidx/preference/SecPreferenceCategory;->setEmptyHeight(I)V

    .line 494
    :cond_9
    :goto_2
    iget-object v3, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mFragment:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {v3}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v3

    if-eqz v3, :cond_a

    .line 496
    invoke-virtual {v3, v2}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 498
    :cond_a
    iput-object v2, v1, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;->preferenceGroup:Landroidx/preference/PreferenceGroup;

    .line 499
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 500
    new-instance v2, Lcom/android/settingslib/accounts/AuthenticatorHelper;

    .line 501
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    invoke-direct {v2, v0, v3, p0}, Lcom/android/settingslib/accounts/AuthenticatorHelper;-><init>(Landroid/content/Context;Landroid/os/UserHandle;Lcom/android/settingslib/accounts/AuthenticatorHelper$OnAccountsUpdateListener;)V

    iput-object v2, v1, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;->authenticatorHelper:Lcom/android/settingslib/accounts/AuthenticatorHelper;

    .line 502
    invoke-direct {p0}, Lcom/android/settings/accounts/AccountPreferenceController;->newAddAccountPreference()Lcom/android/settingslib/RestrictedPreference;

    move-result-object v0

    iput-object v0, v1, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;->addAccountPreference:Lcom/android/settingslib/RestrictedPreference;

    .line 503
    iget-object v2, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mHelper:Lcom/android/settings/accounts/AccountRestrictionHelper;

    iget v3, p1, Landroid/content/pm/UserInfo;->id:I

    const-string v4, "no_modify_accounts"

    invoke-virtual {v2, v0, v4, v3}, Lcom/android/settings/accounts/AccountRestrictionHelper;->enforceRestrictionOnPreference(Lcom/android/settingslib/RestrictedPreference;Ljava/lang/String;I)V

    .line 506
    :cond_b
    iget-object p0, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mProfiles:Landroid/util/SparseArray;

    iget p1, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method private updateUi()V
    .locals 6

    .line 328
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountPreferenceController;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "AccountPrefController"

    const-string v0, "We should not be showing settings for a managed profile"

    .line 330
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 334
    :cond_0
    iget-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_1

    .line 335
    iget-object v4, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;

    iput-boolean v3, v4, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;->pendingRemoval:Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 337
    :cond_1
    iget-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mUm:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->isRestrictedProfile()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 339
    iget-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mUm:Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 340
    invoke-direct {p0, v0}, Lcom/android/settings/accounts/AccountPreferenceController;->updateProfileUi(Landroid/content/pm/UserInfo;)V

    goto/16 :goto_8

    .line 342
    :cond_2
    iget-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mUm:Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v0

    move v2, v1

    .line 345
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_5

    .line 346
    iget-object v4, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-static {v4, v5}, Lcom/samsung/android/knox/SemPersonaManager;->isAppSeparationUserId(Landroid/content/Context;I)Z

    move-result v4

    if-nez v4, :cond_3

    .line 347
    iget-object v4, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    iget v5, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v4, v5}, Lcom/samsung/android/knox/SemPersonaManager;->isAppSeparationUserId(Landroid/content/Context;I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 348
    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_2

    .line 352
    :cond_3
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    if-eq v4, v5, :cond_4

    .line 353
    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :goto_2
    add-int/lit8 v2, v2, -0x1

    :cond_4
    add-int/2addr v2, v3

    goto :goto_1

    :cond_5
    move v2, v1

    .line 358
    :goto_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_8

    .line 359
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-static {v4}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v4

    if-nez v4, :cond_6

    .line 360
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v4}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 361
    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_4

    .line 365
    :cond_6
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    if-eq v4, v5, :cond_7

    .line 366
    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :goto_4
    add-int/lit8 v2, v2, -0x1

    :cond_7
    add-int/2addr v2, v3

    goto :goto_3

    :cond_8
    move v2, v1

    .line 372
    :goto_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_a

    .line 373
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v4}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 374
    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v2, v2, -0x1

    :cond_9
    add-int/2addr v2, v3

    goto :goto_5

    .line 381
    :cond_a
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    move v4, v1

    :goto_6
    if-ge v4, v2, :cond_d

    .line 383
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v5

    if-eqz v5, :cond_b

    iget v5, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mType:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_b

    .line 385
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    invoke-direct {p0, v5}, Lcom/android/settings/accounts/AccountPreferenceController;->updateProfileUi(Landroid/content/pm/UserInfo;)V

    goto :goto_7

    .line 386
    :cond_b
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v5

    if-nez v5, :cond_c

    iget v5, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mType:I

    and-int/2addr v5, v3

    if-eqz v5, :cond_c

    .line 388
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    invoke-direct {p0, v5}, Lcom/android/settings/accounts/AccountPreferenceController;->updateProfileUi(Landroid/content/pm/UserInfo;)V

    :cond_c
    :goto_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 392
    :cond_d
    :goto_8
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountPreferenceController;->cleanUpPreferences()V

    .line 397
    iget-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    :goto_9
    if-ge v1, v0, :cond_e

    .line 399
    iget-object v2, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;

    invoke-direct {p0, v2}, Lcom/android/settings/accounts/AccountPreferenceController;->updateAccountTypes(Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_e
    return-void
.end method


# virtual methods
.method cleanUpPreferences()V
    .locals 4

    .line 571
    iget-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mFragment:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {v0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 575
    :cond_0
    iget-object v1, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_2

    .line 577
    iget-object v2, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;

    .line 578
    iget-boolean v3, v2, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;->pendingRemoval:Z

    if-eqz v3, :cond_1

    .line 579
    iget-object v2, v2, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;->preferenceGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 580
    iget-object v2, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->removeAt(I)V

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 0

    .line 211
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 212
    invoke-direct {p0}, Lcom/android/settings/accounts/AccountPreferenceController;->updateUi()V

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public isAvailable()Z
    .locals 2

    .line 194
    iget-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mUm:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->isManagedProfile()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mUm:Landroid/os/UserManager;

    .line 196
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isSecureFolder()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 198
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, v0}, Lcom/samsung/android/knox/SemPersonaManager;->isAppSeparationUserId(Landroid/content/Context;I)Z

    move-result p0

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

.method public onAccountsUpdate(Landroid/os/UserHandle;)V
    .locals 2

    .line 279
    iget-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;

    if-eqz v0, :cond_0

    .line 281
    invoke-direct {p0, v0}, Lcom/android/settings/accounts/AccountPreferenceController;->updateAccountTypes(Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;)V

    goto :goto_0

    .line 283
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Missing Settings screen for: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AccountPrefController"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 270
    invoke-direct {p0}, Lcom/android/settings/accounts/AccountPreferenceController;->stopListeningToAccountUpdates()V

    .line 271
    iget-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mManagedProfileBroadcastReceiver:Lcom/android/settings/accounts/AccountPreferenceController$ManagedProfileBroadcastReceiver;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/settings/accounts/AccountPreferenceController$ManagedProfileBroadcastReceiver;->unregister(Landroid/content/Context;)V

    .line 273
    iget-object p0, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    return-void
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 8

    .line 289
    iget-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mFragment:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-interface {v0}, Lcom/android/settingslib/core/instrumentation/Instrumentable;->getMetricsCategory()I

    move-result v0

    .line 291
    iget-object v1, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    .line 293
    iget-object v4, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;

    .line 294
    iget-object v5, v4, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;->addAccountPreference:Lcom/android/settingslib/RestrictedPreference;

    const-string v6, "android.intent.extra.USER"

    const/4 v7, 0x1

    if-ne p1, v5, :cond_0

    .line 295
    iget-object v1, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    invoke-virtual {v1, p1, v0}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->logClickedPreference(Landroidx/preference/Preference;I)Z

    .line 296
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.settings.ADD_ACCOUNT_SETTINGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 297
    iget-object v0, v4, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;->userInfo:Landroid/content/pm/UserInfo;

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p1, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 298
    iget-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mAuthorities:[Ljava/lang/String;

    const-string v1, "authorities"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 299
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return v7

    .line 302
    :cond_0
    iget-object v5, v4, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;->removeWorkProfilePreference:Lcom/android/settingslib/RestrictedPreference;

    if-ne p1, v5, :cond_1

    .line 303
    iget-object v1, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    invoke-virtual {v1, p1, v0}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->logClickedPreference(Landroidx/preference/Preference;I)Z

    .line 304
    iget-object p1, v4, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;->userInfo:Landroid/content/pm/UserInfo;

    iget p1, p1, Landroid/content/pm/UserInfo;->id:I

    .line 305
    invoke-static {p1}, Lcom/android/settings/accounts/RemoveUserFragment;->newInstance(I)Lcom/android/settings/accounts/RemoveUserFragment;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mFragment:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-string v0, "removeUser"

    invoke-virtual {p1, p0, v0}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return v7

    .line 309
    :cond_1
    iget-object v5, v4, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;->managedProfilePreference:Landroidx/preference/Preference;

    if-ne p1, v5, :cond_2

    .line 310
    iget-object v1, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    invoke-virtual {v1, p1, v0}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->logClickedPreference(Landroidx/preference/Preference;I)Z

    .line 311
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 312
    iget-object v1, v4, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;->userInfo:Landroid/content/pm/UserInfo;

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {p1, v6, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 313
    new-instance v1, Lcom/android/settings/core/SubSettingLauncher;

    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    .line 314
    invoke-virtual {v1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    const-class v1, Lcom/android/settings/accounts/ManagedProfileSettings;

    .line 315
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 316
    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v1

    new-instance v2, Lcom/android/settings/accounts/AccountPreferenceController$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/settings/accounts/AccountPreferenceController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/accounts/AccountPreferenceController;)V

    const-string p0, "Settings.MANAGED_PROFILE_SETTINGS_TITLE"

    invoke-virtual {v1, p0, v2}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/settings/core/SubSettingLauncher;->setTitleText(Ljava/lang/CharSequence;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 318
    invoke-virtual {p0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 319
    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return v7

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_3
    return v2
.end method

.method public onResume()V
    .locals 3

    .line 260
    invoke-direct {p0}, Lcom/android/settings/accounts/AccountPreferenceController;->updateUi()V

    .line 261
    iget-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mManagedProfileBroadcastReceiver:Lcom/android/settings/accounts/AccountPreferenceController$ManagedProfileBroadcastReceiver;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/settings/accounts/AccountPreferenceController$ManagedProfileBroadcastReceiver;->register(Landroid/content/Context;)V

    .line 262
    invoke-direct {p0}, Lcom/android/settings/accounts/AccountPreferenceController;->listenToAccountUpdates()V

    .line 264
    iget-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    return-void
.end method

.method public updateAddAccountButtonState()V
    .locals 5

    const/4 v0, 0x0

    .line 406
    :goto_0
    iget-object v1, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 407
    iget-object v1, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;

    .line 408
    iget-object v2, v1, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;->addAccountPreference:Lcom/android/settingslib/RestrictedPreference;

    if-eqz v2, :cond_0

    .line 409
    iget-object v3, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mHelper:Lcom/android/settings/accounts/AccountRestrictionHelper;

    iget-object v1, v1, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;->userInfo:Landroid/content/pm/UserInfo;

    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    const-string v4, "no_modify_accounts"

    invoke-virtual {v3, v2, v4, v1}, Lcom/android/settings/accounts/AccountRestrictionHelper;->enforceRestrictionOnPreference(Lcom/android/settingslib/RestrictedPreference;Ljava/lang/String;I)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public updateDynamicRawDataToIndex(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settingslib/search/SearchIndexableRaw;",
            ">;)V"
        }
    .end annotation

    .line 217
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountPreferenceController;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 223
    sget v1, Lcom/android/settings/R$string;->sec_account_management:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 226
    iget-object v2, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mUm:Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v2

    .line 227
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 231
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 233
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isSecureFolder()Z

    move-result v4

    if-nez v4, :cond_1

    .line 235
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isUserTypeAppSeparation()Z

    move-result v3

    if-nez v3, :cond_1

    .line 238
    iget-object v3, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mHelper:Lcom/android/settings/accounts/AccountRestrictionHelper;

    .line 239
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    const-string v5, "no_remove_managed_profile"

    .line 238
    invoke-virtual {v3, v5, v4}, Lcom/android/settings/accounts/AccountRestrictionHelper;->hasBaseUserRestriction(Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 240
    new-instance v3, Lcom/android/settingslib/search/SearchIndexableRaw;

    iget-object v4, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/settingslib/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    const-string v4, "remove_profile"

    .line 241
    iput-object v4, v3, Landroid/provider/SearchIndexableData;->key:Ljava/lang/String;

    .line 242
    iget-object v4, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v4}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v4

    new-instance v5, Lcom/android/settings/accounts/AccountPreferenceController$$ExternalSyntheticLambda1;

    invoke-direct {v5, v0}, Lcom/android/settings/accounts/AccountPreferenceController$$ExternalSyntheticLambda1;-><init>(Landroid/content/res/Resources;)V

    const-string v6, "Settings.REMOVE_WORK_PROFILE"

    invoke-virtual {v4, v6, v5}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/settingslib/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 245
    iput-object v1, v3, Lcom/android/settingslib/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 246
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    :cond_2
    new-instance v3, Lcom/android/settingslib/search/SearchIndexableRaw;

    iget-object v4, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/settingslib/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    const-string/jumbo v4, "work_profile_setting"

    .line 249
    iput-object v4, v3, Landroid/provider/SearchIndexableData;->key:Ljava/lang/String;

    .line 250
    iget-object v4, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v4}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v4

    new-instance v5, Lcom/android/settings/accounts/AccountPreferenceController$$ExternalSyntheticLambda2;

    invoke-direct {v5, v0}, Lcom/android/settings/accounts/AccountPreferenceController$$ExternalSyntheticLambda2;-><init>(Landroid/content/res/Resources;)V

    const-string v6, "Settings.MANAGED_PROFILE_SETTINGS_TITLE"

    invoke-virtual {v4, v6, v5}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/settingslib/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 252
    iput-object v1, v3, Lcom/android/settingslib/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 253
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-void
.end method
