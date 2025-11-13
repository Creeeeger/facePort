.class public abstract Landroid/net/PlatformVpnProfile;
.super Ljava/lang/Object;
.source "PlatformVpnProfile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/PlatformVpnProfile$PlatformVpnType;
    }
.end annotation


# static fields
.field public static final blacklist MAX_MTU_DEFAULT:I = 0x550

.field public static final whitelist TYPE_IKEV2_IPSEC_PSK:I = 0x7

.field public static final whitelist TYPE_IKEV2_IPSEC_RSA:I = 0x8

.field public static final whitelist TYPE_IKEV2_IPSEC_USER_PASS:I = 0x6


# instance fields
.field protected final blacklist mExcludeLocalRoutes:Z

.field protected final blacklist mRequiresInternetValidation:Z

.field protected final blacklist mType:I


# direct methods
.method constructor blacklist <init>(IZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/net/PlatformVpnProfile;->mType:I

    iput-boolean p2, p0, Landroid/net/PlatformVpnProfile;->mExcludeLocalRoutes:Z

    iput-boolean p3, p0, Landroid/net/PlatformVpnProfile;->mRequiresInternetValidation:Z

    return-void
.end method

.method public static blacklist fromVpnProfile(Lcom/android/internal/net/VpnProfile;)Landroid/net/PlatformVpnProfile;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    iget v0, p0, Lcom/android/internal/net/VpnProfile;->type:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown VPN Profile type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-static {p0}, Landroid/net/Ikev2VpnProfile;->fromVpnProfile(Lcom/android/internal/net/VpnProfile;)Landroid/net/Ikev2VpnProfile;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final whitelist areLocalRoutesExcluded()Z
    .locals 1

    iget-boolean v0, p0, Landroid/net/PlatformVpnProfile;->mExcludeLocalRoutes:Z

    return v0
.end method

.method public final whitelist getType()I
    .locals 1

    iget v0, p0, Landroid/net/PlatformVpnProfile;->mType:I

    return v0
.end method

.method public final whitelist getTypeString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Landroid/net/PlatformVpnProfile;->mType:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "Unknown VPN profile type"

    return-object v0

    :pswitch_0
    const-string v0, "IKEv2/IPsec RSA Digital Signature"

    return-object v0

    :pswitch_1
    const-string v0, "IKEv2/IPsec Preshared key"

    return-object v0

    :pswitch_2
    const-string v0, "IKEv2/IPsec Username/Password"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final whitelist isInternetValidationRequired()Z
    .locals 1

    iget-boolean v0, p0, Landroid/net/PlatformVpnProfile;->mRequiresInternetValidation:Z

    return v0
.end method

.method public abstract blacklist toVpnProfile()Lcom/android/internal/net/VpnProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation
.end method
