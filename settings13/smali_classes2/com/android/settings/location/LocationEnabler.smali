.class public Lcom/android/settings/location/LocationEnabler;
.super Ljava/lang/Object;
.source "LocationEnabler.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/location/LocationEnabler$LocationModeChangeListener;
    }
.end annotation


# static fields
.field static final INTENT_FILTER_LOCATION_MODE_CHANGED:Landroid/content/IntentFilter;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mListener:Lcom/android/settings/location/LocationEnabler$LocationModeChangeListener;

.field mReceiver:Landroid/content/BroadcastReceiver;

.field private final mUserManager:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 55
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.location.MODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/location/LocationEnabler;->INTENT_FILTER_LOCATION_MODE_CHANGED:Landroid/content/IntentFilter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lcom/android/settings/location/LocationEnabler;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    .line 83
    iput-object v0, p0, Lcom/android/settings/location/LocationEnabler;->mListener:Lcom/android/settings/location/LocationEnabler$LocationModeChangeListener;

    const-string/jumbo v0, "user"

    .line 84
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/android/settings/location/LocationEnabler;->mUserManager:Landroid/os/UserManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/location/LocationEnabler$LocationModeChangeListener;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/android/settings/location/LocationEnabler;->mContext:Landroid/content/Context;

    .line 73
    iput-object p2, p0, Lcom/android/settings/location/LocationEnabler;->mListener:Lcom/android/settings/location/LocationEnabler$LocationModeChangeListener;

    const-string/jumbo p2, "user"

    .line 74
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/android/settings/location/LocationEnabler;->mUserManager:Landroid/os/UserManager;

    if-eqz p3, :cond_0

    .line 76
    invoke-virtual {p3, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_0
    return-void
.end method

.method private isLocationGPSStateChangeAllowed()Z
    .locals 3

    const/4 v0, 0x0

    .line 230
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 231
    iget-object p0, p0, Lcom/android/settings/location/LocationEnabler;->mContext:Landroid/content/Context;

    const-string v1, "content://com.sec.knox.provider/LocationPolicy"

    const-string v2, "isGPSStateChangeAllowed"

    invoke-static {p0, v1, v2, v0}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 235
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ", isLocationGPSStateChangeAllowed = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LocationEnabler"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method private isSettingsChangesAllowed()Z
    .locals 3

    const-string v0, "false"

    .line 220
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 221
    iget-object p0, p0, Lcom/android/settings/location/LocationEnabler;->mContext:Landroid/content/Context;

    const-string v1, "content://com.sec.knox.provider/RestrictionPolicy"

    const-string v2, "isSettingsChangesAllowed"

    invoke-static {p0, v1, v2, v0}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 225
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isSettingsChangesAllowed = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LocationEnabler"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method


# virtual methods
.method public getShareLocationEnforcedAdmin(I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    .locals 2

    .line 184
    iget-object v0, p0, Lcom/android/settings/location/LocationEnabler;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "no_share_location"

    invoke-static {v0, v1, p1}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    if-nez v0, :cond_0

    .line 188
    iget-object p0, p0, Lcom/android/settings/location/LocationEnabler;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "no_config_location"

    invoke-static {p0, v0, p1}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public hasShareLocationRestriction(I)Z
    .locals 1

    .line 198
    iget-object p0, p0, Lcom/android/settings/location/LocationEnabler;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "no_share_location"

    invoke-static {p0, v0, p1}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public isEnabled(I)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 166
    invoke-virtual {p0}, Lcom/android/settings/location/LocationEnabler;->isRestricted()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isManagedProfileRestrictedByBase()Z
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/android/settings/location/LocationEnabler;->mUserManager:Landroid/os/UserManager;

    invoke-static {v0}, Lcom/android/settings/Utils;->getManagedProfile(Landroid/os/UserManager;)Landroid/os/UserHandle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 177
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/location/LocationEnabler;->hasShareLocationRestriction(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isRestricted()Z
    .locals 1

    .line 206
    iget-object p0, p0, Lcom/android/settings/location/LocationEnabler;->mUserManager:Landroid/os/UserManager;

    const-string/jumbo v0, "no_share_location"

    invoke-virtual {p0, v0}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method isRestrictedToChangeByMdm()Z
    .locals 1

    .line 212
    invoke-direct {p0}, Lcom/android/settings/location/LocationEnabler;->isSettingsChangesAllowed()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/settings/location/LocationEnabler;->isLocationGPSStateChangeAllowed()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const-string p0, "LocationEnabler"

    const-string v0, "Location State Change restricted by MDM"

    .line 213
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method

.method public onStart()V
    .locals 3

    .line 90
    iget-object v0, p0, Lcom/android/settings/location/LocationEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 91
    new-instance v0, Lcom/android/settings/location/LocationEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/settings/location/LocationEnabler$1;-><init>(Lcom/android/settings/location/LocationEnabler;)V

    iput-object v0, p0, Lcom/android/settings/location/LocationEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/android/settings/location/LocationEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/location/LocationEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Lcom/android/settings/location/LocationEnabler;->INTENT_FILTER_LOCATION_MODE_CHANGED:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 102
    invoke-virtual {p0}, Lcom/android/settings/location/LocationEnabler;->refreshLocationMode()V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/android/settings/location/LocationEnabler;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/location/LocationEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public refreshLocationMode()V
    .locals 4

    .line 114
    iget-object v0, p0, Lcom/android/settings/location/LocationEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "location_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const-string v1, "LocationEnabler"

    const/4 v3, 0x4

    .line 116
    invoke-static {v1, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "Location mode has been changed"

    .line 117
    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :cond_0
    iget-object v1, p0, Lcom/android/settings/location/LocationEnabler;->mListener:Lcom/android/settings/location/LocationEnabler$LocationModeChangeListener;

    if-eqz v1, :cond_3

    .line 122
    invoke-virtual {p0}, Lcom/android/settings/location/LocationEnabler;->isRestricted()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/location/LocationEnabler;->isRestrictedToChangeByMdm()Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 v2, 0x1

    :cond_2
    invoke-interface {v1, v0, v2}, Lcom/android/settings/location/LocationEnabler$LocationModeChangeListener;->onLocationModeChanged(IZ)V

    :cond_3
    return-void
.end method

.method public setLocationEnabled(Z)V
    .locals 3

    .line 136
    iget-object v0, p0, Lcom/android/settings/location/LocationEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "location_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 145
    invoke-virtual {p0}, Lcom/android/settings/location/LocationEnabler;->isRestricted()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/location/LocationEnabler;->isRestrictedToChangeByMdm()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/android/settings/location/LocationEnabler;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-static {v0, p1, v1, v2}, Lcom/android/settingslib/Utils;->updateLocationEnabled(Landroid/content/Context;ZII)V

    .line 159
    invoke-virtual {p0}, Lcom/android/settings/location/LocationEnabler;->refreshLocationMode()V

    return-void

    :cond_1
    :goto_0
    const/4 p1, 0x4

    const-string v1, "LocationEnabler"

    .line 149
    invoke-static {v1, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "Restricted user, not setting location mode"

    .line 150
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :cond_2
    iget-object p0, p0, Lcom/android/settings/location/LocationEnabler;->mListener:Lcom/android/settings/location/LocationEnabler$LocationModeChangeListener;

    if-eqz p0, :cond_3

    .line 153
    invoke-interface {p0, v0, v2}, Lcom/android/settings/location/LocationEnabler$LocationModeChangeListener;->onLocationModeChanged(IZ)V

    :cond_3
    return-void
.end method
