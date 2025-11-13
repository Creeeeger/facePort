.class public final Lcom/android/systemui/qs/QSDetailItems$H;
.super Landroid/os/Handler;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/QSDetailItems;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSDetailItems;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/QSDetailItems$H;->this$0:Lcom/android/systemui/qs/QSDetailItems;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 5

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    iget-object p0, p0, Lcom/android/systemui/qs/QSDetailItems$H;->this$0:Lcom/android/systemui/qs/QSDetailItems;

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [Lcom/android/systemui/qs/QSDetailItems$Item;

    if-eqz p1, :cond_0

    sget-boolean v0, Lcom/android/systemui/qs/QSDetailItems;->DEBUG:Z

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    array-length v0, p1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/qs/QSDetailItems;->mEmpty:Landroid/view/View;

    const/16 v3, 0x8

    if-nez v0, :cond_1

    move v4, v1

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/systemui/qs/QSDetailItems;->mItemList:Lcom/android/systemui/qs/AutoSizingList;

    if-nez v0, :cond_2

    move v1, v3

    :cond_2
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iput-object p1, p0, Lcom/android/systemui/qs/QSDetailItems;->mItems:[Lcom/android/systemui/qs/QSDetailItems$Item;

    iget-object p0, p0, Lcom/android/systemui/qs/QSDetailItems;->mAdapter:Lcom/android/systemui/qs/QSDetailItems$Adapter;

    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_5

    :cond_3
    const/4 v3, 0x2

    if-ne v0, v3, :cond_4

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/systemui/qs/QSDetailItems$Callback;

    iput-object p1, p0, Lcom/android/systemui/qs/QSDetailItems;->mCallback:Lcom/android/systemui/qs/QSDetailItems$Callback;

    goto :goto_5

    :cond_4
    const/4 v3, 0x3

    if-ne v0, v3, :cond_8

    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_5

    move p1, v2

    goto :goto_2

    :cond_5
    move p1, v1

    :goto_2
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSDetailItems;->mItemsVisible:Z

    if-ne v0, p1, :cond_6

    goto :goto_5

    :cond_6
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSDetailItems;->mItemsVisible:Z

    move p1, v1

    :goto_3
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetailItems;->mItemList:Lcom/android/systemui/qs/AutoSizingList;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_8

    iget-object v0, p0, Lcom/android/systemui/qs/QSDetailItems;->mItemList:Lcom/android/systemui/qs/AutoSizingList;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-boolean v3, p0, Lcom/android/systemui/qs/QSDetailItems;->mItemsVisible:Z

    if-eqz v3, :cond_7

    move v3, v1

    goto :goto_4

    :cond_7
    const/4 v3, 0x4

    :goto_4
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    add-int/2addr p1, v2

    goto :goto_3

    :cond_8
    :goto_5
    return-void
.end method
