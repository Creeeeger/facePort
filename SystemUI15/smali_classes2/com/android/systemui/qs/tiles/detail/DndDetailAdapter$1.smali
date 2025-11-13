.class public final Lcom/android/systemui/qs/tiles/detail/DndDetailAdapter$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/tiles/detail/DndDetailAdapter;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/tiles/detail/DndDetailAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/detail/DndDetailAdapter$1;->this$0:Lcom/android/systemui/qs/tiles/detail/DndDetailAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/detail/DndDetailAdapter$1;->this$0:Lcom/android/systemui/qs/tiles/detail/DndDetailAdapter;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/detail/DndDetailAdapter;->mDNDActivationItems:Lcom/android/systemui/qs/DNDDetailItems;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "DndDetailAdapter"

    const-string/jumbo v1, "setItems"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/detail/DndDetailAdapter;->mDndMenuOptions:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    new-instance v5, Lcom/android/systemui/qs/DNDDetailItems$Item;

    invoke-direct {v5}, Lcom/android/systemui/qs/DNDDetailItems$Item;-><init>()V

    iput-object v4, v5, Lcom/android/systemui/qs/DNDDetailItems$Item;->line1:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/detail/DndDetailAdapter;->mDNDActivationItems:Lcom/android/systemui/qs/DNDDetailItems;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lcom/android/systemui/qs/DNDDetailItems$Item;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/android/systemui/qs/DNDDetailItems$Item;

    iget-object v3, v1, Lcom/android/systemui/qs/DNDDetailItems;->mHandler:Lcom/android/systemui/qs/DNDDetailItems$H;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, v1, Lcom/android/systemui/qs/DNDDetailItems;->mHandler:Lcom/android/systemui/qs/DNDDetailItems$H;

    invoke-virtual {v1, v4, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/detail/DndDetailAdapter;->mDNDActivationItems:Lcom/android/systemui/qs/DNDDetailItems;

    new-instance v2, Lcom/android/systemui/qs/tiles/detail/DndDetailAdapter$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/qs/tiles/detail/DndDetailAdapter$2;-><init>(Lcom/android/systemui/qs/tiles/detail/DndDetailAdapter;)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/detail/DndDetailAdapter;->mItemsList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/detail/DndDetailAdapter;->mItemsList:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :goto_1
    return-void
.end method
