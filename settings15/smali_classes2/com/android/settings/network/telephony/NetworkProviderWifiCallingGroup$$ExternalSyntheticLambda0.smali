.class public final synthetic Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup;

.field public final synthetic f$1:Landroid/telephony/SubscriptionInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup;Landroid/telephony/SubscriptionInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup;

    iput-object p2, p0, Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup$$ExternalSyntheticLambda0;->f$1:Landroid/telephony/SubscriptionInfo;

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 0

    iget-object p1, p0, Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup;

    iget-object p0, p0, Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup$$ExternalSyntheticLambda0;->f$1:Landroid/telephony/SubscriptionInfo;

    invoke-static {p1, p0}, Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup;->$r8$lambda$RN47xIqNaj73GlT_prCIMisg8uw(Lcom/android/settings/network/telephony/NetworkProviderWifiCallingGroup;Landroid/telephony/SubscriptionInfo;)V

    const/4 p0, 0x1

    return p0
.end method
