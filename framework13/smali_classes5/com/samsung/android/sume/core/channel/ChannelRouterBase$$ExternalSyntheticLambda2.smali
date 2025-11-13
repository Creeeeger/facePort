.class public final synthetic Lcom/samsung/android/sume/core/channel/ChannelRouterBase$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BinaryOperator;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist test-api apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/samsung/android/sume/core/channel/BufferChannel;

    check-cast p2, Lcom/samsung/android/sume/core/channel/BufferChannel;

    invoke-static {p1, p2}, Lcom/samsung/android/sume/core/channel/ChannelRouterBase;->lambda$new$2(Lcom/samsung/android/sume/core/channel/BufferChannel;Lcom/samsung/android/sume/core/channel/BufferChannel;)Lcom/samsung/android/sume/core/channel/BufferChannel;

    move-result-object p1

    return-object p1
.end method
