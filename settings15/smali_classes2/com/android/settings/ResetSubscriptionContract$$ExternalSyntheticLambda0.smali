.class public final synthetic Lcom/android/settings/ResetSubscriptionContract$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/IntPredicate;


# virtual methods
.method public final test(I)Z
    .locals 0

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isUsableSubscriptionId(I)Z

    move-result p0

    return p0
.end method
