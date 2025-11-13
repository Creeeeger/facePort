.class public final Lcom/kddi/android/CpaManager;
.super Ljava/lang/Object;
.source "CpaManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kddi/android/CpaManager$Settings;,
        Lcom/kddi/android/CpaManager$ConnInfo;
    }
.end annotation


# static fields
.field private static final blacklist APN_INDEX:I = 0x2

.field public static blacklist AUTHENTICATION_ERROR:I = 0x0

.field private static final blacklist CARRIER_ENABLED_INDEX:I = 0x4

.field private static final blacklist CHANGE_MODE_REQUEST_ACTION:Ljava/lang/String; = "com.kddi.android.cpa.CHANGE_MODE_REQUEST_ACTION"

.field public static final blacklist CONNECTED:I = 0x2

.field public static final blacklist CONNECTING:I = 0x1

.field public static final blacklist DISCONNECTED:I = 0x4

.field public static final blacklist DISCONNECTING:I = 0x3

.field private static final blacklist ID_INDEX:I = 0x0

.field private static blacklist MODE_CPA:Ljava/lang/String; = null

.field private static blacklist MODE_DEFAULT:Ljava/lang/String; = null

.field private static blacklist MODE_NAVI:Ljava/lang/String; = null

.field private static final blacklist NAME_INDEX:I = 0x1

.field public static blacklist PARAMETER_ERROR:I = 0x0

.field public static blacklist RADIO_NOT_AVAILABLE:I = 0x0

.field public static blacklist SUCCESS:I = 0x0

.field private static final blacklist TAG:Ljava/lang/String; = "CpaManager"

.field private static final blacklist TYPES_INDEX:I = 0x3

.field public static blacklist UNKNOWN_ERROR:I


# instance fields
.field private blacklist DBG:Z

.field blacklist mContext:Landroid/content/Context;

.field private blacklist mSelectedKey:Ljava/lang/String;

.field private blacklist mState:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 31
    const-string v0, "NAVI"

    sput-object v0, Lcom/kddi/android/CpaManager;->MODE_NAVI:Ljava/lang/String;

    .line 32
    const-string v0, "DEFAULT"

    sput-object v0, Lcom/kddi/android/CpaManager;->MODE_DEFAULT:Ljava/lang/String;

    .line 33
    const-string v0, "DEFAULT_ON_CPA"

    sput-object v0, Lcom/kddi/android/CpaManager;->MODE_CPA:Ljava/lang/String;

    .line 42
    const/4 v0, 0x0

    sput v0, Lcom/kddi/android/CpaManager;->SUCCESS:I

    .line 43
    const/4 v0, -0x1

    sput v0, Lcom/kddi/android/CpaManager;->PARAMETER_ERROR:I

    .line 44
    const/4 v0, -0x2

    sput v0, Lcom/kddi/android/CpaManager;->RADIO_NOT_AVAILABLE:I

    .line 45
    const/4 v0, -0x3

    sput v0, Lcom/kddi/android/CpaManager;->AUTHENTICATION_ERROR:I

    .line 46
    const/4 v0, -0x4

    sput v0, Lcom/kddi/android/CpaManager;->UNKNOWN_ERROR:I

    return-void
.end method

.method public constructor greylist <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const-string/jumbo v0, "ro.product_ship"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/kddi/android/CpaManager;->DBG:Z

    .line 58
    iput v1, p0, Lcom/kddi/android/CpaManager;->mState:I

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CpaManager constructor! context = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CpaManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    if-eqz p1, :cond_1

    .line 113
    iput-object p1, p0, Lcom/kddi/android/CpaManager;->mContext:Landroid/content/Context;

    .line 116
    invoke-direct {p0}, Lcom/kddi/android/CpaManager;->checkPermission()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    return-void

    .line 117
    :cond_0
    const-string v0, "CpaManager permission err!!"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "checkPermission() return false"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_1
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "context is null"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist checkPermission()Z
    .locals 4

    .line 224
    iget-object v0, p0, Lcom/kddi/android/CpaManager;->mContext:Landroid/content/Context;

    const-string v1, "CpaManager"

    if-eqz v0, :cond_1

    .line 225
    const-string v2, "com.kddi.android.permission.MANAGE_CPA"

    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    .line 226
    .local v0, "permissionGrantStatus":I
    if-nez v0, :cond_0

    .line 227
    const/4 v1, 0x1

    return v1

    .line 229
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkPermission() err!! permissionGrantStatus ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    .end local v0    # "permissionGrantStatus":I
    goto :goto_0

    .line 232
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkPermission() err!! mContext ="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/kddi/android/CpaManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist getLocalIpAddress()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 245
    const-string v0, "CpaManager"

    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v1

    .line 246
    .local v1, "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :cond_0
    :goto_0
    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 247
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/NetworkInterface;

    .line 248
    .local v2, "interf":Ljava/net/NetworkInterface;
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "pdp"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "lo"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 249
    goto :goto_0

    .line 250
    :cond_1
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v3

    .line 251
    .local v3, "ips":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :goto_1
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 252
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/InetAddress;

    .line 253
    .local v4, "inetAddress":Ljava/net/InetAddress;
    invoke-virtual {v4}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v4}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v5

    if-nez v5, :cond_2

    .line 254
    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 256
    .end local v4    # "inetAddress":Ljava/net/InetAddress;
    :cond_2
    goto :goto_1

    .line 257
    .end local v2    # "interf":Ljava/net/NetworkInterface;
    .end local v3    # "ips":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :cond_3
    goto :goto_0

    .line 261
    .end local v1    # "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :cond_4
    nop

    .line 262
    const-string v1, "getLocalIpAddress() == null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    const/4 v0, 0x0

    return-object v0

    .line 258
    :catch_0
    move-exception v1

    .line 259
    .local v1, "ex":Ljava/net/SocketException;
    invoke-virtual {v1}, Ljava/net/SocketException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    new-instance v0, Landroid/os/RemoteException;

    const-string v2, "error!! get local address"

    invoke-direct {v0, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist getState()I
    .locals 3

    .line 239
    iget-object v0, p0, Lcom/kddi/android/CpaManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "kddi_cpa_state"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method


# virtual methods
.method public greylist changeMode(Ljava/lang/String;Lcom/kddi/android/CpaManager$Settings;)I
    .locals 4
    .param p1, "mode"    # Ljava/lang/String;
    .param p2, "settings"    # Lcom/kddi/android/CpaManager$Settings;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "changeMode() mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " settings="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CpaManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    if-eqz p1, :cond_4

    .line 139
    sget-object v0, Lcom/kddi/android/CpaManager;->MODE_NAVI:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 140
    if-eqz p2, :cond_0

    iget-object v0, p2, Lcom/kddi/android/CpaManager$Settings;->apn:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 141
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "mode is navi but settings is null!! "

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 147
    :cond_1
    :goto_0
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 148
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "com.kddi.android.cpa.CHANGE_MODE_REQUEST_ACTION"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 149
    const-string v2, "android"

    const-string v3, "com.kddi.android.CpaNotiReceiver"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 150
    const-string v2, "mode"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 151
    if-eqz p2, :cond_2

    .line 152
    const-string/jumbo v2, "settings.apn"

    iget-object v3, p2, Lcom/kddi/android/CpaManager$Settings;->apn:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 153
    const-string/jumbo v2, "settings.userId"

    iget-object v3, p2, Lcom/kddi/android/CpaManager$Settings;->userId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 154
    const-string/jumbo v2, "settings.password"

    iget-object v3, p2, Lcom/kddi/android/CpaManager$Settings;->password:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 155
    const-string/jumbo v2, "settings.authType"

    iget v3, p2, Lcom/kddi/android/CpaManager$Settings;->authType:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 156
    const-string/jumbo v2, "settings.proxyHost"

    iget-object v3, p2, Lcom/kddi/android/CpaManager$Settings;->proxyHost:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 157
    const-string/jumbo v2, "settings.proxyPort"

    iget-object v3, p2, Lcom/kddi/android/CpaManager$Settings;->proxyPort:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 158
    const-string/jumbo v2, "settings.dns1"

    iget-object v3, p2, Lcom/kddi/android/CpaManager$Settings;->dns1:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 159
    const-string/jumbo v2, "settings.dns2"

    iget-object v3, p2, Lcom/kddi/android/CpaManager$Settings;->dns2:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 161
    :cond_2
    iget-boolean v2, p0, Lcom/kddi/android/CpaManager;->DBG:Z

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Display for Broadcating Intent ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :cond_3
    iget-object v1, p0, Lcom/kddi/android/CpaManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    .end local v0    # "intent":Landroid/content/Intent;
    nop

    .line 168
    sget v0, Lcom/kddi/android/CpaManager;->SUCCESS:I

    return v0

    .line 164
    :catch_0
    move-exception v0

    .line 165
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Landroid/os/RemoteException;

    const-string v2, "error!! send intent for chang mode"

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 137
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "mode is null!! "

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized greylist getConnInfo()Lcom/kddi/android/CpaManager$ConnInfo;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 187
    :try_start_0
    iget-boolean v0, p0, Lcom/kddi/android/CpaManager;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "CpaManager"

    const-string v1, "getConnInfo() start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    .end local p0    # "this":Lcom/kddi/android/CpaManager;
    :cond_0
    new-instance v0, Lcom/kddi/android/CpaManager$ConnInfo;

    invoke-direct {v0}, Lcom/kddi/android/CpaManager$ConnInfo;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    .local v0, "connInfo":Lcom/kddi/android/CpaManager$ConnInfo;
    :try_start_1
    invoke-direct {p0}, Lcom/kddi/android/CpaManager;->getState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_6

    .line 195
    invoke-static {}, Lcom/kddi/android/CpaManager;->getLocalIpAddress()Ljava/lang/String;

    move-result-object v1

    .line 196
    .local v1, "localIP":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/kddi/android/CpaManager;->getCurrentDns()[Ljava/net/InetAddress;

    move-result-object v2

    iput-object v2, v0, Lcom/kddi/android/CpaManager$ConnInfo;->dnsAddress:[Ljava/net/InetAddress;

    .line 198
    iget-boolean v2, p0, Lcom/kddi/android/CpaManager;->DBG:Z

    if-eqz v2, :cond_1

    const-string v2, "CpaManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " getLocalIpAddress() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 201
    :cond_1
    :try_start_2
    invoke-static {v1}, Landroid/net/InetAddresses;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    iput-object v2, v0, Lcom/kddi/android/CpaManager$ConnInfo;->localAddress:Ljava/net/InetAddress;

    .line 203
    iget-boolean v2, p0, Lcom/kddi/android/CpaManager;->DBG:Z

    if-eqz v2, :cond_2

    const-string v2, "CpaManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " getConnInfo() localAddress  = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/kddi/android/CpaManager$ConnInfo;->localAddress:Ljava/net/InetAddress;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    :cond_2
    iget-boolean v2, p0, Lcom/kddi/android/CpaManager;->DBG:Z

    if-eqz v2, :cond_3

    const-string v2, "CpaManager"

    const-string v3, " getConnInfo() dnses: "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    :cond_3
    iget-object v2, v0, Lcom/kddi/android/CpaManager$ConnInfo;->dnsAddress:[Ljava/net/InetAddress;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_5

    aget-object v5, v2, v4

    .line 206
    .local v5, "addr":Ljava/net/InetAddress;
    iget-boolean v6, p0, Lcom/kddi/android/CpaManager;->DBG:Z

    if-eqz v6, :cond_4

    const-string v6, "CpaManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "   dns: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 205
    .end local v5    # "addr":Ljava/net/InetAddress;
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 210
    :cond_5
    nop

    .line 211
    .end local v1    # "localIP":Ljava/lang/String;
    nop

    .line 217
    nop

    .line 218
    monitor-exit p0

    return-object v0

    .line 208
    .restart local v1    # "localIP":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 209
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    :try_start_3
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "error!! get localip dns address for navi cpa"

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "connInfo":Lcom/kddi/android/CpaManager$ConnInfo;
    throw v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 212
    .end local v1    # "localIP":Ljava/lang/String;
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v0    # "connInfo":Lcom/kddi/android/CpaManager$ConnInfo;
    :cond_6
    const/4 v1, 0x0

    monitor-exit p0

    return-object v1

    .line 215
    :catch_1
    move-exception v1

    .line 216
    .local v1, "e":Ljava/lang/Exception;
    :try_start_4
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "error!! getConnInfo()"

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 186
    .end local v0    # "connInfo":Lcom/kddi/android/CpaManager$ConnInfo;
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized greylist getConnStatus()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 174
    :try_start_0
    invoke-direct {p0}, Lcom/kddi/android/CpaManager;->getState()I

    move-result v0

    .line 175
    .local v0, "state":I
    const-string v1, "CpaManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getConnStatus() state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 177
    :cond_0
    new-instance v1, Landroid/os/RemoteException;

    const-string v2, "error!! get state for navi cpa"

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 180
    .end local p0    # "this":Lcom/kddi/android/CpaManager;
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/kddi/android/CpaManager;->getState()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v1

    .line 173
    .end local v0    # "state":I
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized blacklist getCurrentDns()[Ljava/net/InetAddress;
    .locals 9

    monitor-enter p0

    .line 268
    :try_start_0
    iget-object v0, p0, Lcom/kddi/android/CpaManager;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 269
    .local v0, "cm":Landroid/net/ConnectivityManager;
    const/4 v1, 0x0

    .line 271
    .local v1, "lp":Landroid/net/LinkProperties;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_2

    aget-object v6, v2, v5

    .line 272
    .local v6, "network":Landroid/net/Network;
    invoke-virtual {v0, v6}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v7

    .line 273
    .local v7, "nc":Landroid/net/NetworkCapabilities;
    if-eqz v7, :cond_1

    .line 274
    invoke-virtual {v7, v4}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v8

    if-eqz v8, :cond_1

    const/16 v8, 0xc

    .line 275
    invoke-virtual {v7, v8}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v8

    if-nez v8, :cond_0

    .line 276
    goto :goto_1

    .line 278
    :cond_0
    invoke-virtual {v0, v6}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object v8

    move-object v1, v8

    .line 271
    .end local v6    # "network":Landroid/net/Network;
    .end local v7    # "nc":Landroid/net/NetworkCapabilities;
    .end local p0    # "this":Lcom/kddi/android/CpaManager;
    :cond_1
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 281
    :cond_2
    if-eqz v1, :cond_3

    .line 282
    invoke-virtual {v1}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    move-result-object v2

    .line 283
    .local v2, "dnses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetAddress;>;"
    new-array v3, v4, [Ljava/net/InetAddress;

    invoke-interface {v2, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/net/InetAddress;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v3

    .line 285
    .end local v2    # "dnses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetAddress;>;"
    :cond_3
    const/4 v2, 0x2

    :try_start_1
    new-array v2, v2, [Ljava/net/InetAddress;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v2

    .line 267
    .end local v0    # "cm":Landroid/net/ConnectivityManager;
    .end local v1    # "lp":Landroid/net/LinkProperties;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
