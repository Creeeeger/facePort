.class public final synthetic Lcom/android/settings/network/MobileNetworkRepository$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/android/settings/network/MobileNetworkRepository$$ExternalSyntheticLambda5;->$r8$classId:I

    iput-object p2, p0, Lcom/android/settings/network/MobileNetworkRepository$$ExternalSyntheticLambda5;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lcom/android/settings/network/MobileNetworkRepository$$ExternalSyntheticLambda5;->$r8$classId:I

    iget-object p0, p0, Lcom/android/settings/network/MobileNetworkRepository$$ExternalSyntheticLambda5;->f$0:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/android/settings/network/MobileNetworkRepository$PhoneCallStateTelephonyCallback;

    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkRepository$PhoneCallStateTelephonyCallback;->this$0:Lcom/android/settings/network/MobileNetworkRepository;

    iget-object v1, v0, Lcom/android/settings/network/MobileNetworkRepository;->mContext:Landroid/content/Context;

    iget p0, p0, Lcom/android/settings/network/MobileNetworkRepository$PhoneCallStateTelephonyCallback;->mSubId:I

    invoke-virtual {v0, v1, p0}, Lcom/android/settings/network/MobileNetworkRepository;->getTelephonyManagerBySubId(Landroid/content/Context;I)Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v0, v1, p0, v2}, Lcom/android/settings/network/MobileNetworkRepository;->insertMobileNetworkInfo(Landroid/content/Context;ILandroid/telephony/TelephonyManager;)V

    return-void

    :pswitch_0
    check-cast p0, Lcom/android/settings/network/MobileNetworkRepository;

    invoke-virtual {p0}, Lcom/android/settings/network/MobileNetworkRepository;->onSubscriptionsChanged()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
