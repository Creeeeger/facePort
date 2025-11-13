.class public Lcom/android/settings/vpn2/VpnSettings;
.super Lcom/android/settings/RestrictedSettingsFragment;
.source "VpnSettings.java"

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
.field private static final VPN_REQUEST:Landroid/net/NetworkRequest;


# instance fields
.field private mAppPreferences:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/settings/vpn2/AppVpnInfo;",
            "Lcom/android/settings/vpn2/AppPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectedLegacyVpn:Lcom/android/internal/net/LegacyVpnInfo;

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mGearListener:Lcom/samsung/android/settings/widget/SecGearPreference$OnGearClickListener;

.field private mIsUserAddProfilesAllowed:I

.field private mLegacyVpnPreferences:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/settings/vpn2/LegacyVpnPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private mUnavailable:Z

.field private mUpdater:Landroid/os/Handler;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field private mUpdaterThread:Landroid/os/HandlerThread;

.field private mUserManager:Landroid/os/UserManager;

.field private mVpnManager:Landroid/net/VpnManager;

.field private vpnSettings:Lcom/android/settings/vpn2/VpnSettings;


# direct methods
.method static bridge synthetic -$$Nest$fgetmUpdater(Lcom/android/settings/vpn2/VpnSettings;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/vpn2/VpnSettings;->mUpdater:Landroid/os/Handler;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 104
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/16 v1, 0xf

    .line 105
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->removeCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    const/16 v1, 0xd

    .line 106
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->removeCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    const/16 v1, 0xe

    .line 107
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->removeCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    .line 108
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    sput-object v0, Lcom/android/settings/vpn2/VpnSettings;->VPN_REQUEST:Landroid/net/NetworkRequest;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string/jumbo v0, "no_config_vpn"

    .line 136
    invoke-direct {p0, v0}, Lcom/android/settings/RestrictedSettingsFragment;-><init>(Ljava/lang/String;)V

    .line 114
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->mLegacyVpnPreferences:Ljava/util/Map;

    .line 115
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->mAppPreferences:Ljava/util/Map;

    .line 552
    new-instance v0, Lcom/android/settings/vpn2/VpnSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/vpn2/VpnSettings$2;-><init>(Lcom/android/settings/vpn2/VpnSettings;)V

    iput-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->mGearListener:Lcom/samsung/android/settings/widget/SecGearPreference$OnGearClickListener;

    .line 569
    new-instance v0, Lcom/android/settings/vpn2/VpnSettings$3;

    invoke-direct {v0, p0}, Lcom/android/settings/vpn2/VpnSettings$3;-><init>(Lcom/android/settings/vpn2/VpnSettings;)V

    iput-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/vpn2/VpnSettings;)Landroid/content/Context;
    .locals 0

    .line 97
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method private emptyViewUpdate()V
    .locals 4

    .line 478
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 480
    new-instance v1, Lcom/android/settings/vpn2/VpnSettings$1;

    invoke-direct {v1, p0}, Lcom/android/settings/vpn2/VpnSettings$1;-><init>(Lcom/android/settings/vpn2/VpnSettings;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private getAlwaysOnAppVpnInfos()Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/android/settings/vpn2/AppVpnInfo;",
            ">;"
        }
    .end annotation

    .line 639
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 640
    iget-object v1, p0, Lcom/android/settings/vpn2/VpnSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    .line 641
    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    .line 642
    iget-object v3, p0, Lcom/android/settings/vpn2/VpnSettings;->mVpnManager:Landroid/net/VpnManager;

    invoke-virtual {v3, v2}, Landroid/net/VpnManager;->getAlwaysOnVpnPackageForUser(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 644
    new-instance v4, Lcom/android/settings/vpn2/AppVpnInfo;

    invoke-direct {v4, v2, v3}, Lcom/android/settings/vpn2/AppVpnInfo;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private getConnectedAppVpns()Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/android/settings/vpn2/AppVpnInfo;",
            ">;"
        }
    .end annotation

    .line 627
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 628
    iget-object v1, p0, Lcom/android/settings/vpn2/VpnSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    .line 629
    iget-object v3, p0, Lcom/android/settings/vpn2/VpnSettings;->mVpnManager:Landroid/net/VpnManager;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/net/VpnManager;->getVpnConfig(I)Lcom/android/internal/net/VpnConfig;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 630
    iget-boolean v4, v3, Lcom/android/internal/net/VpnConfig;->legacy:Z

    if-nez v4, :cond_0

    .line 631
    new-instance v4, Lcom/android/settings/vpn2/AppVpnInfo;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    iget-object v3, v3, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    invoke-direct {v4, v2, v3}, Lcom/android/settings/vpn2/AppVpnInfo;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private getConnectedLegacyVpns()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/internal/net/LegacyVpnInfo;",
            ">;"
        }
    .end annotation

    .line 617
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->mVpnManager:Landroid/net/VpnManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/VpnManager;->getLegacyVpnInfo(I)Lcom/android/internal/net/LegacyVpnInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->mConnectedLegacyVpn:Lcom/android/internal/net/LegacyVpnInfo;

    if-eqz v0, :cond_0

    .line 619
    iget-object p0, v0, Lcom/android/internal/net/LegacyVpnInfo;->key:Ljava/lang/String;

    invoke-static {p0, v0}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p0

    return-object p0

    .line 621
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method static getVpnApps(Landroid/content/Context;Z)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/android/settings/vpn2/AppVpnInfo;",
            ">;"
        }
    .end annotation

    .line 651
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    if-nez p0, :cond_0

    const-string p0, "VpnSettings"

    const-string p1, "context null exit!"

    .line 656
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object v0

    :cond_0
    if-eqz p1, :cond_1

    .line 662
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    .line 663
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    .line 664
    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 667
    :cond_1
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    :cond_2
    const-string v1, "appops"

    .line 671
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    const/4 v2, 0x2

    new-array v2, v2, [I

    .line 672
    fill-array-data v2, :array_0

    .line 673
    invoke-virtual {v1, v2}, Landroid/app/AppOpsManager;->getPackagesForOps([I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 675
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AppOpsManager$PackageOps;

    .line 676
    invoke-virtual {v2}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 677
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_1

    :cond_4
    const/4 v4, 0x0

    .line 683
    invoke-virtual {v2}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/AppOpsManager$OpEntry;

    .line 684
    invoke-virtual {v6}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v7

    const/16 v8, 0x2f

    if-eq v7, v8, :cond_6

    invoke-virtual {v6}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v7

    const/16 v8, 0x5e

    if-ne v7, v8, :cond_5

    .line 685
    :cond_6
    invoke-virtual {v6}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v6

    if-nez v6, :cond_5

    const/4 v4, 0x1

    goto :goto_2

    :cond_7
    if-eqz v4, :cond_3

    .line 691
    invoke-virtual {v2}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/settings/vpn2/VpnSettings;->isSecureWifiPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    goto :goto_1

    .line 696
    :cond_8
    new-instance v4, Lcom/android/settings/vpn2/AppVpnInfo;

    invoke-virtual {v2}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v3, v2}, Lcom/android/settings/vpn2/AppVpnInfo;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 701
    :cond_9
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object v0

    :array_0
    .array-data 4
        0x2f
        0x5e
    .end array-data
.end method

.method private static isSecureWifiPackage(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    const-string v0, "com.samsung.android.fast"

    .line 720
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 721
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string p1, "android"

    .line 722
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const-string p0, "VpnSettings"

    const-string p1, "Secure Wi-Fi signature mismatched"

    .line 725
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private static loadVpnProfiles()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/net/VpnProfile;",
            ">;"
        }
    .end annotation

    .line 706
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    const-string v1, "VPN_"

    .line 708
    invoke-static {v1}, Landroid/security/LegacyVpnProfileStore;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 709
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 710
    invoke-static {v6}, Landroid/security/LegacyVpnProfileStore;->get(Ljava/lang/String;)[B

    move-result-object v6

    .line 709
    invoke-static {v5, v6}, Lcom/android/internal/net/VpnProfile;->decode(Ljava/lang/String;[B)Lcom/android/internal/net/VpnProfile;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 712
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public canAddPreferences()Z
    .locals 0

    .line 447
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p0

    return p0
.end method

.method public findOrCreatePreference(Lcom/android/settings/vpn2/AppVpnInfo;)Lcom/android/settings/vpn2/AppPreference;
    .locals 4

    .line 605
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->mAppPreferences:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/vpn2/AppPreference;

    if-nez v0, :cond_0

    .line 607
    new-instance v0, Lcom/android/settings/vpn2/AppPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p1, Lcom/android/settings/vpn2/AppVpnInfo;->userId:I

    iget-object v3, p1, Lcom/android/settings/vpn2/AppVpnInfo;->packageName:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/vpn2/AppPreference;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 608
    iget-object v1, p0, Lcom/android/settings/vpn2/VpnSettings;->mGearListener:Lcom/samsung/android/settings/widget/SecGearPreference$OnGearClickListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/SecGearPreference;->setOnGearClickListener(Lcom/samsung/android/settings/widget/SecGearPreference$OnGearClickListener;)V

    .line 609
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 610
    iget-object p0, p0, Lcom/android/settings/vpn2/VpnSettings;->mAppPreferences:Ljava/util/Map;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public findOrCreatePreference(Lcom/android/internal/net/VpnProfile;Z)Lcom/android/settings/vpn2/LegacyVpnPreference;
    .locals 2

    .line 587
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->mLegacyVpnPreferences:Ljava/util/Map;

    iget-object v1, p1, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/vpn2/LegacyVpnPreference;

    if-nez v0, :cond_0

    .line 590
    new-instance v0, Lcom/android/settings/vpn2/LegacyVpnPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/vpn2/LegacyVpnPreference;-><init>(Landroid/content/Context;)V

    .line 591
    iget-object v1, p0, Lcom/android/settings/vpn2/VpnSettings;->mGearListener:Lcom/samsung/android/settings/widget/SecGearPreference$OnGearClickListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/SecGearPreference;->setOnGearClickListener(Lcom/samsung/android/settings/widget/SecGearPreference$OnGearClickListener;)V

    .line 592
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 593
    iget-object p0, p0, Lcom/android/settings/vpn2/VpnSettings;->mLegacyVpnPreferences:Ljava/util/Map;

    iget-object v1, p1, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    if-eqz p2, :cond_2

    .line 598
    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/settings/vpn2/LegacyVpnPreference;->setProfile(Lcom/android/internal/net/VpnProfile;)V

    :cond_2
    return-object v0
.end method

.method public getHelpResource()I
    .locals 0

    .line 549
    sget p0, Lcom/android/settings/R$string;->help_url_vpn:I

    return p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x64

    return p0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 8

    .line 324
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 328
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 331
    invoke-static {}, Lcom/android/settings/vpn2/VpnSettings;->loadVpnProfiles()Ljava/util/List;

    move-result-object v2

    .line 332
    invoke-static {v1, v0}, Lcom/android/settings/vpn2/VpnSettings;->getVpnApps(Landroid/content/Context;Z)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_1

    const-string p0, "VpnSettings"

    const-string p1, "context null exit!"

    .line 336
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 340
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/vpn2/VpnSettings;->getConnectedLegacyVpns()Ljava/util/Map;

    move-result-object v3

    .line 341
    invoke-direct {p0}, Lcom/android/settings/vpn2/VpnSettings;->getConnectedAppVpns()Ljava/util/Set;

    move-result-object v4

    .line 343
    invoke-direct {p0}, Lcom/android/settings/vpn2/VpnSettings;->getAlwaysOnAppVpnInfos()Ljava/util/Set;

    move-result-object v5

    .line 344
    invoke-static {}, Lcom/android/settings/vpn2/VpnUtils;->getLockdownVpn()Ljava/lang/String;

    move-result-object v6

    .line 347
    new-instance v7, Lcom/android/settings/vpn2/VpnSettings$UpdatePreferences;

    invoke-direct {v7, p0}, Lcom/android/settings/vpn2/VpnSettings$UpdatePreferences;-><init>(Lcom/android/settings/vpn2/VpnSettings;)V

    .line 348
    invoke-virtual {v7, v2, v3, v6}, Lcom/android/settings/vpn2/VpnSettings$UpdatePreferences;->legacyVpns(Ljava/util/List;Ljava/util/Map;Ljava/lang/String;)Lcom/android/settings/vpn2/VpnSettings$UpdatePreferences;

    move-result-object v2

    .line 349
    invoke-virtual {v2, v1, v4, v5}, Lcom/android/settings/vpn2/VpnSettings$UpdatePreferences;->appVpns(Ljava/util/List;Ljava/util/Set;Ljava/util/Set;)Lcom/android/settings/vpn2/VpnSettings$UpdatePreferences;

    move-result-object v1

    .line 347
    invoke-virtual {p1, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 351
    monitor-enter p0

    .line 352
    :try_start_0
    iget-object p1, p0, Lcom/android/settings/vpn2/VpnSettings;->mUpdater:Landroid/os/Handler;

    if-eqz p1, :cond_2

    const/4 v1, 0x0

    .line 353
    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 354
    iget-object p1, p0, Lcom/android/settings/vpn2/VpnSettings;->mUpdater:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 356
    :cond_2
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 146
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 148
    iput-object p0, p0, Lcom/android/settings/vpn2/VpnSettings;->vpnSettings:Lcom/android/settings/vpn2/VpnSettings;

    const-string/jumbo p1, "user"

    .line 151
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/android/settings/vpn2/VpnSettings;->mUserManager:Landroid/os/UserManager;

    const-string p1, "connectivity"

    .line 152
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lcom/android/settings/vpn2/VpnSettings;->mConnectivityManager:Landroid/net/ConnectivityManager;

    const-string/jumbo p1, "vpn_management"

    .line 153
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/VpnManager;

    iput-object p1, p0, Lcom/android/settings/vpn2/VpnSettings;->mVpnManager:Landroid/net/VpnManager;

    .line 155
    invoke-virtual {p0}, Lcom/android/settings/RestrictedSettingsFragment;->isUiRestricted()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/vpn2/VpnSettings;->mUnavailable:Z

    xor-int/lit8 p1, p1, 0x1

    .line 156
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    .line 158
    sget p1, Lcom/android/settings/R$xml;->vpn_settings2:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .line 175
    invoke-super {p0, p1, p2}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 178
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "android.software.ipsec_tunnels"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "VpnSettings"

    const-string p1, "FEATURE_IPSEC_TUNNELS missing from system, cannot create new VPNs"

    .line 180
    invoke-static {p0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 184
    :cond_0
    sget p0, Lcom/android/settings/R$menu;->vpn:I

    invoke-virtual {p2, p0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    .line 222
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lcom/android/settings/R$id;->vpn_create:I

    if-ne v0, v1, :cond_2

    .line 224
    iget p1, p0, Lcom/android/settings/vpn2/VpnSettings;->mIsUserAddProfilesAllowed:I

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 229
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 230
    :goto_0
    iget-object p1, p0, Lcom/android/settings/vpn2/VpnSettings;->mLegacyVpnPreferences:Ljava/util/Map;

    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    goto :goto_0

    .line 233
    :cond_1
    new-instance p1, Lcom/android/internal/net/VpnProfile;

    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/android/internal/net/VpnProfile;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 234
    invoke-static {p0, p1, v1, v0}, Lcom/android/settings/vpn2/ConfigDialogFragment;->show(Lcom/android/settings/vpn2/VpnSettings;Lcom/android/internal/net/VpnProfile;ZZ)V

    .line 236
    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings;->getMetricsCategory()I

    move-result p0

    const/16 p1, 0xea6

    invoke-static {p0, p1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    return v1

    .line 240
    :cond_2
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public onPause()V
    .locals 2

    .line 303
    iget-boolean v0, p0, Lcom/android/settings/vpn2/VpnSettings;->mUnavailable:Z

    if-eqz v0, :cond_0

    .line 304
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    return-void

    .line 309
    :cond_0
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/android/settings/vpn2/VpnSettings;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 311
    monitor-enter p0

    .line 312
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->mUpdater:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 313
    iput-object v1, p0, Lcom/android/settings/vpn2/VpnSettings;->mUpdater:Landroid/os/Handler;

    .line 314
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->mUpdaterThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 315
    iput-object v1, p0, Lcom/android/settings/vpn2/VpnSettings;->mUpdaterThread:Landroid/os/HandlerThread;

    .line 316
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 318
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    return-void

    :catchall_0
    move-exception v0

    .line 316
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 9

    .line 499
    instance-of v0, p1, Lcom/android/settings/vpn2/LegacyVpnPreference;

    const-string v1, "VpnSettings"

    const/16 v2, 0xeac

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v0, :cond_1

    .line 500
    check-cast p1, Lcom/android/settings/vpn2/LegacyVpnPreference;

    .line 501
    invoke-virtual {p1}, Lcom/android/settings/vpn2/LegacyVpnPreference;->getProfile()Lcom/android/internal/net/VpnProfile;

    move-result-object p1

    .line 502
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->mConnectedLegacyVpn:Lcom/android/internal/net/LegacyVpnInfo;

    if-eqz v0, :cond_0

    iget-object v6, p1, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    iget-object v0, v0, Lcom/android/internal/net/LegacyVpnInfo;->key:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->mConnectedLegacyVpn:Lcom/android/internal/net/LegacyVpnInfo;

    iget v6, v0, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    if-ne v6, v3, :cond_0

    .line 505
    :try_start_0
    iget-object v0, v0, Lcom/android/internal/net/LegacyVpnInfo;->intent:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v5

    :catch_0
    move-exception v0

    const-string v3, "Starting config intent failed"

    .line 508
    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 512
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings;->getMetricsCategory()I

    move-result v0

    invoke-static {v0, v2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    .line 514
    invoke-static {p0, p1, v4, v5}, Lcom/android/settings/vpn2/ConfigDialogFragment;->show(Lcom/android/settings/vpn2/VpnSettings;Lcom/android/internal/net/VpnProfile;ZZ)V

    return v5

    .line 516
    :cond_1
    instance-of v0, p1, Lcom/android/settings/vpn2/AppPreference;

    if-eqz v0, :cond_4

    .line 517
    check-cast p1, Lcom/android/settings/vpn2/AppPreference;

    .line 518
    invoke-virtual {p1}, Lcom/android/settings/vpn2/ManageablePreference;->getState()I

    move-result v0

    if-ne v0, v3, :cond_2

    move v0, v5

    goto :goto_0

    :cond_2
    move v0, v4

    :goto_0
    if-nez v0, :cond_3

    .line 522
    :try_start_1
    invoke-virtual {p1}, Lcom/android/settings/vpn2/ManageablePreference;->getUserId()I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    .line 523
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v6

    .line 524
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 523
    invoke-virtual {v6, v7, v4, v3}, Landroid/app/Activity;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v6

    .line 525
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 526
    invoke-virtual {p1}, Lcom/android/settings/vpn2/AppPreference;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 528
    invoke-virtual {v6, v7, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    return v5

    :catch_1
    move-exception v3

    .line 532
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "VPN provider does not exist: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/settings/vpn2/AppPreference;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 537
    :cond_3
    invoke-virtual {p1}, Lcom/android/settings/vpn2/AppPreference;->getPackageInfo()Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 538
    invoke-virtual {p1}, Lcom/android/settings/vpn2/AppPreference;->getLabel()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v1, p1, v4, v0}, Lcom/android/settings/vpn2/AppDialogFragment;->show(Landroidx/fragment/app/Fragment;Landroid/content/pm/PackageInfo;Ljava/lang/String;ZZ)V

    .line 540
    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings;->getMetricsCategory()I

    move-result p0

    invoke-static {p0, v2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    return v5

    :cond_4
    return v4
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 7

    .line 190
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    const/4 v0, 0x0

    move v1, v0

    .line 193
    :goto_0
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 194
    invoke-virtual {p0}, Lcom/android/settings/RestrictedSettingsFragment;->isUiRestrictedByOnlyAdmin()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 195
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v2

    .line 196
    invoke-interface {p1, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/RestrictedSettingsFragment;->getRestrictionEnforcedAdmin()Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v4

    .line 195
    invoke-static {v2, v3, v4}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->setMenuItemAsDisabledByAdmin(Landroid/content/Context;Landroid/view/MenuItem;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    goto :goto_2

    .line 201
    :cond_0
    iget-boolean v2, p0, Lcom/android/settings/vpn2/VpnSettings;->mUnavailable:Z

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    .line 202
    invoke-interface {p1, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 206
    iget v5, p0, Lcom/android/settings/vpn2/VpnSettings;->mIsUserAddProfilesAllowed:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    .line 208
    invoke-interface {v4}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    sget v6, Lcom/android/settings/R$id;->vpn_create:I

    if-ne v5, v6, :cond_2

    if-eqz v2, :cond_1

    .line 209
    iget v2, p0, Lcom/android/settings/vpn2/VpnSettings;->mIsUserAddProfilesAllowed:I

    if-ne v2, v3, :cond_1

    goto :goto_1

    :cond_1
    move v3, v0

    :goto_1
    move v2, v3

    .line 213
    :cond_2
    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public onResume()V
    .locals 4

    .line 245
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onResume()V

    .line 248
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/android/settings/R$id;->container_material:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/16 v1, 0xf

    .line 249
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->semSetRoundedCorners(I)V

    .line 250
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$color;->sec_widget_round_and_bgcolor:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->semSetRoundedCornerColor(II)V

    const-string v0, "false"

    .line 255
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 256
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-string v2, "content://com.sec.knox.provider2/vpnPolicy"

    const-string v3, "isUserAddProfilesAllowed"

    invoke-static {v1, v2, v3, v0}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/vpn2/VpnSettings;->mIsUserAddProfilesAllowed:I

    .line 261
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->mUserManager:Landroid/os/UserManager;

    const-string/jumbo v1, "no_config_vpn"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/vpn2/VpnSettings;->mUnavailable:Z

    if-eqz v0, :cond_1

    .line 264
    invoke-virtual {p0}, Lcom/android/settings/RestrictedSettingsFragment;->isUiRestrictedByOnlyAdmin()Z

    move-result v0

    if-nez v0, :cond_0

    .line 265
    invoke-virtual {p0}, Lcom/android/settings/RestrictedSettingsFragment;->getEmptyTextView()Landroid/widget/TextView;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->vpn_settings_not_available:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 267
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    return-void

    .line 275
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/vpn2/VpnSettings;->emptyViewUpdate()V

    .line 280
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->mConnectivityManager:Landroid/net/ConnectivityManager;

    sget-object v1, Lcom/android/settings/vpn2/VpnSettings;->VPN_REQUEST:Landroid/net/NetworkRequest;

    iget-object v2, p0, Lcom/android/settings/vpn2/VpnSettings;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 283
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Refresh VPN list in background"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->mUpdaterThread:Landroid/os/HandlerThread;

    .line 284
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 285
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/vpn2/VpnSettings;->mUpdaterThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->mUpdater:Landroid/os/Handler;

    const/4 v1, 0x0

    .line 286
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 290
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 292
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "content://com.sec.knox.provider/RestrictionPolicy4"

    const-string v2, "isVpnAllowed"

    invoke-static {v0, v1, v2}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    .line 295
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    :cond_2
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6

    .line 164
    invoke-super {p0, p1, p2}, Landroidx/preference/PreferenceFragmentCompat;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 165
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 166
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/settings/R$dimen;->sec_widget_list_item_padding_start:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    .line 167
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/android/settings/R$dimen;->sec_app_list_item_icon_min_width:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    add-float/2addr p1, p2

    float-to-int v3, p1

    .line 168
    new-instance p1, Lcom/samsung/android/settings/widget/SecCustomDividerItemDecorator;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/android/settings/R$drawable;->sec_top_level_list_divider:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v4, Lcom/android/settings/R$id;->icon_frame:I

    const v5, 0x1020006

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/settings/widget/SecCustomDividerItemDecorator;-><init>(Landroid/graphics/drawable/Drawable;Landroid/content/Context;III)V

    .line 169
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    return-void
.end method

.method public setShownPreferences(Ljava/util/Collection;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroidx/preference/Preference;",
            ">;)V"
        }
    .end annotation

    .line 452
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->mLegacyVpnPreferences:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->retainAll(Ljava/util/Collection;)Z

    .line 453
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->mAppPreferences:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->retainAll(Ljava/util/Collection;)Z

    .line 457
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    .line 458
    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    .line 459
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v2

    .line 460
    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 461
    invoke-interface {p1, v2}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 463
    :cond_0
    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 468
    :cond_1
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/preference/Preference;

    .line 469
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_2

    .line 472
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/vpn2/VpnSettings;->emptyViewUpdate()V

    return-void
.end method
