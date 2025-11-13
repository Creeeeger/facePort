.class public final Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$NotificationListItemViewHolder;
.super Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$NotificationListItemViewHolder;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;

    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->mListAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;

    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->setListAdpaterFirstChildTopMargin(Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;)V

    new-instance v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$NotificationListItemViewHolder$1;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$NotificationListItemViewHolder$1;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$NotificationListItemViewHolder;Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
