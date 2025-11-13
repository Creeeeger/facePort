.class public final Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification$1;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 3

    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    iget-boolean p3, p2, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mIsScrollByMe:Z

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    iget p3, p1, Landroidx/recyclerview/widget/RecyclerView;->mScrollState:I

    if-nez p3, :cond_0

    iput-boolean v0, p2, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mIsScrollByMe:Z

    new-instance p3, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification$1$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification$1;)V

    const-wide/16 v1, 0x12c

    invoke-virtual {p1, p3, v1, v2}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    iget-object p0, p2, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->getSubscreenNotificationInfoListSize()I

    move-result p0

    if-nez p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    const/4 p0, -0x1

    if-eqz v0, :cond_2

    move p3, p0

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p3

    check-cast p3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result p3

    :goto_0
    iput p3, p2, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mRecyclerViewFirstVisibleItemPosition:I

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p0

    check-cast p0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result p0

    :goto_1
    iput p0, p2, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mRecyclerViewLastVisibleItemPosition:I

    iget-boolean p0, p2, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mIsShownDetail:Z

    if-eqz p0, :cond_4

    invoke-static {}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->getDeviceModel()Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->showAIReply()V

    :cond_4
    return-void
.end method
