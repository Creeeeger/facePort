.class public final Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;
.super Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final MEDIUM:Landroid/graphics/Typeface;

.field public static final REGULAR:Landroid/graphics/Typeface;

.field public static sInstance:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;


# instance fields
.field public mCallbackClicked:Z

.field public mIsShownReplyButtonWindow:Z

.field public mItemPostionInGroup:I

.field public mNeedToUnlock:Z

.field public mPopupWindow:Landroid/widget/PopupWindow;

.field public final mPopupWindowKeyEventListener:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$1;

.field public mPrevSelectNotificationInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

.field public mReplyButtonView:Landroid/view/View;

.field public mReplySendAlphaAnimation:Landroid/view/animation/AlphaAnimation;

.field public mReplyclicked:Z

.field public final mScrollInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ScrollInfo;

.field public mSelectHolder:Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;

.field public mSelectNotificationInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

.field public mSvoiceEmojiClicked:Z

.field public mUpdatedInfo:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "roboto-regular"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->REGULAR:Landroid/graphics/Typeface;

    const-string/jumbo v0, "sec-roboto-light"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->MEDIUM:Landroid/graphics/Typeface;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mReplyclicked:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mCallbackClicked:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mNeedToUnlock:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mSvoiceEmojiClicked:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mReplySendAlphaAnimation:Landroid/view/animation/AlphaAnimation;

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mUpdatedInfo:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mIsShownReplyButtonWindow:Z

    new-instance v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ScrollInfo;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ScrollInfo;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mScrollInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ScrollInfo;

    new-instance v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$1;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mPopupWindowKeyEventListener:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$1;

    return-void
.end method

.method public static getInstance()Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->sInstance:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->sInstance:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->sInstance:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

    return-object v0
.end method


# virtual methods
.method public final cleanAdapter()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mSelectHolder:Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mReplyclicked:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mCallbackClicked:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mNeedToUnlock:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mSvoiceEmojiClicked:Z

    return-void
.end method

.method public final dismissReplyButtons(Z)V
    .locals 8

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mReplyButtonView:Landroid/view/View;

    if-eqz p1, :cond_3

    const-string p1, "SubscreenNotificationDetailAdapter"

    const-string v1, "dismissReplyButtons"

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mReplySendAlphaAnimation:Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mReplyButtonView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mReplySendAlphaAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {p1}, Landroid/view/animation/AlphaAnimation;->cancel()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mReplySendAlphaAnimation:Landroid/view/animation/AlphaAnimation;

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mReplyButtonView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mPopupWindowKeyEventListener:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$1;

    invoke-virtual {p1, v2}, Landroid/view/View;->removeOnUnhandledKeyEventListener(Landroid/view/View$OnUnhandledKeyEventListener;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mReplyButtonView:Landroid/view/View;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mReplyButtonView:Landroid/view/View;

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mIsShownReplyButtonWindow:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->cancelReplySendButtonAnimator()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mNotificationAnimatorManager:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonAnimatorManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mReplyButtonView:Landroid/view/View;

    new-instance v3, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$$ExternalSyntheticLambda0;

    const/4 p1, 0x0

    invoke-direct {v3, p0, p1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    const/high16 v4, 0x3f800000    # 1.0f

    const v5, 0x3f4ccccd    # 0.8f

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonAnimatorManager;->replyButtonAnimated(Landroid/view/View;Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$$ExternalSyntheticLambda0;FFFF)V

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mUpdatedInfo:Z

    if-eqz p1, :cond_2

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_2
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->runSmartReplyUncompletedOperation()V

    :cond_3
    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mUpdatedInfo:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mIsShownReplyButtonWindow:Z

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final getItemCount()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final getItemViewType(I)I
    .locals 2

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mSelectNotificationInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->needsRedaction()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mSelectNotificationInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->isNotShwonNotificationState(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result p1

    if-nez p1, :cond_2

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mSelectNotificationInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mContentView:Landroid/widget/RemoteViews;

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mHasSemanticCall:Z

    if-nez p1, :cond_3

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mIsMissedCall:Z

    if-nez p0, :cond_3

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    return v0
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 7

    instance-of p2, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;

    const-wide/16 v0, 0x64

    if-eqz p2, :cond_7

    check-cast p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mSelectNotificationInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    const/4 p2, 0x0

    const-string v2, "SubscreenNotificationDetailAdapter"

    if-nez p0, :cond_0

    const-string p0, "info is null"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-class p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    sget-object p1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {p1, p0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    const/4 p1, 0x1

    invoke-virtual {p0, p2, p1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->hideDetailNotificationAnimated(IZ)V

    goto/16 :goto_3

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->getTitle()Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    if-eqz v3, :cond_1

    const-string v5, ":"

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    goto :goto_0

    :cond_1
    move v5, v4

    :goto_0
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mIsGroupConversation:Z

    if-eqz v6, :cond_2

    if-le v5, v4, :cond_2

    :try_start_0
    invoke-virtual {v3, p2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "StringIndexOutOfBoundsException: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo p2, "title : "

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    const-string p2, "\n"

    if-eqz v3, :cond_3

    const-string v2, " "

    invoke-virtual {v3, p2, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    :cond_3
    invoke-static {v3, p2}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;->mBodyLayoutString:Ljava/lang/String;

    iput-object p0, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    iget-object p2, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mAppName:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mAppName:Ljava/lang/String;

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_5

    :cond_4
    iget-object p2, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mTitle:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_5
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->setIconDrawable()V

    iget-object p2, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mContentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p2

    if-lez p2, :cond_6

    iget-object p2, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mContentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->removeAllViews()V

    :cond_6
    iget-object p2, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

    iget-object v2, p2, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    iget-object v3, p2, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, p1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->setContentViewItem(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;)V

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->updateShowInAppButtonVisibility()V

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->updateClearButtonVisibility()V

    iget-object v2, p2, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    invoke-virtual {v2, p2, p1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->setDetailAdapterItemHolderButtonContentDescription(Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;)V

    iget-object v2, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mHandler:Landroid/os/Handler;

    iget-object v3, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mInitFocusRunnable:Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder$2;

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p2, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    invoke-virtual {v0, p2, p1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->onBindDetailAdapterItemViewHolder(Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;)V

    iget-object v0, p2, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mTwoPhoneIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->updateTwoPhoneIcon(Landroid/widget/ImageView;Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;)V

    iget-object p2, p2, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mSecureIcon:Landroid/widget/ImageView;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->updateKnoxIcon(Landroid/widget/ImageView;Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;)V

    goto :goto_3

    :cond_7
    instance-of p2, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$TextViewHolder;

    if-eqz p2, :cond_9

    check-cast p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$TextViewHolder;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mSelectNotificationInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->needsRedaction()Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->getContentHiddenText()Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    :cond_8
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v2, 0x7f1312ea

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    :goto_2
    iput-object p0, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    iget-object v2, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mAppName:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mAppName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->setIconDrawable()V

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->updateShowInAppButtonVisibility()V

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->updateClearButtonVisibility()V

    iget-object p2, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$TextViewHolder;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

    iget-object v2, p2, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    invoke-virtual {v2, p1, p2}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->setDetailAdapterTextHolderButtonContentDescription(Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$TextViewHolder;Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;)V

    iget-object v2, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mHandler:Landroid/os/Handler;

    iget-object v3, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mInitFocusRunnable:Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder$2;

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p2, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->onBindDetailAdapterTextViewHolder(Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$TextViewHolder;)V

    iget-object v0, p2, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mTwoPhoneIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->updateTwoPhoneIcon(Landroid/widget/ImageView;Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;)V

    iget-object p2, p2, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mSecureIcon:Landroid/widget/ImageView;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->updateKnoxIcon(Landroid/widget/ImageView;Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;)V

    :cond_9
    :goto_3
    return-void
.end method

.method public final onCreateViewHolder(ILandroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p2, p1, v1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->getDetailAdapterLayout(Landroid/view/ViewGroup;ILandroid/content/Context;)Landroid/view/View;

    move-result-object p2

    if-nez p1, :cond_0

    new-instance p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;Landroid/view/View;)V

    return-object p1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    new-instance p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$TextViewHolder;

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$TextViewHolder;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;Landroid/view/View;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public final setReplyWordTextStyle(Landroid/view/View;Landroid/graphics/Typeface;ZFF)V
    .locals 8

    const v0, 0x7f0a0c67

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0a0c6a

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Landroid/widget/TextView;

    if-eqz v0, :cond_2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    invoke-virtual {p1, v2, p2}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->setReplyWordTextStyle(Landroid/widget/TextView;Landroid/graphics/Typeface;)V

    if-eqz p3, :cond_1

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mContext:Landroid/content/Context;

    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->getSelectedReplyBGColor()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->setQuickReplyFocusBackground(Landroid/view/View;)V

    :goto_0
    invoke-virtual {v2}, Landroid/widget/TextView;->getAlpha()F

    move-result p1

    cmpl-float p1, p1, p5

    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mNotificationAnimatorManager:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonAnimatorManager;

    const/4 v3, 0x0

    const-wide/16 v4, 0xfa

    move v6, p4

    move v7, p5

    invoke-virtual/range {v1 .. v7}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonAnimatorManager;->alphaViewAnimated(Landroid/view/View;Ljava/lang/Runnable;JFF)Landroid/animation/Animator;

    :cond_2
    :goto_1
    return-void
.end method

.method public final setSmartReplyWordTextStyle(Landroid/view/View;FF)V
    .locals 7

    const v0, 0x7f0a0c68

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getAlpha()F

    move-result p1

    cmpl-float p1, p1, p3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mNotificationAnimatorManager:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonAnimatorManager;

    const/4 v2, 0x0

    const-wide/16 v3, 0xfa

    move v5, p2

    move v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonAnimatorManager;->alphaViewAnimated(Landroid/view/View;Ljava/lang/Runnable;JFF)Landroid/animation/Animator;

    :cond_0
    return-void
.end method

.method public final showReplyButtons(Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;Ljava/lang/String;Landroid/view/View;Ljava/lang/String;)V
    .locals 8

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mIsShownReplyButtonWindow:Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->getReplyButtonView()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mReplyButtonView:Landroid/view/View;

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    invoke-virtual {v2, v1, p3}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->showReplyButtonViewPopupWindow(Landroid/view/View;Landroid/view/View;)Landroid/widget/PopupWindow;

    move-result-object p3

    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p3, v0}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    iget-object p3, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p3}, Landroid/widget/PopupWindow;->update()V

    iget-object p3, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mReplyButtonView:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->requestFocus()Z

    iget-object p3, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mReplyButtonView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mPopupWindowKeyEventListener:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$1;

    invoke-virtual {p3, v0}, Landroid/view/View;->addOnUnhandledKeyEventListener(Landroid/view/View$OnUnhandledKeyEventListener;)V

    iget-object p3, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mPopupWindow:Landroid/widget/PopupWindow;

    new-instance v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$2;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$2;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;)V

    invoke-virtual {p3, v0}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mNotificationAnimatorManager:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonAnimatorManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mReplyButtonView:Landroid/view/View;

    const v4, 0x3f4ccccd    # 0.8f

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual/range {v1 .. v7}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonAnimatorManager;->replyButtonAnimated(Landroid/view/View;Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$$ExternalSyntheticLambda0;FFFF)V

    iget-object p3, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mReplyButtonView:Landroid/view/View;

    const v0, 0x7f0a0241

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mReplyButtonView:Landroid/view/View;

    const v1, 0x7f0a0af3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$3;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;)V

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p3, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$4;

    invoke-direct {p3, p0, p1, p2, p4}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$4;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
