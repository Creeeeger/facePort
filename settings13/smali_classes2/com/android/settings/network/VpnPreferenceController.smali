.class public Lcom/android/settings/network/VpnPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "VpnPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;


# static fields
.field private static final KEY_VPN_SETTINGS:Ljava/lang/String; = "vpn_settings"

.field private static final REQUEST:Landroid/net/NetworkRequest;

.field private static final TAG:Ljava/lang/String; = "VpnPreferenceController"


# instance fields
.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private mPreference:Landroidx/preference/Preference;


# direct methods
.method public static synthetic $r8$lambda$H8bpfEn3QzMTDBApRBbK-LKr1d8(Lcom/android/internal/net/VpnConfig;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/settings/network/VpnPreferenceController;->lambda$getNumberOfNonLegacyVpn$2(Lcom/android/internal/net/VpnConfig;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$O5KbORzKEUDy0YXSZrngyCl-Fog(Lcom/android/settings/network/VpnPreferenceController;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/network/VpnPreferenceController;->lambda$updateSummary$0(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VcFdqfcr6_38PLqOUdsFGFAiW9Q(Landroid/net/VpnManager;Landroid/content/pm/UserInfo;)Lcom/android/internal/net/VpnConfig;
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settings/network/VpnPreferenceController;->lambda$getNumberOfNonLegacyVpn$1(Landroid/net/VpnManager;Landroid/content/pm/UserInfo;)Lcom/android/internal/net/VpnConfig;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$an7IOiMK9v4cO96psWAfgBRqAIQ(Lcom/android/internal/net/VpnProfile;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/settings/network/VpnPreferenceController;->lambda$getInsecureVpnCount$4(Lcom/android/internal/net/VpnProfile;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$zpM1mGj6HpdENDBg4ZqUZgcaClo(Ljava/lang/String;)Lcom/android/internal/net/VpnProfile;
    .locals 0

    invoke-static {p0}, Lcom/android/settings/network/VpnPreferenceController;->lambda$getInsecureVpnCount$3(Ljava/lang/String;)Lcom/android/internal/net/VpnProfile;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 65
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/16 v1, 0xf

    .line 66
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->removeCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    const/16 v1, 0xd

    .line 67
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->removeCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    const/16 v1, 0xe

    .line 68
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->removeCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    .line 69
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    sput-object v0, Lcom/android/settings/network/VpnPreferenceController;->REQUEST:Landroid/net/NetworkRequest;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string/jumbo v0, "vpn_settings"

    .line 77
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 264
    new-instance p1, Lcom/android/settings/network/VpnPreferenceController$1;

    invoke-direct {p1, p0}, Lcom/android/settings/network/VpnPreferenceController$1;-><init>(Lcom/android/settings/network/VpnPreferenceController;)V

    iput-object p1, p0, Lcom/android/settings/network/VpnPreferenceController;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 80
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 264
    new-instance p1, Lcom/android/settings/network/VpnPreferenceController$1;

    invoke-direct {p1, p0}, Lcom/android/settings/network/VpnPreferenceController$1;-><init>(Lcom/android/settings/network/VpnPreferenceController;)V

    iput-object p1, p0, Lcom/android/settings/network/VpnPreferenceController;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    return-void
.end method

.method private static synthetic lambda$getInsecureVpnCount$3(Ljava/lang/String;)Lcom/android/internal/net/VpnProfile;
    .locals 2

    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VPN_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/security/LegacyVpnProfileStore;->get(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/net/VpnProfile;->decode(Ljava/lang/String;[B)Lcom/android/internal/net/VpnProfile;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getInsecureVpnCount$4(Lcom/android/internal/net/VpnProfile;)Z
    .locals 0

    .line 259
    iget p0, p0, Lcom/android/internal/net/VpnProfile;->type:I

    invoke-static {p0}, Lcom/android/internal/net/VpnProfile;->isLegacyType(I)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$getNumberOfNonLegacyVpn$1(Landroid/net/VpnManager;Landroid/content/pm/UserInfo;)Lcom/android/internal/net/VpnConfig;
    .locals 0

    .line 196
    iget p1, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, p1}, Landroid/net/VpnManager;->getVpnConfig(I)Lcom/android/internal/net/VpnConfig;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getNumberOfNonLegacyVpn$2(Lcom/android/internal/net/VpnConfig;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 197
    iget-boolean p0, p0, Lcom/android/internal/net/VpnConfig;->legacy:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$updateSummary$0(Ljava/lang/String;)V
    .locals 0

    .line 190
    iget-object p0, p0, Lcom/android/settings/network/VpnPreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 0

    .line 86
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 87
    invoke-virtual {p0, p1}, Lcom/android/settings/network/VpnPreferenceController;->getEffectivePreference(Landroidx/preference/PreferenceScreen;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/VpnPreferenceController;->mPreference:Landroidx/preference/Preference;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 4

    .line 118
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const/4 v2, 0x4

    if-nez v0, :cond_2

    .line 121
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/Rune;->isShopDemo(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isLDUModel()Z

    move-result v0

    if-nez v0, :cond_2

    .line 122
    invoke-static {}, Lcom/samsung/android/settings/Rune;->readSalesCode()Ljava/lang/String;

    move-result-object v0

    const-string v3, "MTR"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 126
    :cond_1
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 127
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    const-string/jumbo v3, "no_config_vpn"

    .line 126
    invoke-static {p0, v3, v0}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result p0

    if-nez p0, :cond_2

    return v1

    :cond_2
    :goto_1
    return v2
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getBackgroundWorkerClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getBackupKeys()Ljava/util/List;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getBackupKeys()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method protected getEffectivePreference(Landroidx/preference/PreferenceScreen;)Landroidx/preference/Preference;
    .locals 1

    const-string/jumbo v0, "vpn_settings"

    .line 92
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 96
    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "airplane_mode_toggleable_radios"

    invoke-static {p0, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string/jumbo v0, "wifi"

    .line 99
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    :cond_1
    return-object p1
.end method

.method protected getInsecureVpnCount([Ljava/lang/String;)I
    .locals 0

    .line 254
    new-instance p0, Lcom/android/settings/network/VpnPreferenceController$$ExternalSyntheticLambda3;

    invoke-direct {p0}, Lcom/android/settings/network/VpnPreferenceController$$ExternalSyntheticLambda3;-><init>()V

    .line 256
    invoke-static {p1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 257
    invoke-interface {p1, p0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/android/settings/network/VpnPreferenceController$$ExternalSyntheticLambda4;

    invoke-direct {p1}, Lcom/android/settings/network/VpnPreferenceController$$ExternalSyntheticLambda4;-><init>()V

    .line 259
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 260
    invoke-interface {p0}, Ljava/util/stream/Stream;->count()J

    move-result-wide p0

    long-to-int p0, p0

    return p0
.end method

.method protected getInsecureVpnSummaryOverride(Landroid/os/UserManager;Landroid/net/VpnManager;)Ljava/lang/String;
    .locals 6

    .line 204
    iget-object v0, p0, Lcom/android/settings/network/VpnPreferenceController;->mPreference:Landroidx/preference/Preference;

    instance-of v0, v0, Lcom/android/settings/vpn2/VpnInfoPreference;

    if-eqz v0, :cond_3

    const-string v0, "VPN_"

    .line 205
    invoke-static {v0}, Landroid/security/LegacyVpnProfileStore;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 206
    invoke-virtual {p0, v0}, Lcom/android/settings/network/VpnPreferenceController;->getInsecureVpnCount([Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez v1, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    .line 208
    :goto_0
    iget-object v5, p0, Lcom/android/settings/network/VpnPreferenceController;->mPreference:Landroidx/preference/Preference;

    check-cast v5, Lcom/android/settings/vpn2/VpnInfoPreference;

    invoke-virtual {v5, v4}, Lcom/android/settings/vpn2/VpnInfoPreference;->setInsecureVpn(Z)V

    if-eqz v4, :cond_3

    .line 214
    array-length v0, v0

    if-gt v0, v3, :cond_1

    .line 216
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/network/VpnPreferenceController;->getNumberOfNonLegacyVpn(Landroid/os/UserManager;Landroid/net/VpnManager;)I

    move-result p1

    add-int/2addr v0, p1

    if-ne v0, v3, :cond_1

    .line 218
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->vpn_settings_insecure_single:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    if-ne v1, v3, :cond_2

    .line 222
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->vpn_settings_single_insecure_multiple_total:I

    new-array p2, v3, [Ljava/lang/Object;

    .line 224
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p2, v2

    .line 222
    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 226
    :cond_2
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->vpn_settings_multiple_insecure_multiple_total:I

    new-array p2, v3, [Ljava/lang/Object;

    .line 228
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p2, v2

    .line 226
    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getLaunchIntent()Landroid/content/Intent;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getLaunchIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method getNameForVpnConfig(Lcom/android/internal/net/VpnConfig;Landroid/os/UserHandle;)Ljava/lang/String;
    .locals 2

    .line 237
    iget-boolean v0, p1, Lcom/android/internal/net/VpnConfig;->legacy:Z

    if-eqz v0, :cond_0

    .line 238
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->wifi_display_status_connected:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 241
    :cond_0
    iget-object p1, p1, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    .line 243
    :try_start_0
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p2}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object p0

    .line 245
    invoke-static {p0, p1}, Lcom/android/internal/net/VpnConfig;->getVpnLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 247
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Package "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not present"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "VpnPreferenceController"

    invoke-static {p2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method protected getNumberOfNonLegacyVpn(Landroid/os/UserManager;Landroid/net/VpnManager;)I
    .locals 0

    .line 195
    invoke-virtual {p1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/android/settings/network/VpnPreferenceController$$ExternalSyntheticLambda0;

    invoke-direct {p1, p2}, Lcom/android/settings/network/VpnPreferenceController$$ExternalSyntheticLambda0;-><init>(Landroid/net/VpnManager;)V

    .line 196
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/android/settings/network/VpnPreferenceController$$ExternalSyntheticLambda1;

    invoke-direct {p1}, Lcom/android/settings/network/VpnPreferenceController$$ExternalSyntheticLambda1;-><init>()V

    .line 197
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 198
    invoke-interface {p0}, Ljava/util/stream/Stream;->count()J

    move-result-wide p0

    long-to-int p0, p0

    return p0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "vpn_settings"

    return-object p0
.end method

.method public bridge synthetic getSliceHighlightMenuRes()I
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getSliceHighlightMenuRes()I

    move-result p0

    return p0
.end method

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getStatusText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getValue()Lcom/samsung/android/settings/cube/ControlValue;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getValue()Lcom/samsung/android/settings/cube/ControlValue;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic ignoreUserInteraction()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->ignoreUserInteraction()V

    return-void
.end method

.method public bridge synthetic isControllable()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->isControllable()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isPublicSlice()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isPublicSlice()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isSliceable()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isSliceable()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/cube/Controllable;->needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    move-result-object p0

    return-object p0
.end method

.method public onPause()V
    .locals 2

    .line 141
    iget-object v0, p0, Lcom/android/settings/network/VpnPreferenceController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_0

    .line 142
    iget-object v1, p0, Lcom/android/settings/network/VpnPreferenceController;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    const/4 v0, 0x0

    .line 143
    iput-object v0, p0, Lcom/android/settings/network/VpnPreferenceController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 149
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-class v1, Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/settings/network/VpnPreferenceController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 151
    sget-object v1, Lcom/android/settings/network/VpnPreferenceController;->REQUEST:Landroid/net/NetworkRequest;

    iget-object p0, p0, Lcom/android/settings/network/VpnPreferenceController;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1, p0}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 153
    iput-object v0, p0, Lcom/android/settings/network/VpnPreferenceController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    :goto_0
    return-void
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->runDefaultAction()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/cube/Controllable;->setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;

    move-result-object p0

    return-object p0
.end method

.method updateSummary()V
    .locals 4

    .line 159
    iget-object v0, p0, Lcom/android/settings/network/VpnPreferenceController;->mPreference:Landroidx/preference/Preference;

    if-nez v0, :cond_0

    return-void

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 163
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-class v2, Landroid/net/VpnManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/VpnManager;

    .line 164
    invoke-virtual {p0, v0, v1}, Lcom/android/settings/network/VpnPreferenceController;->getInsecureVpnSummaryOverride(Landroid/os/UserManager;Landroid/net/VpnManager;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_5

    .line 166
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 168
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 169
    iget v0, v0, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    goto :goto_0

    .line 171
    :cond_1
    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    .line 173
    :goto_0
    invoke-virtual {v1, v0}, Landroid/net/VpnManager;->getVpnConfig(I)Lcom/android/internal/net/VpnConfig;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 174
    iget-boolean v3, v2, Lcom/android/internal/net/VpnConfig;->legacy:Z

    if-eqz v3, :cond_3

    .line 178
    invoke-virtual {v1, v0}, Landroid/net/VpnManager;->getLegacyVpnInfo(I)Lcom/android/internal/net/LegacyVpnInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 179
    iget v1, v1, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    const/4 v3, 0x3

    if-eq v1, v3, :cond_3

    :cond_2
    const/4 v2, 0x0

    :cond_3
    if-nez v2, :cond_4

    .line 184
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->vpn_disconnected_summary:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 186
    :cond_4
    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/android/settings/network/VpnPreferenceController;->getNameForVpnConfig(Lcom/android/internal/net/VpnConfig;Landroid/os/UserHandle;)Ljava/lang/String;

    move-result-object v2

    .line 190
    :cond_5
    :goto_1
    new-instance v0, Lcom/android/settings/network/VpnPreferenceController$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, v2}, Lcom/android/settings/network/VpnPreferenceController$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/network/VpnPreferenceController;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
