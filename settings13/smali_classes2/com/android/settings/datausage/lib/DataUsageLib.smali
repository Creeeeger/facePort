.class public Lcom/android/settings/datausage/lib/DataUsageLib;
.super Ljava/lang/Object;
.source "DataUsageLib.java"


# direct methods
.method public static getMobileTemplate(Landroid/content/Context;I)Landroid/net/NetworkTemplate;
    .locals 4

    .line 44
    const-class v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 45
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriptionId()I

    move-result v1

    .line 47
    const-class v2, Landroid/telephony/SubscriptionManager;

    .line 48
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/SubscriptionManager;

    .line 50
    invoke-virtual {p0}, Landroid/telephony/SubscriptionManager;->getAvailableSubscriptionInfoList()Ljava/util/List;

    move-result-object p0

    const-string v2, "DataUsageLib"

    if-nez p0, :cond_0

    .line 52
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Subscription is not inited: "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    invoke-static {v0, v1}, Lcom/android/settings/datausage/lib/DataUsageLib;->getMobileTemplateForSubId(Landroid/telephony/TelephonyManager;I)Landroid/net/NetworkTemplate;

    move-result-object p0

    return-object p0

    .line 56
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/SubscriptionInfo;

    if-eqz v3, :cond_1

    .line 57
    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    if-ne v3, p1, :cond_1

    .line 58
    invoke-static {v0, p1}, Lcom/android/settings/datausage/lib/DataUsageLib;->getNormalizedMobileTemplate(Landroid/telephony/TelephonyManager;I)Landroid/net/NetworkTemplate;

    move-result-object p0

    return-object p0

    .line 61
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Subscription is not active: "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    invoke-static {v0, v1}, Lcom/android/settings/datausage/lib/DataUsageLib;->getMobileTemplateForSubId(Landroid/telephony/TelephonyManager;I)Landroid/net/NetworkTemplate;

    move-result-object p0

    return-object p0
.end method

.method public static getMobileTemplateForSubId(Landroid/telephony/TelephonyManager;I)Landroid/net/NetworkTemplate;
    .locals 2

    .line 98
    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x1

    if-eqz p0, :cond_0

    .line 103
    new-instance v0, Landroid/net/NetworkTemplate$Builder;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Landroid/net/NetworkTemplate$Builder;-><init>(I)V

    .line 101
    invoke-static {p0}, Ljava/util/Set;->of(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/net/NetworkTemplate$Builder;->setSubscriberIds(Ljava/util/Set;)Landroid/net/NetworkTemplate$Builder;

    move-result-object p0

    .line 102
    invoke-virtual {p0, p1}, Landroid/net/NetworkTemplate$Builder;->setMeteredness(I)Landroid/net/NetworkTemplate$Builder;

    move-result-object p0

    .line 103
    invoke-virtual {p0}, Landroid/net/NetworkTemplate$Builder;->build()Landroid/net/NetworkTemplate;

    move-result-object p0

    goto :goto_0

    .line 106
    :cond_0
    new-instance p0, Landroid/net/NetworkTemplate$Builder;

    invoke-direct {p0, p1}, Landroid/net/NetworkTemplate$Builder;-><init>(I)V

    .line 105
    invoke-virtual {p0, p1}, Landroid/net/NetworkTemplate$Builder;->setMeteredness(I)Landroid/net/NetworkTemplate$Builder;

    move-result-object p0

    .line 106
    invoke-virtual {p0}, Landroid/net/NetworkTemplate$Builder;->build()Landroid/net/NetworkTemplate;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static getNormalizedMobileTemplate(Landroid/telephony/TelephonyManager;I)Landroid/net/NetworkTemplate;
    .locals 1

    .line 67
    invoke-static {p0, p1}, Lcom/android/settings/datausage/lib/DataUsageLib;->getMobileTemplateForSubId(Landroid/telephony/TelephonyManager;I)Landroid/net/NetworkTemplate;

    move-result-object v0

    .line 69
    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getMergedImsisFromGroup()[Ljava/lang/String;

    move-result-object p0

    .line 70
    invoke-static {p0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p0, "DataUsageLib"

    const-string/jumbo p1, "mergedSubscriberIds is null."

    .line 71
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 75
    :cond_0
    invoke-static {v0, p0}, Lcom/android/settings/datausage/lib/DataUsageLib;->normalizeMobileTemplate(Landroid/net/NetworkTemplate;[Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object p0

    return-object p0
.end method

.method private static normalizeMobileTemplate(Landroid/net/NetworkTemplate;[Ljava/lang/String;)Landroid/net/NetworkTemplate;
    .locals 2

    .line 80
    invoke-virtual {p0}, Landroid/net/NetworkTemplate;->getSubscriberIds()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 82
    :cond_0
    invoke-virtual {p0}, Landroid/net/NetworkTemplate;->getSubscriberIds()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 84
    invoke-static {p1}, Ljava/util/Set;->of([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 87
    new-instance v0, Landroid/net/NetworkTemplate$Builder;

    invoke-virtual {p0}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/net/NetworkTemplate$Builder;-><init>(I)V

    .line 88
    invoke-static {p1}, Ljava/util/Set;->of([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/net/NetworkTemplate$Builder;->setSubscriberIds(Ljava/util/Set;)Landroid/net/NetworkTemplate$Builder;

    move-result-object p1

    .line 89
    invoke-virtual {p0}, Landroid/net/NetworkTemplate;->getMeteredness()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/net/NetworkTemplate$Builder;->setMeteredness(I)Landroid/net/NetworkTemplate$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/NetworkTemplate$Builder;->build()Landroid/net/NetworkTemplate;

    move-result-object p0

    :cond_1
    return-object p0
.end method
