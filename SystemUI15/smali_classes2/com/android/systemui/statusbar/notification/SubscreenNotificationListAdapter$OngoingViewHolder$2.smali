.class public final Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$OngoingViewHolder$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic this$1:Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$OngoingViewHolder;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$OngoingViewHolder;Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$OngoingViewHolder$2;->this$1:Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$OngoingViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$OngoingViewHolder$2;->this$1:Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$OngoingViewHolder;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$OngoingViewHolder;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070c2d

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-double p1, p1

    const-wide p3, 0x3fe999999999999aL    # 0.8

    mul-double/2addr p1, p3

    iget-object p3, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$OngoingViewHolder$2;->this$1:Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$OngoingViewHolder;

    iget-object p3, p3, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->mDumyLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p3

    iget-object p4, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$OngoingViewHolder$2;->this$1:Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$OngoingViewHolder;

    iget-object p4, p4, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->mMainLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p4}, Landroid/widget/LinearLayout;->getHeight()I

    move-result p4

    sub-int/2addr p3, p4

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    double-to-int p1, p1

    if-le p3, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$OngoingViewHolder$2;->this$1:Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$OngoingViewHolder;

    iget-object p2, p2, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    iget-object p2, p2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-boolean p2, p2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    const-string p1, "SubscreenNotificationListAdapter"

    const-string p2, "OngoingViewHolder - mMainLayout - onLayoutChange "

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$OngoingViewHolder$2;->this$1:Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$OngoingViewHolder;

    iget-object p2, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$OngoingViewHolder;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;

    iget-object p2, p2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;->mGroupViewHolderArray:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$OngoingViewHolder$2;->this$1:Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$OngoingViewHolder;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$OngoingViewHolder;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;->updateGroupViewHolderLayout()V

    :cond_1
    return-void
.end method
