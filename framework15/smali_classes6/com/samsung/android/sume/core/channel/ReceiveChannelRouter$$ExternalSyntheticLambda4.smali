.class public final synthetic Lcom/samsung/android/sume/core/channel/ReceiveChannelRouter$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/IntPredicate;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/List;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sume/core/channel/ReceiveChannelRouter$$ExternalSyntheticLambda4;->f$0:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final whitelist test-api test(I)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sume/core/channel/ReceiveChannelRouter$$ExternalSyntheticLambda4;->f$0:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/samsung/android/sume/core/channel/ReceiveChannelRouter;->lambda$receiveAll$0(Ljava/util/List;I)Z

    move-result p1

    return p1
.end method
