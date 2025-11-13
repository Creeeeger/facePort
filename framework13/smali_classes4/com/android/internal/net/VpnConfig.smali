.class public Lcom/android/internal/net/VpnConfig;
.super Ljava/lang/Object;
.source "VpnConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/internal/net/VpnConfig;",
            ">;"
        }
    .end annotation
.end field

.field public static final greylist-max-o DIALOGS_PACKAGE:Ljava/lang/String; = "com.android.vpndialogs"

.field public static final greylist-max-o LEGACY_VPN:Ljava/lang/String; = "[Legacy VPN]"

.field private static final blacklist REMOVE:Z = false

.field public static final greylist-max-o SERVICE_INTERFACE:Ljava/lang/String; = "android.net.VpnService"

.field public static final blacklist TAG:Ljava/lang/String; = "VpnConfig"

.field private static blacklist mConfigByUserMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/net/VpnConfig;",
            ">;>;"
        }
    .end annotation
.end field

.field private static blacklist mConfigsReceived:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/net/VpnConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public greylist-max-o addresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/LinkAddress;",
            ">;"
        }
    .end annotation
.end field

.field public greylist-max-o allowBypass:Z

.field public greylist-max-o allowIPv4:Z

.field public greylist-max-o allowIPv6:Z

.field public blacklist allowPortBypass:Z

.field public greylist-max-o allowedApplications:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist allowedSecureFolderApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public greylist-max-o blocking:Z

.field public greylist-max-o configureIntent:Landroid/app/PendingIntent;

.field public greylist-max-o disallowedApplications:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist disallowedSecureFolderApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public greylist-max-o dnsServers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist dport:I

.field public blacklist excludeLocalRoutes:Z

.field public blacklist fwmark:I

.field public greylist-max-o interfaze:Ljava/lang/String;

.field public blacklist isMetered:Z

.field public greylist-max-o legacy:Z

.field public greylist-max-o mtu:I

.field public blacklist netIfaceAddress:Ljava/lang/String;

.field public blacklist netIfaceName:Ljava/lang/String;

.field public blacklist netTableId:I

.field public blacklist priority:I

.field public blacklist proxyInfo:Landroid/net/ProxyInfo;

.field public blacklist requiresInternetValidation:Z

.field public greylist-max-o routes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/RouteInfo;",
            ">;"
        }
    .end annotation
.end field

.field public greylist-max-o searchDomains:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public greylist-max-o session:Ljava/lang/String;

.field public greylist-max-o startTime:J

.field public greylist-max-o underlyingNetworks:[Landroid/net/Network;

.field public greylist-max-o user:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/internal/net/VpnConfig;->mConfigsReceived:Ljava/util/ArrayList;

    .line 65
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/android/internal/net/VpnConfig;->mConfigByUserMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 366
    new-instance v0, Lcom/android/internal/net/VpnConfig$1;

    invoke-direct {v0}, Lcom/android/internal/net/VpnConfig$1;-><init>()V

    sput-object v0, Lcom/android/internal/net/VpnConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist <init>()V
    .locals 2

    .line 267
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 235
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/net/VpnConfig;->mtu:I

    .line 236
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/net/VpnConfig;->addresses:Ljava/util/List;

    .line 237
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    .line 254
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/internal/net/VpnConfig;->startTime:J

    .line 260
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/net/VpnConfig;->isMetered:Z

    .line 261
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/net/VpnConfig;->requiresInternetValidation:Z

    .line 262
    iput-boolean v0, p0, Lcom/android/internal/net/VpnConfig;->excludeLocalRoutes:Z

    .line 268
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/net/VpnConfig;)V
    .locals 2
    .param p1, "other"    # Lcom/android/internal/net/VpnConfig;

    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 235
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/net/VpnConfig;->mtu:I

    .line 236
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/net/VpnConfig;->addresses:Ljava/util/List;

    .line 237
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    .line 254
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/internal/net/VpnConfig;->startTime:J

    .line 260
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/net/VpnConfig;->isMetered:Z

    .line 261
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/net/VpnConfig;->requiresInternetValidation:Z

    .line 262
    iput-boolean v0, p0, Lcom/android/internal/net/VpnConfig;->excludeLocalRoutes:Z

    .line 271
    iget-object v0, p1, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    .line 272
    iget-object v0, p1, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    .line 273
    iget-object v0, p1, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    .line 274
    iget v0, p1, Lcom/android/internal/net/VpnConfig;->mtu:I

    iput v0, p0, Lcom/android/internal/net/VpnConfig;->mtu:I

    .line 275
    iget-object v0, p1, Lcom/android/internal/net/VpnConfig;->addresses:Ljava/util/List;

    invoke-static {v0}, Lcom/android/internal/net/VpnConfig;->copyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/net/VpnConfig;->addresses:Ljava/util/List;

    .line 276
    iget-object v0, p1, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    invoke-static {v0}, Lcom/android/internal/net/VpnConfig;->copyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    .line 277
    iget-object v0, p1, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    invoke-static {v0}, Lcom/android/internal/net/VpnConfig;->copyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    .line 278
    iget-object v0, p1, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    invoke-static {v0}, Lcom/android/internal/net/VpnConfig;->copyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    .line 279
    iget-object v0, p1, Lcom/android/internal/net/VpnConfig;->allowedApplications:Ljava/util/List;

    invoke-static {v0}, Lcom/android/internal/net/VpnConfig;->copyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/net/VpnConfig;->allowedApplications:Ljava/util/List;

    .line 280
    iget-object v0, p1, Lcom/android/internal/net/VpnConfig;->disallowedApplications:Ljava/util/List;

    invoke-static {v0}, Lcom/android/internal/net/VpnConfig;->copyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/net/VpnConfig;->disallowedApplications:Ljava/util/List;

    .line 281
    iget-object v0, p1, Lcom/android/internal/net/VpnConfig;->configureIntent:Landroid/app/PendingIntent;

    iput-object v0, p0, Lcom/android/internal/net/VpnConfig;->configureIntent:Landroid/app/PendingIntent;

    .line 282
    iget-wide v0, p1, Lcom/android/internal/net/VpnConfig;->startTime:J

    iput-wide v0, p0, Lcom/android/internal/net/VpnConfig;->startTime:J

    .line 283
    iget-boolean v0, p1, Lcom/android/internal/net/VpnConfig;->legacy:Z

    iput-boolean v0, p0, Lcom/android/internal/net/VpnConfig;->legacy:Z

    .line 284
    iget-boolean v0, p1, Lcom/android/internal/net/VpnConfig;->blocking:Z

    iput-boolean v0, p0, Lcom/android/internal/net/VpnConfig;->blocking:Z

    .line 285
    iget-boolean v0, p1, Lcom/android/internal/net/VpnConfig;->allowBypass:Z

    iput-boolean v0, p0, Lcom/android/internal/net/VpnConfig;->allowBypass:Z

    .line 286
    iget-boolean v0, p1, Lcom/android/internal/net/VpnConfig;->allowIPv4:Z

    iput-boolean v0, p0, Lcom/android/internal/net/VpnConfig;->allowIPv4:Z

    .line 287
    iget-boolean v0, p1, Lcom/android/internal/net/VpnConfig;->allowIPv6:Z

    iput-boolean v0, p0, Lcom/android/internal/net/VpnConfig;->allowIPv6:Z

    .line 288
    iget-boolean v0, p1, Lcom/android/internal/net/VpnConfig;->isMetered:Z

    iput-boolean v0, p0, Lcom/android/internal/net/VpnConfig;->isMetered:Z

    .line 289
    iget-boolean v0, p1, Lcom/android/internal/net/VpnConfig;->requiresInternetValidation:Z

    iput-boolean v0, p0, Lcom/android/internal/net/VpnConfig;->requiresInternetValidation:Z

    .line 290
    iget-boolean v0, p1, Lcom/android/internal/net/VpnConfig;->excludeLocalRoutes:Z

    iput-boolean v0, p0, Lcom/android/internal/net/VpnConfig;->excludeLocalRoutes:Z

    .line 291
    iget-object v0, p1, Lcom/android/internal/net/VpnConfig;->underlyingNetworks:[Landroid/net/Network;

    if-eqz v0, :cond_0

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/Network;

    goto :goto_0

    .line 292
    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/android/internal/net/VpnConfig;->underlyingNetworks:[Landroid/net/Network;

    .line 293
    iget-object v0, p1, Lcom/android/internal/net/VpnConfig;->proxyInfo:Landroid/net/ProxyInfo;

    iput-object v0, p0, Lcom/android/internal/net/VpnConfig;->proxyInfo:Landroid/net/ProxyInfo;

    .line 294
    return-void
.end method

.method private static blacklist copyOf(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 297
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    if-eqz p0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static greylist-max-o getIntentForConfirmation()Landroid/content/Intent;
    .locals 4

    .line 69
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 71
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x104030c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 70
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 73
    .local v1, "componentName":Landroid/content/ComponentName;
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 74
    return-object v0
.end method

.method public static greylist-max-o getIntentForStatusPanel(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .line 79
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 80
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.vpndialogs"

    const-string v2, "com.android.vpndialogs.ManageDialog"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 81
    const/high16 v1, 0x50800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 83
    sget-object v6, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/4 v2, 0x0

    const/high16 v4, 0x4000000

    const/4 v5, 0x0

    move-object v1, p0

    move-object v3, v0

    invoke-static/range {v1 .. v6}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist getIntentForStatusPanelAsUser(Landroid/content/Context;I)Landroid/app/PendingIntent;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "user"    # I

    .line 224
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 225
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.vpndialogs"

    const-string v2, "com.android.vpndialogs.ManageDialog"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 226
    const/high16 v1, 0x50800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 228
    new-instance v6, Landroid/os/UserHandle;

    invoke-direct {v6, p1}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v2, 0x0

    const/high16 v4, 0x2000000

    const/4 v5, 0x0

    move-object v1, p0

    move-object v3, v0

    invoke-static/range {v1 .. v6}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist getIntentForStatusPanelEnterpriseVpn(Landroid/content/Context;Lcom/android/internal/net/VpnConfig;Z)Landroid/app/PendingIntent;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "config"    # Lcom/android/internal/net/VpnConfig;
    .param p2, "configOption"    # Z

    .line 106
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 107
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "VpnConfig"

    if-nez p2, :cond_3

    .line 108
    iget-object v2, p1, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    .line 109
    .local v2, "configSession":Ljava/lang/String;
    const/4 v3, 0x0

    .line 110
    .local v3, "configLocal":Lcom/android/internal/net/VpnConfig;
    sget-object v4, Lcom/android/internal/net/VpnConfig;->mConfigsReceived:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 111
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v3, v5

    check-cast v3, Lcom/android/internal/net/VpnConfig;

    .line 112
    iget-object v5, v3, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 113
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getIntentForStatusPanelEnterpriseVpn : Removing iterator for profile : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    .line 118
    .end local v4    # "iterator":Ljava/util/Iterator;
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getIntentForStatusPanelEnterpriseVpn : config size =  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/internal/net/VpnConfig;->mConfigsReceived:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    sget-object v4, Lcom/android/internal/net/VpnConfig;->mConfigsReceived:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_2

    .line 120
    const-string v4, "getIntentForStatusPanelEnterpriseVpn : Returning null"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    const/4 v1, 0x0

    return-object v1

    .line 123
    .end local v2    # "configSession":Ljava/lang/String;
    .end local v3    # "configLocal":Lcom/android/internal/net/VpnConfig;
    :cond_2
    goto :goto_0

    .line 125
    :cond_3
    if-eqz p1, :cond_4

    .line 126
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getIntentForStatusPanelEnterpriseVpn : Adding iterator for profile : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    :cond_4
    sget-object v1, Lcom/android/internal/net/VpnConfig;->mConfigsReceived:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    :goto_0
    const-string v1, "com.android.vpndialogs"

    const-string v2, "com.android.vpndialogs.EnterpriseVpnDialog"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 131
    sget-object v1, Lcom/android/internal/net/VpnConfig;->mConfigsReceived:Ljava/util/ArrayList;

    const-string v2, "config"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 132
    const/high16 v1, 0x50800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 134
    const/4 v2, 0x0

    if-nez p1, :cond_5

    .line 135
    const/high16 v1, 0x20000000

    goto :goto_1

    :cond_5
    const/high16 v1, 0x12000000

    :goto_1
    move v4, v1

    const/4 v5, 0x0

    sget-object v6, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 134
    move-object v1, p0

    move-object v3, v0

    invoke-static/range {v1 .. v6}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist getIntentForStatusPanelEnterpriseVpnAsUser(Landroid/content/Context;Lcom/android/internal/net/VpnConfig;ZI)Landroid/app/PendingIntent;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "config"    # Lcom/android/internal/net/VpnConfig;
    .param p2, "configOption"    # Z
    .param p3, "domain"    # I

    .line 155
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 156
    .local v0, "intent":Landroid/content/Intent;
    sget-object v1, Lcom/android/internal/net/VpnConfig;->mConfigByUserMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 158
    .local v1, "receivedConfig":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnConfig;>;"
    const/4 v2, 0x0

    if-nez p1, :cond_0

    .line 159
    return-object v2

    .line 162
    :cond_0
    if-nez v1, :cond_1

    .line 163
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v3

    move-object v7, v1

    goto :goto_0

    .line 162
    :cond_1
    move-object v7, v1

    .line 166
    .end local v1    # "receivedConfig":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnConfig;>;"
    .local v7, "receivedConfig":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnConfig;>;"
    :goto_0
    const-string v1, "VpnConfig"

    if-nez p2, :cond_5

    .line 167
    iget-object v3, p1, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    .line 168
    .local v3, "configSession":Ljava/lang/String;
    const/4 v4, 0x0

    .line 170
    .local v4, "configLocal":Lcom/android/internal/net/VpnConfig;
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 171
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v4, v6

    check-cast v4, Lcom/android/internal/net/VpnConfig;

    .line 172
    iget-object v6, v4, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 173
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getIntentForStatusPanelEnterpriseVpn : Removing iterator for profile : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    .line 178
    .end local v5    # "iterator":Ljava/util/Iterator;
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getIntentForStatusPanelEnterpriseVpn : config size =  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/internal/net/VpnConfig;->mConfigsReceived:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_4

    .line 180
    const-string v5, "getIntentForStatusPanelEnterpriseVpn : Returning null"

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    return-object v2

    .line 183
    .end local v3    # "configSession":Ljava/lang/String;
    .end local v4    # "configLocal":Lcom/android/internal/net/VpnConfig;
    :cond_4
    goto :goto_3

    .line 184
    :cond_5
    if-eqz p1, :cond_6

    .line 185
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getIntentForStatusPanelEnterpriseVpn : Adding iterator for profile : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    :cond_6
    const/4 v1, 0x0

    .line 188
    .local v1, "configLocal":Lcom/android/internal/net/VpnConfig;
    const/4 v2, 0x0

    .line 189
    .local v2, "isFoundProfile":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_8

    .line 190
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v1, v4

    check-cast v1, Lcom/android/internal/net/VpnConfig;

    .line 191
    iget-object v4, v1, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    iget-object v5, p1, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 192
    const/4 v2, 0x1

    .line 193
    goto :goto_2

    .line 189
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 197
    .end local v3    # "i":I
    :cond_8
    :goto_2
    if-nez v2, :cond_9

    .line 198
    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 199
    sget-object v3, Lcom/android/internal/net/VpnConfig;->mConfigByUserMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v7}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    .end local v1    # "configLocal":Lcom/android/internal/net/VpnConfig;
    .end local v2    # "isFoundProfile":Z
    :cond_9
    :goto_3
    const-string v1, "com.android.vpndialogs"

    const-string v2, "com.android.vpndialogs.EnterpriseVpnDialog"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 204
    const-string v1, "config"

    invoke-virtual {v0, v1, v7}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 205
    const/high16 v1, 0x50800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 207
    const/4 v2, 0x0

    const/high16 v4, 0x12000000

    const/4 v5, 0x0

    new-instance v6, Landroid/os/UserHandle;

    invoke-direct {v6, p3}, Landroid/os/UserHandle;-><init>(I)V

    move-object v1, p0

    move-object v3, v0

    invoke-static/range {v1 .. v6}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist getIntentForStatusPanelRefresh(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .line 142
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 143
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.vpndialogs"

    const-string v2, "com.android.vpndialogs.EnterpriseVpnDialog"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 144
    sget-object v1, Lcom/android/internal/net/VpnConfig;->mConfigsReceived:Ljava/util/ArrayList;

    const-string v2, "config"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 145
    const/high16 v1, 0x50800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 147
    sget-object v6, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/4 v2, 0x0

    const/high16 v4, 0x12000000

    const/4 v5, 0x0

    move-object v1, p0

    move-object v3, v0

    invoke-static/range {v1 .. v6}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist getIntentForStatusPanelRefreshAsUser(Landroid/content/Context;I)Landroid/app/PendingIntent;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "domain"    # I

    .line 214
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 215
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.vpndialogs"

    const-string v2, "com.android.vpndialogs.EnterpriseVpnDialog"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 216
    sget-object v1, Lcom/android/internal/net/VpnConfig;->mConfigByUserMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    const-string v2, "config"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 217
    const/high16 v1, 0x50800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 219
    new-instance v6, Landroid/os/UserHandle;

    invoke-direct {v6, p1}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v2, 0x0

    const/high16 v4, 0x12000000

    const/4 v5, 0x0

    move-object v1, p0

    move-object v3, v0

    invoke-static/range {v1 .. v6}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method public static greylist-max-o getVpnLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 89
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 90
    .local v0, "pm":Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.net.VpnService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 91
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 93
    .local v3, "services":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 96
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    invoke-virtual {v2, v0}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    return-object v2

    .line 98
    :cond_0
    invoke-virtual {v0, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    return-object v2
.end method

.method static blacklist toString(Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 444
    .local p0, "ls":Ljava/util/List;, "Ljava/util/List<TT;>;"
    if-nez p0, :cond_0

    .line 445
    const-string/jumbo v0, "null"

    return-object v0

    .line 447
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public greylist-max-o addLegacyAddresses(Ljava/lang/String;)V
    .locals 6
    .param p1, "addressesStr"    # Ljava/lang/String;

    .line 313
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 314
    return-void

    .line 316
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 317
    .local v0, "addresses":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 319
    .local v3, "address":Ljava/lang/String;
    new-instance v4, Landroid/net/LinkAddress;

    invoke-direct {v4, v3}, Landroid/net/LinkAddress;-><init>(Ljava/lang/String;)V

    .line 320
    .local v4, "addr":Landroid/net/LinkAddress;
    iget-object v5, p0, Lcom/android/internal/net/VpnConfig;->addresses:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 317
    .end local v3    # "address":Ljava/lang/String;
    .end local v4    # "addr":Landroid/net/LinkAddress;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 322
    :cond_1
    return-void
.end method

.method public greylist-max-o addLegacyRoutes(Ljava/lang/String;)V
    .locals 8
    .param p1, "routesStr"    # Ljava/lang/String;

    .line 301
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 302
    return-void

    .line 304
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 305
    .local v0, "routes":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 307
    .local v3, "route":Ljava/lang/String;
    new-instance v4, Landroid/net/RouteInfo;

    new-instance v5, Landroid/net/IpPrefix;

    invoke-direct {v5, v3}, Landroid/net/IpPrefix;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-direct {v4, v5, v6, v6, v7}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;Ljava/net/InetAddress;Ljava/lang/String;I)V

    .line 308
    .local v4, "info":Landroid/net/RouteInfo;
    iget-object v5, p0, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 305
    .end local v3    # "route":Ljava/lang/String;
    .end local v4    # "info":Landroid/net/RouteInfo;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 310
    :cond_1
    return-void
.end method

.method public whitelist describeContents()I
    .locals 1

    .line 326
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    .line 415
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 416
    const-string v1, "VpnConfig"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 417
    const-string/jumbo v1, "{ user="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 418
    const-string v1, ", interface="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 419
    const-string v1, ", session="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 420
    const-string v1, ", mtu="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/net/VpnConfig;->mtu:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 421
    const-string v1, ", addresses="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/net/VpnConfig;->addresses:Ljava/util/List;

    invoke-static {v1}, Lcom/android/internal/net/VpnConfig;->toString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 422
    const-string v1, ", routes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    invoke-static {v1}, Lcom/android/internal/net/VpnConfig;->toString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 423
    const-string v1, ", dns="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    invoke-static {v1}, Lcom/android/internal/net/VpnConfig;->toString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 424
    const-string v1, ", searchDomains="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    invoke-static {v1}, Lcom/android/internal/net/VpnConfig;->toString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 425
    const-string v1, ", allowedApps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/net/VpnConfig;->allowedApplications:Ljava/util/List;

    invoke-static {v1}, Lcom/android/internal/net/VpnConfig;->toString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 426
    const-string v1, ", disallowedApps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/net/VpnConfig;->disallowedApplications:Ljava/util/List;

    invoke-static {v1}, Lcom/android/internal/net/VpnConfig;->toString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 427
    const-string v1, ", configureIntent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/net/VpnConfig;->configureIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 428
    const-string v1, ", startTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/internal/net/VpnConfig;->startTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 429
    const-string v1, ", legacy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/net/VpnConfig;->legacy:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 430
    const-string v1, ", blocking="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/net/VpnConfig;->blocking:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 431
    const-string v1, ", allowBypass="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/net/VpnConfig;->allowBypass:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 432
    const-string v1, ", allowIPv4="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/net/VpnConfig;->allowIPv4:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 433
    const-string v1, ", allowIPv6="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/net/VpnConfig;->allowIPv6:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 434
    const-string v1, ", isMetered="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/net/VpnConfig;->isMetered:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 435
    const-string v1, ", requiresInternetValidation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/net/VpnConfig;->requiresInternetValidation:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 436
    const-string v1, ", excludeLocalRoutes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/net/VpnConfig;->excludeLocalRoutes:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 437
    const-string v1, ", underlyingNetworks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/net/VpnConfig;->underlyingNetworks:[Landroid/net/Network;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 438
    const-string v1, ", proxyInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/net/VpnConfig;->proxyInfo:Landroid/net/ProxyInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 439
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 440
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 415
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 331
    iget-object v0, p0, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 332
    iget-object v0, p0, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 333
    iget-object v0, p0, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 334
    iget v0, p0, Lcom/android/internal/net/VpnConfig;->mtu:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 335
    iget-object v0, p0, Lcom/android/internal/net/VpnConfig;->addresses:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 336
    iget-object v0, p0, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 337
    iget-object v0, p0, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 338
    iget-object v0, p0, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 339
    iget-object v0, p0, Lcom/android/internal/net/VpnConfig;->allowedApplications:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 340
    iget-object v0, p0, Lcom/android/internal/net/VpnConfig;->disallowedApplications:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 342
    iget-object v0, p0, Lcom/android/internal/net/VpnConfig;->allowedSecureFolderApps:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 343
    iget-object v0, p0, Lcom/android/internal/net/VpnConfig;->disallowedSecureFolderApps:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 344
    iget-boolean v0, p0, Lcom/android/internal/net/VpnConfig;->allowPortBypass:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 345
    iget v0, p0, Lcom/android/internal/net/VpnConfig;->dport:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 346
    iget v0, p0, Lcom/android/internal/net/VpnConfig;->fwmark:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 347
    iget v0, p0, Lcom/android/internal/net/VpnConfig;->priority:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 348
    iget v0, p0, Lcom/android/internal/net/VpnConfig;->netTableId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 349
    iget-object v0, p0, Lcom/android/internal/net/VpnConfig;->netIfaceName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 350
    iget-object v0, p0, Lcom/android/internal/net/VpnConfig;->netIfaceAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 352
    iget-object v0, p0, Lcom/android/internal/net/VpnConfig;->configureIntent:Landroid/app/PendingIntent;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 353
    iget-wide v0, p0, Lcom/android/internal/net/VpnConfig;->startTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 354
    iget-boolean v0, p0, Lcom/android/internal/net/VpnConfig;->legacy:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 355
    iget-boolean v0, p0, Lcom/android/internal/net/VpnConfig;->blocking:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 356
    iget-boolean v0, p0, Lcom/android/internal/net/VpnConfig;->allowBypass:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 357
    iget-boolean v0, p0, Lcom/android/internal/net/VpnConfig;->allowIPv4:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 358
    iget-boolean v0, p0, Lcom/android/internal/net/VpnConfig;->allowIPv6:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 359
    iget-boolean v0, p0, Lcom/android/internal/net/VpnConfig;->isMetered:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 360
    iget-boolean v0, p0, Lcom/android/internal/net/VpnConfig;->requiresInternetValidation:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 361
    iget-boolean v0, p0, Lcom/android/internal/net/VpnConfig;->excludeLocalRoutes:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 362
    iget-object v0, p0, Lcom/android/internal/net/VpnConfig;->underlyingNetworks:[Landroid/net/Network;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 363
    iget-object v0, p0, Lcom/android/internal/net/VpnConfig;->proxyInfo:Landroid/net/ProxyInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 364
    return-void
.end method
