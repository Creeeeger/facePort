.class public final synthetic Lcom/android/wm/shell/bubbles/BubbleViewInfoTask$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/bubbles/BubbleViewInfoTask;

.field public final synthetic f$1:Lcom/android/wm/shell/bubbles/BubbleViewInfoTask$BubbleViewInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/bubbles/BubbleViewInfoTask;Lcom/android/wm/shell/bubbles/BubbleViewInfoTask$BubbleViewInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleViewInfoTask$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/bubbles/BubbleViewInfoTask;

    iput-object p2, p0, Lcom/android/wm/shell/bubbles/BubbleViewInfoTask$$ExternalSyntheticLambda0;->f$1:Lcom/android/wm/shell/bubbles/BubbleViewInfoTask$BubbleViewInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleViewInfoTask$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/bubbles/BubbleViewInfoTask;

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleViewInfoTask$$ExternalSyntheticLambda0;->f$1:Lcom/android/wm/shell/bubbles/BubbleViewInfoTask$BubbleViewInfo;

    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/BubbleViewInfoTask;->verifyState()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_9

    :cond_0
    iget-object v1, v0, Lcom/android/wm/shell/bubbles/BubbleViewInfoTask;->mBubble:Lcom/android/wm/shell/bubbles/Bubble;

    iget-object v2, v1, Lcom/android/wm/shell/bubbles/Bubble;->mIconView:Lcom/android/wm/shell/bubbles/BadgedImageView;

    if-eqz v2, :cond_1

    iget-object v2, v1, Lcom/android/wm/shell/bubbles/Bubble;->mExpandedView:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    if-nez v2, :cond_3

    :cond_1
    iget-object v2, v1, Lcom/android/wm/shell/bubbles/Bubble;->mBubbleBarExpandedView:Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleViewInfoTask$BubbleViewInfo;->imageView:Lcom/android/wm/shell/bubbles/BadgedImageView;

    iput-object v2, v1, Lcom/android/wm/shell/bubbles/Bubble;->mIconView:Lcom/android/wm/shell/bubbles/BadgedImageView;

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleViewInfoTask$BubbleViewInfo;->expandedView:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    iput-object v2, v1, Lcom/android/wm/shell/bubbles/Bubble;->mExpandedView:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleViewInfoTask$BubbleViewInfo;->bubbleBarExpandedView:Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;

    iput-object v2, v1, Lcom/android/wm/shell/bubbles/Bubble;->mBubbleBarExpandedView:Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;

    :cond_3
    :goto_0
    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleViewInfoTask$BubbleViewInfo;->shortcutInfo:Landroid/content/pm/ShortcutInfo;

    iput-object v2, v1, Lcom/android/wm/shell/bubbles/Bubble;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleViewInfoTask$BubbleViewInfo;->appName:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/wm/shell/bubbles/Bubble;->mAppName:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/wm/shell/bubbles/Bubble;->mTitle:Ljava/lang/String;

    if-nez v3, :cond_4

    iput-object v2, v1, Lcom/android/wm/shell/bubbles/Bubble;->mTitle:Ljava/lang/String;

    :cond_4
    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleViewInfoTask$BubbleViewInfo;->flyoutMessage:Lcom/android/wm/shell/bubbles/Bubble$FlyoutMessage;

    iput-object v2, v1, Lcom/android/wm/shell/bubbles/Bubble;->mFlyoutMessage:Lcom/android/wm/shell/bubbles/Bubble$FlyoutMessage;

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleViewInfoTask$BubbleViewInfo;->badgeBitmap:Landroid/graphics/Bitmap;

    iput-object v2, v1, Lcom/android/wm/shell/bubbles/Bubble;->mBadgeBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleViewInfoTask$BubbleViewInfo;->rawBadgeBitmap:Landroid/graphics/Bitmap;

    iput-object v2, v1, Lcom/android/wm/shell/bubbles/Bubble;->mRawBadgeBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleViewInfoTask$BubbleViewInfo;->bubbleBitmap:Landroid/graphics/Bitmap;

    iput-object v2, v1, Lcom/android/wm/shell/bubbles/Bubble;->mBubbleBitmap:Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/android/wm/shell/bubbles/BubbleViewInfoTask$BubbleViewInfo;->dotColor:I

    iput v2, v1, Lcom/android/wm/shell/bubbles/Bubble;->mDotColor:I

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleViewInfoTask$BubbleViewInfo;->dotPath:Landroid/graphics/Path;

    iput-object p0, v1, Lcom/android/wm/shell/bubbles/Bubble;->mDotPath:Landroid/graphics/Path;

    iget-object p0, v1, Lcom/android/wm/shell/bubbles/Bubble;->mExpandedView:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p0, :cond_e

    iget-object v4, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mStackView:Lcom/android/wm/shell/bubbles/BubbleStackView;

    const-string v5, "Bubbles"

    if-nez v4, :cond_5

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v4, "Stack is null for bubble: "

    invoke-direct {p0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :cond_5
    iget-object v4, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mBubble:Lcom/android/wm/shell/bubbles/Bubble;

    if-eqz v4, :cond_9

    iget-object v6, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mPendingIntent:Landroid/app/PendingIntent;

    if-eqz v6, :cond_6

    move v6, v3

    goto :goto_1

    :cond_6
    move v6, v2

    :goto_1
    iget-object v7, v1, Lcom/android/wm/shell/bubbles/Bubble;->mIntent:Landroid/app/PendingIntent;

    if-eqz v7, :cond_7

    move v7, v3

    goto :goto_2

    :cond_7
    move v7, v2

    :goto_2
    if-eq v6, v7, :cond_8

    goto :goto_3

    :cond_8
    move v6, v2

    goto :goto_4

    :cond_9
    :goto_3
    move v6, v3

    :goto_4
    if-nez v6, :cond_b

    iget-object v4, v4, Lcom/android/wm/shell/bubbles/Bubble;->mKey:Ljava/lang/String;

    iget-object v7, v1, Lcom/android/wm/shell/bubbles/Bubble;->mKey:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    goto :goto_5

    :cond_a
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v4, "Trying to update entry with different key, new bubble: "

    invoke-direct {p0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " old bubble: "

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_b
    :goto_5
    iput-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mBubble:Lcom/android/wm/shell/bubbles/Bubble;

    iget-object v4, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mManageButton:Lcom/android/wm/shell/common/AlphaOptimizedButton;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v7, v1, Lcom/android/wm/shell/bubbles/Bubble;->mAppName:Ljava/lang/String;

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    const v8, 0x7f13032a

    invoke-virtual {v5, v8, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mManageButton:Lcom/android/wm/shell/common/AlphaOptimizedButton;

    new-instance v5, Lcom/android/wm/shell/bubbles/BubbleExpandedView$7;

    invoke-direct {v5, p0}, Lcom/android/wm/shell/bubbles/BubbleExpandedView$7;-><init>(Lcom/android/wm/shell/bubbles/BubbleExpandedView;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    if-eqz v6, :cond_d

    iget-object v4, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mBubble:Lcom/android/wm/shell/bubbles/Bubble;

    iget-object v5, v4, Lcom/android/wm/shell/bubbles/Bubble;->mIntent:Landroid/app/PendingIntent;

    iput-object v5, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mPendingIntent:Landroid/app/PendingIntent;

    if-nez v5, :cond_c

    invoke-virtual {v4}, Lcom/android/wm/shell/bubbles/Bubble;->hasMetadataShortcutId()Z

    move-result v4

    if-eqz v4, :cond_d

    :cond_c
    iget-object v4, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mTaskView:Lcom/android/wm/shell/taskview/TaskView;

    if-eqz v4, :cond_d

    invoke-virtual {p0, v2}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->setContentVisibility(Z)V

    iget-object v4, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mTaskView:Lcom/android/wm/shell/taskview/TaskView;

    invoke-virtual {v4, v2}, Landroid/view/SurfaceView;->setVisibility(I)V

    :cond_d
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->applyThemeAttrs()V

    :cond_e
    :goto_6
    iget-object p0, v1, Lcom/android/wm/shell/bubbles/Bubble;->mBubbleBarExpandedView:Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;

    if-eqz p0, :cond_14

    iget-object v4, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->mBubbleTaskViewHelper:Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;

    iget-object v5, v4, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;->mBubble:Lcom/android/wm/shell/bubbles/Bubble;

    if-eqz v5, :cond_11

    iget-object v5, v4, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;->mPendingIntent:Landroid/app/PendingIntent;

    if-eqz v5, :cond_f

    move v5, v3

    goto :goto_7

    :cond_f
    move v5, v2

    :goto_7
    iget-object v6, v1, Lcom/android/wm/shell/bubbles/Bubble;->mIntent:Landroid/app/PendingIntent;

    if-eqz v6, :cond_10

    move v6, v3

    goto :goto_8

    :cond_10
    move v6, v2

    :goto_8
    if-eq v5, v6, :cond_12

    :cond_11
    move v2, v3

    :cond_12
    iput-object v1, v4, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;->mBubble:Lcom/android/wm/shell/bubbles/Bubble;

    if-eqz v2, :cond_13

    iget-object v2, v1, Lcom/android/wm/shell/bubbles/Bubble;->mIntent:Landroid/app/PendingIntent;

    iput-object v2, v4, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;->mPendingIntent:Landroid/app/PendingIntent;

    :cond_13
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->mMenuViewController:Lcom/android/wm/shell/bubbles/bar/BubbleBarMenuViewController;

    iput-object v1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarMenuViewController;->mBubble:Lcom/android/wm/shell/bubbles/Bubble;

    :cond_14
    iget-object p0, v1, Lcom/android/wm/shell/bubbles/Bubble;->mIconView:Lcom/android/wm/shell/bubbles/BadgedImageView;

    if-eqz p0, :cond_15

    invoke-virtual {p0, v1}, Lcom/android/wm/shell/bubbles/BadgedImageView;->setRenderedBubble(Lcom/android/wm/shell/bubbles/BubbleViewProvider;)V

    :cond_15
    iget-object p0, v0, Lcom/android/wm/shell/bubbles/BubbleViewInfoTask;->mCallback:Lcom/android/wm/shell/bubbles/BubbleViewInfoTask$Callback;

    if-eqz p0, :cond_16

    iget-object v0, v0, Lcom/android/wm/shell/bubbles/BubbleViewInfoTask;->mBubble:Lcom/android/wm/shell/bubbles/Bubble;

    invoke-interface {p0, v0}, Lcom/android/wm/shell/bubbles/BubbleViewInfoTask$Callback;->onBubbleViewsReady(Lcom/android/wm/shell/bubbles/Bubble;)V

    :cond_16
    :goto_9
    return-void
.end method
