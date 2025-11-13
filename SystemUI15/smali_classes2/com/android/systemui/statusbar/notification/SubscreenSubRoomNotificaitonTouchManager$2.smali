.class public final Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager$2;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onInterceptTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v2, 0x1

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager$2;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;

    if-eqz v0, :cond_2

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;->mLayoutDirection:I

    if-ne v0, v2, :cond_1

    iget v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;->mItemTouchDownX:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    cmpg-float v0, v0, v3

    if-gez v0, :cond_3

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    invoke-interface {p0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    return v1

    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;->mItemTouchDownX:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    cmpl-float v0, v0, v3

    if-lez v0, :cond_3

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    invoke-interface {p0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    return v1

    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;->mItemTouchDownX:F

    :cond_3
    :goto_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-virtual {p1, v0, p2}, Landroidx/recyclerview/widget/RecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_8

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p2

    instance-of v0, p2, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_4
    instance-of v0, p2, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;

    if-eqz v0, :cond_7

    check-cast p2, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;

    iget-object v0, p2, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    iget-object v3, p2, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    iget-object v3, v3, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->canViewBeDismissed$1()Z

    move-result v0

    if-eqz v0, :cond_5

    const v0, 0x3e99999a    # 0.3f

    goto :goto_1

    :cond_5
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_1
    iput v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;->mSwipeThreshold:F

    iget-object v0, p2, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    iget-object p2, p2, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    iget-object p2, p2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->canViewBeDismissed$1()Z

    move-result p2

    if-eqz p2, :cond_6

    const/high16 p2, 0x40a00000    # 5.0f

    goto :goto_2

    :cond_6
    const/high16 p2, 0x447a0000    # 1000.0f

    :goto_2
    iput p2, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;->mSwipeEscapeVelocity:F

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;->mItemViewSwipeEnabled:Z

    goto :goto_3

    :cond_7
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;->mItemViewSwipeEnabled:Z

    :cond_8
    :goto_3
    return v1
.end method

.method public final onRequestDisallowInterceptTouchEvent(Z)V
    .locals 0

    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method
