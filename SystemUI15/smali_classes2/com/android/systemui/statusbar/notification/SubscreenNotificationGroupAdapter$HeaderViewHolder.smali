.class public final Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter$HeaderViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mAppName:Landroid/widget/TextView;

.field public mBackButton:Landroid/widget/ImageView;

.field public mIcon:Landroid/widget/ImageView;

.field public mSecureIcon:Landroid/widget/ImageView;

.field public mTwoPhoneIcon:Landroid/widget/ImageView;

.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;Landroid/view/View;)V
    .locals 2

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter$HeaderViewHolder;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p2, p1, p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->initGroupAdapterHeaderViewHolder(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter$HeaderViewHolder;)V

    return-void
.end method
