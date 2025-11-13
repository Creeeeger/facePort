.class public final synthetic Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup;

.field public final synthetic f$1:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup;

    iput-object p2, p0, Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup$$ExternalSyntheticLambda1;->f$1:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 5

    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup;

    iget-object p0, p0, Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup$$ExternalSyntheticLambda1;->f$1:Landroid/content/Context;

    check-cast p1, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    const-class v2, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v2

    iget-object v3, v0, Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup;->mTelephonyManagerList:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v2, Landroid/telecom/TelecomManager;

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telecom/TelecomManager;

    invoke-virtual {p0, v1}, Landroid/telecom/TelecomManager;->getSimCallManagerForSubscription(I)Landroid/telecom/PhoneAccountHandle;

    move-result-object p0

    iget-object v2, v0, Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup;->mSimCallManagerList:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2, v3, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, v0, Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup;->mSubInfoListForWfc:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    invoke-virtual {v0, v1}, Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup;->shouldShowWifiCallingForSub(I)Z

    move-result p1

    if-nez p1, :cond_0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
