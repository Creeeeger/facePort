.class public final Lcom/android/systemui/qs/DNDDetailItems$Adapter;
.super Landroid/widget/BaseAdapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/DNDDetailItems;


# direct methods
.method private constructor <init>(Lcom/android/systemui/qs/DNDDetailItems;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/DNDDetailItems$Adapter;->this$0:Lcom/android/systemui/qs/DNDDetailItems;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/qs/DNDDetailItems;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/DNDDetailItems$Adapter;-><init>(Lcom/android/systemui/qs/DNDDetailItems;)V

    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/DNDDetailItems$Adapter;->this$0:Lcom/android/systemui/qs/DNDDetailItems;

    iget-object p0, p0, Lcom/android/systemui/qs/DNDDetailItems;->mItems:[Lcom/android/systemui/qs/DNDDetailItems$Item;

    if-eqz p0, :cond_0

    array-length p0, p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/DNDDetailItems$Adapter;->this$0:Lcom/android/systemui/qs/DNDDetailItems;

    iget-object p0, p0, Lcom/android/systemui/qs/DNDDetailItems;->mItems:[Lcom/android/systemui/qs/DNDDetailItems$Item;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public final getItemId(I)J
    .locals 0

    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/qs/DNDDetailItems$Adapter;->this$0:Lcom/android/systemui/qs/DNDDetailItems;

    iget-object v1, v0, Lcom/android/systemui/qs/DNDDetailItems;->mItems:[Lcom/android/systemui/qs/DNDDetailItems$Item;

    aget-object v1, v1, p1

    const/4 v2, 0x0

    if-nez p2, :cond_0

    iget-object p2, v0, Lcom/android/systemui/qs/DNDDetailItems;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d03a9

    invoke-virtual {p2, v0, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_0
    iget-object p3, p0, Lcom/android/systemui/qs/DNDDetailItems$Adapter;->this$0:Lcom/android/systemui/qs/DNDDetailItems;

    iget-object p3, p3, Lcom/android/systemui/qs/DNDDetailItems;->mItemVisible:[I

    aget p1, p3, p1

    const/4 p3, 0x1

    if-ne p1, p3, :cond_1

    move p1, v2

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    const p1, 0x7f0a0286

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckedTextView;

    const v0, 0x7f0a0285

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v3, v1, Lcom/android/systemui/qs/DNDDetailItems$Item;->ctv:Landroid/widget/CheckedTextView;

    if-nez v3, :cond_4

    iget-object v3, v1, Lcom/android/systemui/qs/DNDDetailItems$Item;->stv:Landroid/widget/TextView;

    if-nez v3, :cond_2

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iput-object v0, v1, Lcom/android/systemui/qs/DNDDetailItems$Item;->stv:Landroid/widget/TextView;

    :cond_2
    iget-object v0, v1, Lcom/android/systemui/qs/DNDDetailItems$Item;->line1:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    iput-object p1, v1, Lcom/android/systemui/qs/DNDDetailItems$Item;->ctv:Landroid/widget/CheckedTextView;

    iget-object v0, p0, Lcom/android/systemui/qs/DNDDetailItems$Adapter;->this$0:Lcom/android/systemui/qs/DNDDetailItems;

    iget-object v3, v0, Lcom/android/systemui/qs/DNDDetailItems;->mCallback:Lcom/android/systemui/qs/DNDDetailItems$Callback;

    if-eqz v3, :cond_4

    iget-object v3, v1, Lcom/android/systemui/qs/DNDDetailItems$Item;->line1:Ljava/lang/String;

    iget-object v0, v0, Lcom/android/systemui/qs/DNDDetailItems;->mSelectedMenu:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/qs/DNDDetailItems$Adapter;->this$0:Lcom/android/systemui/qs/DNDDetailItems;

    iget-object v0, v0, Lcom/android/systemui/qs/DNDDetailItems;->mCallback:Lcom/android/systemui/qs/DNDDetailItems$Callback;

    check-cast v0, Lcom/android/systemui/qs/tiles/detail/DndDetailAdapter;

    invoke-virtual {v0, v1, p3}, Lcom/android/systemui/qs/tiles/detail/DndDetailAdapter;->updateDetailItem(Lcom/android/systemui/qs/DNDDetailItems$Item;Z)V

    goto :goto_1

    :cond_3
    iget-object p3, p0, Lcom/android/systemui/qs/DNDDetailItems$Adapter;->this$0:Lcom/android/systemui/qs/DNDDetailItems;

    iget-object p3, p3, Lcom/android/systemui/qs/DNDDetailItems;->mCallback:Lcom/android/systemui/qs/DNDDetailItems$Callback;

    check-cast p3, Lcom/android/systemui/qs/tiles/detail/DndDetailAdapter;

    invoke-virtual {p3, v1, v2}, Lcom/android/systemui/qs/tiles/detail/DndDetailAdapter;->updateDetailItem(Lcom/android/systemui/qs/DNDDetailItems$Item;Z)V

    :cond_4
    :goto_1
    new-instance p3, Lcom/android/systemui/qs/DNDDetailItems$Adapter$1;

    invoke-direct {p3, p0, v1}, Lcom/android/systemui/qs/DNDDetailItems$Adapter$1;-><init>(Lcom/android/systemui/qs/DNDDetailItems$Adapter;Lcom/android/systemui/qs/DNDDetailItems$Item;)V

    invoke-virtual {p1, p3}, Landroid/widget/CheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method
