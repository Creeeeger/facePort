.class public final Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems$H;
.super Landroid/os/Handler;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems$H;->this$0:Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    iget-object p0, p0, Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems$H;->this$0:Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems;

    if-ne v0, v1, :cond_2

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems;->items:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems;->itemList:Lcom/android/systemui/qs/AutoSizingList;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :cond_0
    if-nez v0, :cond_1

    const/16 v0, 0x8

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems;->items:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object p0, p0, Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems;->adapter:Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems$Adapter;

    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_1

    :cond_2
    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems$Callback;

    iput-object p1, p0, Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems;->callback:Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems$Callback;

    :cond_3
    :goto_1
    return-void
.end method
