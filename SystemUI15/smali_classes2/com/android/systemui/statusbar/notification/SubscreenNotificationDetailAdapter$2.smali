.class public final Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

.field public final synthetic val$holder:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$2;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$2;->val$holder:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss()V
    .locals 18

    move-object/from16 v0, p0

    const-string v1, "SubscreenNotificationDetailAdapter"

    const-string v2, "OutSide Touch Popup Dismiss"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$2;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->dismissReplyButtons(Z)V

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$2;->val$holder:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;

    move v1, v2

    :goto_0
    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mReplylayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_0

    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mReplylayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    sget-object v6, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->REGULAR:Landroid/graphics/Typeface;

    iget-object v4, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

    const/4 v7, 0x0

    const v8, 0x3e4ccccd    # 0.2f

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual/range {v4 .. v9}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->setReplyWordTextStyle(Landroid/view/View;Landroid/graphics/Typeface;ZFF)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mSmartReplyLayout:Landroid/widget/LinearLayout;

    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

    if-eqz v1, :cond_1

    :goto_1
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mSmartReplyLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v2, v1, :cond_1

    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mSmartReplyLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    sget-object v4, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->sInstance:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

    const v4, 0x3e4ccccd    # 0.2f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v3, v1, v4, v5}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->setSmartReplyWordTextStyle(Landroid/view/View;FF)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    iget-object v4, v3, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mNotificationAnimatorManager:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonAnimatorManager;

    iget-object v5, v0, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mDetailButtonLayout:Landroid/widget/LinearLayout;

    const/4 v6, 0x0

    const-wide/16 v7, 0xfa

    const v9, 0x3e4ccccd    # 0.2f

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-virtual/range {v4 .. v10}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonAnimatorManager;->alphaViewAnimated(Landroid/view/View;Ljava/lang/Runnable;JFF)Landroid/animation/Animator;

    iget-object v11, v3, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mNotificationAnimatorManager:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonAnimatorManager;

    iget-object v12, v0, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mEditButton:Landroid/widget/TextView;

    const/4 v13, 0x0

    const-wide/16 v14, 0xfa

    const v16, 0x3e4ccccd    # 0.2f

    const/high16 v17, 0x3f800000    # 1.0f

    invoke-virtual/range {v11 .. v17}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonAnimatorManager;->alphaViewAnimated(Landroid/view/View;Ljava/lang/Runnable;JFF)Landroid/animation/Animator;

    return-void
.end method
