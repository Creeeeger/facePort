.class public final Landroid/net/Ikev2VpnProfile$Builder;
.super Ljava/lang/Object;
.source "Ikev2VpnProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/Ikev2VpnProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAllowedAlgorithms:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mAutomaticIpVersionSelectionEnabled:Z

.field private blacklist mAutomaticNattKeepaliveTimerEnabled:Z

.field private blacklist mExcludeLocalRoutes:Z

.field private final blacklist mIkeTunConnParams:Landroid/net/ipsec/ike/IkeTunnelConnectionParams;

.field private blacklist mIsBypassable:Z

.field private blacklist mIsMetered:Z

.field private blacklist mIsRestrictedToTestNetworks:Z

.field private blacklist mMaxMtu:I

.field private blacklist mPassword:Ljava/lang/String;

.field private blacklist mPresharedKey:[B

.field private blacklist mProxyInfo:Landroid/net/ProxyInfo;

.field private blacklist mRequiresInternetValidation:Z

.field private blacklist mRsaPrivateKey:Ljava/security/PrivateKey;

.field private final blacklist mServerAddr:Ljava/lang/String;

.field private blacklist mServerRootCaCert:Ljava/security/cert/X509Certificate;

.field private blacklist mType:I

.field private blacklist mUserCert:Ljava/security/cert/X509Certificate;

.field private final blacklist mUserIdentity:Ljava/lang/String;

.field private blacklist mUsername:Ljava/lang/String;


# direct methods
.method public constructor whitelist <init>(Landroid/net/ipsec/ike/IkeTunnelConnectionParams;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/net/Ikev2VpnProfile$Builder;->mType:I

    sget-object v0, Landroid/net/Ikev2VpnProfile;->DEFAULT_ALGORITHMS:Ljava/util/List;

    iput-object v0, p0, Landroid/net/Ikev2VpnProfile$Builder;->mAllowedAlgorithms:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/Ikev2VpnProfile$Builder;->mRequiresInternetValidation:Z

    iput-boolean v0, p0, Landroid/net/Ikev2VpnProfile$Builder;->mIsBypassable:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/net/Ikev2VpnProfile$Builder;->mIsMetered:Z

    const/16 v1, 0x550

    iput v1, p0, Landroid/net/Ikev2VpnProfile$Builder;->mMaxMtu:I

    iput-boolean v0, p0, Landroid/net/Ikev2VpnProfile$Builder;->mIsRestrictedToTestNetworks:Z

    iput-boolean v0, p0, Landroid/net/Ikev2VpnProfile$Builder;->mExcludeLocalRoutes:Z

    iput-boolean v0, p0, Landroid/net/Ikev2VpnProfile$Builder;->mAutomaticNattKeepaliveTimerEnabled:Z

    iput-boolean v0, p0, Landroid/net/Ikev2VpnProfile$Builder;->mAutomaticIpVersionSelectionEnabled:Z

    const-string v0, "ikeTunConnParams"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Required parameter was not provided: %s"

    invoke-static {p1, v1, v0}, Landroid/net/Ikev2VpnProfile;->-$$Nest$smcheckNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Landroid/net/Ikev2VpnProfile$Builder;->mIkeTunConnParams:Landroid/net/ipsec/ike/IkeTunnelConnectionParams;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/Ikev2VpnProfile$Builder;->mServerAddr:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/Ikev2VpnProfile$Builder;->mUserIdentity:Ljava/lang/String;

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/net/Ikev2VpnProfile$Builder;->mType:I

    sget-object v0, Landroid/net/Ikev2VpnProfile;->DEFAULT_ALGORITHMS:Ljava/util/List;

    iput-object v0, p0, Landroid/net/Ikev2VpnProfile$Builder;->mAllowedAlgorithms:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/Ikev2VpnProfile$Builder;->mRequiresInternetValidation:Z

    iput-boolean v0, p0, Landroid/net/Ikev2VpnProfile$Builder;->mIsBypassable:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/net/Ikev2VpnProfile$Builder;->mIsMetered:Z

    const/16 v1, 0x550

    iput v1, p0, Landroid/net/Ikev2VpnProfile$Builder;->mMaxMtu:I

    iput-boolean v0, p0, Landroid/net/Ikev2VpnProfile$Builder;->mIsRestrictedToTestNetworks:Z

    iput-boolean v0, p0, Landroid/net/Ikev2VpnProfile$Builder;->mExcludeLocalRoutes:Z

    iput-boolean v0, p0, Landroid/net/Ikev2VpnProfile$Builder;->mAutomaticNattKeepaliveTimerEnabled:Z

    iput-boolean v0, p0, Landroid/net/Ikev2VpnProfile$Builder;->mAutomaticIpVersionSelectionEnabled:Z

    const-string/jumbo v0, "serverAddr"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Required parameter was not provided: %s"

    invoke-static {p1, v1, v0}, Landroid/net/Ikev2VpnProfile;->-$$Nest$smcheckNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "identity"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2, v1, v0}, Landroid/net/Ikev2VpnProfile;->-$$Nest$smcheckNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Landroid/net/Ikev2VpnProfile$Builder;->mServerAddr:Ljava/lang/String;

    iput-object p2, p0, Landroid/net/Ikev2VpnProfile$Builder;->mUserIdentity:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/Ikev2VpnProfile$Builder;->mIkeTunConnParams:Landroid/net/ipsec/ike/IkeTunnelConnectionParams;

    return-void
.end method

.method private blacklist resetAuthParams()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/Ikev2VpnProfile$Builder;->mPresharedKey:[B

    iput-object v0, p0, Landroid/net/Ikev2VpnProfile$Builder;->mServerRootCaCert:Ljava/security/cert/X509Certificate;

    iput-object v0, p0, Landroid/net/Ikev2VpnProfile$Builder;->mUsername:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/Ikev2VpnProfile$Builder;->mPassword:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/Ikev2VpnProfile$Builder;->mRsaPrivateKey:Ljava/security/PrivateKey;

    iput-object v0, p0, Landroid/net/Ikev2VpnProfile$Builder;->mUserCert:Ljava/security/cert/X509Certificate;

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/net/Ikev2VpnProfile;
    .locals 25

    move-object/from16 v0, p0

    new-instance v23, Landroid/net/Ikev2VpnProfile;

    move-object/from16 v1, v23

    iget v2, v0, Landroid/net/Ikev2VpnProfile$Builder;->mType:I

    iget-object v3, v0, Landroid/net/Ikev2VpnProfile$Builder;->mServerAddr:Ljava/lang/String;

    iget-object v4, v0, Landroid/net/Ikev2VpnProfile$Builder;->mUserIdentity:Ljava/lang/String;

    iget-object v5, v0, Landroid/net/Ikev2VpnProfile$Builder;->mPresharedKey:[B

    iget-object v6, v0, Landroid/net/Ikev2VpnProfile$Builder;->mServerRootCaCert:Ljava/security/cert/X509Certificate;

    iget-object v7, v0, Landroid/net/Ikev2VpnProfile$Builder;->mUsername:Ljava/lang/String;

    iget-object v8, v0, Landroid/net/Ikev2VpnProfile$Builder;->mPassword:Ljava/lang/String;

    iget-object v9, v0, Landroid/net/Ikev2VpnProfile$Builder;->mRsaPrivateKey:Ljava/security/PrivateKey;

    iget-object v10, v0, Landroid/net/Ikev2VpnProfile$Builder;->mUserCert:Ljava/security/cert/X509Certificate;

    iget-object v11, v0, Landroid/net/Ikev2VpnProfile$Builder;->mProxyInfo:Landroid/net/ProxyInfo;

    iget-object v12, v0, Landroid/net/Ikev2VpnProfile$Builder;->mAllowedAlgorithms:Ljava/util/List;

    iget-boolean v13, v0, Landroid/net/Ikev2VpnProfile$Builder;->mIsBypassable:Z

    iget-boolean v14, v0, Landroid/net/Ikev2VpnProfile$Builder;->mIsMetered:Z

    iget v15, v0, Landroid/net/Ikev2VpnProfile$Builder;->mMaxMtu:I

    move-object/from16 v24, v1

    iget-boolean v1, v0, Landroid/net/Ikev2VpnProfile$Builder;->mIsRestrictedToTestNetworks:Z

    move/from16 v16, v1

    iget-boolean v1, v0, Landroid/net/Ikev2VpnProfile$Builder;->mExcludeLocalRoutes:Z

    move/from16 v17, v1

    iget-boolean v1, v0, Landroid/net/Ikev2VpnProfile$Builder;->mRequiresInternetValidation:Z

    move/from16 v18, v1

    iget-object v1, v0, Landroid/net/Ikev2VpnProfile$Builder;->mIkeTunConnParams:Landroid/net/ipsec/ike/IkeTunnelConnectionParams;

    move-object/from16 v19, v1

    iget-boolean v1, v0, Landroid/net/Ikev2VpnProfile$Builder;->mAutomaticNattKeepaliveTimerEnabled:Z

    move/from16 v20, v1

    iget-boolean v1, v0, Landroid/net/Ikev2VpnProfile$Builder;->mAutomaticIpVersionSelectionEnabled:Z

    move/from16 v21, v1

    const/16 v22, 0x0

    move-object/from16 v1, v24

    invoke-direct/range {v1 .. v22}, Landroid/net/Ikev2VpnProfile;-><init>(ILjava/lang/String;Ljava/lang/String;[BLjava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;Ljava/security/PrivateKey;Ljava/security/cert/X509Certificate;Landroid/net/ProxyInfo;Ljava/util/List;ZZIZZZLandroid/net/ipsec/ike/IkeTunnelConnectionParams;ZZLandroid/net/Ikev2VpnProfile-IA;)V

    return-object v23
.end method

.method public blacklist restrictToTestNetworks()Landroid/net/Ikev2VpnProfile$Builder;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/Ikev2VpnProfile$Builder;->mIsRestrictedToTestNetworks:Z

    return-object p0
.end method

.method public whitelist setAllowedAlgorithms(Ljava/util/List;)Landroid/net/Ikev2VpnProfile$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/net/Ikev2VpnProfile$Builder;"
        }
    .end annotation

    const-string v0, "algorithmNames"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Required parameter was not provided: %s"

    invoke-static {p1, v2, v1}, Landroid/net/Ikev2VpnProfile;->-$$Nest$smcheckNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Landroid/net/Ikev2VpnProfile$Builder;->mIkeTunConnParams:Landroid/net/ipsec/ike/IkeTunnelConnectionParams;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1, v0}, Landroid/net/Ikev2VpnProfile;->-$$Nest$smcheckBuilderSetter(ZLjava/lang/String;)V

    invoke-static {p1}, Landroid/net/Ikev2VpnProfile;->-$$Nest$smvalidateAllowedAlgorithms(Ljava/util/List;)V

    iput-object p1, p0, Landroid/net/Ikev2VpnProfile$Builder;->mAllowedAlgorithms:Ljava/util/List;

    return-object p0
.end method

.method public whitelist setAuthDigitalSignature(Ljava/security/cert/X509Certificate;Ljava/security/PrivateKey;Ljava/security/cert/X509Certificate;)Landroid/net/Ikev2VpnProfile$Builder;
    .locals 2

    const-string/jumbo v0, "userCert"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Required parameter was not provided: %s"

    invoke-static {p1, v1, v0}, Landroid/net/Ikev2VpnProfile;->-$$Nest$smcheckNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "key"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2, v1, v0}, Landroid/net/Ikev2VpnProfile;->-$$Nest$smcheckNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/net/Ikev2VpnProfile$Builder;->mIkeTunConnParams:Landroid/net/ipsec/ike/IkeTunnelConnectionParams;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "authDigitalSignature"

    invoke-static {v0, v1}, Landroid/net/Ikev2VpnProfile;->-$$Nest$smcheckBuilderSetter(ZLjava/lang/String;)V

    invoke-static {p1}, Landroid/net/Ikev2VpnProfile;->-$$Nest$smcheckCert(Ljava/security/cert/X509Certificate;)V

    if-eqz p3, :cond_1

    invoke-static {p3}, Landroid/net/Ikev2VpnProfile;->-$$Nest$smcheckCert(Ljava/security/cert/X509Certificate;)V

    :cond_1
    invoke-direct {p0}, Landroid/net/Ikev2VpnProfile$Builder;->resetAuthParams()V

    iput-object p1, p0, Landroid/net/Ikev2VpnProfile$Builder;->mUserCert:Ljava/security/cert/X509Certificate;

    iput-object p2, p0, Landroid/net/Ikev2VpnProfile$Builder;->mRsaPrivateKey:Ljava/security/PrivateKey;

    iput-object p3, p0, Landroid/net/Ikev2VpnProfile$Builder;->mServerRootCaCert:Ljava/security/cert/X509Certificate;

    const/16 v0, 0x8

    iput v0, p0, Landroid/net/Ikev2VpnProfile$Builder;->mType:I

    return-object p0
.end method

.method public whitelist setAuthPsk([B)Landroid/net/Ikev2VpnProfile$Builder;
    .locals 2

    const-string/jumbo v0, "psk"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Required parameter was not provided: %s"

    invoke-static {p1, v1, v0}, Landroid/net/Ikev2VpnProfile;->-$$Nest$smcheckNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/net/Ikev2VpnProfile$Builder;->mIkeTunConnParams:Landroid/net/ipsec/ike/IkeTunnelConnectionParams;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "authPsk"

    invoke-static {v0, v1}, Landroid/net/Ikev2VpnProfile;->-$$Nest$smcheckBuilderSetter(ZLjava/lang/String;)V

    invoke-direct {p0}, Landroid/net/Ikev2VpnProfile$Builder;->resetAuthParams()V

    iput-object p1, p0, Landroid/net/Ikev2VpnProfile$Builder;->mPresharedKey:[B

    const/4 v0, 0x7

    iput v0, p0, Landroid/net/Ikev2VpnProfile$Builder;->mType:I

    return-object p0
.end method

.method public whitelist setAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/security/cert/X509Certificate;)Landroid/net/Ikev2VpnProfile$Builder;
    .locals 2

    const-string/jumbo v0, "user"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Required parameter was not provided: %s"

    invoke-static {p1, v1, v0}, Landroid/net/Ikev2VpnProfile;->-$$Nest$smcheckNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "pass"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2, v1, v0}, Landroid/net/Ikev2VpnProfile;->-$$Nest$smcheckNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/net/Ikev2VpnProfile$Builder;->mIkeTunConnParams:Landroid/net/ipsec/ike/IkeTunnelConnectionParams;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "authUsernamePassword"

    invoke-static {v0, v1}, Landroid/net/Ikev2VpnProfile;->-$$Nest$smcheckBuilderSetter(ZLjava/lang/String;)V

    if-eqz p3, :cond_1

    invoke-static {p3}, Landroid/net/Ikev2VpnProfile;->-$$Nest$smcheckCert(Ljava/security/cert/X509Certificate;)V

    :cond_1
    invoke-direct {p0}, Landroid/net/Ikev2VpnProfile$Builder;->resetAuthParams()V

    iput-object p1, p0, Landroid/net/Ikev2VpnProfile$Builder;->mUsername:Ljava/lang/String;

    iput-object p2, p0, Landroid/net/Ikev2VpnProfile$Builder;->mPassword:Ljava/lang/String;

    iput-object p3, p0, Landroid/net/Ikev2VpnProfile$Builder;->mServerRootCaCert:Ljava/security/cert/X509Certificate;

    const/4 v0, 0x6

    iput v0, p0, Landroid/net/Ikev2VpnProfile$Builder;->mType:I

    return-object p0
.end method

.method public whitelist setAutomaticIpVersionSelectionEnabled(Z)Landroid/net/Ikev2VpnProfile$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/net/Ikev2VpnProfile$Builder;->mAutomaticIpVersionSelectionEnabled:Z

    return-object p0
.end method

.method public whitelist setAutomaticNattKeepaliveTimerEnabled(Z)Landroid/net/Ikev2VpnProfile$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/net/Ikev2VpnProfile$Builder;->mAutomaticNattKeepaliveTimerEnabled:Z

    return-object p0
.end method

.method public whitelist setBypassable(Z)Landroid/net/Ikev2VpnProfile$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/net/Ikev2VpnProfile$Builder;->mIsBypassable:Z

    return-object p0
.end method

.method public whitelist setLocalRoutesExcluded(Z)Landroid/net/Ikev2VpnProfile$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/net/Ikev2VpnProfile$Builder;->mExcludeLocalRoutes:Z

    return-object p0
.end method

.method public whitelist setMaxMtu(I)Landroid/net/Ikev2VpnProfile$Builder;
    .locals 2

    const/16 v0, 0x500

    if-lt p1, v0, :cond_0

    iput p1, p0, Landroid/net/Ikev2VpnProfile$Builder;->mMaxMtu:I

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Max MTU must be at least 1280"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setMetered(Z)Landroid/net/Ikev2VpnProfile$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/net/Ikev2VpnProfile$Builder;->mIsMetered:Z

    return-object p0
.end method

.method public whitelist setProxy(Landroid/net/ProxyInfo;)Landroid/net/Ikev2VpnProfile$Builder;
    .locals 0

    iput-object p1, p0, Landroid/net/Ikev2VpnProfile$Builder;->mProxyInfo:Landroid/net/ProxyInfo;

    return-object p0
.end method

.method public whitelist setRequiresInternetValidation(Z)Landroid/net/Ikev2VpnProfile$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/net/Ikev2VpnProfile$Builder;->mRequiresInternetValidation:Z

    return-object p0
.end method
