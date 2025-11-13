.class public final synthetic Lcom/android/settings/network/helper/SelectableSubscriptions$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Predicate;


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    check-cast p1, Lcom/android/settings/network/helper/SubscriptionAnnotation;

    invoke-virtual {p1}, Lcom/android/settings/network/helper/SubscriptionAnnotation;->isExisted()Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/android/settings/network/helper/SubscriptionAnnotation;->getType()I

    move-result p0

    const/4 v1, 0x2

    if-ne p0, v1, :cond_1

    invoke-virtual {p1}, Lcom/android/settings/network/helper/SubscriptionAnnotation;->isDisplayAllowed()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
