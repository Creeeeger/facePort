.class public final Lcom/android/internal/net/VpnProfile;
.super Ljava/lang/Object;
.source "VpnProfile.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Landroid/os/Parcelable;


# static fields
.field private static final blacklist ANDROID_BC_PROVIDER:Ljava/lang/String; = "AndroidKeyStoreBCWorkaroundProvider"

.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/internal/net/VpnProfile;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist DEFAULT_ENCODING:Ljava/lang/String;

.field private static final blacklist ENCODED_NULL_PROXY_INFO:Ljava/lang/String; = "\u0000\u0000\u0000\u0000"

.field static final blacklist LIST_DELIMITER:Ljava/lang/String; = ","

.field public static final blacklist PROXY_MANUAL:I = 0x1

.field public static final blacklist PROXY_NONE:I = 0x0

.field private static final greylist-max-o TAG:Ljava/lang/String; = "VpnProfile"

.field public static final blacklist TYPE_IKEV2_FROM_IKE_TUN_CONN_PARAMS:I = 0x9

.field public static final blacklist TYPE_IKEV2_IPSEC_PSK:I = 0x7

.field public static final blacklist TYPE_IKEV2_IPSEC_RSA:I = 0x8

.field public static final blacklist TYPE_IKEV2_IPSEC_USER_PASS:I = 0x6

.field public static final greylist-max-o TYPE_IPSEC_HYBRID_RSA:I = 0x5

.field public static final greylist-max-o TYPE_IPSEC_XAUTH_PSK:I = 0x3

.field public static final greylist-max-o TYPE_IPSEC_XAUTH_RSA:I = 0x4

.field public static final greylist-max-o TYPE_L2TP_IPSEC_PSK:I = 0x1

.field public static final greylist-max-o TYPE_L2TP_IPSEC_RSA:I = 0x2

.field public static final greylist-max-o TYPE_MAX:I = 0x9

.field public static final greylist-max-o TYPE_PPTP:I = 0x0

.field static final blacklist VALUE_DELIMITER:Ljava/lang/String; = "\u0000"

.field private static final blacklist VPN_KEYPAIR_PROVIDER:Ljava/lang/String; = "AndroidKeyStore"

.field private static final blacklist VPN_SECRET_KEY:Ljava/lang/String; = "VpnSecretKey"


# instance fields
.field public blacklist areAuthParamsInline:Z

.field public greylist-max-o dnsServers:Ljava/lang/String;

.field public final blacklist excludeLocalRoutes:Z

.field public final blacklist ikeTunConnParams:Landroid/net/ipsec/ike/IkeTunnelConnectionParams;

.field public greylist-max-o ipsecCaCert:Ljava/lang/String;

.field public greylist-max-o ipsecIdentifier:Ljava/lang/String;

.field public greylist-max-o ipsecSecret:Ljava/lang/String;

.field public greylist-max-o ipsecServerCert:Ljava/lang/String;

.field public greylist-max-o ipsecUserCert:Ljava/lang/String;

.field public blacklist isBypassable:Z

.field public blacklist isIpsecSecretIvParams:Ljava/lang/String;

.field public blacklist isMetered:Z

.field public blacklist isPFS:Z

.field public blacklist isPasswordIvParams:Ljava/lang/String;

.field public final blacklist isRestrictedToTestNetworks:Z

.field public final greylist key:Ljava/lang/String;

.field public greylist-max-o l2tpSecret:Ljava/lang/String;

.field private blacklist mAllowedAlgorithms:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist maxMtu:I

.field public greylist-max-o mppe:Z

.field public greylist name:Ljava/lang/String;

.field public blacklist ocspServerUrl:Ljava/lang/String;

.field public greylist-max-o password:Ljava/lang/String;

.field public blacklist proxy:Landroid/net/ProxyInfo;

.field public final blacklist requiresInternetValidation:Z

.field public greylist-max-o routes:Ljava/lang/String;

.field public transient greylist saveLogin:Z

.field public greylist-max-o searchDomains:Ljava/lang/String;

.field public greylist-max-p server:Ljava/lang/String;

.field public greylist type:I

.field public greylist username:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 119
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/net/VpnProfile;->DEFAULT_ENCODING:Ljava/lang/String;

    .line 675
    new-instance v0, Lcom/android/internal/net/VpnProfile$1;

    invoke-direct {v0}, Lcom/android/internal/net/VpnProfile$1;-><init>()V

    sput-object v0, Lcom/android/internal/net/VpnProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist <init>(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    .line 128
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/net/VpnProfile;->type:I

    .line 131
    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    .line 134
    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    .line 136
    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    .line 137
    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->dnsServers:Ljava/lang/String;

    .line 138
    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->searchDomains:Ljava/lang/String;

    .line 139
    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->routes:Ljava/lang/String;

    .line 140
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/net/VpnProfile;->mppe:Z

    .line 141
    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->l2tpSecret:Ljava/lang/String;

    .line 142
    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    .line 154
    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    .line 162
    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    .line 170
    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    .line 171
    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->ipsecServerCert:Ljava/lang/String;

    .line 173
    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->ocspServerUrl:Ljava/lang/String;

    .line 174
    iput-boolean v1, p0, Lcom/android/internal/net/VpnProfile;->isPFS:Z

    .line 177
    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->isPasswordIvParams:Ljava/lang/String;

    .line 178
    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->isIpsecSecretIvParams:Ljava/lang/String;

    .line 180
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->proxy:Landroid/net/ProxyInfo;

    .line 185
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/internal/net/VpnProfile;->mAllowedAlgorithms:Ljava/util/List;

    .line 186
    iput-boolean v1, p0, Lcom/android/internal/net/VpnProfile;->isBypassable:Z

    .line 187
    iput-boolean v1, p0, Lcom/android/internal/net/VpnProfile;->isMetered:Z

    .line 188
    const/16 v3, 0x550

    iput v3, p0, Lcom/android/internal/net/VpnProfile;->maxMtu:I

    .line 189
    iput-boolean v1, p0, Lcom/android/internal/net/VpnProfile;->areAuthParamsInline:Z

    .line 197
    iput-boolean v1, p0, Lcom/android/internal/net/VpnProfile;->saveLogin:Z

    .line 219
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    .line 220
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    .line 221
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/android/internal/net/VpnProfile;->type:I

    .line 222
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    .line 223
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    .line 224
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    .line 225
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/net/VpnProfile;->dnsServers:Ljava/lang/String;

    .line 226
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/net/VpnProfile;->searchDomains:Ljava/lang/String;

    .line 227
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/net/VpnProfile;->routes:Ljava/lang/String;

    .line 228
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    iput-boolean v3, p0, Lcom/android/internal/net/VpnProfile;->mppe:Z

    .line 229
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/net/VpnProfile;->l2tpSecret:Ljava/lang/String;

    .line 230
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/net/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    .line 231
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    .line 232
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    .line 233
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/net/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    .line 234
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/net/VpnProfile;->ipsecServerCert:Ljava/lang/String;

    .line 235
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    iput-boolean v3, p0, Lcom/android/internal/net/VpnProfile;->saveLogin:Z

    .line 236
    const-class v3, Landroid/net/ProxyInfo;

    invoke-virtual {p1, v0, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ProxyInfo;

    iput-object v3, p0, Lcom/android/internal/net/VpnProfile;->proxy:Landroid/net/ProxyInfo;

    .line 237
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/internal/net/VpnProfile;->mAllowedAlgorithms:Ljava/util/List;

    .line 238
    const-class v4, Ljava/lang/String;

    invoke-virtual {p1, v3, v0, v4}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/Class;)V

    .line 239
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/internal/net/VpnProfile;->isBypassable:Z

    .line 240
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/internal/net/VpnProfile;->isMetered:Z

    .line 242
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/net/VpnProfile;->ocspServerUrl:Ljava/lang/String;

    .line 243
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    move v1, v2

    :cond_2
    iput-boolean v1, p0, Lcom/android/internal/net/VpnProfile;->isPFS:Z

    .line 246
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/net/VpnProfile;->isPasswordIvParams:Ljava/lang/String;

    .line 247
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/net/VpnProfile;->isIpsecSecretIvParams:Ljava/lang/String;

    .line 249
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/internal/net/VpnProfile;->maxMtu:I

    .line 250
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/net/VpnProfile;->areAuthParamsInline:Z

    .line 251
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/net/VpnProfile;->isRestrictedToTestNetworks:Z

    .line 252
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/net/VpnProfile;->excludeLocalRoutes:Z

    .line 253
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/net/VpnProfile;->requiresInternetValidation:Z

    .line 254
    const-class v1, Landroid/os/PersistableBundle;

    .line 255
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/PersistableBundle;

    .line 256
    .local v1, "bundle":Landroid/os/PersistableBundle;
    if-nez v1, :cond_3

    goto :goto_2

    .line 257
    :cond_3
    invoke-static {v1}, Landroid/net/vcn/persistablebundleutils/TunnelConnectionParamsUtils;->fromPersistableBundle(Landroid/os/PersistableBundle;)Landroid/net/ipsec/ike/IkeTunnelConnectionParams;

    move-result-object v0

    :goto_2
    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->ikeTunConnParams:Landroid/net/ipsec/ike/IkeTunnelConnectionParams;

    .line 258
    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/lang/String;)V
    .locals 6
    .param p1, "key"    # Ljava/lang/String;

    .line 201
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/net/VpnProfile;-><init>(Ljava/lang/String;ZZZLandroid/net/ipsec/ike/IkeTunnelConnectionParams;)V

    .line 202
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Z)V
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "isRestrictedToTestNetworks"    # Z

    .line 205
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/net/VpnProfile;-><init>(Ljava/lang/String;ZZZLandroid/net/ipsec/ike/IkeTunnelConnectionParams;)V

    .line 206
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;ZZZLandroid/net/ipsec/ike/IkeTunnelConnectionParams;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "isRestrictedToTestNetworks"    # Z
    .param p3, "excludeLocalRoutes"    # Z
    .param p4, "requiresInternetValidation"    # Z
    .param p5, "ikeTunConnParams"    # Landroid/net/ipsec/ike/IkeTunnelConnectionParams;

    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    .line 128
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/net/VpnProfile;->type:I

    .line 131
    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    .line 134
    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    .line 136
    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    .line 137
    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->dnsServers:Ljava/lang/String;

    .line 138
    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->searchDomains:Ljava/lang/String;

    .line 139
    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->routes:Ljava/lang/String;

    .line 140
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/net/VpnProfile;->mppe:Z

    .line 141
    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->l2tpSecret:Ljava/lang/String;

    .line 142
    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    .line 154
    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    .line 162
    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    .line 170
    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    .line 171
    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->ipsecServerCert:Ljava/lang/String;

    .line 173
    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->ocspServerUrl:Ljava/lang/String;

    .line 174
    iput-boolean v1, p0, Lcom/android/internal/net/VpnProfile;->isPFS:Z

    .line 177
    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->isPasswordIvParams:Ljava/lang/String;

    .line 178
    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->isIpsecSecretIvParams:Ljava/lang/String;

    .line 180
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->proxy:Landroid/net/ProxyInfo;

    .line 185
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->mAllowedAlgorithms:Ljava/util/List;

    .line 186
    iput-boolean v1, p0, Lcom/android/internal/net/VpnProfile;->isBypassable:Z

    .line 187
    iput-boolean v1, p0, Lcom/android/internal/net/VpnProfile;->isMetered:Z

    .line 188
    const/16 v0, 0x550

    iput v0, p0, Lcom/android/internal/net/VpnProfile;->maxMtu:I

    .line 189
    iput-boolean v1, p0, Lcom/android/internal/net/VpnProfile;->areAuthParamsInline:Z

    .line 197
    iput-boolean v1, p0, Lcom/android/internal/net/VpnProfile;->saveLogin:Z

    .line 210
    iput-object p1, p0, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    .line 211
    iput-boolean p2, p0, Lcom/android/internal/net/VpnProfile;->isRestrictedToTestNetworks:Z

    .line 212
    iput-boolean p3, p0, Lcom/android/internal/net/VpnProfile;->excludeLocalRoutes:Z

    .line 213
    iput-boolean p4, p0, Lcom/android/internal/net/VpnProfile;->requiresInternetValidation:Z

    .line 214
    iput-object p5, p0, Lcom/android/internal/net/VpnProfile;->ikeTunConnParams:Landroid/net/ipsec/ike/IkeTunnelConnectionParams;

    .line 215
    return-void
.end method

.method private static blacklist byteArrayToInt([B)I
    .locals 4
    .param p0, "b"    # [B

    .line 860
    const/4 v0, 0x0

    .line 861
    .local v0, "value":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    .line 862
    rsub-int/lit8 v2, v1, 0x3

    mul-int/lit8 v2, v2, 0x8

    .line 863
    .local v2, "shift":I
    aget-byte v3, p0, v1

    and-int/lit16 v3, v3, 0xff

    shl-int/2addr v3, v2

    add-int/2addr v0, v3

    .line 861
    .end local v2    # "shift":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 865
    .end local v1    # "i":I
    :cond_0
    return v0
.end method

.method private static blacklist bytes2Hex([B)Ljava/lang/String;
    .locals 6
    .param p0, "bytes"    # [B

    .line 694
    if-nez p0, :cond_0

    .line 695
    const-string v0, ""

    return-object v0

    .line 697
    :cond_0
    const-string v0, "0123456789ABCDEF"

    .line 698
    .local v0, "HEX":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v2, p0

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 699
    .local v1, "result":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_1

    .line 700
    aget-byte v3, p0, v2

    shr-int/lit8 v3, v3, 0x4

    and-int/lit8 v3, v3, 0xf

    const-string v4, "0123456789ABCDEF"

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-byte v5, p0, v2

    and-int/lit8 v5, v5, 0xf

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 699
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 702
    .end local v2    # "i":I
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static greylist-max-r decode(Ljava/lang/String;[B)Lcom/android/internal/net/VpnProfile;
    .locals 19
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # [B

    .line 327
    const/4 v1, 0x0

    if-nez p0, :cond_0

    .line 328
    return-object v1

    .line 331
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/String;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v8, p1

    :try_start_1
    invoke-direct {v0, v8, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const-string v2, "\u0000"

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 341
    .local v0, "values":[Ljava/lang/String;
    array-length v2, v0

    const/16 v9, 0x12

    if-lt v2, v9, :cond_1f

    array-length v2, v0

    const/16 v10, 0x17

    const/16 v11, 0x1c

    if-le v2, v10, :cond_1

    array-length v2, v0

    if-lt v2, v11, :cond_1f

    :cond_1
    array-length v2, v0

    const/16 v3, 0x20

    if-le v2, v3, :cond_2

    goto/16 :goto_14

    .line 347
    :cond_2
    array-length v2, v0

    const/16 v4, 0x1d

    if-lt v2, v4, :cond_3

    .line 348
    aget-object v2, v0, v11

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    move v12, v2

    .local v2, "isRestrictedToTestNetworks":Z
    goto :goto_0

    .line 350
    .end local v2    # "isRestrictedToTestNetworks":Z
    :cond_3
    const/4 v2, 0x0

    move v12, v2

    .line 354
    .local v12, "isRestrictedToTestNetworks":Z
    :goto_0
    array-length v2, v0

    const/16 v5, 0x1e

    if-lt v2, v5, :cond_4

    .line 355
    aget-object v2, v0, v4

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    move v13, v2

    .local v2, "excludeLocalRoutes":Z
    goto :goto_1

    .line 357
    .end local v2    # "excludeLocalRoutes":Z
    :cond_4
    const/4 v2, 0x0

    move v13, v2

    .line 361
    .local v13, "excludeLocalRoutes":Z
    :goto_1
    array-length v2, v0

    const/16 v4, 0x1f

    if-lt v2, v4, :cond_5

    .line 362
    aget-object v2, v0, v5

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    move v14, v2

    .local v2, "requiresInternetValidation":Z
    goto :goto_2

    .line 364
    .end local v2    # "requiresInternetValidation":Z
    :cond_5
    const/4 v2, 0x0

    move v14, v2

    .line 369
    .local v14, "requiresInternetValidation":Z
    :goto_2
    array-length v2, v0

    const/4 v15, 0x0

    if-lt v2, v3, :cond_6

    aget-object v2, v0, v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_6

    .line 370
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 371
    .local v2, "parcel":Landroid/os/Parcel;
    aget-object v3, v0, v4

    invoke-static {v3}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v3

    .line 372
    .local v3, "bytes":[B
    array-length v4, v3

    invoke-virtual {v2, v3, v15, v4}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 373
    invoke-virtual {v2, v15}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 374
    const-class v4, Landroid/os/PersistableBundle;

    .line 375
    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    .line 374
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PersistableBundle;

    .line 376
    .local v4, "bundle":Landroid/os/PersistableBundle;
    invoke-static {v4}, Landroid/net/vcn/persistablebundleutils/TunnelConnectionParamsUtils;->fromPersistableBundle(Landroid/os/PersistableBundle;)Landroid/net/ipsec/ike/IkeTunnelConnectionParams;

    move-result-object v5

    move-object v2, v5

    .line 377
    .end local v3    # "bytes":[B
    .end local v4    # "bundle":Landroid/os/PersistableBundle;
    .local v2, "tempIkeTunConnParams":Landroid/net/ipsec/ike/IkeTunnelConnectionParams;
    move-object/from16 v16, v2

    goto :goto_3

    .line 378
    .end local v2    # "tempIkeTunConnParams":Landroid/net/ipsec/ike/IkeTunnelConnectionParams;
    :cond_6
    const/4 v2, 0x0

    move-object/from16 v16, v2

    .line 381
    .local v16, "tempIkeTunConnParams":Landroid/net/ipsec/ike/IkeTunnelConnectionParams;
    :goto_3
    new-instance v17, Lcom/android/internal/net/VpnProfile;

    move-object/from16 v2, v17

    move-object/from16 v3, p0

    move v4, v12

    move v5, v13

    move v6, v14

    move-object/from16 v7, v16

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/net/VpnProfile;-><init>(Ljava/lang/String;ZZZLandroid/net/ipsec/ike/IkeTunnelConnectionParams;)V

    move-object/from16 v2, v17

    .line 383
    .local v2, "profile":Lcom/android/internal/net/VpnProfile;
    aget-object v3, v0, v15

    iput-object v3, v2, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    .line 384
    const/4 v3, 0x1

    aget-object v4, v0, v3

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v2, Lcom/android/internal/net/VpnProfile;->type:I

    .line 385
    if-ltz v4, :cond_1e

    const/16 v5, 0x9

    if-le v4, v5, :cond_7

    goto/16 :goto_13

    .line 388
    :cond_7
    const/4 v4, 0x2

    aget-object v4, v0, v4

    iput-object v4, v2, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    .line 389
    const/4 v4, 0x3

    aget-object v6, v0, v4

    iput-object v6, v2, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    .line 390
    const/4 v6, 0x4

    aget-object v7, v0, v6

    iput-object v7, v2, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    .line 391
    const/4 v7, 0x5

    aget-object v3, v0, v7

    iput-object v3, v2, Lcom/android/internal/net/VpnProfile;->dnsServers:Ljava/lang/String;

    .line 392
    const/4 v3, 0x6

    aget-object v15, v0, v3

    iput-object v15, v2, Lcom/android/internal/net/VpnProfile;->searchDomains:Ljava/lang/String;

    .line 393
    const/4 v15, 0x7

    aget-object v1, v0, v15

    iput-object v1, v2, Lcom/android/internal/net/VpnProfile;->routes:Ljava/lang/String;

    .line 394
    const/16 v1, 0x8

    aget-object v18, v0, v1

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v2, Lcom/android/internal/net/VpnProfile;->mppe:Z

    .line 395
    aget-object v1, v0, v5

    iput-object v1, v2, Lcom/android/internal/net/VpnProfile;->l2tpSecret:Ljava/lang/String;

    .line 396
    const/16 v1, 0xa

    aget-object v1, v0, v1

    iput-object v1, v2, Lcom/android/internal/net/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    .line 397
    const/16 v1, 0xb

    aget-object v1, v0, v1

    iput-object v1, v2, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    .line 398
    const/16 v1, 0xc

    aget-object v1, v0, v1

    iput-object v1, v2, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    .line 399
    const/16 v1, 0xd

    aget-object v1, v0, v1

    iput-object v1, v2, Lcom/android/internal/net/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    .line 400
    array-length v1, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/16 v5, 0xe

    const-string v18, ""

    if-le v1, v5, :cond_8

    :try_start_2
    aget-object v1, v0, v5

    goto :goto_4

    :cond_8
    move-object/from16 v1, v18

    :goto_4
    iput-object v1, v2, Lcom/android/internal/net/VpnProfile;->ipsecServerCert:Ljava/lang/String;

    .line 402
    array-length v1, v0

    const/16 v5, 0xf

    if-le v1, v5, :cond_9

    aget-object v1, v0, v5

    goto :goto_5

    :cond_9
    move-object/from16 v1, v18

    :goto_5
    iput-object v1, v2, Lcom/android/internal/net/VpnProfile;->ocspServerUrl:Ljava/lang/String;

    .line 403
    array-length v1, v0

    const/16 v5, 0x10

    if-le v1, v5, :cond_a

    aget-object v1, v0, v5

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_6

    :cond_a
    const/4 v1, 0x0

    :goto_6
    iput-boolean v1, v2, Lcom/android/internal/net/VpnProfile;->isPFS:Z

    .line 406
    array-length v1, v0

    const/16 v5, 0x11

    if-le v1, v5, :cond_b

    const/16 v1, 0x11

    aget-object v1, v0, v1

    goto :goto_7

    :cond_b
    move-object/from16 v1, v18

    :goto_7
    iput-object v1, v2, Lcom/android/internal/net/VpnProfile;->isPasswordIvParams:Ljava/lang/String;

    .line 407
    array-length v1, v0

    if-le v1, v9, :cond_c

    aget-object v1, v0, v9

    goto :goto_8

    :cond_c
    move-object/from16 v1, v18

    :goto_8
    iput-object v1, v2, Lcom/android/internal/net/VpnProfile;->isIpsecSecretIvParams:Ljava/lang/String;

    .line 409
    array-length v1, v0

    const/16 v5, 0x13

    if-le v1, v5, :cond_14

    .line 410
    array-length v1, v0

    if-le v1, v5, :cond_d

    aget-object v1, v0, v5

    goto :goto_9

    :cond_d
    move-object/from16 v1, v18

    .line 411
    .local v1, "host":Ljava/lang/String;
    :goto_9
    array-length v5, v0

    const/16 v9, 0x14

    if-le v5, v9, :cond_e

    const/16 v5, 0x14

    aget-object v5, v0, v5

    goto :goto_a

    :cond_e
    move-object/from16 v5, v18

    .line 412
    .local v5, "port":Ljava/lang/String;
    :goto_a
    array-length v9, v0

    const/16 v15, 0x15

    if-le v9, v15, :cond_f

    const/16 v9, 0x15

    aget-object v9, v0, v9

    goto :goto_b

    :cond_f
    move-object/from16 v9, v18

    .line 413
    .local v9, "exclList":Ljava/lang/String;
    :goto_b
    array-length v15, v0

    const/16 v3, 0x16

    if-le v15, v3, :cond_10

    const/16 v3, 0x16

    aget-object v18, v0, v3

    :cond_10
    move-object/from16 v3, v18

    .line 414
    .local v3, "pacFileUrl":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_12

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_12

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_11

    goto :goto_c

    .line 419
    :cond_11
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_14

    .line 420
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    invoke-static {v15}, Landroid/net/ProxyInfo;->buildPacProxy(Landroid/net/Uri;)Landroid/net/ProxyInfo;

    move-result-object v15

    iput-object v15, v2, Lcom/android/internal/net/VpnProfile;->proxy:Landroid/net/ProxyInfo;

    goto :goto_e

    .line 415
    :cond_12
    :goto_c
    nop

    .line 416
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_13

    .line 417
    const/4 v15, 0x0

    goto :goto_d

    :cond_13
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    .line 418
    :goto_d
    invoke-static {v9}, Lcom/android/net/module/util/ProxyUtils;->exclusionStringAsList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 416
    invoke-static {v1, v15, v6}, Landroid/net/ProxyInfo;->buildDirectProxy(Ljava/lang/String;ILjava/util/List;)Landroid/net/ProxyInfo;

    move-result-object v6

    iput-object v6, v2, Lcom/android/internal/net/VpnProfile;->proxy:Landroid/net/ProxyInfo;

    .line 425
    .end local v1    # "host":Ljava/lang/String;
    .end local v3    # "pacFileUrl":Ljava/lang/String;
    .end local v5    # "port":Ljava/lang/String;
    .end local v9    # "exclList":Ljava/lang/String;
    :cond_14
    :goto_e
    array-length v1, v0

    if-lt v1, v11, :cond_16

    .line 426
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v2, Lcom/android/internal/net/VpnProfile;->mAllowedAlgorithms:Ljava/util/List;

    .line 427
    aget-object v1, v0, v10

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_15

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 428
    .local v3, "algo":Ljava/lang/String;
    iget-object v5, v2, Lcom/android/internal/net/VpnProfile;->mAllowedAlgorithms:Ljava/util/List;

    sget-object v6, Lcom/android/internal/net/VpnProfile;->DEFAULT_ENCODING:Ljava/lang/String;

    invoke-static {v3, v6}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 429
    nop

    .end local v3    # "algo":Ljava/lang/String;
    goto :goto_f

    .line 431
    :cond_15
    const/16 v1, 0x18

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v2, Lcom/android/internal/net/VpnProfile;->isBypassable:Z

    .line 432
    const/16 v1, 0x19

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v2, Lcom/android/internal/net/VpnProfile;->isMetered:Z

    .line 433
    const/16 v1, 0x1a

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v2, Lcom/android/internal/net/VpnProfile;->maxMtu:I

    .line 434
    const/16 v1, 0x1b

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v2, Lcom/android/internal/net/VpnProfile;->areAuthParamsInline:Z

    .line 439
    :cond_16
    iget-object v1, v2, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_18

    iget-object v1, v2, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_17

    goto :goto_10

    :cond_17
    const/4 v15, 0x0

    goto :goto_11

    :cond_18
    :goto_10
    const/4 v15, 0x1

    :goto_11
    iput-boolean v15, v2, Lcom/android/internal/net/VpnProfile;->saveLogin:Z

    .line 443
    iget v1, v2, Lcom/android/internal/net/VpnProfile;->type:I

    if-ne v1, v4, :cond_19

    iget-object v1, v2, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_19

    iget-object v1, v2, Lcom/android/internal/net/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    .line 444
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_19

    .line 445
    iput v7, v2, Lcom/android/internal/net/VpnProfile;->type:I

    goto :goto_12

    .line 446
    :cond_19
    iget v1, v2, Lcom/android/internal/net/VpnProfile;->type:I

    const/4 v3, 0x4

    if-ne v1, v3, :cond_1a

    iget-object v1, v2, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1a

    .line 447
    iput v4, v2, Lcom/android/internal/net/VpnProfile;->type:I

    goto :goto_12

    .line 448
    :cond_1a
    iget v1, v2, Lcom/android/internal/net/VpnProfile;->type:I

    if-ne v1, v7, :cond_1b

    iget-object v1, v2, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1b

    .line 449
    const/4 v1, 0x4

    iput v1, v2, Lcom/android/internal/net/VpnProfile;->type:I

    goto :goto_12

    .line 450
    :cond_1b
    iget v1, v2, Lcom/android/internal/net/VpnProfile;->type:I

    const/4 v3, 0x6

    if-ne v1, v3, :cond_1c

    iget-object v1, v2, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1c

    .line 451
    const/4 v1, 0x7

    iput v1, v2, Lcom/android/internal/net/VpnProfile;->type:I

    goto :goto_12

    .line 452
    :cond_1c
    iget v1, v2, Lcom/android/internal/net/VpnProfile;->type:I

    const/4 v3, 0x7

    if-ne v1, v3, :cond_1d

    iget-object v1, v2, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1d

    .line 453
    const/16 v1, 0x8

    iput v1, v2, Lcom/android/internal/net/VpnProfile;->type:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 457
    :cond_1d
    :goto_12
    return-object v2

    .line 386
    :cond_1e
    :goto_13
    const/4 v1, 0x0

    return-object v1

    .line 343
    .end local v2    # "profile":Lcom/android/internal/net/VpnProfile;
    .end local v12    # "isRestrictedToTestNetworks":Z
    .end local v13    # "excludeLocalRoutes":Z
    .end local v14    # "requiresInternetValidation":Z
    .end local v16    # "tempIkeTunConnParams":Landroid/net/ipsec/ike/IkeTunnelConnectionParams;
    :cond_1f
    :goto_14
    const/4 v1, 0x0

    return-object v1

    .line 458
    .end local v0    # "values":[Ljava/lang/String;
    :catch_0
    move-exception v0

    goto :goto_15

    :catch_1
    move-exception v0

    move-object/from16 v8, p1

    .line 459
    .local v0, "e":Ljava/lang/Exception;
    :goto_15
    const-string v1, "VpnProfile"

    const-string v2, "Got exception in decode."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 462
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return-object v1
.end method

.method public static blacklist decrypt(Lcom/android/internal/net/VpnProfile;)V
    .locals 7
    .param p0, "profile"    # Lcom/android/internal/net/VpnProfile;

    .line 818
    const-string v0, "AndroidKeyStoreBCWorkaroundProvider"

    iget-object v1, p0, Lcom/android/internal/net/VpnProfile;->isIpsecSecretIvParams:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    const-string v2, "VpnProfile"

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/net/VpnProfile;->isPasswordIvParams:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 848
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "This profile was not encrypted:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 820
    :cond_1
    :goto_0
    const/4 v1, 0x0

    :try_start_0
    invoke-static {v1}, Lcom/android/internal/net/VpnProfile;->getSecretKey(Z)Ljava/security/Key;

    move-result-object v1

    .line 821
    .local v1, "secretKey":Ljava/security/Key;
    if-eqz v1, :cond_5

    .line 822
    const/4 v3, 0x0

    .line 823
    .local v3, "isSetBCProvider":Z
    invoke-static {v0}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v4

    .line 824
    .local v4, "expectedProvider":Ljava/security/Provider;
    if-nez v4, :cond_2

    .line 825
    invoke-static {}, Landroid/security/keystore2/AndroidKeyStoreProvider;->install()V

    .line 826
    const/4 v3, 0x1

    .line 828
    :cond_2
    iget-object v5, p0, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    .line 829
    iget-object v5, p0, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/internal/net/VpnProfile;->isIpsecSecretIvParams:Ljava/lang/String;

    invoke-static {v1, v5, v6}, Lcom/android/internal/net/VpnProfile;->doDecrypt(Ljava/security/Key;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 830
    .local v5, "ret":Ljava/lang/String;
    if-eqz v5, :cond_3

    .line 831
    iput-object v5, p0, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    .line 834
    .end local v5    # "ret":Ljava/lang/String;
    :cond_3
    iget-object v5, p0, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    .line 835
    iget-object v5, p0, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/internal/net/VpnProfile;->isPasswordIvParams:Ljava/lang/String;

    invoke-static {v1, v5, v6}, Lcom/android/internal/net/VpnProfile;->doDecrypt(Ljava/security/Key;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 836
    .restart local v5    # "ret":Ljava/lang/String;
    if-eqz v5, :cond_4

    .line 837
    iput-object v5, p0, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    .line 840
    .end local v5    # "ret":Ljava/lang/String;
    :cond_4
    if-eqz v3, :cond_5

    .line 841
    invoke-static {v0}, Ljava/security/Security;->removeProvider(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 844
    .end local v1    # "secretKey":Ljava/security/Key;
    .end local v3    # "isSetBCProvider":Z
    .end local v4    # "expectedProvider":Ljava/security/Provider;
    :catch_0
    move-exception v0

    .line 845
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error while decrypting profile: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_5
    :goto_1
    nop

    .line 850
    :goto_2
    return-void
.end method

.method private static blacklist doDecrypt(Ljava/security/Key;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "secretKey"    # Ljava/security/Key;
    .param p1, "encryptedBase64"    # Ljava/lang/String;
    .param p2, "ivHexBase64"    # Ljava/lang/String;

    .line 741
    const/4 v0, 0x2

    :try_start_0
    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    .line 742
    .local v1, "encryptedBuffer":[B
    new-instance v2, Ljava/lang/String;

    invoke-static {p2, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 743
    .local v2, "ivHexStr":Ljava/lang/String;
    invoke-static {v2}, Lcom/android/internal/net/VpnProfile;->hex2Bytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 744
    .local v3, "ivBuffer":[B
    new-instance v4, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v4, v3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 746
    .local v4, "ivParamSpec":Ljavax/crypto/spec/IvParameterSpec;
    const-string v5, "AES/CBC/PKCS7Padding"

    invoke-static {v5}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v5

    .line 749
    .local v5, "cipher":Ljavax/crypto/Cipher;
    invoke-virtual {v5, v0, p0, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 750
    invoke-virtual {v5, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v6

    .line 752
    .local v6, "decryptedBuffer":[B
    new-instance v7, Ljava/lang/String;

    invoke-static {v6, v0}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v0

    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v7, v0, v8}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v7}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 753
    .end local v1    # "encryptedBuffer":[B
    .end local v2    # "ivHexStr":Ljava/lang/String;
    .end local v3    # "ivBuffer":[B
    .end local v4    # "ivParamSpec":Ljavax/crypto/spec/IvParameterSpec;
    .end local v5    # "cipher":Ljavax/crypto/Cipher;
    .end local v6    # "decryptedBuffer":[B
    :catch_0
    move-exception v0

    .line 757
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to decrypt: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VpnProfile"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 759
    const/4 v1, 0x0

    return-object v1
.end method

.method private static blacklist doEncrypt(Ljava/security/Key;Ljava/lang/String;)[Ljava/lang/String;
    .locals 11
    .param p0, "secretKey"    # Ljava/security/Key;
    .param p1, "plainValue"    # Ljava/lang/String;

    .line 716
    :try_start_0
    const-string v0, "AES/CBC/PKCS7Padding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 719
    .local v0, "cipher":Ljavax/crypto/Cipher;
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 720
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v2

    .line 721
    .local v2, "plainBuffer":[B
    invoke-virtual {v0, v2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v4

    .line 722
    .local v4, "encryptedBuffer":[B
    invoke-static {v4, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v5

    .line 724
    .local v5, "encryptedBase64":Ljava/lang/String;
    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getParameters()Ljava/security/AlgorithmParameters;

    move-result-object v6

    const-class v7, Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {v6, v7}, Ljava/security/AlgorithmParameters;->getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v6

    check-cast v6, Ljavax/crypto/spec/IvParameterSpec;

    .line 725
    .local v6, "ivParamSpec":Ljavax/crypto/spec/IvParameterSpec;
    invoke-virtual {v6}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object v7

    .line 726
    .local v7, "ivBuffer":[B
    invoke-static {v7}, Lcom/android/internal/net/VpnProfile;->bytes2Hex([B)Ljava/lang/String;

    move-result-object v8

    .line 727
    .local v8, "ivHexStr":Ljava/lang/String;
    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v8, v9}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v9

    invoke-static {v9, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v9

    .line 729
    .local v9, "ivHexBase64":Ljava/lang/String;
    new-array v3, v3, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v5, v3, v10

    aput-object v9, v3, v1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/spec/InvalidParameterSpecException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 730
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    .end local v2    # "plainBuffer":[B
    .end local v4    # "encryptedBuffer":[B
    .end local v5    # "encryptedBase64":Ljava/lang/String;
    .end local v6    # "ivParamSpec":Ljavax/crypto/spec/IvParameterSpec;
    .end local v7    # "ivBuffer":[B
    .end local v8    # "ivHexStr":Ljava/lang/String;
    .end local v9    # "ivHexBase64":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 733
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to encrypt: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VpnProfile"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 735
    const/4 v1, 0x0

    return-object v1
.end method

.method private static blacklist encrypt(Lcom/android/internal/net/VpnProfile;)V
    .locals 5
    .param p0, "profile"    # Lcom/android/internal/net/VpnProfile;

    .line 795
    iget-object v0, p0, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 796
    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/internal/net/VpnProfile;->getSecretKey(Z)Ljava/security/Key;

    move-result-object v1

    .line 797
    .local v1, "secretKey":Ljava/security/Key;
    if-eqz v1, :cond_2

    .line 798
    iget-object v2, p0, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 799
    iget-object v2, p0, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/internal/net/VpnProfile;->doEncrypt(Ljava/security/Key;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 800
    .local v2, "ret":[Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 801
    aget-object v4, v2, v3

    iput-object v4, p0, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    .line 802
    aget-object v4, v2, v0

    iput-object v4, p0, Lcom/android/internal/net/VpnProfile;->isIpsecSecretIvParams:Ljava/lang/String;

    .line 805
    .end local v2    # "ret":[Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 806
    iget-object v2, p0, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/internal/net/VpnProfile;->doEncrypt(Ljava/security/Key;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 807
    .restart local v2    # "ret":[Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 808
    aget-object v3, v2, v3

    iput-object v3, p0, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    .line 809
    aget-object v0, v2, v0

    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->isPasswordIvParams:Ljava/lang/String;

    .line 814
    .end local v1    # "secretKey":Ljava/security/Key;
    .end local v2    # "ret":[Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private static blacklist getSecretKey(Z)Ljava/security/Key;
    .locals 8
    .param p0, "generate"    # Z

    .line 764
    const-string v0, "VpnProfile"

    const-string v1, "AndroidKeyStore"

    const/4 v2, 0x0

    .line 767
    .local v2, "secretKey":Ljava/security/Key;
    :try_start_0
    invoke-static {v1}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v3

    .line 768
    .local v3, "keyStore":Ljava/security/KeyStore;
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 769
    const-string v5, "VpnSecretKey"

    if-eqz p0, :cond_0

    :try_start_1
    invoke-virtual {v3, v5}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    move-result v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-nez v6, :cond_0

    .line 771
    :try_start_2
    const-string v6, "AES"

    invoke-static {v6, v1}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v1

    .line 773
    .local v1, "keyGenerator":Ljavax/crypto/KeyGenerator;
    new-instance v6, Landroid/security/keystore/KeyGenParameterSpec$Builder;

    const/4 v7, 0x3

    invoke-direct {v6, v5, v7}, Landroid/security/keystore/KeyGenParameterSpec$Builder;-><init>(Ljava/lang/String;I)V

    const-string v7, "CBC"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    .line 776
    invoke-virtual {v6, v7}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setBlockModes([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v6

    const-string v7, "PKCS7Padding"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    .line 778
    invoke-virtual {v6, v7}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v6

    .line 779
    invoke-virtual {v6}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->build()Landroid/security/keystore/KeyGenParameterSpec;

    move-result-object v6

    .line 773
    invoke-virtual {v1, v6}, Ljavax/crypto/KeyGenerator;->init(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 780
    invoke-virtual {v1}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 784
    .end local v1    # "keyGenerator":Ljavax/crypto/KeyGenerator;
    goto :goto_0

    .line 781
    :catch_0
    move-exception v1

    .line 782
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to create key: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 786
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    invoke-virtual {v3, v5, v4}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-object v2, v0

    .line 790
    goto :goto_1

    .line 787
    .end local v3    # "keyStore":Ljava/security/KeyStore;
    :catch_1
    move-exception v1

    .line 788
    .restart local v1    # "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to get key: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 791
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return-object v2
.end method

.method private static blacklist hex2Bytes(Ljava/lang/String;)[B
    .locals 5
    .param p0, "hex"    # Ljava/lang/String;

    .line 706
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 707
    .local v0, "len":I
    new-array v1, v0, [B

    .line 708
    .local v1, "bytes":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 709
    mul-int/lit8 v3, v2, 0x2

    mul-int/lit8 v4, v2, 0x2

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->byteValue()B

    move-result v3

    aput-byte v3, v1, v2

    .line 708
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 711
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method

.method private static blacklist intToByteArray(I)[B
    .locals 2
    .param p0, "integer"    # I

    .line 853
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 854
    .local v0, "buff":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 855
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 856
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1
.end method

.method public static blacklist isLegacyType(I)Z
    .locals 1
    .param p0, "type"    # I

    .line 559
    packed-switch p0, :pswitch_data_0

    .line 568
    const/4 v0, 0x0

    return v0

    .line 566
    :pswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist isValidLockdownLegacyVpnProfile()Z
    .locals 1

    .line 573
    iget v0, p0, Lcom/android/internal/net/VpnProfile;->type:I

    invoke-static {v0}, Lcom/android/internal/net/VpnProfile;->isLegacyType(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/net/VpnProfile;->isServerAddressNumeric()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/net/VpnProfile;->hasDns()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 574
    invoke-virtual {p0}, Lcom/android/internal/net/VpnProfile;->areDnsAddressesNumeric()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 573
    :goto_0
    return v0
.end method

.method private blacklist isValidLockdownPlatformVpnProfile()Z
    .locals 1

    .line 578
    invoke-static {p0}, Landroid/net/Ikev2VpnProfile;->isValidVpnProfile(Lcom/android/internal/net/VpnProfile;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public greylist-max-o areDnsAddressesNumeric()Z
    .locals 5

    .line 618
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/net/VpnProfile;->dnsServers:Ljava/lang/String;

    const-string v2, " +"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 619
    .local v4, "dnsServer":Ljava/lang/String;
    invoke-static {v4}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 618
    nop

    .end local v4    # "dnsServer":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 623
    :cond_0
    nop

    .line 624
    const/4 v0, 0x1

    return v0

    .line 621
    :catch_0
    move-exception v1

    .line 622
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    return v0
.end method

.method public whitelist describeContents()I
    .locals 1

    .line 689
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o encode()[B
    .locals 7

    .line 485
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 486
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "\u0000"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/net/VpnProfile;->type:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 487
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 488
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/net/VpnProfile;->saveLogin:Z

    const-string v4, ""

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v3, v4

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 489
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/net/VpnProfile;->saveLogin:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v3, v4

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 490
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/net/VpnProfile;->dnsServers:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 491
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/net/VpnProfile;->searchDomains:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 492
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/net/VpnProfile;->routes:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 493
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/net/VpnProfile;->mppe:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 494
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/net/VpnProfile;->l2tpSecret:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 495
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/net/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 496
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 497
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 498
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/net/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 499
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/net/VpnProfile;->ipsecServerCert:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 501
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/net/VpnProfile;->ocspServerUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 502
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/net/VpnProfile;->isPFS:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 505
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/net/VpnProfile;->isPasswordIvParams:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 506
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/net/VpnProfile;->isIpsecSecretIvParams:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 508
    iget-object v2, p0, Lcom/android/internal/net/VpnProfile;->proxy:Landroid/net/ProxyInfo;

    if-eqz v2, :cond_4

    .line 509
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/net/VpnProfile;->proxy:Landroid/net/ProxyInfo;

    invoke-virtual {v3}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/net/VpnProfile;->proxy:Landroid/net/ProxyInfo;

    invoke-virtual {v3}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_2
    move-object v3, v4

    :goto_2
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 510
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/net/VpnProfile;->proxy:Landroid/net/ProxyInfo;

    invoke-virtual {v3}, Landroid/net/ProxyInfo;->getPort()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 511
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 513
    iget-object v3, p0, Lcom/android/internal/net/VpnProfile;->proxy:Landroid/net/ProxyInfo;

    invoke-virtual {v3}, Landroid/net/ProxyInfo;->getExclusionList()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/net/module/util/ProxyUtils;->exclusionListAsString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 514
    iget-object v3, p0, Lcom/android/internal/net/VpnProfile;->proxy:Landroid/net/ProxyInfo;

    invoke-virtual {v3}, Landroid/net/ProxyInfo;->getExclusionList()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/net/module/util/ProxyUtils;->exclusionListAsString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    .line 515
    :cond_3
    move-object v3, v4

    .line 512
    :goto_3
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 516
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/net/VpnProfile;->proxy:Landroid/net/ProxyInfo;

    invoke-virtual {v3}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 518
    :cond_4
    const-string v2, "\u0000\u0000\u0000\u0000"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 521
    :goto_4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 524
    .local v2, "encodedAlgoNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/net/VpnProfile;->mAllowedAlgorithms:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 525
    .local v5, "algo":Ljava/lang/String;
    sget-object v6, Lcom/android/internal/net/VpnProfile;->DEFAULT_ENCODING:Ljava/lang/String;

    invoke-static {v5, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 526
    nop

    .end local v5    # "algo":Ljava/lang/String;
    goto :goto_5

    .line 530
    :cond_5
    nop

    .line 532
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ","

    invoke-static {v5, v2}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 534
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v5, p0, Lcom/android/internal/net/VpnProfile;->isBypassable:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 535
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v5, p0, Lcom/android/internal/net/VpnProfile;->isMetered:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 536
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lcom/android/internal/net/VpnProfile;->maxMtu:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 537
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v5, p0, Lcom/android/internal/net/VpnProfile;->areAuthParamsInline:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 538
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v5, p0, Lcom/android/internal/net/VpnProfile;->isRestrictedToTestNetworks:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 540
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v5, p0, Lcom/android/internal/net/VpnProfile;->excludeLocalRoutes:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 541
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v5, p0, Lcom/android/internal/net/VpnProfile;->requiresInternetValidation:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 543
    iget-object v3, p0, Lcom/android/internal/net/VpnProfile;->ikeTunConnParams:Landroid/net/ipsec/ike/IkeTunnelConnectionParams;

    if-eqz v3, :cond_6

    .line 544
    nop

    .line 545
    invoke-static {v3}, Landroid/net/vcn/persistablebundleutils/TunnelConnectionParamsUtils;->toPersistableBundle(Landroid/net/ipsec/ike/IkeTunnelConnectionParams;)Landroid/os/PersistableBundle;

    move-result-object v3

    .line 546
    .local v3, "bundle":Landroid/os/PersistableBundle;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    .line 547
    .local v4, "parcel":Landroid/os/Parcel;
    invoke-virtual {v4, v3}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 548
    invoke-virtual {v4}, Landroid/os/Parcel;->marshall()[B

    move-result-object v5

    .line 549
    .local v5, "bytes":[B
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v5}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 550
    .end local v3    # "bundle":Landroid/os/PersistableBundle;
    .end local v4    # "parcel":Landroid/os/Parcel;
    .end local v5    # "bytes":[B
    goto :goto_6

    .line 551
    :cond_6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 554
    :goto_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    return-object v1

    .line 527
    :catch_0
    move-exception v1

    .line 529
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Failed to encode algorithms."

    invoke-direct {v3, v4, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public blacklist encode(Z)[B
    .locals 2
    .param p1, "encryptRequired"    # Z

    .line 471
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "encode: encrypt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VpnProfile"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    if-eqz p1, :cond_0

    .line 473
    invoke-static {p0}, Lcom/android/internal/net/VpnProfile;->encrypt(Lcom/android/internal/net/VpnProfile;)V

    .line 475
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/net/VpnProfile;->encode()[B

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 641
    instance-of v0, p1, Lcom/android/internal/net/VpnProfile;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 642
    return v1

    .line 645
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/android/internal/net/VpnProfile;

    .line 646
    .local v0, "other":Lcom/android/internal/net/VpnProfile;
    iget-object v2, p0, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    .line 647
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/internal/net/VpnProfile;->type:I

    iget v3, v0, Lcom/android/internal/net/VpnProfile;->type:I

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    .line 649
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    .line 650
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    .line 651
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/net/VpnProfile;->dnsServers:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->dnsServers:Ljava/lang/String;

    .line 652
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/net/VpnProfile;->searchDomains:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->searchDomains:Ljava/lang/String;

    .line 653
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/net/VpnProfile;->routes:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->routes:Ljava/lang/String;

    .line 654
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/internal/net/VpnProfile;->mppe:Z

    iget-boolean v3, v0, Lcom/android/internal/net/VpnProfile;->mppe:Z

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/internal/net/VpnProfile;->l2tpSecret:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->l2tpSecret:Ljava/lang/String;

    .line 656
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/net/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    .line 657
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    .line 658
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    .line 659
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/net/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    .line 660
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/net/VpnProfile;->ipsecServerCert:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->ipsecServerCert:Ljava/lang/String;

    .line 661
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/net/VpnProfile;->proxy:Landroid/net/ProxyInfo;

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->proxy:Landroid/net/ProxyInfo;

    .line 662
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/net/VpnProfile;->mAllowedAlgorithms:Ljava/util/List;

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->mAllowedAlgorithms:Ljava/util/List;

    .line 663
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/internal/net/VpnProfile;->isBypassable:Z

    iget-boolean v3, v0, Lcom/android/internal/net/VpnProfile;->isBypassable:Z

    if-ne v2, v3, :cond_1

    iget-boolean v2, p0, Lcom/android/internal/net/VpnProfile;->isMetered:Z

    iget-boolean v3, v0, Lcom/android/internal/net/VpnProfile;->isMetered:Z

    if-ne v2, v3, :cond_1

    iget v2, p0, Lcom/android/internal/net/VpnProfile;->maxMtu:I

    iget v3, v0, Lcom/android/internal/net/VpnProfile;->maxMtu:I

    if-ne v2, v3, :cond_1

    iget-boolean v2, p0, Lcom/android/internal/net/VpnProfile;->areAuthParamsInline:Z

    iget-boolean v3, v0, Lcom/android/internal/net/VpnProfile;->areAuthParamsInline:Z

    if-ne v2, v3, :cond_1

    iget-boolean v2, p0, Lcom/android/internal/net/VpnProfile;->isRestrictedToTestNetworks:Z

    iget-boolean v3, v0, Lcom/android/internal/net/VpnProfile;->isRestrictedToTestNetworks:Z

    if-ne v2, v3, :cond_1

    iget-boolean v2, p0, Lcom/android/internal/net/VpnProfile;->excludeLocalRoutes:Z

    iget-boolean v3, v0, Lcom/android/internal/net/VpnProfile;->excludeLocalRoutes:Z

    if-ne v2, v3, :cond_1

    iget-boolean v2, p0, Lcom/android/internal/net/VpnProfile;->requiresInternetValidation:Z

    iget-boolean v3, v0, Lcom/android/internal/net/VpnProfile;->requiresInternetValidation:Z

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/internal/net/VpnProfile;->ikeTunConnParams:Landroid/net/ipsec/ike/IkeTunnelConnectionParams;

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->ikeTunConnParams:Landroid/net/ipsec/ike/IkeTunnelConnectionParams;

    .line 671
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 646
    :goto_0
    return v1
.end method

.method public blacklist getAllowedAlgorithms()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 266
    iget-object v0, p0, Lcom/android/internal/net/VpnProfile;->mAllowedAlgorithms:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o hasDns()Z
    .locals 1

    .line 612
    iget-object v0, p0, Lcom/android/internal/net/VpnProfile;->dnsServers:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 630
    const/16 v0, 0x19

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/internal/net/VpnProfile;->type:I

    .line 631
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/internal/net/VpnProfile;->dnsServers:Ljava/lang/String;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/internal/net/VpnProfile;->searchDomains:Ljava/lang/String;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/internal/net/VpnProfile;->routes:Ljava/lang/String;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/android/internal/net/VpnProfile;->mppe:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/internal/net/VpnProfile;->l2tpSecret:Ljava/lang/String;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/internal/net/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/internal/net/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/internal/net/VpnProfile;->ipsecServerCert:Ljava/lang/String;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/internal/net/VpnProfile;->proxy:Landroid/net/ProxyInfo;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/internal/net/VpnProfile;->mAllowedAlgorithms:Ljava/util/List;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/android/internal/net/VpnProfile;->isBypassable:Z

    .line 633
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x11

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/android/internal/net/VpnProfile;->isMetered:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x12

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/internal/net/VpnProfile;->maxMtu:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x13

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/android/internal/net/VpnProfile;->areAuthParamsInline:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x14

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/android/internal/net/VpnProfile;->isRestrictedToTestNetworks:Z

    .line 634
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x15

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/android/internal/net/VpnProfile;->excludeLocalRoutes:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x16

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/android/internal/net/VpnProfile;->requiresInternetValidation:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x17

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/internal/net/VpnProfile;->ikeTunConnParams:Landroid/net/ipsec/ike/IkeTunnelConnectionParams;

    const/16 v2, 0x18

    aput-object v1, v0, v2

    .line 630
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public greylist-max-o isServerAddressNumeric()Z
    .locals 2

    .line 603
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 606
    nop

    .line 607
    const/4 v0, 0x1

    return v0

    .line 604
    :catch_0
    move-exception v0

    .line 605
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const/4 v1, 0x0

    return v1
.end method

.method public greylist-max-o isTypeValidForLockdown()Z
    .locals 1

    .line 597
    iget v0, p0, Lcom/android/internal/net/VpnProfile;->type:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public greylist-max-o isValidLockdownProfile()Z
    .locals 1

    .line 590
    invoke-virtual {p0}, Lcom/android/internal/net/VpnProfile;->isTypeValidForLockdown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 591
    invoke-direct {p0}, Lcom/android/internal/net/VpnProfile;->isValidLockdownLegacyVpnProfile()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/net/VpnProfile;->isValidLockdownPlatformVpnProfile()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 590
    :goto_0
    return v0
.end method

.method public blacklist setAllowedAlgorithms(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 276
    .local p1, "allowedAlgorithms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/android/internal/net/VpnProfile;->mAllowedAlgorithms:Ljava/util/List;

    .line 277
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 281
    iget-object v0, p0, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 282
    iget-object v0, p0, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 283
    iget v0, p0, Lcom/android/internal/net/VpnProfile;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 284
    iget-object v0, p0, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 285
    iget-object v0, p0, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 286
    iget-object v0, p0, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 287
    iget-object v0, p0, Lcom/android/internal/net/VpnProfile;->dnsServers:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 288
    iget-object v0, p0, Lcom/android/internal/net/VpnProfile;->searchDomains:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 289
    iget-object v0, p0, Lcom/android/internal/net/VpnProfile;->routes:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 290
    iget-boolean v0, p0, Lcom/android/internal/net/VpnProfile;->mppe:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 291
    iget-object v0, p0, Lcom/android/internal/net/VpnProfile;->l2tpSecret:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 292
    iget-object v0, p0, Lcom/android/internal/net/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 293
    iget-object v0, p0, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 294
    iget-object v0, p0, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 295
    iget-object v0, p0, Lcom/android/internal/net/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 296
    iget-object v0, p0, Lcom/android/internal/net/VpnProfile;->ipsecServerCert:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 297
    iget-boolean v0, p0, Lcom/android/internal/net/VpnProfile;->saveLogin:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 298
    iget-object v0, p0, Lcom/android/internal/net/VpnProfile;->proxy:Landroid/net/ProxyInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 299
    iget-object v0, p0, Lcom/android/internal/net/VpnProfile;->mAllowedAlgorithms:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 300
    iget-boolean v0, p0, Lcom/android/internal/net/VpnProfile;->isBypassable:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 301
    iget-boolean v0, p0, Lcom/android/internal/net/VpnProfile;->isMetered:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 303
    iget-object v0, p0, Lcom/android/internal/net/VpnProfile;->ocspServerUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 304
    iget-boolean v0, p0, Lcom/android/internal/net/VpnProfile;->isPFS:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 307
    iget-object v0, p0, Lcom/android/internal/net/VpnProfile;->isPasswordIvParams:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 308
    iget-object v0, p0, Lcom/android/internal/net/VpnProfile;->isIpsecSecretIvParams:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 310
    iget v0, p0, Lcom/android/internal/net/VpnProfile;->maxMtu:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 311
    iget-boolean v0, p0, Lcom/android/internal/net/VpnProfile;->areAuthParamsInline:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 312
    iget-boolean v0, p0, Lcom/android/internal/net/VpnProfile;->isRestrictedToTestNetworks:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 313
    iget-boolean v0, p0, Lcom/android/internal/net/VpnProfile;->excludeLocalRoutes:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 314
    iget-boolean v0, p0, Lcom/android/internal/net/VpnProfile;->requiresInternetValidation:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 315
    iget-object v0, p0, Lcom/android/internal/net/VpnProfile;->ikeTunConnParams:Landroid/net/ipsec/ike/IkeTunnelConnectionParams;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 316
    :cond_0
    invoke-static {v0}, Landroid/net/vcn/persistablebundleutils/TunnelConnectionParamsUtils;->toPersistableBundle(Landroid/net/ipsec/ike/IkeTunnelConnectionParams;)Landroid/os/PersistableBundle;

    move-result-object v0

    .line 315
    :goto_0
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 317
    return-void
.end method
