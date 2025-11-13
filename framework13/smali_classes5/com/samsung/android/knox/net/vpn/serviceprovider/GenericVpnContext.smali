.class public Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnContext;
.super Landroid/content/ContextWrapper;
.source "GenericVpnContext.java"


# static fields
.field public static final greylist CONNECTING:Z = true

.field public static final greylist DISCONNECTING:Z = false

.field public static final greylist META_DISABLED:Z = false

.field public static final greylist META_ENABLED:Z = true

.field public static final greylist PER_APP_VPN:Z = false

.field public static final greylist SYSTEM_VPN:Z = true

.field private static greylist TAG:Ljava/lang/String;


# instance fields
.field private greylist mEnableMetaHeader:Z

.field private greylist mIsConnecting:Z

.field private greylist mProfile:Ljava/lang/String;


# direct methods
.method static constructor greylist <clinit>()V
    .locals 1

    .line 60
    const-string v0, "GenericVpnContext"

    sput-object v0, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnContext;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor greylist <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "base"    # Landroid/content/Context;

    .line 73
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 56
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnContext;->mProfile:Ljava/lang/String;

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnContext;->mIsConnecting:Z

    .line 58
    iput-boolean v0, p0, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnContext;->mEnableMetaHeader:Z

    .line 74
    return-void
.end method


# virtual methods
.method public greylist enableMetaData(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .line 98
    iput-boolean p1, p0, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnContext;->mEnableMetaHeader:Z

    .line 99
    return-void
.end method

.method public greylist getVPNProfile()Ljava/lang/String;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnContext;->mProfile:Ljava/lang/String;

    return-object v0
.end method

.method public greylist getVPNState()Z
    .locals 1

    .line 119
    iget-boolean v0, p0, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnContext;->mIsConnecting:Z

    return v0
.end method

.method public greylist isMetaEnabled()Z
    .locals 1

    .line 129
    iget-boolean v0, p0, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnContext;->mEnableMetaHeader:Z

    return v0
.end method

.method public greylist setGenericVpnParams(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "profile"    # Ljava/lang/String;
    .param p2, "isConnecting"    # Z

    .line 85
    iput-object p1, p0, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnContext;->mProfile:Ljava/lang/String;

    .line 86
    iput-boolean p2, p0, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnContext;->mIsConnecting:Z

    .line 87
    return-void
.end method
