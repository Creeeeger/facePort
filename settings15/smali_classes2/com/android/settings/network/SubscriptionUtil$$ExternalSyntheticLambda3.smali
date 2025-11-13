.class public final synthetic Lcom/android/settings/network/SubscriptionUtil$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/IntPredicate;


# instance fields
.field public final synthetic f$0:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/network/SubscriptionUtil$$ExternalSyntheticLambda3;->f$0:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final test(I)Z
    .locals 2

    iget-object p0, p0, Lcom/android/settings/network/SubscriptionUtil$$ExternalSyntheticLambda3;->f$0:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/settings/network/SubscriptionUtil$$ExternalSyntheticLambda4;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/android/settings/network/SubscriptionUtil$$ExternalSyntheticLambda4;-><init>(II)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method
