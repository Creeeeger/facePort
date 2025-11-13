.class public Lcom/samsung/android/knox/net/firewall/FirewallRuleTranslator;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static networkInterfaceOptions:[Ljava/lang/String;

.field public static portLocationOptions:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string/jumbo v0, "wifi"

    const-string v1, "data"

    const-string v2, "*"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/net/firewall/FirewallRuleTranslator;->networkInterfaceOptions:[Ljava/lang/String;

    const-string/jumbo v0, "remote"

    const-string v1, "local"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/net/firewall/FirewallRuleTranslator;->portLocationOptions:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertNetworkInterface(Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object v0, Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;->WIFI_DATA_ONLY:Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;

    invoke-virtual {p0, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lcom/samsung/android/knox/net/firewall/FirewallRuleTranslator;->networkInterfaceOptions:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object p0, p0, v0

    return-object p0

    :cond_1
    sget-object v0, Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;->MOBILE_DATA_ONLY:Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;

    invoke-virtual {p0, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Lcom/samsung/android/knox/net/firewall/FirewallRuleTranslator;->networkInterfaceOptions:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object p0, p0, v0

    return-object p0

    :cond_2
    sget-object p0, Lcom/samsung/android/knox/net/firewall/FirewallRuleTranslator;->networkInterfaceOptions:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object p0, p0, v0

    return-object p0
.end method

.method public static convertPortLocation(Lcom/samsung/android/knox/net/firewall/Firewall$PortLocation;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object v0, Lcom/samsung/android/knox/net/firewall/Firewall$PortLocation;->REMOTE:Lcom/samsung/android/knox/net/firewall/Firewall$PortLocation;

    invoke-virtual {p0, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lcom/samsung/android/knox/net/firewall/FirewallRuleTranslator;->portLocationOptions:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object p0, p0, v0

    return-object p0

    :cond_1
    sget-object v0, Lcom/samsung/android/knox/net/firewall/Firewall$PortLocation;->LOCAL:Lcom/samsung/android/knox/net/firewall/Firewall$PortLocation;

    invoke-virtual {p0, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Lcom/samsung/android/knox/net/firewall/FirewallRuleTranslator;->portLocationOptions:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object p0, p0, v0

    return-object p0

    :cond_2
    sget-object p0, Lcom/samsung/android/knox/net/firewall/FirewallRuleTranslator;->portLocationOptions:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object p0, p0, v0

    return-object p0
.end method

.method public static translateAllowRule(Ljava/lang/String;)Lcom/samsung/android/knox/net/firewall/FirewallRule;
    .locals 11

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, ";"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x2

    if-lt v1, v2, :cond_a

    array-length v1, p0

    const/4 v3, 0x4

    if-le v1, v3, :cond_1

    goto/16 :goto_3

    :cond_1
    sget-object v1, Lcom/samsung/android/knox/net/firewall/Firewall$PortLocation;->REMOTE:Lcom/samsung/android/knox/net/firewall/Firewall$PortLocation;

    sget-object v1, Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;->ALL_NETWORKS:Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;

    const/4 v3, 0x0

    aget-object v4, p0, v3

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_2

    return-object v0

    :cond_2
    aget-object v5, p0, v3

    invoke-virtual {v5, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    aget-object v6, p0, v3

    const/4 v7, 0x1

    add-int/2addr v4, v7

    invoke-virtual {v6, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    sget-object v6, Lcom/samsung/android/knox/net/firewall/FirewallRuleTranslator;->portLocationOptions:[Ljava/lang/String;

    aget-object v6, v6, v3

    aget-object v8, p0, v7

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    sget-object v6, Lcom/samsung/android/knox/net/firewall/Firewall$PortLocation;->REMOTE:Lcom/samsung/android/knox/net/firewall/Firewall$PortLocation;

    goto :goto_0

    :cond_3
    sget-object v6, Lcom/samsung/android/knox/net/firewall/FirewallRuleTranslator;->portLocationOptions:[Ljava/lang/String;

    aget-object v6, v6, v7

    aget-object v8, p0, v7

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    sget-object v6, Lcom/samsung/android/knox/net/firewall/Firewall$PortLocation;->LOCAL:Lcom/samsung/android/knox/net/firewall/Firewall$PortLocation;

    goto :goto_0

    :cond_4
    sget-object v6, Lcom/samsung/android/knox/net/firewall/Firewall$PortLocation;->ALL:Lcom/samsung/android/knox/net/firewall/Firewall$PortLocation;

    :goto_0
    array-length v8, p0

    const/4 v9, 0x3

    if-ne v8, v9, :cond_6

    sget-object v8, Lcom/samsung/android/knox/net/firewall/FirewallRuleTranslator;->networkInterfaceOptions:[Ljava/lang/String;

    aget-object v8, v8, v3

    aget-object v10, p0, v2

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    sget-object v8, Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;->WIFI_DATA_ONLY:Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;

    goto :goto_1

    :cond_5
    sget-object v8, Lcom/samsung/android/knox/net/firewall/FirewallRuleTranslator;->networkInterfaceOptions:[Ljava/lang/String;

    aget-object v8, v8, v7

    aget-object v10, p0, v2

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    sget-object v8, Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;->MOBILE_DATA_ONLY:Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;

    goto :goto_1

    :cond_6
    move-object v8, v1

    :goto_1
    array-length v10, p0

    if-le v10, v9, :cond_8

    aget-object v2, p0, v2

    sget-object v8, Lcom/samsung/android/knox/net/firewall/FirewallRuleTranslator;->networkInterfaceOptions:[Ljava/lang/String;

    aget-object v3, v8, v3

    aget-object v8, p0, v9

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    sget-object v1, Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;->WIFI_DATA_ONLY:Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;

    goto :goto_2

    :cond_7
    sget-object v3, Lcom/samsung/android/knox/net/firewall/FirewallRuleTranslator;->networkInterfaceOptions:[Ljava/lang/String;

    aget-object v3, v3, v7

    aget-object p0, p0, v9

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9

    sget-object v1, Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;->MOBILE_DATA_ONLY:Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;

    goto :goto_2

    :cond_8
    const-string v2, "*"

    move-object v1, v8

    :cond_9
    :goto_2
    new-instance p0, Lcom/samsung/android/knox/net/firewall/FirewallRule;

    sget-object v3, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->ALLOW:Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;

    sget-object v7, Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;->IPV4:Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;

    invoke-direct {p0, v3, v7}, Lcom/samsung/android/knox/net/firewall/FirewallRule;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;)V

    new-instance v3, Lcom/samsung/android/knox/AppIdentity;

    invoke-direct {v3, v2, v0}, Lcom/samsung/android/knox/AppIdentity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->setIpAddress(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->setPortNumber(Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->setPortLocation(Lcom/samsung/android/knox/net/firewall/Firewall$PortLocation;)V

    invoke-virtual {p0, v3}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->setApplication(Lcom/samsung/android/knox/AppIdentity;)V

    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->setNetworkInterface(Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;)V

    return-object p0

    :cond_a
    :goto_3
    return-object v0
.end method

.method public static translateDenyRule(Ljava/lang/String;)Lcom/samsung/android/knox/net/firewall/FirewallRule;
    .locals 11

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, ";"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x2

    if-lt v1, v2, :cond_a

    array-length v1, p0

    const/4 v3, 0x4

    if-le v1, v3, :cond_1

    goto/16 :goto_3

    :cond_1
    sget-object v1, Lcom/samsung/android/knox/net/firewall/Firewall$PortLocation;->REMOTE:Lcom/samsung/android/knox/net/firewall/Firewall$PortLocation;

    sget-object v1, Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;->ALL_NETWORKS:Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;

    const/4 v3, 0x0

    aget-object v4, p0, v3

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_2

    return-object v0

    :cond_2
    aget-object v5, p0, v3

    invoke-virtual {v5, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    aget-object v6, p0, v3

    const/4 v7, 0x1

    add-int/2addr v4, v7

    invoke-virtual {v6, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    sget-object v6, Lcom/samsung/android/knox/net/firewall/FirewallRuleTranslator;->portLocationOptions:[Ljava/lang/String;

    aget-object v6, v6, v3

    aget-object v8, p0, v7

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    sget-object v6, Lcom/samsung/android/knox/net/firewall/Firewall$PortLocation;->REMOTE:Lcom/samsung/android/knox/net/firewall/Firewall$PortLocation;

    goto :goto_0

    :cond_3
    sget-object v6, Lcom/samsung/android/knox/net/firewall/FirewallRuleTranslator;->portLocationOptions:[Ljava/lang/String;

    aget-object v6, v6, v7

    aget-object v8, p0, v7

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    sget-object v6, Lcom/samsung/android/knox/net/firewall/Firewall$PortLocation;->LOCAL:Lcom/samsung/android/knox/net/firewall/Firewall$PortLocation;

    goto :goto_0

    :cond_4
    sget-object v6, Lcom/samsung/android/knox/net/firewall/Firewall$PortLocation;->ALL:Lcom/samsung/android/knox/net/firewall/Firewall$PortLocation;

    :goto_0
    array-length v8, p0

    const/4 v9, 0x3

    if-ne v8, v9, :cond_6

    sget-object v8, Lcom/samsung/android/knox/net/firewall/FirewallRuleTranslator;->networkInterfaceOptions:[Ljava/lang/String;

    aget-object v8, v8, v3

    aget-object v10, p0, v2

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    sget-object v8, Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;->WIFI_DATA_ONLY:Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;

    goto :goto_1

    :cond_5
    sget-object v8, Lcom/samsung/android/knox/net/firewall/FirewallRuleTranslator;->networkInterfaceOptions:[Ljava/lang/String;

    aget-object v8, v8, v7

    aget-object v10, p0, v2

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    sget-object v8, Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;->MOBILE_DATA_ONLY:Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;

    goto :goto_1

    :cond_6
    move-object v8, v1

    :goto_1
    array-length v10, p0

    if-le v10, v9, :cond_8

    aget-object v2, p0, v2

    sget-object v8, Lcom/samsung/android/knox/net/firewall/FirewallRuleTranslator;->networkInterfaceOptions:[Ljava/lang/String;

    aget-object v3, v8, v3

    aget-object v8, p0, v9

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    sget-object v1, Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;->WIFI_DATA_ONLY:Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;

    goto :goto_2

    :cond_7
    sget-object v3, Lcom/samsung/android/knox/net/firewall/FirewallRuleTranslator;->networkInterfaceOptions:[Ljava/lang/String;

    aget-object v3, v3, v7

    aget-object p0, p0, v9

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9

    sget-object v1, Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;->MOBILE_DATA_ONLY:Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;

    goto :goto_2

    :cond_8
    const-string v2, "*"

    move-object v1, v8

    :cond_9
    :goto_2
    new-instance p0, Lcom/samsung/android/knox/net/firewall/FirewallRule;

    sget-object v3, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->DENY:Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;

    sget-object v7, Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;->IPV4:Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;

    invoke-direct {p0, v3, v7}, Lcom/samsung/android/knox/net/firewall/FirewallRule;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;)V

    new-instance v3, Lcom/samsung/android/knox/AppIdentity;

    invoke-direct {v3, v2, v0}, Lcom/samsung/android/knox/AppIdentity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->setIpAddress(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->setPortNumber(Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->setPortLocation(Lcom/samsung/android/knox/net/firewall/Firewall$PortLocation;)V

    invoke-virtual {p0, v3}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->setApplication(Lcom/samsung/android/knox/AppIdentity;)V

    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->setNetworkInterface(Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;)V

    return-object p0

    :cond_a
    :goto_3
    return-object v0
.end method

.method public static translateFirewallRuleToOldFormat(Lcom/samsung/android/knox/net/firewall/FirewallRule;)Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/android/knox/net/firewall/FirewallRuleTranslator$1;->$SwitchMap$com$samsung$android$knox$net$firewall$FirewallRule$RuleType:[I

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getRuleType()Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    const-string v3, ":"

    const-string v4, ";"

    if-eq v1, v2, :cond_5

    const/4 v2, 0x2

    const-string v5, "*"

    if-eq v1, v2, :cond_3

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getIpAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getPortNumber()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getIpAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getPortNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getTargetIpAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getTargetPortNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getNetworkInterface()Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;->ALL_NETWORKS:Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    :cond_2
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getNetworkInterface()Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRuleTranslator;->convertNetworkInterface(Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getIpAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getPortNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getPortLocation()Lcom/samsung/android/knox/net/firewall/Firewall$PortLocation;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/knox/net/firewall/FirewallRuleTranslator;->convertPortLocation(Lcom/samsung/android/knox/net/firewall/Firewall$PortLocation;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getNetworkInterface()Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;->ALL_NETWORKS:Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    :cond_4
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getNetworkInterface()Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRuleTranslator;->convertNetworkInterface(Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getIpAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getPortNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getPortLocation()Lcom/samsung/android/knox/net/firewall/Firewall$PortLocation;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/knox/net/firewall/FirewallRuleTranslator;->convertPortLocation(Lcom/samsung/android/knox/net/firewall/Firewall$PortLocation;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getNetworkInterface()Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;->ALL_NETWORKS:Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getNetworkInterface()Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRuleTranslator;->convertNetworkInterface(Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static translateRedirectExceptionRule(Ljava/lang/String;)Lcom/samsung/android/knox/net/firewall/FirewallRule;
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, ";"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x1

    if-lt v1, v2, :cond_4

    array-length v1, p0

    const/4 v3, 0x2

    if-le v1, v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    aget-object v4, p0, v1

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_2

    return-object v0

    :cond_2
    aget-object v5, p0, v1

    invoke-virtual {v5, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    aget-object v1, p0, v1

    add-int/2addr v4, v2

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    array-length v4, p0

    if-ne v4, v3, :cond_3

    aget-object p0, p0, v2

    goto :goto_0

    :cond_3
    const-string p0, "*"

    :goto_0
    new-instance v2, Lcom/samsung/android/knox/net/firewall/FirewallRule;

    sget-object v3, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->REDIRECT_EXCEPTION:Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;

    sget-object v4, Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;->IPV4:Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/knox/net/firewall/FirewallRule;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;)V

    new-instance v3, Lcom/samsung/android/knox/AppIdentity;

    invoke-direct {v3, p0, v0}, Lcom/samsung/android/knox/AppIdentity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->setIpAddress(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->setPortNumber(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->setApplication(Lcom/samsung/android/knox/AppIdentity;)V

    return-object v2

    :cond_4
    :goto_1
    return-object v0
.end method

.method public static translateRedirectRule(Ljava/lang/String;)Lcom/samsung/android/knox/net/firewall/FirewallRule;
    .locals 11

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, ";"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x4

    const/4 v3, 0x2

    if-eq v1, v3, :cond_1

    array-length v1, p0

    if-eq v1, v2, :cond_1

    return-object v0

    :cond_1
    sget-object v1, Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;->ALL_NETWORKS:Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;

    const/4 v4, 0x0

    aget-object v5, p0, v4

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v7, -0x1

    if-ne v5, v7, :cond_2

    return-object v0

    :cond_2
    aget-object v8, p0, v4

    invoke-virtual {v8, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    aget-object v9, p0, v4

    const/4 v10, 0x1

    add-int/2addr v5, v10

    invoke-virtual {v9, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    aget-object v9, p0, v10

    invoke-virtual {v9, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    if-ne v6, v7, :cond_3

    return-object v0

    :cond_3
    aget-object v7, p0, v10

    invoke-virtual {v7, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    aget-object v9, p0, v10

    add-int/2addr v6, v10

    invoke-virtual {v9, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    array-length v9, p0

    if-ne v9, v2, :cond_5

    aget-object v2, p0, v3

    sget-object v3, Lcom/samsung/android/knox/net/firewall/FirewallRuleTranslator;->networkInterfaceOptions:[Ljava/lang/String;

    aget-object v3, v3, v4

    const/4 v4, 0x3

    aget-object v9, p0, v4

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    sget-object v1, Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;->WIFI_DATA_ONLY:Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;

    goto :goto_0

    :cond_4
    sget-object v3, Lcom/samsung/android/knox/net/firewall/FirewallRuleTranslator;->networkInterfaceOptions:[Ljava/lang/String;

    aget-object v3, v3, v10

    aget-object p0, p0, v4

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    sget-object v1, Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;->MOBILE_DATA_ONLY:Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;

    goto :goto_0

    :cond_5
    const-string v2, "*"

    :cond_6
    :goto_0
    new-instance p0, Lcom/samsung/android/knox/net/firewall/FirewallRule;

    sget-object v3, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->REDIRECT:Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;

    sget-object v4, Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;->IPV4:Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;

    invoke-direct {p0, v3, v4}, Lcom/samsung/android/knox/net/firewall/FirewallRule;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;)V

    new-instance v3, Lcom/samsung/android/knox/AppIdentity;

    invoke-direct {v3, v2, v0}, Lcom/samsung/android/knox/AppIdentity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v8}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->setIpAddress(Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->setPortNumber(Ljava/lang/String;)V

    invoke-virtual {p0, v7}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->setTargetIpAddress(Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->setTargetPortNumber(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->setApplication(Lcom/samsung/android/knox/AppIdentity;)V

    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->setNetworkInterface(Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;)V

    return-object p0
.end method

.method public static translateRule(Ljava/lang/String;Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;)Lcom/samsung/android/knox/net/firewall/FirewallRule;
    .locals 1

    sget-object v0, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->ALLOW:Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;

    if-ne p1, v0, :cond_0

    invoke-static {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRuleTranslator;->translateAllowRule(Ljava/lang/String;)Lcom/samsung/android/knox/net/firewall/FirewallRule;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object v0, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->DENY:Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;

    if-ne p1, v0, :cond_1

    invoke-static {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRuleTranslator;->translateDenyRule(Ljava/lang/String;)Lcom/samsung/android/knox/net/firewall/FirewallRule;

    move-result-object p0

    return-object p0

    :cond_1
    sget-object v0, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->REDIRECT:Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;

    if-ne p1, v0, :cond_2

    invoke-static {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRuleTranslator;->translateRedirectRule(Ljava/lang/String;)Lcom/samsung/android/knox/net/firewall/FirewallRule;

    move-result-object p0

    return-object p0

    :cond_2
    sget-object v0, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->REDIRECT_EXCEPTION:Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;

    if-ne p1, v0, :cond_3

    invoke-static {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRuleTranslator;->translateRedirectExceptionRule(Ljava/lang/String;)Lcom/samsung/android/knox/net/firewall/FirewallRule;

    move-result-object p0

    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method
