.class public Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final ADDRESS:Ljava/lang/String; = "address"

.field public static final APP_IDENTITY:Ljava/lang/String; = "app identity"

.field public static final DIRECTION:Ljava/lang/String; = "direction"

.field public static final INTERFACE_REGEX:Ljava/util/regex/Pattern;

.field public static final NETWORK_INTERFACE:Ljava/lang/String; = "network interface"

.field public static final PARAMETERS:Ljava/lang/String; = "Parameter(s): "

.field public static final PORT_LOCATION:Ljava/lang/String; = "port location"

.field public static final PORT_NUMBER:Ljava/lang/String; = "port number"

.field public static final PROTOCOL:Ljava/lang/String; = "protocol"

.field public static final SIZE_IPV4_ADDRESS:I = 0x4

.field public static final SIZE_IPV6_ADDRESS:I = 0x10

.field public static final SIZE_SHORT_INT:I = 0x2

.field public static final SOURCE_ADDRESS:Ljava/lang/String; = "source address"

.field public static final SOURCE_PORT_NUMBER:Ljava/lang/String; = "source port number"

.field public static final TARGET_IP:Ljava/lang/String; = "target IP"

.field public static final TARGET_PORT_NUMBER:Ljava/lang/String; = "target port number"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "[a-z_]{2,}([0-9]*|\\+?)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->INTERFACE_REGEX:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertFromHexToInt(Ljava/lang/String;)J
    .locals 2

    const/16 v0, 0x10

    invoke-static {p0, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static convertIpv6ToCompleteForm(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    if-eqz p0, :cond_e

    const-string v0, "::"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_7

    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const-string v2, "0:"

    const/4 v3, 0x7

    const/16 v4, 0x8

    const/4 v5, 0x0

    const-string v6, ":"

    const/4 v7, 0x1

    if-ne v1, v7, :cond_8

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 v1, 0x3a

    if-ne p0, v1, :cond_4

    aget-object p0, v0, v5

    invoke-virtual {p0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v0, p0

    rsub-int/lit8 v0, v0, 0x8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    if-ge v5, v0, :cond_1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    move v2, v0

    :goto_1
    if-ge v2, v4, :cond_3

    sub-int v5, v2, v0

    aget-object v5, p0, v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eq v2, v3, :cond_2

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    aget-object p0, v0, v5

    invoke-virtual {p0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v0, p0

    rsub-int/lit8 v0, v0, 0x8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_2
    if-ge v5, v0, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v7, p0, v5

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    if-ge v0, v4, :cond_7

    const-string p0, "0"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eq v0, v3, :cond_6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_7
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_8
    array-length p0, v0

    const/4 v1, 0x2

    if-ne p0, v1, :cond_d

    aget-object p0, v0, v5

    invoke-virtual {p0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    aget-object v0, v0, v7

    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, p0

    rsub-int/lit8 v1, v1, 0x8

    array-length v7, v0

    sub-int/2addr v1, v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    :goto_4
    array-length v8, p0

    if-ge v5, v8, :cond_9

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v9, p0, v5

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_9
    array-length v5, p0

    :goto_5
    array-length v8, p0

    add-int/2addr v8, v1

    if-ge v5, v8, :cond_a

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_a
    array-length v2, p0

    add-int/2addr v2, v1

    :goto_6
    if-ge v2, v4, :cond_c

    array-length v5, p0

    sub-int v5, v2, v5

    sub-int/2addr v5, v1

    aget-object v5, v0, v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eq v2, v3, :cond_b

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_c
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_d
    const/4 p0, 0x0

    :cond_e
    :goto_7
    return-object p0
.end method

.method public static isIpv4MappedAddress([B)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    array-length v1, p0

    const/16 v2, 0x10

    if-ge v1, v2, :cond_0

    goto :goto_1

    :cond_0
    move v1, v0

    :goto_0
    const/16 v2, 0xa

    if-ge v1, v2, :cond_2

    aget-byte v2, p0, v1

    if-eqz v2, :cond_1

    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    aget-byte v1, p0, v2

    const/4 v2, -0x1

    if-ne v1, v2, :cond_4

    const/16 v1, 0xb

    aget-byte p0, p0, v1

    if-eq p0, v2, :cond_3

    goto :goto_1

    :cond_3
    const/4 p0, 0x1

    return p0

    :cond_4
    :goto_1
    return v0
.end method

.method public static translateIpv4MappedAddress([B)[B
    .locals 4

    invoke-static {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->isIpv4MappedAddress([B)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    new-array v1, v0, [B

    const/16 v2, 0xc

    const/4 v3, 0x0

    invoke-static {p0, v2, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static translateIpv4TextualAddress(Ljava/lang/String;)[B
    .locals 19

    move-object/from16 v0, p0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move-object v0, v1

    goto/16 :goto_7

    :cond_1
    const/4 v2, 0x4

    new-array v3, v2, [B

    const-string v4, "\\."

    const/4 v5, -0x1

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    :try_start_0
    array-length v4, v0

    const-wide/32 v6, 0xffffff

    const/16 v8, 0x8

    const-wide/32 v9, 0xffff

    const/4 v11, 0x3

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x2

    const/4 v5, 0x1

    const-wide/16 v16, 0xff

    if-eq v4, v5, :cond_10

    if-eq v4, v15, :cond_b

    if-eq v4, v11, :cond_5

    if-eq v4, v2, :cond_2

    return-object v1

    :cond_2
    :goto_0
    if-ge v14, v2, :cond_13

    aget-object v4, v0, v14

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    int-to-long v4, v4

    cmp-long v6, v4, v12

    if-ltz v6, :cond_4

    cmp-long v6, v4, v16

    if-lez v6, :cond_3

    goto :goto_1

    :cond_3
    and-long v4, v4, v16

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v3, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    :catch_0
    move-object v0, v1

    goto/16 :goto_7

    :cond_4
    :goto_1
    return-object v1

    :cond_5
    :goto_2
    if-ge v14, v15, :cond_8

    aget-object v2, v0, v14

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v4, v2

    cmp-long v2, v4, v12

    if-ltz v2, :cond_7

    cmp-long v2, v4, v16

    if-lez v2, :cond_6

    goto :goto_3

    :cond_6
    and-long v4, v4, v16

    long-to-int v2, v4

    int-to-byte v2, v2

    aput-byte v2, v3, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    :cond_7
    :goto_3
    return-object v1

    :cond_8
    aget-object v0, v0, v15

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v4, v0

    cmp-long v0, v4, v12

    if-ltz v0, :cond_a

    cmp-long v0, v4, v9

    if-lez v0, :cond_9

    goto :goto_4

    :cond_9
    shr-long v6, v4, v8

    and-long v6, v6, v16

    long-to-int v0, v6

    int-to-byte v0, v0

    aput-byte v0, v3, v15

    and-long v4, v4, v16

    long-to-int v0, v4

    int-to-byte v0, v0

    aput-byte v0, v3, v11

    goto/16 :goto_6

    :cond_a
    :goto_4
    return-object v1

    :cond_b
    aget-object v2, v0, v14

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long v1, v2

    cmp-long v18, v1, v12

    if-ltz v18, :cond_c

    cmp-long v18, v1, v16

    if-lez v18, :cond_d

    :cond_c
    const/4 v0, 0x0

    goto :goto_5

    :cond_d
    and-long v1, v1, v16

    long-to-int v1, v1

    int-to-byte v1, v1

    :try_start_1
    aput-byte v1, v3, v14

    aget-object v0, v0, v5

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    cmp-long v2, v0, v12

    if-ltz v2, :cond_e

    cmp-long v2, v0, v6

    if-lez v2, :cond_f

    :cond_e
    const/4 v0, 0x0

    goto :goto_5

    :cond_f
    const/16 v2, 0x10

    shr-long v6, v0, v2

    and-long v6, v6, v16

    long-to-int v2, v6

    int-to-byte v2, v2

    aput-byte v2, v3, v5

    and-long v5, v0, v9

    shr-long/2addr v5, v8

    and-long v5, v5, v16

    long-to-int v2, v5

    int-to-byte v2, v2

    aput-byte v2, v3, v15

    and-long v0, v0, v16

    long-to-int v0, v0

    int-to-byte v0, v0

    aput-byte v0, v3, v11

    goto :goto_6

    :catch_1
    const/4 v0, 0x0

    goto :goto_7

    :goto_5
    return-object v0

    :cond_10
    aget-object v0, v0, v14

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    cmp-long v2, v0, v12

    if-ltz v2, :cond_11

    const-wide v12, 0xffffffffL

    cmp-long v2, v0, v12

    if-lez v2, :cond_12

    :cond_11
    const/4 v0, 0x0

    goto :goto_7

    :cond_12
    const/16 v2, 0x18

    shr-long v12, v0, v2

    and-long v12, v12, v16

    long-to-int v2, v12

    int-to-byte v2, v2

    aput-byte v2, v3, v14

    and-long/2addr v6, v0

    const/16 v2, 0x10

    shr-long/2addr v6, v2

    and-long v6, v6, v16

    long-to-int v2, v6

    int-to-byte v2, v2

    aput-byte v2, v3, v5

    and-long v5, v0, v9

    shr-long/2addr v5, v8

    and-long v5, v5, v16

    long-to-int v2, v5

    int-to-byte v2, v2

    aput-byte v2, v3, v15

    and-long v0, v0, v16

    long-to-int v0, v0

    int-to-byte v0, v0

    aput-byte v0, v3, v11
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_13
    :goto_6
    return-object v3

    :goto_7
    return-object v0
.end method

.method public static validadeIpv4Range(Ljava/lang/String;)Z
    .locals 7

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string v1, "-"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    aget-object v1, p0, v0

    invoke-static {v1}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->validateIpv4Address(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    aget-object v2, p0, v1

    invoke-static {v2}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->validateIpv4Address(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    aget-object v2, p0, v0

    const-string v3, "\\."

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object p0, p0, v1

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-eqz v2, :cond_5

    array-length v3, v2

    const/4 v4, 0x4

    if-ne v3, v4, :cond_5

    if-eqz p0, :cond_5

    array-length v3, p0

    if-eq v3, v4, :cond_1

    goto :goto_1

    :cond_1
    move v3, v0

    :goto_0
    if-ge v3, v4, :cond_4

    :try_start_0
    aget-object v5, v2, v3

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aget-object v6, p0, v3

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-le v5, v6, :cond_2

    return v0

    :cond_2
    if-ge v5, v6, :cond_3

    return v1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    return v0

    :cond_4
    return v1

    :cond_5
    :goto_1
    return v0
.end method

.method public static validadeIpv6Range(Ljava/lang/String;)Z
    .locals 9

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string v1, "-"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_7

    aget-object v3, v2, v0

    invoke-static {v3}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->validateIpv6Address(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-static {v2}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->validateIpv6Address(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    aget-object v1, p0, v0

    const-string v2, "::"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    aget-object v1, p0, v0

    invoke-static {v1}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->convertIpv6ToCompleteForm(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p0, v0

    :cond_1
    aget-object v1, p0, v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    aget-object v1, p0, v3

    invoke-static {v1}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->convertIpv6ToCompleteForm(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p0, v3

    :cond_2
    aget-object v1, p0, v0

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object p0, p0, v3

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-eqz v1, :cond_7

    array-length v2, v1

    const/16 v4, 0x8

    if-ne v2, v4, :cond_7

    if-eqz p0, :cond_7

    array-length v2, p0

    if-eq v2, v4, :cond_3

    goto :goto_1

    :cond_3
    move v2, v0

    :goto_0
    if-ge v2, v4, :cond_6

    aget-object v5, v1, v2

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v7

    aget-object v5, p0, v2

    invoke-static {v5, v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v5

    cmp-long v5, v7, v5

    if-lez v5, :cond_4

    return v0

    :cond_4
    if-gez v5, :cond_5

    return v3

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    return v3

    :cond_7
    :goto_1
    return v0
.end method

.method public static validadePortNumberRange(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string v1, "-"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    aget-object v1, p0, v0

    invoke-static {v1}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->validatePortNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    aget-object v2, p0, v1

    invoke-static {v2}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->validatePortNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    :try_start_0
    aget-object v2, p0, v0

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aget-object p0, p0, v1

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-le v2, p0, :cond_1

    return v0

    :cond_1
    return v1

    :catch_0
    :cond_2
    return v0
.end method

.method public static validateAllowRule(Lcom/samsung/android/knox/net/firewall/FirewallRule;)Lcom/samsung/android/knox/net/firewall/FirewallResponse;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-nez p0, :cond_0

    new-instance p0, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v0, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object v1, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->OPERATION_NOT_PERMITTED_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    const-string v2, "Rule is null."

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    return-object p0

    :cond_0
    invoke-static {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->validateUidRule(Lcom/samsung/android/knox/net/firewall/FirewallRule;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance p0, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v1, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object v2, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->OPERATION_NOT_PERMITTED_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v2, v0}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    return-object p0

    :cond_1
    invoke-static {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->validateForwardConstraints(Lcom/samsung/android/knox/net/firewall/FirewallRule;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance p0, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v1, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object v2, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->OPERATION_NOT_PERMITTED_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v2, v0}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    return-object p0

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getAddressType()Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getIpAddress()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;->IPV4:Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;

    invoke-virtual {v1, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v3, "Parameter(s): address"

    const-string v4, "*"

    const/4 v5, 0x0

    if-eqz v1, :cond_3

    invoke-static {v2}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->validadeIpv4Range(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {v2}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->validateIpv4Address(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    move v1, v5

    goto :goto_1

    :cond_3
    invoke-static {v2}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->validadeIpv6Range(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {v2}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->validateIpv6Address(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_4
    const/4 v1, 0x1

    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getPortNumber()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->validatePortNumber(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getPortNumber()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->validadePortNumberRange(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getPortNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    if-eqz v1, :cond_5

    const-string v1, "Parameter(s): port number"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_5
    const-string v1, ", port number"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    move v1, v5

    :cond_6
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getPortLocation()Lcom/samsung/android/knox/net/firewall/Firewall$PortLocation;

    move-result-object v2

    if-nez v2, :cond_8

    if-eqz v1, :cond_7

    const-string v1, "Parameter(s): port location"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_7
    const-string v1, ", port location"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    move v1, v5

    :cond_8
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->validatePackageName(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b

    :cond_9
    if-eqz v1, :cond_a

    const-string v1, "Parameter(s): app identity"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_a
    const-string v1, ", app identity"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4
    move v1, v5

    :cond_b
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getStrNetworkInterface()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_c

    invoke-static {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->validateInterfaceName(Lcom/samsung/android/knox/net/firewall/FirewallRule;)Z

    move-result v2

    if-eqz v2, :cond_d

    :cond_c
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getNetworkInterface()Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;

    move-result-object v2

    if-nez v2, :cond_f

    :cond_d
    if-eqz v1, :cond_e

    const-string v1, "Parameter(s): network interface"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_e
    const-string v1, ", network interface"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_5
    move v1, v5

    :cond_f
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getProtocol()Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;

    move-result-object v2

    if-nez v2, :cond_11

    if-eqz v1, :cond_10

    const-string v1, "Parameter(s): protocol"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    :cond_10
    const-string v1, ", protocol"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_6
    move v1, v5

    :cond_11
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getDirection()Lcom/samsung/android/knox/net/firewall/Firewall$Direction;

    move-result-object p0

    if-nez p0, :cond_13

    if-eqz v1, :cond_12

    const-string p0, "Parameter(s): direction"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    :cond_12
    const-string p0, ", direction"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    :cond_13
    move v5, v1

    :goto_7
    if-nez v5, :cond_14

    const-string p0, " is(are) invalid."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p0, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v1, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object v2, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->INVALID_PARAMETER_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v2, v0}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    return-object p0

    :cond_14
    new-instance p0, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v0, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->SUCCESS:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object v1, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->NO_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    const-string v2, "Parameters validated successfully"

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    return-object p0
.end method

.method public static validateDenyRule(Lcom/samsung/android/knox/net/firewall/FirewallRule;)Lcom/samsung/android/knox/net/firewall/FirewallResponse;
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->validateAllowRule(Lcom/samsung/android/knox/net/firewall/FirewallRule;)Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    move-result-object p0

    return-object p0
.end method

.method public static validateFirewallRule(Lcom/samsung/android/knox/net/firewall/FirewallRule;)Lcom/samsung/android/knox/net/firewall/FirewallResponse;
    .locals 3

    if-nez p0, :cond_0

    new-instance p0, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v0, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object v1, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->OPERATION_NOT_PERMITTED_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    const-string v2, "Rule is null."

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    return-object p0

    :cond_0
    sget-object v0, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator$1;->$SwitchMap$com$samsung$android$knox$net$firewall$FirewallRule$RuleType:[I

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getRuleType()Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    new-instance p0, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v0, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object v1, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->UNEXPECTED_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    const-string v2, "Failed to validate Rule."

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    return-object p0

    :cond_1
    invoke-static {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->validateRedirectExceptionRule(Lcom/samsung/android/knox/net/firewall/FirewallRule;)Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-static {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->validateRedirectRule(Lcom/samsung/android/knox/net/firewall/FirewallRule;)Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-static {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->validateDenyRule(Lcom/samsung/android/knox/net/firewall/FirewallRule;)Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    move-result-object p0

    return-object p0

    :cond_4
    invoke-static {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->validateAllowRule(Lcom/samsung/android/knox/net/firewall/FirewallRule;)Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    move-result-object p0

    return-object p0
.end method

.method public static validateForwardConstraints(Lcom/samsung/android/knox/net/firewall/FirewallRule;)Z
    .locals 4

    sget-object v0, Lcom/samsung/android/knox/net/firewall/Firewall$Direction;->FORWARD:Lcom/samsung/android/knox/net/firewall/Firewall$Direction;

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getDirection()Lcom/samsung/android/knox/net/firewall/Firewall$Direction;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getPortLocation()Lcom/samsung/android/knox/net/firewall/Firewall$PortLocation;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/samsung/android/knox/net/firewall/Firewall$PortLocation;->ALL:Lcom/samsung/android/knox/net/firewall/Firewall$PortLocation;

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getPortLocation()Lcom/samsung/android/knox/net/firewall/Firewall$PortLocation;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getNetworkInterface()Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;

    move-result-object v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;->ALL_NETWORKS:Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getNetworkInterface()Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getStrNetworkInterface()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    return v1

    :cond_3
    :goto_0
    return v2
.end method

.method public static validateHostName(Ljava/lang/String;)Z
    .locals 7

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string v1, "*"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    return v2

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v3, 0xff

    if-le v1, v3, :cond_2

    return v0

    :cond_2
    const-string v1, "\\."

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    move v3, v0

    :goto_0
    aget-object v4, v1, v0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_e

    aget-object v4, v1, v0

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x61

    if-lt v4, v5, :cond_3

    const/16 v5, 0x7a

    if-le v4, v5, :cond_4

    :cond_3
    const/16 v5, 0x41

    if-lt v4, v5, :cond_d

    const/16 v5, 0x5a

    if-gt v4, v5, :cond_d

    :cond_4
    move v3, v0

    move v4, v3

    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_6

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2e

    if-ne v5, v6, :cond_5

    add-int/lit8 v4, v4, 0x1

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_6
    array-length p0, v1

    if-lt v4, p0, :cond_7

    return v0

    :cond_7
    array-length p0, v1

    move v3, v0

    :goto_2
    if-ge v3, p0, :cond_9

    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x3f

    if-le v4, v5, :cond_8

    return v0

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_9
    array-length p0, v1

    move v3, v0

    :goto_3
    if-ge v3, p0, :cond_c

    aget-object v4, v1, v3

    const-string v5, "^[A-Za-z0-9-]+$"

    invoke-virtual {v4, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2d

    if-eq v5, v6, :cond_b

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v6, :cond_a

    goto :goto_4

    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_b
    :goto_4
    return v0

    :cond_c
    return v2

    :cond_d
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_e
    return v0
.end method

.method public static validateInterfaceName(Lcom/samsung/android/knox/net/firewall/FirewallRule;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getStrNetworkInterface()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    sget-object v0, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->INTERFACE_REGEX:Ljava/util/regex/Pattern;

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getStrNetworkInterface()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    return p0
.end method

.method public static validateIpv4Address(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->translateIpv4TextualAddress(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/util/Patterns;->IP_ADDRESS:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static validateIpv6Address(Ljava/lang/String;)Z
    .locals 14

    const/4 v0, 0x0

    if-eqz p0, :cond_16

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    goto/16 :goto_7

    :cond_0
    const/16 v1, 0x10

    new-array v2, v1, [B

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x3a

    const/4 v5, 0x1

    if-ne v3, v4, :cond_2

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v4, :cond_1

    return v0

    :cond_1
    move v3, v5

    goto :goto_0

    :cond_2
    move v3, v0

    :goto_0
    const/4 v6, -0x1

    move v8, v0

    move v9, v8

    move v10, v9

    move v7, v3

    move v11, v6

    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v12

    if-ge v3, v12, :cond_f

    add-int/lit8 v12, v3, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3, v1}, Ljava/lang/Character;->digit(CI)I

    move-result v13

    if-eq v13, v6, :cond_4

    shl-int/lit8 v3, v8, 0x4

    or-int v8, v3, v13

    const v3, 0xffff

    if-le v8, v3, :cond_3

    return v0

    :cond_3
    move v9, v5

    move v3, v12

    goto :goto_1

    :cond_4
    if-ne v3, v4, :cond_9

    if-nez v9, :cond_6

    if-eq v11, v6, :cond_5

    return v0

    :cond_5
    move v11, v10

    :goto_2
    move v3, v12

    move v7, v3

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v12, v3, :cond_7

    return v0

    :cond_7
    add-int/lit8 v3, v10, 0x2

    if-le v3, v1, :cond_8

    return v0

    :cond_8
    add-int/lit8 v3, v10, 0x1

    shr-int/lit8 v7, v8, 0x8

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    aput-byte v7, v2, v10

    add-int/lit8 v10, v10, 0x2

    and-int/lit16 v7, v8, 0xff

    int-to-byte v7, v7

    aput-byte v7, v2, v3

    move v8, v0

    move v9, v8

    goto :goto_2

    :cond_9
    const/16 v4, 0x2e

    if-ne v3, v4, :cond_e

    add-int/lit8 v3, v10, 0x4

    if-gt v3, v1, :cond_e

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p0, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    move v3, v0

    move v7, v3

    :goto_3
    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    if-eq v3, v6, :cond_a

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_a
    const/4 v3, 0x3

    if-eq v7, v3, :cond_b

    return v0

    :cond_b
    invoke-static {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->translateIpv4TextualAddress(Ljava/lang/String;)[B

    move-result-object p0

    if-nez p0, :cond_c

    return v0

    :cond_c
    move v3, v0

    :goto_4
    const/4 v4, 0x4

    if-ge v3, v4, :cond_d

    add-int/lit8 v4, v10, 0x1

    aget-byte v7, p0, v3

    aput-byte v7, v2, v10

    add-int/lit8 v3, v3, 0x1

    move v10, v4

    goto :goto_4

    :cond_d
    move v9, v0

    goto :goto_5

    :cond_e
    return v0

    :cond_f
    :goto_5
    if-eqz v9, :cond_11

    add-int/lit8 p0, v10, 0x2

    if-le p0, v1, :cond_10

    return v0

    :cond_10
    add-int/lit8 p0, v10, 0x1

    shr-int/lit8 v3, v8, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v2, v10

    add-int/lit8 v10, v10, 0x2

    and-int/lit16 v3, v8, 0xff

    int-to-byte v3, v3

    aput-byte v3, v2, p0

    :cond_11
    if-eq v11, v6, :cond_14

    sub-int p0, v10, v11

    if-ne v10, v1, :cond_12

    return v0

    :cond_12
    move v3, v5

    :goto_6
    if-gt v3, p0, :cond_13

    rsub-int/lit8 v4, v3, 0x10

    add-int v6, v11, p0

    sub-int/2addr v6, v3

    aget-byte v7, v2, v6

    aput-byte v7, v2, v4

    aput-byte v0, v2, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_13
    move v10, v1

    :cond_14
    if-eq v10, v1, :cond_15

    return v0

    :cond_15
    invoke-static {v2}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->translateIpv4MappedAddress([B)[B

    return v5

    :cond_16
    :goto_7
    return v0
.end method

.method public static validatePackageName(Ljava/lang/String;)Z
    .locals 7

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string v1, "*"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_7

    const-string v1, "SYSTEM_UIDS"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_3

    :cond_1
    const-string v1, "\\."

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    move v3, v0

    move v4, v3

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_3

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2e

    if-ne v5, v6, :cond_2

    add-int/lit8 v4, v4, 0x1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    array-length p0, v1

    if-lt v4, p0, :cond_4

    return v0

    :cond_4
    array-length p0, v1

    move v3, v0

    :goto_1
    if-ge v3, p0, :cond_7

    aget-object v4, v1, v3

    const-string v5, "^[A-Za-z0-9_]+$"

    invoke-virtual {v4, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x5f

    if-eq v5, v6, :cond_6

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x30

    if-lt v5, v6, :cond_5

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x39

    if-gt v4, v5, :cond_5

    goto :goto_2

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_6
    :goto_2
    return v0

    :cond_7
    :goto_3
    return v2
.end method

.method public static validatePortNumber(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, -0x1

    :goto_0
    if-ltz p0, :cond_1

    const v1, 0xffff

    if-gt p0, v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static validateRedirectExceptionRule(Lcom/samsung/android/knox/net/firewall/FirewallRule;)Lcom/samsung/android/knox/net/firewall/FirewallResponse;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-nez p0, :cond_0

    new-instance p0, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v0, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object v1, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->OPERATION_NOT_PERMITTED_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    const-string v2, "Rule is null."

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getAddressType()Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getIpAddress()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;->IPV4:Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;

    invoke-virtual {v1, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v3, "Parameter(s): address"

    const-string v4, "*"

    const/4 v5, 0x0

    if-eqz v1, :cond_1

    invoke-static {v2}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->validadeIpv4Range(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v2}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->validateIpv4Address(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    move v1, v5

    goto :goto_1

    :cond_1
    invoke-static {v2}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->validadeIpv6Range(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v2}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->validateIpv6Address(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getPortNumber()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->validatePortNumber(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getPortNumber()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->validadePortNumberRange(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getPortNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    if-eqz v1, :cond_3

    const-string v1, "Parameter(s): port number"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    const-string v1, ", port number"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    move v1, v5

    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->validatePackageName(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    :cond_5
    if-eqz v1, :cond_6

    const-string v1, "Parameter(s): app identity"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_6
    const-string v1, ", app identity"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    move v1, v5

    :cond_7
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getProtocol()Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;

    move-result-object v2

    if-nez v2, :cond_9

    if-eqz v1, :cond_8

    const-string v1, "Parameter(s): protocol"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_8
    const-string v1, ", protocol"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4
    move v1, v5

    :cond_9
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getStrNetworkInterface()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a

    invoke-static {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->validateInterfaceName(Lcom/samsung/android/knox/net/firewall/FirewallRule;)Z

    move-result v2

    if-eqz v2, :cond_b

    :cond_a
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getNetworkInterface()Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;

    move-result-object p0

    if-nez p0, :cond_d

    :cond_b
    if-eqz v1, :cond_c

    const-string p0, "Parameter(s): network interface"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_c
    const-string p0, ", network interface"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_d
    move v5, v1

    :goto_5
    if-nez v5, :cond_e

    const-string p0, " is(are) invalid."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p0, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v1, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object v2, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->INVALID_PARAMETER_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v2, v0}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    return-object p0

    :cond_e
    new-instance p0, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v0, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->SUCCESS:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object v1, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->NO_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    const-string v2, "Parameters validated successfully"

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    return-object p0
.end method

.method public static validateRedirectRule(Lcom/samsung/android/knox/net/firewall/FirewallRule;)Lcom/samsung/android/knox/net/firewall/FirewallResponse;
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-nez p0, :cond_0

    new-instance p0, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v0, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object v1, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->OPERATION_NOT_PERMITTED_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    const-string v2, "Rule is null."

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getAddressType()Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getIpAddress()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;->IPV4:Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;

    invoke-virtual {v1, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "Parameter(s): source address"

    const-string v6, "*"

    const/4 v7, 0x0

    if-eqz v4, :cond_1

    invoke-static {v2}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->validadeIpv4Range(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v2}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->validateIpv4Address(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    move v2, v7

    goto :goto_1

    :cond_1
    invoke-static {v2}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->validadeIpv6Range(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v2}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->validateIpv6Address(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getPortNumber()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->validatePortNumber(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getPortNumber()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->validadePortNumberRange(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getPortNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    if-eqz v2, :cond_3

    const-string v2, "Parameter(s): source port number"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    const-string v2, ", source port number"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    move v2, v7

    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getTargetIpAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v3, "Parameter(s): target IP"

    if-eqz v1, :cond_5

    invoke-static {v4}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->validateIpv4Address(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    move v2, v7

    goto :goto_4

    :cond_5
    invoke-static {v4}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->validateIpv6Address(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_6
    :goto_4
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getTargetPortNumber()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->validatePortNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getTargetPortNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    :cond_7
    if-eqz v2, :cond_8

    const-string v1, "Parameter(s): target port number"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_8
    const-string v1, ", target port number"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_5
    move v2, v7

    :cond_9
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->validatePackageName(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c

    :cond_a
    if-eqz v2, :cond_b

    const-string v1, "Parameter(s): app identity"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    :cond_b
    const-string v1, ", app identity"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_6
    move v2, v7

    :cond_c
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getStrNetworkInterface()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-static {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->validateInterfaceName(Lcom/samsung/android/knox/net/firewall/FirewallRule;)Z

    move-result v1

    if-eqz v1, :cond_e

    :cond_d
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getNetworkInterface()Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;

    move-result-object v1

    if-nez v1, :cond_10

    :cond_e
    if-eqz v2, :cond_f

    const-string v1, "Parameter(s): network interface"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    :cond_f
    const-string v1, ", network interface"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_7
    move v2, v7

    :cond_10
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getProtocol()Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;

    move-result-object p0

    if-nez p0, :cond_12

    if-eqz v2, :cond_11

    const-string p0, "Parameter(s): protocol"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    :cond_11
    const-string p0, ", protocol"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    :cond_12
    move v7, v2

    :goto_8
    if-nez v7, :cond_13

    const-string p0, " is(are) invalid."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p0, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v1, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object v2, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->INVALID_PARAMETER_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v2, v0}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    return-object p0

    :cond_13
    new-instance p0, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v0, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->SUCCESS:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object v1, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->NO_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    const-string v2, "Parameters validated successfully"

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    return-object p0
.end method

.method public static validateUidRule(Lcom/samsung/android/knox/net/firewall/FirewallRule;)Z
    .locals 2

    sget-object v0, Lcom/samsung/android/knox/net/firewall/Firewall$Direction;->INPUT:Lcom/samsung/android/knox/net/firewall/Firewall$Direction;

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getDirection()Lcom/samsung/android/knox/net/firewall/Firewall$Direction;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/knox/net/firewall/Firewall$Direction;->FORWARD:Lcom/samsung/android/knox/net/firewall/Firewall$Direction;

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getDirection()Lcom/samsung/android/knox/net/firewall/Firewall$Direction;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "*"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method
