.class public final synthetic Lcom/samsung/android/sume/core/message/MessageChannelRouter$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic blacklist f$0:Lcom/samsung/android/sume/core/message/MessageChannelRouter;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/samsung/android/sume/core/message/MessageChannelRouter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sume/core/message/MessageChannelRouter$$ExternalSyntheticLambda2;->f$0:Lcom/samsung/android/sume/core/message/MessageChannelRouter;

    return-void
.end method


# virtual methods
.method public final whitelist test-api test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sume/core/message/MessageChannelRouter$$ExternalSyntheticLambda2;->f$0:Lcom/samsung/android/sume/core/message/MessageChannelRouter;

    check-cast p1, Lcom/samsung/android/sume/core/message/Message;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sume/core/message/MessageChannelRouter;->lambda$addMessageSubscriber$1$com-samsung-android-sume-core-message-MessageChannelRouter(Lcom/samsung/android/sume/core/message/Message;)Z

    move-result p1

    return p1
.end method
