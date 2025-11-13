.class public final synthetic Lcom/android/settings/network/SubscriptionUtil$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/android/settings/network/SubscriptionUtil$$ExternalSyntheticLambda2;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget p0, p0, Lcom/android/settings/network/SubscriptionUtil$$ExternalSyntheticLambda2;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Lcom/android/settings/network/helper/SubscriptionAnnotation;

    invoke-virtual {p1}, Lcom/android/settings/network/helper/SubscriptionAnnotation;->isActive()Z

    move-result p0

    return p0

    :pswitch_0
    check-cast p1, Lcom/android/settings/network/helper/SubscriptionAnnotation;

    invoke-virtual {p1}, Lcom/android/settings/network/helper/SubscriptionAnnotation;->isDisplayAllowed()Z

    move-result p0

    return p0

    :pswitch_1
    check-cast p1, Landroid/telephony/SubscriptionInfo;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :pswitch_2
    check-cast p1, Landroid/telephony/SubscriptionInfo;

    if-eqz p1, :cond_1

    invoke-static {p1}, Lcom/android/settings/network/SubscriptionUtil;->isEmbeddedSubscriptionVisible(Landroid/telephony/SubscriptionInfo;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
