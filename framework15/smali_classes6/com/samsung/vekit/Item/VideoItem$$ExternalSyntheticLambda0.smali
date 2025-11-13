.class public final synthetic Lcom/samsung/vekit/Item/VideoItem$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic blacklist f$0:Lcom/samsung/vekit/Item/VideoItem;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/samsung/vekit/Item/VideoItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/vekit/Item/VideoItem$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/vekit/Item/VideoItem;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/vekit/Item/VideoItem$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/vekit/Item/VideoItem;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/samsung/vekit/Common/Object/AudioSegment;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/vekit/Item/VideoItem;->lambda$loadAudioSegment$0$com-samsung-vekit-Item-VideoItem(Ljava/lang/String;Lcom/samsung/vekit/Common/Object/AudioSegment;)V

    return-void
.end method
