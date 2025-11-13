.class public final synthetic Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity$$ExternalSyntheticLambda3;->f$0:Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity$$ExternalSyntheticLambda3;->f$0:Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;

    check-cast p1, Landroid/telephony/SubscriptionInfo;

    sget-object v0, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->ARG_enable:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, p1}, Lcom/android/settings/network/SubscriptionUtil;->getUniqueSubscriptionDisplayName(Landroid/content/Context;Landroid/telephony/SubscriptionInfo;)Ljava/lang/CharSequence;

    move-result-object p1

    const v0, 0x7f142bf1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
