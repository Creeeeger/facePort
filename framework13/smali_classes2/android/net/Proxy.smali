.class public final Landroid/net/Proxy;
.super Ljava/lang/Object;
.source "Proxy.java"


# static fields
.field private static final blacklist DBG:Z

.field private static final blacklist ENTERPRISE_PROXY_PROPERTY:Ljava/lang/String; = "enterprise.proxy.auth"

.field public static final greylist EXTRA_PROXY_INFO:Ljava/lang/String; = "android.intent.extra.PROXY_INFO"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist PROXY_CHANGE_ACTION:Ljava/lang/String; = "android.intent.action.PROXY_CHANGE"

.field private static final greylist-max-o TAG:Ljava/lang/String; = "Proxy"

.field private static greylist-max-o sConnectivityManager:Landroid/net/ConnectivityManager;

.field private static final greylist-max-o sDefaultProxySelector:Ljava/net/ProxySelector;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 84
    const/4 v0, 0x0

    sput-object v0, Landroid/net/Proxy;->sConnectivityManager:Landroid/net/ConnectivityManager;

    .line 87
    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v0

    sput-object v0, Landroid/net/Proxy;->sDefaultProxySelector:Ljava/net/ProxySelector;

    .line 90
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Landroid/net/Proxy;->DBG:Z

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final whitelist getDefaultHost()Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 167
    const-string v0, "http.proxyHost"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 168
    .local v0, "host":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    return-object v1

    .line 169
    :cond_0
    return-object v0
.end method

.method public static final whitelist getDefaultPort()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 182
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 184
    :cond_0
    :try_start_0
    const-string v0, "http.proxyPort"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 185
    :catch_0
    move-exception v0

    .line 186
    .local v0, "e":Ljava/lang/NumberFormatException;
    return v1
.end method

.method public static final whitelist getHost(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "ctx"    # Landroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 130
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/net/Proxy;->getProxy(Landroid/content/Context;Ljava/lang/String;)Ljava/net/Proxy;

    move-result-object v1

    .line 131
    .local v1, "proxy":Ljava/net/Proxy;
    sget-object v2, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    if-ne v1, v2, :cond_0

    return-object v0

    .line 133
    :cond_0
    :try_start_0
    invoke-virtual {v1}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v2

    check-cast v2, Ljava/net/InetSocketAddress;

    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 134
    :catch_0
    move-exception v2

    .line 135
    .local v2, "e":Ljava/lang/Exception;
    return-object v0
.end method

.method private static blacklist getKnoxVpnProxyInfo()[Ljava/lang/String;
    .locals 4

    .line 312
    const/4 v0, 0x0

    .line 314
    .local v0, "knoxVpnProxyInfo":[Ljava/lang/String;
    :try_start_0
    invoke-static {}, Landroid/net/Proxy;->getVpnManagerService()Landroid/net/IVpnManager;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-interface {v1, v2}, Landroid/net/IVpnManager;->getProxyInfoForUid(I)[Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 317
    goto :goto_0

    .line 315
    :catch_0
    move-exception v1

    .line 316
    .local v1, "e":Ljava/lang/Exception;
    sget-boolean v2, Landroid/net/Proxy;->DBG:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getProxyInfo "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " error occured "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Proxy"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-object v0
.end method

.method public static final whitelist getPort(Landroid/content/Context;)I
    .locals 3
    .param p0, "ctx"    # Landroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 148
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/net/Proxy;->getProxy(Landroid/content/Context;Ljava/lang/String;)Ljava/net/Proxy;

    move-result-object v0

    .line 149
    .local v0, "proxy":Ljava/net/Proxy;
    sget-object v1, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    const/4 v2, -0x1

    if-ne v0, v1, :cond_0

    return v2

    .line 151
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v1

    check-cast v1, Ljava/net/InetSocketAddress;

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 152
    :catch_0
    move-exception v1

    .line 153
    .local v1, "e":Ljava/lang/Exception;
    return v2
.end method

.method public static final greylist getProxy(Landroid/content/Context;Ljava/lang/String;)Ljava/net/Proxy;
    .locals 5
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;

    .line 104
    const-string v0, ""

    .line 105
    .local v0, "host":Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-static {v0}, Landroid/net/Proxy;->isLocalHost(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 106
    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    .line 107
    .local v1, "uri":Ljava/net/URI;
    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v2

    .line 109
    .local v2, "proxySelector":Ljava/net/ProxySelector;
    invoke-virtual {v2, v1}, Ljava/net/ProxySelector;->select(Ljava/net/URI;)Ljava/util/List;

    move-result-object v3

    .line 111
    .local v3, "proxyList":Ljava/util/List;, "Ljava/util/List<Ljava/net/Proxy;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 112
    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/Proxy;

    return-object v4

    .line 115
    .end local v1    # "uri":Ljava/net/URI;
    .end local v2    # "proxySelector":Ljava/net/ProxySelector;
    .end local v3    # "proxyList":Ljava/util/List;, "Ljava/util/List<Ljava/net/Proxy;>;"
    :cond_0
    sget-object v1, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    return-object v1
.end method

.method private static blacklist getVpnManagerService()Landroid/net/IVpnManager;
    .locals 1

    .line 294
    const-string/jumbo v0, "vpn_management"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/IVpnManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IVpnManager;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist isKnoxVpnConfigured()Z
    .locals 5

    .line 298
    const/4 v0, 0x0

    .line 300
    .local v0, "knoxVpnConfigured":Z
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    .line 301
    .local v1, "uid":I
    invoke-static {}, Landroid/net/Proxy;->getVpnManagerService()Landroid/net/IVpnManager;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/net/IVpnManager;->isProxyConfiguredForKnoxVpn(I)Z

    move-result v2

    move v0, v2

    .line 302
    if-eqz v0, :cond_0

    .line 303
    sget-boolean v2, Landroid/net/Proxy;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "Proxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "knox vpn proxy selector is set for uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 307
    .end local v1    # "uid":I
    :cond_0
    goto :goto_0

    .line 305
    :catch_0
    move-exception v1

    .line 308
    :goto_0
    return v0
.end method

.method private static final greylist-max-o isLocalHost(Ljava/lang/String;)Z
    .locals 3
    .param p0, "host"    # Ljava/lang/String;

    .line 191
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 192
    return v0

    .line 195
    :cond_0
    if-eqz p0, :cond_2

    .line 196
    :try_start_0
    const-string v1, "localhost"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 197
    return v2

    .line 199
    :cond_1
    invoke-static {p0}, Landroid/net/InetAddresses;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_2

    .line 200
    return v2

    .line 203
    :catch_0
    move-exception v1

    goto :goto_0

    .line 204
    :cond_2
    nop

    .line 205
    :goto_0
    return v0
.end method

.method public static blacklist setHttpProxyConfiguration(Landroid/net/ProxyInfo;)V
    .locals 5
    .param p0, "p"    # Landroid/net/ProxyInfo;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 223
    const/4 v0, 0x0

    .line 224
    .local v0, "host":Ljava/lang/String;
    const/4 v1, 0x0

    .line 225
    .local v1, "port":Ljava/lang/String;
    const/4 v2, 0x0

    .line 226
    .local v2, "exclList":Ljava/lang/String;
    sget-object v3, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .line 227
    .local v3, "pacFileUrl":Landroid/net/Uri;
    if-eqz p0, :cond_0

    .line 228
    invoke-virtual {p0}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 229
    invoke-virtual {p0}, Landroid/net/ProxyInfo;->getPort()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 230
    invoke-virtual {p0}, Landroid/net/ProxyInfo;->getExclusionList()[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/net/module/util/ProxyUtils;->exclusionListAsString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 231
    invoke-virtual {p0}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v3

    .line 233
    :cond_0
    invoke-static {v0, v1, v2, v3}, Landroid/net/Proxy;->setHttpProxyConfiguration(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    .line 234
    return-void
.end method

.method public static blacklist setHttpProxyConfiguration(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 3
    .param p0, "host"    # Ljava/lang/String;
    .param p1, "port"    # Ljava/lang/String;
    .param p2, "exclList"    # Ljava/lang/String;
    .param p3, "pacFileUrl"    # Landroid/net/Uri;

    .line 240
    invoke-static {}, Landroid/net/Proxy;->isKnoxVpnConfigured()Z

    move-result v0

    .line 241
    .local v0, "knoxVpnConfigured":Z
    if-eqz v0, :cond_0

    .line 242
    if-nez p0, :cond_0

    if-nez p1, :cond_0

    .line 243
    invoke-static {}, Landroid/net/Proxy;->getKnoxVpnProxyInfo()[Ljava/lang/String;

    move-result-object v1

    .line 244
    .local v1, "knoxVpnProxyInfo":[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object p0, v1, v2

    .line 245
    const/4 v2, 0x1

    aget-object p1, v1, v2

    .line 249
    .end local v1    # "knoxVpnProxyInfo":[Ljava/lang/String;
    :cond_0
    sget-boolean v1, Landroid/net/Proxy;->DBG:Z

    if-eqz v1, :cond_1

    .line 250
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setHttpProxySystemPropertyInternal for uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " The host value is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " the port value is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Proxy"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    :cond_1
    if-eqz p2, :cond_2

    const-string v1, ","

    const-string/jumbo v2, "|"

    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 257
    :cond_2
    const-string v1, "https.proxyHost"

    const-string v2, "http.proxyHost"

    if-eqz p0, :cond_3

    .line 258
    invoke-static {v2, p0}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 259
    invoke-static {v1, p0}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 261
    :cond_3
    invoke-static {v2}, Ljava/lang/System;->clearProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 262
    invoke-static {v1}, Ljava/lang/System;->clearProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 264
    :goto_0
    const-string v1, "https.proxyPort"

    const-string v2, "http.proxyPort"

    if-eqz p1, :cond_4

    .line 265
    invoke-static {v2, p1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 266
    invoke-static {v1, p1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 268
    :cond_4
    invoke-static {v2}, Ljava/lang/System;->clearProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 269
    invoke-static {v1}, Ljava/lang/System;->clearProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 271
    :goto_1
    const-string v1, "https.nonProxyHosts"

    const-string v2, "http.nonProxyHosts"

    if-eqz p2, :cond_5

    .line 272
    invoke-static {v2, p2}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 273
    invoke-static {v1, p2}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_2

    .line 275
    :cond_5
    invoke-static {v2}, Ljava/lang/System;->clearProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 276
    invoke-static {v1}, Ljava/lang/System;->clearProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 279
    :goto_2
    if-eqz v0, :cond_7

    .line 280
    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {v1, p3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 281
    new-instance v1, Landroid/net/KnoxVpnProxySelector;

    invoke-direct {v1}, Landroid/net/KnoxVpnProxySelector;-><init>()V

    invoke-static {v1}, Ljava/net/ProxySelector;->setDefault(Ljava/net/ProxySelector;)V

    .line 283
    :cond_6
    return-void

    .line 286
    :cond_7
    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {v1, p3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 287
    new-instance v1, Landroid/net/PacProxySelector;

    invoke-direct {v1}, Landroid/net/PacProxySelector;-><init>()V

    invoke-static {v1}, Ljava/net/ProxySelector;->setDefault(Ljava/net/ProxySelector;)V

    goto :goto_3

    .line 289
    :cond_8
    sget-object v1, Landroid/net/Proxy;->sDefaultProxySelector:Ljava/net/ProxySelector;

    invoke-static {v1}, Ljava/net/ProxySelector;->setDefault(Ljava/net/ProxySelector;)V

    .line 291
    :goto_3
    return-void
.end method

.method public static greylist-max-r setHttpProxySystemProperty(Landroid/net/ProxyInfo;)V
    .locals 0
    .param p0, "p"    # Landroid/net/ProxyInfo;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 212
    invoke-static {p0}, Landroid/net/Proxy;->setHttpProxyConfiguration(Landroid/net/ProxyInfo;)V

    .line 213
    return-void
.end method
