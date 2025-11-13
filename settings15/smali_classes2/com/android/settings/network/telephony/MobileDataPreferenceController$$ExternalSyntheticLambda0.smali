.class public final synthetic Lcom/android/settings/network/telephony/MobileDataPreferenceController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/settings/network/telephony/MobileDataPreferenceController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/network/telephony/MobileDataPreferenceController;I)V
    .locals 0

    iput p2, p0, Lcom/android/settings/network/telephony/MobileDataPreferenceController$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/settings/network/telephony/MobileDataPreferenceController$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/network/telephony/MobileDataPreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/android/settings/network/telephony/MobileDataPreferenceController$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/android/settings/network/telephony/MobileDataPreferenceController$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/network/telephony/MobileDataPreferenceController;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoEntity;

    invoke-static {p0, p1}, Lcom/android/settings/network/telephony/MobileDataPreferenceController;->$r8$lambda$A1EIosJwB0v7d0ZVQnHtPikKISA(Lcom/android/settings/network/telephony/MobileDataPreferenceController;Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoEntity;)V

    return-void

    :pswitch_0
    check-cast p1, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;

    invoke-static {p0, p1}, Lcom/android/settings/network/telephony/MobileDataPreferenceController;->$r8$lambda$vMq85cghi46gEwoOKGPTUKRaK4k(Lcom/android/settings/network/telephony/MobileDataPreferenceController;Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
