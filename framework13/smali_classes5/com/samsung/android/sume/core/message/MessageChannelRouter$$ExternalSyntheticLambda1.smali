.class public final synthetic Lcom/samsung/android/sume/core/message/MessageChannelRouter$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic blacklist f$0:Lcom/samsung/android/sume/core/message/MessageChannelRouter;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/samsung/android/sume/core/message/MessageChannelRouter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sume/core/message/MessageChannelRouter$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/sume/core/message/MessageChannelRouter;

    return-void
.end method


# virtual methods
.method public final whitelist test-api apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sume/core/message/MessageChannelRouter$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/sume/core/message/MessageChannelRouter;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/sume/core/message/MessageChannelRouter;->queryMessageChannel(I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
