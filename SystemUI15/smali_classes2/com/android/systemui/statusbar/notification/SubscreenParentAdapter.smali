.class public abstract Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mContext:Landroid/content/Context;

.field public mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

.field public mNotificationAnimatorManager:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonAnimatorManager;

.field public mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

.field public mNotificationRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field public mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method
