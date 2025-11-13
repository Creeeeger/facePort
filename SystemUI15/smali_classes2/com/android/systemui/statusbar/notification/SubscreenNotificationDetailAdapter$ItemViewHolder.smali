.class public final Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;
.super Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mBodyLayoutString:Ljava/lang/String;

.field public mPrevSender:Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;-><init>(Landroid/view/View;)V

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;->mPrevSender:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;->mBodyLayoutString:Ljava/lang/String;

    iget-object p2, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v0, p1, p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->initDetailAdapterItemViewHolder(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;)V

    return-void
.end method


# virtual methods
.method public final inflateReplyWord()V
    .locals 13

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mReplylayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mReplylayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mReplyWordList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    iget-object v4, v0, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->getDetailAdapterReplyWordResource()I

    move-result v4

    iget-object v5, v0, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mContentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v4, v6, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f0a0c6c

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    const v6, 0x7f0a0c6b

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    const v6, 0x7f0a0c6a

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iget-object v7, v0, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    iget-object v7, v7, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mReplyWordList:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    if-nez v3, :cond_1

    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v9, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->REGULAR:Landroid/graphics/Typeface;

    iget-object v7, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

    const/4 v10, 0x0

    const v11, 0x3e4ccccd    # 0.2f

    const/high16 v12, 0x3f800000    # 1.0f

    move-object v8, v4

    invoke-virtual/range {v7 .. v12}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->setReplyWordTextStyle(Landroid/view/View;Landroid/graphics/Typeface;ZFF)V

    new-instance v5, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder$1;

    invoke-direct {v5, p0, v6}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder$1;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;Landroid/widget/TextView;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mReplylayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
