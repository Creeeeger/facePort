.class public final synthetic Lcom/samsung/android/sume/core/channel/SendChannelRouterImpl$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/samsung/android/sume/core/channel/SendChannelRouter;


# instance fields
.field public final synthetic blacklist f$0:Lcom/samsung/android/sume/core/channel/SendChannelRouterImpl;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/samsung/android/sume/core/channel/SendChannelRouterImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sume/core/channel/SendChannelRouterImpl$$ExternalSyntheticLambda3;->f$0:Lcom/samsung/android/sume/core/channel/SendChannelRouterImpl;

    return-void
.end method


# virtual methods
.method public final blacklist send(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sume/core/channel/SendChannelRouterImpl$$ExternalSyntheticLambda3;->f$0:Lcom/samsung/android/sume/core/channel/SendChannelRouterImpl;

    invoke-static {v0, p1}, Lcom/samsung/android/sume/core/channel/SendChannelRouterImpl;->$r8$lambda$C3ySIHY2LTxMFBU2GTQMsouOZtw(Lcom/samsung/android/sume/core/channel/SendChannelRouterImpl;Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Z

    move-result p1

    return p1
.end method
