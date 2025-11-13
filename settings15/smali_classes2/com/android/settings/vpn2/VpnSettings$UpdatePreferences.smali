.class Lcom/android/settings/vpn2/VpnSettings$UpdatePreferences;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/vpn2/VpnSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UpdatePreferences"
.end annotation


# instance fields
.field public alwaysOnAppVpnInfos:Ljava/util/Set;

.field public connectedAppVpns:Ljava/util/Set;

.field public connectedLegacyVpns:Ljava/util/Map;

.field public lockdownVpnKey:Ljava/lang/String;

.field public final mSettings:Lcom/android/settings/vpn2/VpnSettings;

.field public vpnApps:Ljava/util/List;

.field public vpnProfiles:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/android/settings/vpn2/VpnSettings;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/vpn2/VpnSettings$UpdatePreferences;->vpnProfiles:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/vpn2/VpnSettings$UpdatePreferences;->vpnApps:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/vpn2/VpnSettings$UpdatePreferences;->connectedLegacyVpns:Ljava/util/Map;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/vpn2/VpnSettings$UpdatePreferences;->connectedAppVpns:Ljava/util/Set;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/vpn2/VpnSettings$UpdatePreferences;->alwaysOnAppVpnInfos:Ljava/util/Set;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/vpn2/VpnSettings$UpdatePreferences;->lockdownVpnKey:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/settings/vpn2/VpnSettings$UpdatePreferences;->mSettings:Lcom/android/settings/vpn2/VpnSettings;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget-object v0, p0, Lcom/android/settings/vpn2/VpnSettings$UpdatePreferences;->mSettings:Lcom/android/settings/vpn2/VpnSettings;

    invoke-virtual {v0}, Lcom/android/settings/vpn2/VpnSettings;->canAddPreferences()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iget-object v1, p0, Lcom/android/settings/vpn2/VpnSettings$UpdatePreferences;->vpnProfiles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/net/VpnProfile;

    iget-object v6, p0, Lcom/android/settings/vpn2/VpnSettings$UpdatePreferences;->mSettings:Lcom/android/settings/vpn2/VpnSettings;

    invoke-virtual {v6, v2, v5}, Lcom/android/settings/vpn2/VpnSettings;->findOrCreatePreference(Lcom/android/internal/net/VpnProfile;Z)Lcom/android/settings/vpn2/LegacyVpnPreference;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/vpn2/VpnSettings$UpdatePreferences;->connectedLegacyVpns:Ljava/util/Map;

    iget-object v8, v2, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-interface {v7, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v3, p0, Lcom/android/settings/vpn2/VpnSettings$UpdatePreferences;->connectedLegacyVpns:Ljava/util/Map;

    iget-object v7, v2, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-interface {v3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/net/LegacyVpnInfo;

    iget v3, v3, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    invoke-virtual {v6, v3}, Lcom/android/settings/vpn2/ManageablePreference;->setState$1(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {v6, v3}, Lcom/android/settings/vpn2/ManageablePreference;->setState$1(I)V

    :goto_1
    iget-object v3, p0, Lcom/android/settings/vpn2/VpnSettings$UpdatePreferences;->lockdownVpnKey:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v7, v2, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v4, v5

    :cond_2
    iget-boolean v3, v6, Lcom/android/settings/vpn2/ManageablePreference;->mIsAlwaysOn:Z

    if-eq v3, v4, :cond_3

    iput-boolean v4, v6, Lcom/android/settings/vpn2/ManageablePreference;->mIsAlwaysOn:Z

    invoke-virtual {v6}, Lcom/android/settings/vpn2/ManageablePreference;->updateSummary()V

    :cond_3
    iget v2, v2, Lcom/android/internal/net/VpnProfile;->type:I

    invoke-static {v2}, Lcom/android/internal/net/VpnProfile;->isLegacyType(I)Z

    move-result v2

    iget-boolean v3, v6, Lcom/android/settings/vpn2/ManageablePreference;->mIsInsecureVpn:Z

    if-eq v3, v2, :cond_4

    iput-boolean v2, v6, Lcom/android/settings/vpn2/ManageablePreference;->mIsInsecureVpn:Z

    invoke-virtual {v6}, Lcom/android/settings/vpn2/ManageablePreference;->updateSummary()V

    :cond_4
    invoke-virtual {v0, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/android/settings/vpn2/VpnSettings$UpdatePreferences;->connectedLegacyVpns:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/net/LegacyVpnInfo;

    new-instance v6, Lcom/android/internal/net/VpnProfile;

    iget-object v7, v2, Lcom/android/internal/net/LegacyVpnInfo;->key:Ljava/lang/String;

    invoke-direct {v6, v7}, Lcom/android/internal/net/VpnProfile;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/settings/vpn2/VpnSettings$UpdatePreferences;->mSettings:Lcom/android/settings/vpn2/VpnSettings;

    invoke-virtual {v7, v6, v4}, Lcom/android/settings/vpn2/VpnSettings;->findOrCreatePreference(Lcom/android/internal/net/VpnProfile;Z)Lcom/android/settings/vpn2/LegacyVpnPreference;

    move-result-object v6

    iget v7, v2, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    invoke-virtual {v6, v7}, Lcom/android/settings/vpn2/ManageablePreference;->setState$1(I)V

    iget-object v7, p0, Lcom/android/settings/vpn2/VpnSettings$UpdatePreferences;->lockdownVpnKey:Ljava/lang/String;

    if-eqz v7, :cond_6

    iget-object v2, v2, Lcom/android/internal/net/LegacyVpnInfo;->key:Ljava/lang/String;

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    move v2, v5

    goto :goto_3

    :cond_6
    move v2, v4

    :goto_3
    iget-boolean v7, v6, Lcom/android/settings/vpn2/ManageablePreference;->mIsAlwaysOn:Z

    if-eq v7, v2, :cond_7

    iput-boolean v2, v6, Lcom/android/settings/vpn2/ManageablePreference;->mIsAlwaysOn:Z

    invoke-virtual {v6}, Lcom/android/settings/vpn2/ManageablePreference;->updateSummary()V

    :cond_7
    invoke-virtual {v0, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_8
    iget-object v1, p0, Lcom/android/settings/vpn2/VpnSettings$UpdatePreferences;->vpnApps:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/vpn2/AppVpnInfo;

    iget-object v4, p0, Lcom/android/settings/vpn2/VpnSettings$UpdatePreferences;->mSettings:Lcom/android/settings/vpn2/VpnSettings;

    invoke-virtual {v4, v2}, Lcom/android/settings/vpn2/VpnSettings;->findOrCreatePreference(Lcom/android/settings/vpn2/AppVpnInfo;)Lcom/android/settings/vpn2/AppPreference;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/vpn2/VpnSettings$UpdatePreferences;->connectedAppVpns:Ljava/util/Set;

    invoke-interface {v5, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lcom/android/settings/vpn2/ManageablePreference;->setState$1(I)V

    goto :goto_5

    :cond_9
    invoke-virtual {v4, v3}, Lcom/android/settings/vpn2/ManageablePreference;->setState$1(I)V

    :goto_5
    iget-object v5, p0, Lcom/android/settings/vpn2/VpnSettings$UpdatePreferences;->alwaysOnAppVpnInfos:Ljava/util/Set;

    invoke-interface {v5, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    iget-boolean v5, v4, Lcom/android/settings/vpn2/ManageablePreference;->mIsAlwaysOn:Z

    if-eq v5, v2, :cond_a

    iput-boolean v2, v4, Lcom/android/settings/vpn2/ManageablePreference;->mIsAlwaysOn:Z

    invoke-virtual {v4}, Lcom/android/settings/vpn2/ManageablePreference;->updateSummary()V

    :cond_a
    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_b
    sget-boolean v1, Lcom/android/settings/vpn2/VpnSettings;->DEBUG:Z

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/android/settings/vpn2/VpnSettings$UpdatePreferences;->mSettings:Lcom/android/settings/vpn2/VpnSettings;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "isAdvancedVpnSupported() : false"

    const-string v2, "VpnSettings"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    iget-object v1, p0, Lcom/android/settings/vpn2/VpnSettings$UpdatePreferences;->mSettings:Lcom/android/settings/vpn2/VpnSettings;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/android/settings/vpn2/VpnSettings$UpdatePreferences;->mSettings:Lcom/android/settings/vpn2/VpnSettings;

    invoke-virtual {p0, v0}, Lcom/android/settings/vpn2/VpnSettings;->setShownPreferences(Ljava/util/Collection;)V

    return-void
.end method
