.class public final synthetic Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;

.field public final synthetic f$1:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder$$ExternalSyntheticLambda0;->f$1:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder$$ExternalSyntheticLambda0;->f$1:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->getDeviceModel()Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    move-result-object p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->launchApp(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    return-void
.end method
