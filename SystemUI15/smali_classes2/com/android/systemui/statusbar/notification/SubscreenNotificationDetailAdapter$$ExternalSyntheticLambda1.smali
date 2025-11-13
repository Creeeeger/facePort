.class public final synthetic Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

.field public final synthetic f$1:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;

.field public final synthetic f$2:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$$ExternalSyntheticLambda1;->f$1:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;

    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$$ExternalSyntheticLambda1;->f$2:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v6, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

    iget-object v7, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$$ExternalSyntheticLambda1;->f$1:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$$ExternalSyntheticLambda1;->f$2:Landroid/view/View;

    iget-object v2, v6, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mReplyButtonView:Landroid/view/View;

    if-eqz v2, :cond_0

    const-string v0, "SubscreenNotificationDetailAdapter"

    const-string v1, "CoverReplyButtonView is already existed."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_0
    iget-object v2, v6, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v6, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->getDispalyHeight()I

    move-result v2

    iget-object v3, v6, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->getMainHeaderViewHeight()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, v6, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    iget-object v3, v3, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationRecyclerView:Lcom/android/systemui/statusbar/notification/SubscreenRecyclerView;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result v3

    iget-object v4, v7, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mReplyContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getY()F

    move-result v4

    iget-object v5, v7, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mSmartReplyLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getY()F

    move-result v5

    add-float/2addr v5, v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getY()F

    move-result v4

    add-float/2addr v4, v5

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    sub-float/2addr v4, v2

    iget-object v2, v6, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationRecyclerView:Lcom/android/systemui/statusbar/notification/SubscreenRecyclerView;

    float-to-int v3, v4

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(IIZ)V

    const v2, 0x7f0a0c6a

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    move v2, v4

    :goto_0
    iget-object v3, v7, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mSmartReplyLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_2

    iget-object v3, v7, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mSmartReplyLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/high16 v8, 0x3f800000    # 1.0f

    const v9, 0x3e4ccccd    # 0.2f

    if-eqz v5, :cond_1

    invoke-virtual {v6, v3, v9, v8}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->setSmartReplyWordTextStyle(Landroid/view/View;FF)V

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "AI generated"

    invoke-virtual {v6, v7, v3, v1, v5}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->showReplyButtons(Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;Ljava/lang/String;Landroid/view/View;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v6, v3, v8, v9}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->setSmartReplyWordTextStyle(Landroid/view/View;FF)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    move v8, v4

    :goto_2
    iget-object v0, v7, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mReplylayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-ge v8, v0, :cond_3

    iget-object v0, v7, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mReplylayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->REGULAR:Landroid/graphics/Typeface;

    const/high16 v4, 0x3f800000    # 1.0f

    const v5, 0x3e4ccccd    # 0.2f

    const/4 v3, 0x0

    move-object v0, v6

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->setReplyWordTextStyle(Landroid/view/View;Landroid/graphics/Typeface;ZFF)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_3
    iget-object v9, v6, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mNotificationAnimatorManager:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonAnimatorManager;

    iget-object v10, v7, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mDetailButtonLayout:Landroid/widget/LinearLayout;

    const/4 v11, 0x0

    const-wide/16 v12, 0xfa

    const/high16 v14, 0x3f800000    # 1.0f

    const v15, 0x3e4ccccd    # 0.2f

    invoke-virtual/range {v9 .. v15}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonAnimatorManager;->alphaViewAnimated(Landroid/view/View;Ljava/lang/Runnable;JFF)Landroid/animation/Animator;

    iget-object v0, v6, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mNotificationAnimatorManager:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonAnimatorManager;

    iget-object v1, v7, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mEditButton:Landroid/widget/TextView;

    const/16 v18, 0x0

    const-wide/16 v19, 0xfa

    const/high16 v21, 0x3f800000    # 1.0f

    const v22, 0x3e4ccccd    # 0.2f

    move-object/from16 v16, v0

    move-object/from16 v17, v1

    invoke-virtual/range {v16 .. v22}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonAnimatorManager;->alphaViewAnimated(Landroid/view/View;Ljava/lang/Runnable;JFF)Landroid/animation/Animator;

    const-string v0, "QPN102"

    const-string v1, "QPNE0207"

    invoke-static {v0, v1}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    return-void
.end method
