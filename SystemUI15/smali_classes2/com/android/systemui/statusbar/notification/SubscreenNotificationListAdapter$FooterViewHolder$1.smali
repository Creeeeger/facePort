.class public final Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$FooterViewHolder$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field public final synthetic this$1:Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$FooterViewHolder;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$FooterViewHolder;Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$FooterViewHolder$1;->this$1:Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$FooterViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 0

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$FooterViewHolder$1;->this$1:Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$FooterViewHolder;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$FooterViewHolder;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationRecyclerView:Lcom/android/systemui/statusbar/notification/SubscreenRecyclerView;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->getSubscreenNotificationInfoListSize()I

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    :cond_0
    return-void
.end method
