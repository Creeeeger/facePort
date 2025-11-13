.class public final Landroid/net/vcn/persistablebundleutils/IkeIdentificationUtils;
.super Ljava/lang/Object;
.source "IkeIdentificationUtils.java"


# static fields
.field private static final blacklist DER_ASN1_DN_KEY:Ljava/lang/String; = "DER_ASN1_DN_KEY"

.field private static final blacklist FQDN_KEY:Ljava/lang/String; = "FQDN_KEY"

.field private static final blacklist ID_TYPE_DER_ASN1_DN:I = 0x1

.field private static final blacklist ID_TYPE_FQDN:I = 0x2

.field private static final blacklist ID_TYPE_IPV4_ADDR:I = 0x3

.field private static final blacklist ID_TYPE_IPV6_ADDR:I = 0x4

.field private static final blacklist ID_TYPE_KEY:Ljava/lang/String; = "ID_TYPE_KEY"

.field private static final blacklist ID_TYPE_KEY_ID:I = 0x5

.field private static final blacklist ID_TYPE_RFC822_ADDR:I = 0x6

.field private static final blacklist IP4_ADDRESS_KEY:Ljava/lang/String; = "IP4_ADDRESS_KEY"

.field private static final blacklist IP6_ADDRESS_KEY:Ljava/lang/String; = "IP6_ADDRESS_KEY"

.field private static final blacklist KEY_ID_KEY:Ljava/lang/String; = "KEY_ID_KEY"

.field private static final blacklist RFC822_ADDRESS_KEY:Ljava/lang/String; = "RFC822_ADDRESS_KEY"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist createPersistableBundle(I)Landroid/os/PersistableBundle;
    .locals 2

    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    const-string v1, "ID_TYPE_KEY"

    invoke-virtual {v0, v1, p0}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public static blacklist fromPersistableBundle(Landroid/os/PersistableBundle;)Landroid/net/ipsec/ike/IkeIdentification;
    .locals 5

    const-string v0, "PersistableBundle was null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "ID_TYPE_KEY"

    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unrecognized IKE ID type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    new-instance v1, Landroid/net/ipsec/ike/IkeRfc822AddrIdentification;

    const-string v2, "RFC822_ADDRESS_KEY"

    invoke-virtual {p0, v2}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/net/ipsec/ike/IkeRfc822AddrIdentification;-><init>(Ljava/lang/String;)V

    return-object v1

    :pswitch_1
    const-string v1, "KEY_ID_KEY"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v1

    const-string v2, "Key ID was null"

    invoke-static {p0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v2, Landroid/net/ipsec/ike/IkeKeyIdIdentification;

    invoke-static {v1}, Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils;->toByteArray(Landroid/os/PersistableBundle;)[B

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/net/ipsec/ike/IkeKeyIdIdentification;-><init>([B)V

    return-object v2

    :pswitch_2
    const-string v1, "IP6_ADDRESS_KEY"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "IPv6 address was null"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v2, Landroid/net/ipsec/ike/IkeIpv6AddrIdentification;

    invoke-static {v1}, Landroid/net/InetAddresses;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    check-cast v3, Ljava/net/Inet6Address;

    invoke-direct {v2, v3}, Landroid/net/ipsec/ike/IkeIpv6AddrIdentification;-><init>(Ljava/net/Inet6Address;)V

    return-object v2

    :pswitch_3
    const-string v1, "IP4_ADDRESS_KEY"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "IPv4 address was null"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v2, Landroid/net/ipsec/ike/IkeIpv4AddrIdentification;

    invoke-static {v1}, Landroid/net/InetAddresses;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    check-cast v3, Ljava/net/Inet4Address;

    invoke-direct {v2, v3}, Landroid/net/ipsec/ike/IkeIpv4AddrIdentification;-><init>(Ljava/net/Inet4Address;)V

    return-object v2

    :pswitch_4
    new-instance v1, Landroid/net/ipsec/ike/IkeFqdnIdentification;

    const-string v2, "FQDN_KEY"

    invoke-virtual {p0, v2}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/net/ipsec/ike/IkeFqdnIdentification;-><init>(Ljava/lang/String;)V

    return-object v1

    :pswitch_5
    const-string v1, "DER_ASN1_DN_KEY"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v1

    const-string v2, "ASN1 DN was null"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v2, Landroid/net/ipsec/ike/IkeDerAsn1DnIdentification;

    new-instance v3, Ljavax/security/auth/x500/X500Principal;

    invoke-static {v1}, Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils;->toByteArray(Landroid/os/PersistableBundle;)[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V

    invoke-direct {v2, v3}, Landroid/net/ipsec/ike/IkeDerAsn1DnIdentification;-><init>(Ljavax/security/auth/x500/X500Principal;)V

    return-object v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist toPersistableBundle(Landroid/net/ipsec/ike/IkeIdentification;)Landroid/os/PersistableBundle;
    .locals 4

    instance-of v0, p0, Landroid/net/ipsec/ike/IkeDerAsn1DnIdentification;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Landroid/net/vcn/persistablebundleutils/IkeIdentificationUtils;->createPersistableBundle(I)Landroid/os/PersistableBundle;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Landroid/net/ipsec/ike/IkeDerAsn1DnIdentification;

    iget-object v2, v1, Landroid/net/ipsec/ike/IkeDerAsn1DnIdentification;->derAsn1Dn:Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {v2}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils;->fromByteArray([B)Landroid/os/PersistableBundle;

    move-result-object v2

    const-string v3, "DER_ASN1_DN_KEY"

    invoke-virtual {v0, v3, v2}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    return-object v0

    :cond_0
    instance-of v0, p0, Landroid/net/ipsec/ike/IkeFqdnIdentification;

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    invoke-static {v0}, Landroid/net/vcn/persistablebundleutils/IkeIdentificationUtils;->createPersistableBundle(I)Landroid/os/PersistableBundle;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Landroid/net/ipsec/ike/IkeFqdnIdentification;

    const-string v2, "FQDN_KEY"

    iget-object v3, v1, Landroid/net/ipsec/ike/IkeFqdnIdentification;->fqdn:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_1
    instance-of v0, p0, Landroid/net/ipsec/ike/IkeIpv4AddrIdentification;

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    invoke-static {v0}, Landroid/net/vcn/persistablebundleutils/IkeIdentificationUtils;->createPersistableBundle(I)Landroid/os/PersistableBundle;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Landroid/net/ipsec/ike/IkeIpv4AddrIdentification;

    iget-object v2, v1, Landroid/net/ipsec/ike/IkeIpv4AddrIdentification;->ipv4Address:Ljava/net/Inet4Address;

    invoke-virtual {v2}, Ljava/net/Inet4Address;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    const-string v3, "IP4_ADDRESS_KEY"

    invoke-virtual {v0, v3, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_2
    instance-of v0, p0, Landroid/net/ipsec/ike/IkeIpv6AddrIdentification;

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    invoke-static {v0}, Landroid/net/vcn/persistablebundleutils/IkeIdentificationUtils;->createPersistableBundle(I)Landroid/os/PersistableBundle;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Landroid/net/ipsec/ike/IkeIpv6AddrIdentification;

    iget-object v2, v1, Landroid/net/ipsec/ike/IkeIpv6AddrIdentification;->ipv6Address:Ljava/net/Inet6Address;

    invoke-virtual {v2}, Ljava/net/Inet6Address;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    const-string v3, "IP6_ADDRESS_KEY"

    invoke-virtual {v0, v3, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_3
    instance-of v0, p0, Landroid/net/ipsec/ike/IkeKeyIdIdentification;

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    invoke-static {v0}, Landroid/net/vcn/persistablebundleutils/IkeIdentificationUtils;->createPersistableBundle(I)Landroid/os/PersistableBundle;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Landroid/net/ipsec/ike/IkeKeyIdIdentification;

    iget-object v2, v1, Landroid/net/ipsec/ike/IkeKeyIdIdentification;->keyId:[B

    invoke-static {v2}, Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils;->fromByteArray([B)Landroid/os/PersistableBundle;

    move-result-object v2

    const-string v3, "KEY_ID_KEY"

    invoke-virtual {v0, v3, v2}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    return-object v0

    :cond_4
    instance-of v0, p0, Landroid/net/ipsec/ike/IkeRfc822AddrIdentification;

    if-eqz v0, :cond_5

    const/4 v0, 0x6

    invoke-static {v0}, Landroid/net/vcn/persistablebundleutils/IkeIdentificationUtils;->createPersistableBundle(I)Landroid/os/PersistableBundle;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Landroid/net/ipsec/ike/IkeRfc822AddrIdentification;

    const-string v2, "RFC822_ADDRESS_KEY"

    iget-object v3, v1, Landroid/net/ipsec/ike/IkeRfc822AddrIdentification;->rfc822Name:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unrecognized IkeIdentification subclass"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
