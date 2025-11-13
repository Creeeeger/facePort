.class public final Lcom/android/settings/notification/history/NotificationHistoryRecyclerView$DismissTouchHelper;
.super Landroidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/android/settings/notification/history/NotificationHistoryRecyclerView;


# direct methods
.method public constructor <init>(Lcom/android/settings/notification/history/NotificationHistoryRecyclerView;)V
    .locals 1

    iput-object p1, p0, Lcom/android/settings/notification/history/NotificationHistoryRecyclerView$DismissTouchHelper;->this$0:Lcom/android/settings/notification/history/NotificationHistoryRecyclerView;

    const/4 p1, 0x0

    const/16 v0, 0x30

    invoke-direct {p0, p1, v0}, Landroidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;-><init>(II)V

    return-void
.end method


# virtual methods
.method public final onChildDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;FFIZ)V
    .locals 1

    invoke-super/range {p0 .. p7}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->onChildDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;FFIZ)V

    iget-object p0, p0, Lcom/android/settings/notification/history/NotificationHistoryRecyclerView$DismissTouchHelper;->this$0:Lcom/android/settings/notification/history/NotificationHistoryRecyclerView;

    if-eqz p7, :cond_5

    iget-object p1, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p2

    int-to-float p2, p2

    const/high16 p3, 0x3f000000    # 0.5f

    mul-float/2addr p3, p2

    neg-float p2, p3

    cmpg-float p5, p4, p2

    const/4 p6, 0x1

    const/4 p7, 0x0

    if-ltz p5, :cond_1

    cmpl-float p5, p4, p3

    if-lez p5, :cond_0

    goto :goto_0

    :cond_0
    move p5, p7

    goto :goto_1

    :cond_1
    :goto_0
    move p5, p6

    :goto_1
    iget v0, p0, Lcom/android/settings/notification/history/NotificationHistoryRecyclerView;->dXLast:F

    cmpg-float p2, v0, p2

    if-ltz p2, :cond_3

    cmpl-float p2, v0, p3

    if-lez p2, :cond_2

    goto :goto_2

    :cond_2
    move p6, p7

    :cond_3
    :goto_2
    if-eq p5, p6, :cond_4

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/view/View;->performHapticFeedback(I)Z

    :cond_4
    iput p4, p0, Lcom/android/settings/notification/history/NotificationHistoryRecyclerView;->dXLast:F

    goto :goto_3

    :cond_5
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/settings/notification/history/NotificationHistoryRecyclerView;->dXLast:F

    :goto_3
    return-void
.end method

.method public final onMove(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final onSwiped(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/notification/history/NotificationHistoryRecyclerView$DismissTouchHelper;->this$0:Lcom/android/settings/notification/history/NotificationHistoryRecyclerView;

    iget-object p0, p0, Lcom/android/settings/notification/history/NotificationHistoryRecyclerView;->listener:Lcom/android/settings/notification/history/NotificationHistoryRecyclerView$OnItemSwipeDeleteListener;

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    move-result p1

    check-cast p0, Lcom/android/settings/notification/history/NotificationHistoryAdapter;

    invoke-virtual {p0, p1}, Lcom/android/settings/notification/history/NotificationHistoryAdapter;->onItemSwipeDeleted(I)V

    :cond_0
    return-void
.end method
