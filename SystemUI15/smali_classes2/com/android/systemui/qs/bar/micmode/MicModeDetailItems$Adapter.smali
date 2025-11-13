.class public final Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems$Adapter;
.super Landroid/widget/BaseAdapter;
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

    iput-object p1, p0, Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems$Adapter;->this$0:Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems$Adapter;->this$0:Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems;

    iget-object p0, p0, Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems;->items:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems$Adapter;->this$0:Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems;

    iget-object p0, p0, Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems;->items:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems$Item;

    return-object p0
.end method

.method public final getItemId(I)J
    .locals 0

    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems$Adapter;->this$0:Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems;

    iget-object v0, v0, Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems;->items:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems$Item;

    const/4 v0, 0x0

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems$Adapter;->this$0:Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems;

    iget-object p2, p2, Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems;->context:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0d03af

    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_0
    const p3, 0x7f0a0286

    invoke-virtual {p2, p3}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/CheckedTextView;

    iget-object v1, p1, Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems$Item;->ctv:Landroid/widget/CheckedTextView;

    if-nez v1, :cond_1

    move-object v1, p1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems$Adapter;->this$0:Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems;

    invoke-virtual {v1}, Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems$Item;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    iput-object p3, v1, Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems$Item;->ctv:Landroid/widget/CheckedTextView;

    iget-object p3, v2, Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems;->callback:Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems$Callback;

    if-eqz p3, :cond_3

    invoke-virtual {v1}, Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems$Item;->getMicMode()I

    move-result v1

    iget v2, v2, Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems;->selectedMode:I

    if-ne v1, v2, :cond_2

    const/4 v0, 0x1

    :cond_2
    check-cast p3, Lcom/android/systemui/qs/bar/MicModeDetailAdapter;

    invoke-virtual {p3, p1, v0}, Lcom/android/systemui/qs/bar/MicModeDetailAdapter;->updateDetailItem(Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems$Item;Z)V

    :cond_3
    new-instance p3, Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems$Adapter$getView$3;

    iget-object p0, p0, Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems$Adapter;->this$0:Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems;

    invoke-direct {p3, p0, p1}, Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems$Adapter$getView$3;-><init>(Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems;Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems$Item;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method
