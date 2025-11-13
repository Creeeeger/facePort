.class public Lcom/android/settings/vpn2/VpnSettings;
.super Lcom/android/settings/dashboard/RestrictedDashboardFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/vpn2/VpnSettings$UpdatePreferences;
    }
.end annotation


# static fields
.field public static final DEBUG:Z

.field public static final VPN_REQUEST:Landroid/net/NetworkRequest;


# instance fields
.field public caCert:[Ljava/lang/String;

.field public final mAppPreferences:Ljava/util/Map;

.field public mConnectedLegacyVpn:Lcom/android/internal/net/LegacyVpnInfo;

.field public mConnectivityManager:Landroid/net/ConnectivityManager;

.field public mFeatureProvider:Lcom/android/settings/vpn2/AdvancedVpnFeatureProvider;

.field public final mGearListener:Lcom/android/settings/vpn2/VpnSettings$4;

.field public mIsUserAddProfilesAllowed:I

.field public final mLegacyVpnPreferences:Ljava/util/Map;

.field public final mNetworkCallback:Lcom/android/settings/vpn2/VpnSettings$5;

.field public mPreferenceScreen:Landroidx/preference/PreferenceScreen;

.field public mProgressMenuItem:Landroid/view/MenuItem;

.field public mUcmAliasLoader:Lcom/android/settings/vpn2/VpnSettings$UcmAliasLoader;

.field public mUnavailable:Z

.field public mUpdater:Landroid/os/Handler;

.field public mUpdaterThread:Landroid/os/HandlerThread;

.field public mUserManager:Landroid/os/UserManager;

.field public mVpnCreateMenuItem:Landroid/view/MenuItem;

.field public mVpnManager:Landroid/net/VpnManager;

.field public mVpnPreferenceGroup:Landroidx/preference/PreferenceScreen;

.field public userCert:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "VpnSettings"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/vpn2/VpnSettings;->DEBUG:Z

    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->removeCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->removeCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->removeCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    sput-object v0, Lcom/android/settings/vpn2/VpnSettings;->VPN_REQUEST:Landroid/net/NetworkRequest;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "no_config_vpn"

    invoke-direct {p0, v0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;-><init>(Ljava/lang/String;)V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->mLegacyVpnPreferences:Ljava/util/Map;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->mAppPreferences:Ljava/util/Map;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->userCert:[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->caCert:[Ljava/lang/String;

    new-instance v0, Lcom/android/settings/vpn2/VpnSettings$4;

    invoke-direct {v0, p0}, Lcom/android/settings/vpn2/VpnSettings$4;-><init>(Lcom/android/settings/vpn2/VpnSettings;)V

    iput-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->mGearListener:Lcom/android/settings/vpn2/VpnSettings$4;

    new-instance v0, Lcom/android/settings/vpn2/VpnSettings$5;

    invoke-direct {v0, p0}, Lcom/android/settings/vpn2/VpnSettings$5;-><init>(Lcom/android/settings/vpn2/VpnSettings;)V

    iput-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->mNetworkCallback:Lcom/android/settings/vpn2/VpnSettings$5;

    return-void
.end method

.method public static getVpnApps(Landroid/content/Context;ZLcom/android/settings/vpn2/AdvancedVpnFeatureProvider;Landroid/app/AppOpsManager;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z",
            "Lcom/android/settings/vpn2/AdvancedVpnFeatureProvider;",
            "Landroid/app/AppOpsManager;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settings/vpn2/AppVpnInfo;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz p1, :cond_1

    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserHandle;

    invoke-static {v3, v1}, Lcom/android/settings/Utils;->shouldHideUser(Landroid/os/UserHandle;Landroid/os/UserManager;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    :cond_2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 p2, 0x2f

    const/16 v1, 0x5e

    filled-new-array {p2, v1}, [I

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/app/AppOpsManager;->getPackagesForOps([I)Ljava/util/List;

    move-result-object p3

    if-eqz p3, :cond_a

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_3
    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AppOpsManager$PackageOps;

    invoke-virtual {v2}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v2}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    invoke-virtual {v2}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    :cond_5
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/AppOpsManager$OpEntry;

    invoke-virtual {v6}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v7

    if-eq v7, p2, :cond_6

    invoke-virtual {v6}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v7

    if-ne v7, v1, :cond_5

    :cond_6
    invoke-virtual {v6}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v6

    if-nez v6, :cond_5

    const/4 v5, 0x1

    goto :goto_2

    :cond_7
    if-eqz v5, :cond_3

    invoke-virtual {v2}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.samsung.android.fast"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v6, "android"

    invoke-virtual {v4, v6, v5}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_8

    goto :goto_1

    :cond_8
    const-string v4, "VpnSettings"

    const-string v5, "Secure Wi-Fi signature mismatched"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    new-instance v4, Lcom/android/settings/vpn2/AppVpnInfo;

    invoke-virtual {v2}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v3, v2}, Lcom/android/settings/vpn2/AppVpnInfo;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_a
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object v0
.end method

.method public static updatePreferenceGroup(Landroidx/preference/PreferenceGroup;Ljava/util/Collection;)V
    .locals 3

    invoke-virtual {p0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1, v1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public canAddPreferences()Z
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p0

    return p0
.end method

.method public findOrCreatePreference(Lcom/android/settings/vpn2/AppVpnInfo;)Lcom/android/settings/vpn2/AppPreference;
    .locals 4

    iget-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->mAppPreferences:Ljava/util/Map;

    check-cast v0, Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/vpn2/AppPreference;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/settings/vpn2/AppPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p1, Lcom/android/settings/vpn2/AppVpnInfo;->userId:I

    iget-object v3, p1, Lcom/android/settings/vpn2/AppVpnInfo;->packageName:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/vpn2/AppPreference;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/vpn2/VpnSettings;->mGearListener:Lcom/android/settings/vpn2/VpnSettings$4;

    iput-object v1, v0, Lcom/android/settings/widget/GearPreference;->mOnGearClickListener:Lcom/android/settings/widget/GearPreference$OnGearClickListener;

    invoke-virtual {v0}, Landroidx/preference/Preference;->notifyChanged()V

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    iget-object v1, p0, Lcom/android/settings/vpn2/VpnSettings;->mAppPreferences:Ljava/util/Map;

    check-cast v1, Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/vpn2/VpnSettings;->mFeatureProvider:Lcom/android/settings/vpn2/AdvancedVpnFeatureProvider;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0
.end method

.method public findOrCreatePreference(Lcom/android/internal/net/VpnProfile;Z)Lcom/android/settings/vpn2/LegacyVpnPreference;
    .locals 3

    iget-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->mLegacyVpnPreferences:Ljava/util/Map;

    iget-object v1, p1, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    check-cast v0, Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/vpn2/LegacyVpnPreference;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/settings/vpn2/LegacyVpnPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/settings/vpn2/ManageablePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const v1, 0x7f080677

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setIcon(I)V

    const/4 v1, 0x2

    iput v1, v0, Lcom/android/settingslib/widget/TwoTargetPreference;->mIconSize:I

    iget-object v1, p0, Lcom/android/settings/vpn2/VpnSettings;->mGearListener:Lcom/android/settings/vpn2/VpnSettings$4;

    iput-object v1, v0, Lcom/android/settings/widget/GearPreference;->mOnGearClickListener:Lcom/android/settings/widget/GearPreference$OnGearClickListener;

    invoke-virtual {v0}, Landroidx/preference/Preference;->notifyChanged()V

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    iget-object p0, p0, Lcom/android/settings/vpn2/VpnSettings;->mLegacyVpnPreferences:Ljava/util/Map;

    iget-object v1, p1, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    check-cast p0, Landroid/util/ArrayMap;

    invoke-virtual {p0, v1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    if-eqz p2, :cond_4

    :cond_1
    iget-object p0, v0, Lcom/android/settings/vpn2/LegacyVpnPreference;->mProfile:Lcom/android/internal/net/VpnProfile;

    if-eqz p0, :cond_2

    iget-object p0, p0, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    iget-object p2, p1, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-static {p0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_3

    invoke-virtual {v0, p2}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Landroidx/preference/Preference;->notifyHierarchyChanged()V

    :cond_3
    iput-object p1, v0, Lcom/android/settings/vpn2/LegacyVpnPreference;->mProfile:Lcom/android/internal/net/VpnProfile;

    :cond_4
    return-object v0
.end method

.method public final getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "VpnSettings"

    return-object p0
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x64

    return p0
.end method

.method public final getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f170290

    return p0
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 11

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    const-string v3, "VPN_"

    invoke-static {v3}, Landroid/security/LegacyVpnProfileStore;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    if-ge v7, v5, :cond_2

    aget-object v8, v4, v7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/security/LegacyVpnProfileStore;->get(Ljava/lang/String;)[B

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/internal/net/VpnProfile;->decode(Ljava/lang/String;[B)Lcom/android/internal/net/VpnProfile;

    move-result-object v8

    if-eqz v8, :cond_1

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/settings/vpn2/VpnSettings;->mFeatureProvider:Lcom/android/settings/vpn2/AdvancedVpnFeatureProvider;

    const-class v4, Landroid/app/AppOpsManager;

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AppOpsManager;

    invoke-static {v1, v0, v3, v4}, Lcom/android/settings/vpn2/VpnSettings;->getVpnApps(Landroid/content/Context;ZLcom/android/settings/vpn2/AdvancedVpnFeatureProvider;Landroid/app/AppOpsManager;)Ljava/util/List;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/vpn2/VpnSettings;->mVpnManager:Landroid/net/VpnManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/net/VpnManager;->getLegacyVpnInfo(I)Lcom/android/internal/net/LegacyVpnInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/vpn2/VpnSettings;->mConnectedLegacyVpn:Lcom/android/internal/net/LegacyVpnInfo;

    if-eqz v3, :cond_3

    iget-object v4, v3, Lcom/android/internal/net/LegacyVpnInfo;->key:Ljava/lang/String;

    invoke-static {v4, v3}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v3

    goto :goto_1

    :cond_3
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v3

    :goto_1
    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    iget-object v5, p0, Lcom/android/settings/vpn2/VpnSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v5}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/UserHandle;

    iget-object v8, p0, Lcom/android/settings/vpn2/VpnSettings;->mUserManager:Landroid/os/UserManager;

    invoke-static {v7, v8}, Lcom/android/settings/Utils;->shouldHideUser(Landroid/os/UserHandle;Landroid/os/UserManager;)Z

    move-result v8

    if-eqz v8, :cond_5

    goto :goto_2

    :cond_5
    iget-object v8, p0, Lcom/android/settings/vpn2/VpnSettings;->mVpnManager:Landroid/net/VpnManager;

    invoke-virtual {v7}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/net/VpnManager;->getVpnConfig(I)Lcom/android/internal/net/VpnConfig;

    move-result-object v8

    if-eqz v8, :cond_4

    iget-boolean v9, v8, Lcom/android/internal/net/VpnConfig;->legacy:Z

    if-nez v9, :cond_4

    new-instance v9, Lcom/android/settings/vpn2/AppVpnInfo;

    invoke-virtual {v7}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    iget-object v8, v8, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    invoke-direct {v9, v7, v8}, Lcom/android/settings/vpn2/AppVpnInfo;-><init>(ILjava/lang/String;)V

    invoke-virtual {v4, v9}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    iget-object v7, p0, Lcom/android/settings/vpn2/VpnSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v7}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_7
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/UserHandle;

    iget-object v9, p0, Lcom/android/settings/vpn2/VpnSettings;->mUserManager:Landroid/os/UserManager;

    invoke-static {v8, v9}, Lcom/android/settings/Utils;->shouldHideUser(Landroid/os/UserHandle;Landroid/os/UserManager;)Z

    move-result v9

    if-eqz v9, :cond_8

    goto :goto_3

    :cond_8
    invoke-virtual {v8}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v8

    iget-object v9, p0, Lcom/android/settings/vpn2/VpnSettings;->mVpnManager:Landroid/net/VpnManager;

    invoke-virtual {v9, v8}, Landroid/net/VpnManager;->getAlwaysOnVpnPackageForUser(I)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_7

    new-instance v10, Lcom/android/settings/vpn2/AppVpnInfo;

    invoke-direct {v10, v8, v9}, Lcom/android/settings/vpn2/AppVpnInfo;-><init>(ILjava/lang/String;)V

    invoke-virtual {v5, v10}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_9
    invoke-static {}, Lcom/android/settings/vpn2/VpnUtils;->getLockdownVpn()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/android/settings/vpn2/VpnSettings$UpdatePreferences;

    invoke-direct {v8, p0}, Lcom/android/settings/vpn2/VpnSettings$UpdatePreferences;-><init>(Lcom/android/settings/vpn2/VpnSettings;)V

    iput-object v2, v8, Lcom/android/settings/vpn2/VpnSettings$UpdatePreferences;->vpnProfiles:Ljava/util/List;

    iput-object v3, v8, Lcom/android/settings/vpn2/VpnSettings$UpdatePreferences;->connectedLegacyVpns:Ljava/util/Map;

    iput-object v7, v8, Lcom/android/settings/vpn2/VpnSettings$UpdatePreferences;->lockdownVpnKey:Ljava/lang/String;

    iput-object v1, v8, Lcom/android/settings/vpn2/VpnSettings$UpdatePreferences;->vpnApps:Ljava/util/List;

    iput-object v4, v8, Lcom/android/settings/vpn2/VpnSettings$UpdatePreferences;->connectedAppVpns:Ljava/util/Set;

    iput-object v5, v8, Lcom/android/settings/vpn2/VpnSettings$UpdatePreferences;->alwaysOnAppVpnInfos:Ljava/util/Set;

    invoke-virtual {p1, v8}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    monitor-enter p0

    :try_start_0
    iget-object p1, p0, Lcom/android/settings/vpn2/VpnSettings;->mUpdater:Landroid/os/Handler;

    if-eqz p1, :cond_a

    invoke-virtual {p1, v6}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/android/settings/vpn2/VpnSettings;->mUpdater:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v6, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_4

    :catchall_0
    move-exception p1

    goto :goto_5

    :cond_a
    :goto_4
    monitor-exit p0

    return v0

    :goto_5
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public init(Landroidx/preference/PreferenceScreen;Lcom/android/settings/vpn2/AdvancedVpnFeatureProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/vpn2/VpnSettings;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    iput-object p2, p0, Lcom/android/settings/vpn2/VpnSettings;->mFeatureProvider:Lcom/android/settings/vpn2/AdvancedVpnFeatureProvider;

    return-void
.end method

.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->onActivityCreated(Landroid/os/Bundle;)V

    const-string p1, "user"

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/android/settings/vpn2/VpnSettings;->mUserManager:Landroid/os/UserManager;

    const-string p1, "connectivity"

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lcom/android/settings/vpn2/VpnSettings;->mConnectivityManager:Landroid/net/ConnectivityManager;

    const-string p1, "vpn_management"

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/VpnManager;

    iput-object p1, p0, Lcom/android/settings/vpn2/VpnSettings;->mVpnManager:Landroid/net/VpnManager;

    sget-object p1, Lcom/android/settings/overlay/FeatureFactoryImpl;->_factory:Lcom/android/settings/overlay/FeatureFactoryImpl;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lcom/android/settings/overlay/FeatureFactoryImpl;->advancedVpnFeatureProvider$delegate:Lkotlin/Lazy;

    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/vpn2/AdvancedVpnFeatureProviderImpl;

    iput-object p1, p0, Lcom/android/settings/vpn2/VpnSettings;->mFeatureProvider:Lcom/android/settings/vpn2/AdvancedVpnFeatureProvider;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->isUiRestricted()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/vpn2/VpnSettings;->mUnavailable:Z

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/vpn2/VpnSettings;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/vpn2/VpnSettings;->mVpnPreferenceGroup:Landroidx/preference/PreferenceScreen;

    const-string p1, "security.ucmcrypto"

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    const-string v1, "persist.security.ucmcrypto"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez p1, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    new-instance p1, Lcom/android/settings/vpn2/VpnSettings$UcmAliasLoader;

    invoke-direct {p1, p0}, Lcom/android/settings/vpn2/VpnSettings$UcmAliasLoader;-><init>(Lcom/android/settings/vpn2/VpnSettings;)V

    iput-object p1, p0, Lcom/android/settings/vpn2/VpnSettings;->mUcmAliasLoader:Lcom/android/settings/vpn2/VpnSettings$UcmAliasLoader;

    new-array p0, v0, [Ljava/lang/Void;

    invoke-virtual {p1, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_1
    return-void

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "No feature factory configured"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05005c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.software.ipsec_tunnels"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string p0, "VpnSettings"

    const-string p1, "FEATURE_IPSEC_TUNNELS missing from system, cannot create new VPNs"

    invoke-static {p0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const v0, 0x7f0f002b

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const p2, 0x7f0a0959

    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/vpn2/VpnSettings;->mProgressMenuItem:Landroid/view/MenuItem;

    const v0, 0x7f0d09ef

    invoke-interface {p2, v0}, Landroid/view/MenuItem;->setActionView(I)Landroid/view/MenuItem;

    iget-object p2, p0, Lcom/android/settings/vpn2/VpnSettings;->mProgressMenuItem:Landroid/view/MenuItem;

    const/4 v0, 0x2

    invoke-interface {p2, v0}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const p2, 0x7f0a112d

    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/vpn2/VpnSettings;->mVpnCreateMenuItem:Landroid/view/MenuItem;

    iget-object p1, p0, Lcom/android/settings/vpn2/VpnSettings;->mUcmAliasLoader:Lcom/android/settings/vpn2/VpnSettings$UcmAliasLoader;

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    iget-boolean p1, p1, Lcom/android/settings/vpn2/VpnSettings$UcmAliasLoader;->isRunning:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/settings/vpn2/VpnSettings;->mProgressMenuItem:Landroid/view/MenuItem;

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object p0, p0, Lcom/android/settings/vpn2/VpnSettings;->mVpnCreateMenuItem:Landroid/view/MenuItem;

    invoke-interface {p0, p2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/android/settings/vpn2/VpnSettings;->mProgressMenuItem:Landroid/view/MenuItem;

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object p0, p0, Lcom/android/settings/vpn2/VpnSettings;->mVpnCreateMenuItem:Landroid/view/MenuItem;

    invoke-interface {p0, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_0
    return-void
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 8

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0a112d

    if-ne v0, v1, :cond_2

    iget p1, p0, Lcom/android/settings/vpn2/VpnSettings;->mIsUserAddProfilesAllowed:I

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    :goto_0
    iget-object p1, p0, Lcom/android/settings/vpn2/VpnSettings;->mLegacyVpnPreferences:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    check-cast p1, Landroid/util/ArrayMap;

    invoke-virtual {p1, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    goto :goto_0

    :cond_1
    new-instance v3, Lcom/android/internal/net/VpnProfile;

    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1}, Lcom/android/internal/net/VpnProfile;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/vpn2/VpnSettings;->userCert:[Ljava/lang/String;

    iget-object v7, p0, Lcom/android/settings/vpn2/VpnSettings;->caCert:[Ljava/lang/String;

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Lcom/android/settings/vpn2/ConfigDialogFragment;->show(Lcom/android/settings/vpn2/VpnSettings;Lcom/android/internal/net/VpnProfile;ZZ[Ljava/lang/String;[Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_2
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public final onPause()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/settings/vpn2/VpnSettings;->mUnavailable:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/android/settings/vpn2/VpnSettings;->mNetworkCallback:Lcom/android/settings/vpn2/VpnSettings$5;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->mUpdater:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/settings/vpn2/VpnSettings;->mUpdater:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->mUpdaterThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    iput-object v1, p0, Lcom/android/settings/vpn2/VpnSettings;->mUpdaterThread:Landroid/os/HandlerThread;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 11

    instance-of v0, p1, Lcom/android/settings/vpn2/LegacyVpnPreference;

    const-string v1, "VpnSettings"

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    check-cast p1, Lcom/android/settings/vpn2/LegacyVpnPreference;

    iget-object v5, p1, Lcom/android/settings/vpn2/LegacyVpnPreference;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object p1, p0, Lcom/android/settings/vpn2/VpnSettings;->mConnectedLegacyVpn:Lcom/android/internal/net/LegacyVpnInfo;

    if-eqz p1, :cond_0

    iget-object v0, v5, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/internal/net/LegacyVpnInfo;->key:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/vpn2/VpnSettings;->mConnectedLegacyVpn:Lcom/android/internal/net/LegacyVpnInfo;

    iget v0, p1, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    if-ne v0, v2, :cond_0

    :try_start_0
    iget-object p1, p1, Lcom/android/internal/net/LegacyVpnInfo;->intent:Landroid/app/PendingIntent;

    invoke-virtual {p1}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :catch_0
    move-exception p1

    const-string v0, "Starting config intent failed"

    invoke-static {v1, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    iget-object v8, p0, Lcom/android/settings/vpn2/VpnSettings;->userCert:[Ljava/lang/String;

    iget-object v9, p0, Lcom/android/settings/vpn2/VpnSettings;->caCert:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v4, p0

    invoke-static/range {v4 .. v9}, Lcom/android/settings/vpn2/ConfigDialogFragment;->show(Lcom/android/settings/vpn2/VpnSettings;Lcom/android/internal/net/VpnProfile;ZZ[Ljava/lang/String;[Ljava/lang/String;)V

    return v3

    :cond_1
    instance-of v0, p1, Lcom/android/settings/vpn2/AppPreference;

    const/4 v4, 0x0

    if-eqz v0, :cond_6

    check-cast p1, Lcom/android/settings/vpn2/AppPreference;

    iget v0, p1, Lcom/android/settings/vpn2/ManageablePreference;->mState:I

    if-ne v0, v2, :cond_2

    move v10, v3

    goto :goto_0

    :cond_2
    move v10, v4

    :goto_0
    iget-object v0, p1, Lcom/android/settings/vpn2/AppPreference;->mPackageName:Ljava/lang/String;

    if-eqz v10, :cond_3

    iget-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->mFeatureProvider:Lcom/android/settings/vpn2/AdvancedVpnFeatureProvider;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_1

    :cond_3
    :try_start_1
    iget v2, p1, Lcom/android/settings/vpn2/ManageablePreference;->mUserId:I

    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v4, v2}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v5, v0, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    return v3

    :catch_1
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "VPN provider does not exist: "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p1, Lcom/android/settings/vpn2/AppPreference;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    :goto_1
    :try_start_2
    iget v0, p1, Lcom/android/settings/vpn2/ManageablePreference;->mUserId:I

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v4, v0}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p1, Lcom/android/settings/vpn2/AppPreference;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    move-object v7, v0

    goto :goto_3

    :catch_2
    const/4 v0, 0x0

    goto :goto_2

    :goto_3
    iget-object v8, p1, Lcom/android/settings/vpn2/AppPreference;->mName:Ljava/lang/String;

    if-nez v10, :cond_5

    goto :goto_4

    :cond_5
    const/4 v6, 0x0

    const/4 v9, 0x0

    move-object v5, p0

    invoke-static/range {v5 .. v10}, Lcom/android/settings/vpn2/AppDialogFragment;->show(Landroidx/fragment/app/Fragment;Lcom/android/settings/vpn2/AppManagementFragment$1;Landroid/content/pm/PackageInfo;Ljava/lang/String;ZZ)V

    :goto_4
    return v3

    :cond_6
    return v4
.end method

.method public final onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 7

    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->isUiRestrictedByOnlyAdmin()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {p1, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->getRestrictionEnforcedAdmin()Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->setMenuItemAsDisabledByAdmin(Landroid/content/Context;Landroid/view/MenuItem;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    goto :goto_2

    :cond_0
    iget-boolean v2, p0, Lcom/android/settings/vpn2/VpnSettings;->mUnavailable:Z

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    invoke-interface {p1, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    iget v5, p0, Lcom/android/settings/vpn2/VpnSettings;->mIsUserAddProfilesAllowed:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    invoke-interface {v4}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    const v6, 0x7f0a112d

    if-ne v5, v6, :cond_2

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/settings/vpn2/VpnSettings;->mIsUserAddProfilesAllowed:I

    if-ne v2, v3, :cond_1

    goto :goto_1

    :cond_1
    move v3, v0

    :goto_1
    move v2, v3

    :cond_2
    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final onResume()V
    .locals 5

    invoke-super {p0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->onResume()V

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f14322c

    invoke-virtual {v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)V

    const v2, 0x7f14322b

    invoke-virtual {v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)V

    new-instance v2, Lcom/android/settings/vpn2/VpnSettings$1;

    invoke-direct {v2, p0}, Lcom/android/settings/vpn2/VpnSettings$1;-><init>(Lcom/android/settings/vpn2/VpnSettings;)V

    const v3, 0x7f141b4c

    invoke-virtual {v0, v3, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    new-instance v2, Lcom/android/settings/vpn2/VpnSettings$2;

    invoke-direct {v2, p0}, Lcom/android/settings/vpn2/VpnSettings$2;-><init>(Lcom/android/settings/vpn2/VpnSettings;)V

    const v3, 0x7f1408bf

    invoke-virtual {v0, v3, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    new-instance v2, Lcom/android/settings/vpn2/VpnSettings$3;

    invoke-direct {v2, p0}, Lcom/android/settings/vpn2/VpnSettings$3;-><init>(Lcom/android/settings/vpn2/VpnSettings;)V

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v2}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isLockMenuDisabledByEdm(Landroid/content/Context;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    const-string v0, "false"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const-string v3, "content://com.sec.knox.provider2/vpnPolicy"

    const-string v4, "isUserAddProfilesAllowed"

    invoke-static {v2, v3, v4, v0}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/vpn2/VpnSettings;->mIsUserAddProfilesAllowed:I

    iget-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->mUserManager:Landroid/os/UserManager;

    const-string v2, "no_config_vpn"

    invoke-virtual {v0, v2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/vpn2/VpnSettings;->mUnavailable:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->isUiRestrictedByOnlyAdmin()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->mEmptyTextView:Landroid/widget/TextView;

    const v1, 0x7f143231

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_1
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->mEmptyTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->setEmptyView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->mEmptyTextView:Landroid/widget/TextView;

    const v2, 0x7f143215

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->mConnectivityManager:Landroid/net/ConnectivityManager;

    sget-object v2, Lcom/android/settings/vpn2/VpnSettings;->VPN_REQUEST:Landroid/net/NetworkRequest;

    iget-object v3, p0, Lcom/android/settings/vpn2/VpnSettings;->mNetworkCallback:Lcom/android/settings/vpn2/VpnSettings$5;

    invoke-virtual {v0, v2, v3}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "Refresh VPN list in background"

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->mUpdaterThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/settings/vpn2/VpnSettings;->mUpdaterThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->mUpdater:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "content://com.sec.knox.provider/RestrictionPolicy4"

    const-string v2, "isVpnAllowed"

    invoke-static {v0, v1, v2}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    :cond_3
    return-void
.end method

.method public setShownAdvancedPreferences(Ljava/util/Collection;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroidx/preference/Preference;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->mLegacyVpnPreferences:Ljava/util/Map;

    check-cast v0, Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->retainAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->mAppPreferences:Ljava/util/Map;

    check-cast v0, Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->retainAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    const-string v1, "advanced_vpn_group"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceGroup;

    iget-object v1, p0, Lcom/android/settings/vpn2/VpnSettings;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    const-string v2, "vpn_group"

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/PreferenceGroup;

    iget-object v2, p0, Lcom/android/settings/vpn2/VpnSettings;->mFeatureProvider:Lcom/android/settings/vpn2/AdvancedVpnFeatureProvider;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/settings/vpn2/VpnSettings;->mFeatureProvider:Lcom/android/settings/vpn2/AdvancedVpnFeatureProvider;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-static {v0, p1}, Lcom/android/settings/vpn2/VpnSettings;->updatePreferenceGroup(Landroidx/preference/PreferenceGroup;Ljava/util/Collection;)V

    invoke-static {v1, p1}, Lcom/android/settings/vpn2/VpnSettings;->updatePreferenceGroup(Landroidx/preference/PreferenceGroup;Ljava/util/Collection;)V

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/preference/Preference;

    instance-of v4, v3, Lcom/android/settings/vpn2/LegacyVpnPreference;

    if-eqz v4, :cond_0

    move-object v4, v3

    check-cast v4, Lcom/android/settings/vpn2/LegacyVpnPreference;

    invoke-virtual {v4}, Lcom/android/settingslib/RestrictedPreference;->getPackageName()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_0
    instance-of v4, v3, Lcom/android/settings/vpn2/AppPreference;

    if-eqz v4, :cond_1

    move-object v4, v3

    check-cast v4, Lcom/android/settings/vpn2/AppPreference;

    iget-object v4, v4, Lcom/android/settings/vpn2/AppPreference;->mPackageName:Ljava/lang/String;

    goto :goto_1

    :cond_1
    const-string v4, ""

    :goto_1
    sget-boolean v5, Lcom/android/settings/vpn2/VpnSettings;->DEBUG:Z

    if-eqz v5, :cond_2

    const-string v5, "setShownAdvancedPreferences() package name : "

    const-string v6, "VpnSettings"

    invoke-static {v5, v4, v6}, Landroidx/fragment/app/DialogFragment$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v5, p0, Lcom/android/settings/vpn2/VpnSettings;->mFeatureProvider:Lcom/android/settings/vpn2/AdvancedVpnFeatureProvider;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v0, v3}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v1, v3}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result p0

    const/4 p1, 0x0

    const/4 v2, 0x1

    if-lez p0, :cond_5

    move p0, v2

    goto :goto_2

    :cond_5
    move p0, p1

    :goto_2
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setVisible(Z)V

    invoke-virtual {v1}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result p0

    if-lez p0, :cond_6

    move p1, v2

    :cond_6
    invoke-virtual {v1, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method

.method public setShownPreferences(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroidx/preference/Preference;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->mLegacyVpnPreferences:Ljava/util/Map;

    check-cast v0, Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->retainAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->mAppPreferences:Ljava/util/Map;

    check-cast v0, Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->retainAll(Ljava/util/Collection;)Z

    iget-object p0, p0, Lcom/android/settings/vpn2/VpnSettings;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    invoke-static {p0, p1}, Lcom/android/settings/vpn2/VpnSettings;->updatePreferenceGroup(Landroidx/preference/PreferenceGroup;Ljava/util/Collection;)V

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/preference/Preference;

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    goto :goto_0

    :cond_0
    return-void
.end method
