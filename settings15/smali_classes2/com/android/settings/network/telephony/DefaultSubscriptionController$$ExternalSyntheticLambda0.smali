.class public final synthetic Lcom/android/settings/network/telephony/DefaultSubscriptionController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/preference/Preference$SummaryProvider;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/android/settings/network/telephony/DefaultSubscriptionController$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p2, p0, Lcom/android/settings/network/telephony/DefaultSubscriptionController$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final provideSummary(Landroidx/preference/Preference;)Ljava/lang/CharSequence;
    .locals 1

    iget v0, p0, Lcom/android/settings/network/telephony/DefaultSubscriptionController$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/android/settings/network/telephony/DefaultSubscriptionController$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/android/settings/network/telephony/DefaultSubscriptionController;

    invoke-static {p0, p1}, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->$r8$lambda$7X7iQkpYGUcsFV9FwWLCxELIiJA(Lcom/android/settings/network/telephony/DefaultSubscriptionController;Landroidx/preference/Preference;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Ljava/util/List;

    invoke-static {p0, p1}, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->$r8$lambda$FRGgLZxW0lW3IfLwWklHdW-yLrM(Ljava/util/List;Landroidx/preference/Preference;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
