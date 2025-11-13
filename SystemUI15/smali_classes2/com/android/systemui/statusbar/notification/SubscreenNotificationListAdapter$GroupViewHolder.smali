.class public final Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$GroupViewHolder;
.super Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mAppName:Landroid/widget/TextView;

.field public final mContentLayout:Landroid/widget/LinearLayout;

.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$GroupViewHolder;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;

    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->mListAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;

    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    const v0, 0x7f0a04a7

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$GroupViewHolder;->mAppName:Landroid/widget/TextView;

    const v0, 0x7f0a04a8

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$GroupViewHolder;->mContentLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f0a07ef

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->mNotiGroupCount:Landroid/widget/TextView;

    const v0, 0x7f0a0c6f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->mMainLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0c6e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->mDumyLayout:Landroid/widget/FrameLayout;

    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->setListAdpaterFirstChildTopMargin(Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;)V

    new-instance v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$GroupViewHolder$1;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$GroupViewHolder$1;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$GroupViewHolder;Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->mMainLayout:Landroid/widget/LinearLayout;

    if-eqz p2, :cond_0

    new-instance v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$GroupViewHolder$2;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$GroupViewHolder$2;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$GroupViewHolder;Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;)V

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_0
    return-void
.end method
