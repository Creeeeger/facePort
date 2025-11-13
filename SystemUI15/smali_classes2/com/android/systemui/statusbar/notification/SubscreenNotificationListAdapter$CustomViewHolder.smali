.class public final Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$CustomViewHolder;
.super Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mAppName:Landroid/widget/TextView;

.field public final mContentView:Landroid/widget/FrameLayout;

.field public final mIconLayout:Landroid/view/ViewGroup;

.field public final mNormalView:Landroid/view/View;

.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$CustomViewHolder;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;

    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->mListAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;

    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    const v0, 0x7f0a0c8a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$CustomViewHolder;->mAppName:Landroid/widget/TextView;

    const v0, 0x7f0a032c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$CustomViewHolder;->mContentView:Landroid/widget/FrameLayout;

    const v0, 0x7f0a032b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$CustomViewHolder;->mNormalView:Landroid/view/View;

    const v0, 0x7f0a0c75

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$CustomViewHolder;->mIconLayout:Landroid/view/ViewGroup;

    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->setListAdpaterFirstChildTopMargin(Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;)V

    new-instance v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$CustomViewHolder$1;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$CustomViewHolder$1;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$CustomViewHolder;Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public final setNormalViewLayout()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$CustomViewHolder;->mContentView:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$CustomViewHolder;->mNormalView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->getTitle()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->getTitle()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mAppName:Ljava/lang/String;

    :goto_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$CustomViewHolder;->mAppName:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$CustomViewHolder;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;

    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->setClock(Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;Landroid/view/View;)V

    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->mSecureIcon:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->updateKnoxIcon(Landroid/widget/ImageView;Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;)V

    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->mTwoPhoneIcon:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->updateTwoPhoneIcon(Landroid/widget/ImageView;Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;)V

    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mContext:Landroid/content/Context;

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v0, p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->setListItemTextLayout(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method
