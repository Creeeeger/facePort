.class final Lcom/samsung/systemui/splugins/volume/VolumeUnsubscriber$dispose$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/samsung/systemui/splugins/volume/VolumeUnsubscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/systemui/splugins/volume/VolumeUnsubscriber<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/systemui/splugins/volume/VolumeUnsubscriber;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/systemui/splugins/volume/VolumeUnsubscriber<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/systemui/splugins/volume/VolumeUnsubscriber$dispose$1;->this$0:Lcom/samsung/systemui/splugins/volume/VolumeUnsubscriber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/systemui/splugins/volume/VolumeUnsubscriber$dispose$1;->this$0:Lcom/samsung/systemui/splugins/volume/VolumeUnsubscriber;

    invoke-static {v0}, Lcom/samsung/systemui/splugins/volume/VolumeUnsubscriber;->access$getObserver$p(Lcom/samsung/systemui/splugins/volume/VolumeUnsubscriber;)Lcom/samsung/systemui/splugins/volume/VolumeObserver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "dispose() : postAtFrontOfQueue, remove observer="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VolumeUnsubscriber"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/systemui/splugins/volume/VolumeUnsubscriber$dispose$1;->this$0:Lcom/samsung/systemui/splugins/volume/VolumeUnsubscriber;

    invoke-static {v0}, Lcom/samsung/systemui/splugins/volume/VolumeUnsubscriber;->access$getObservers$p(Lcom/samsung/systemui/splugins/volume/VolumeUnsubscriber;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/systemui/splugins/volume/VolumeUnsubscriber$dispose$1;->this$0:Lcom/samsung/systemui/splugins/volume/VolumeUnsubscriber;

    invoke-static {p0}, Lcom/samsung/systemui/splugins/volume/VolumeUnsubscriber;->access$getObserver$p(Lcom/samsung/systemui/splugins/volume/VolumeUnsubscriber;)Lcom/samsung/systemui/splugins/volume/VolumeObserver;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
