.class public final synthetic Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget p0, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Landroid/telephony/SubscriptionInfo;

    sget-object p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->ARG_enable:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->isEmbedded()Z

    move-result p0

    return p0

    :pswitch_0
    check-cast p1, Landroid/telephony/SubscriptionInfo;

    sget-object p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->ARG_enable:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->isEmbedded()Z

    move-result p0

    return p0

    :pswitch_1
    check-cast p1, Landroid/telephony/UiccCardInfo;

    sget-object p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->ARG_enable:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/telephony/UiccCardInfo;->isMultipleEnabledProfilesSupported()Z

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
