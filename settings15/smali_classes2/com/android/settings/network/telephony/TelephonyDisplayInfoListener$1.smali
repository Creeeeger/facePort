.class public final Lcom/android/settings/network/telephony/TelephonyDisplayInfoListener$1;
.super Landroid/telephony/PhoneStateListener;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/android/settings/network/telephony/TelephonyDisplayInfoListener;

.field public final synthetic val$idToAdd:I


# direct methods
.method public constructor <init>(Lcom/android/settings/network/telephony/TelephonyDisplayInfoListener;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/network/telephony/TelephonyDisplayInfoListener$1;->this$0:Lcom/android/settings/network/telephony/TelephonyDisplayInfoListener;

    iput p2, p0, Lcom/android/settings/network/telephony/TelephonyDisplayInfoListener$1;->val$idToAdd:I

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDisplayInfoChanged(Landroid/telephony/TelephonyDisplayInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/network/telephony/TelephonyDisplayInfoListener$1;->this$0:Lcom/android/settings/network/telephony/TelephonyDisplayInfoListener;

    iget-object v0, v0, Lcom/android/settings/network/telephony/TelephonyDisplayInfoListener;->mDisplayInfos:Ljava/util/Map;

    iget v1, p0, Lcom/android/settings/network/telephony/TelephonyDisplayInfoListener$1;->val$idToAdd:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/settings/network/telephony/TelephonyDisplayInfoListener$1;->this$0:Lcom/android/settings/network/telephony/TelephonyDisplayInfoListener;

    iget-object v0, v0, Lcom/android/settings/network/telephony/TelephonyDisplayInfoListener;->mCallback:Lcom/android/settings/network/SubscriptionsPreferenceController;

    iget p0, p0, Lcom/android/settings/network/telephony/TelephonyDisplayInfoListener$1;->val$idToAdd:I

    iget-object v1, v0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mSubsPrefCtrlInjector:Lcom/android/settings/network/SubscriptionsPreferenceController$SubsPrefCtrlInjector;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v1

    if-eq p0, v1, :cond_0

    goto :goto_0

    :cond_0
    iput-object p1, v0, Lcom/android/settings/network/SubscriptionsPreferenceController;->mTelephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

    invoke-virtual {v0}, Lcom/android/settings/network/SubscriptionsPreferenceController;->update$2$1()V

    :goto_0
    return-void
.end method
