.class public Lcom/android/wm/shell/bubbles/BubbleViewInfoTask$BubbleViewInfo;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public appName:Ljava/lang/String;

.field public badgeBitmap:Landroid/graphics/Bitmap;

.field public bubbleBarExpandedView:Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;

.field public bubbleBitmap:Landroid/graphics/Bitmap;

.field public dotColor:I

.field public dotPath:Landroid/graphics/Path;

.field public expandedView:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

.field public flyoutMessage:Lcom/android/wm/shell/bubbles/Bubble$FlyoutMessage;

.field public imageView:Lcom/android/wm/shell/bubbles/BadgedImageView;

.field public rawBadgeBitmap:Landroid/graphics/Bitmap;

.field public shortcutInfo:Landroid/content/pm/ShortcutInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static populate(Landroid/content/Context;Lcom/android/wm/shell/bubbles/BubbleExpandedViewManager;Lcom/android/wm/shell/bubbles/BubbleTaskViewFactory;Lcom/android/wm/shell/bubbles/BubblePositioner;Lcom/android/wm/shell/bubbles/BubbleStackView;Lcom/android/wm/shell/bubbles/BubbleIconFactory;Lcom/android/wm/shell/bubbles/BubbleBadgeIconFactory;Lcom/android/wm/shell/bubbles/Bubble;Z)Lcom/android/wm/shell/bubbles/BubbleViewInfoTask$BubbleViewInfo;
    .locals 10

    move-object v0, p0

    move-object v3, p4

    move-object/from16 v7, p7

    new-instance v8, Lcom/android/wm/shell/bubbles/BubbleViewInfoTask$BubbleViewInfo;

    invoke-direct {v8}, Lcom/android/wm/shell/bubbles/BubbleViewInfoTask$BubbleViewInfo;-><init>()V

    if-nez p8, :cond_1

    iget-object v1, v7, Lcom/android/wm/shell/bubbles/Bubble;->mIconView:Lcom/android/wm/shell/bubbles/BadgedImageView;

    if-eqz v1, :cond_0

    iget-object v1, v7, Lcom/android/wm/shell/bubbles/Bubble;->mExpandedView:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, v7, Lcom/android/wm/shell/bubbles/Bubble;->mBubbleBarExpandedView:Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;

    if-eqz v1, :cond_2

    :cond_1
    :goto_0
    move-object v1, p5

    move-object/from16 v2, p6

    goto :goto_1

    :cond_2
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d007a

    const/4 v4, 0x0

    invoke-virtual {v1, v2, p4, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/wm/shell/bubbles/BadgedImageView;

    iput-object v2, v8, Lcom/android/wm/shell/bubbles/BubbleViewInfoTask$BubbleViewInfo;->imageView:Lcom/android/wm/shell/bubbles/BadgedImageView;

    move-object v5, p3

    invoke-virtual {v2, p3}, Lcom/android/wm/shell/bubbles/BadgedImageView;->initialize(Lcom/android/wm/shell/bubbles/BubblePositioner;)V

    move-object v2, p2

    invoke-virtual {v7, p2}, Lcom/android/wm/shell/bubbles/Bubble;->getOrCreateBubbleTaskView(Lcom/android/wm/shell/bubbles/BubbleTaskViewFactory;)Lcom/android/wm/shell/bubbles/BubbleTaskView;

    move-result-object v6

    const v2, 0x7f0d0072

    invoke-virtual {v1, v2, p4, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    iput-object v1, v8, Lcom/android/wm/shell/bubbles/BubbleViewInfoTask$BubbleViewInfo;->expandedView:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    const/4 v9, 0x0

    move-object v2, p1

    move-object v3, p4

    move-object v4, p3

    move v5, v9

    invoke-virtual/range {v1 .. v6}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->initialize(Lcom/android/wm/shell/bubbles/BubbleExpandedViewManager;Lcom/android/wm/shell/bubbles/BubbleStackView;Lcom/android/wm/shell/bubbles/BubblePositioner;ZLcom/android/wm/shell/bubbles/BubbleTaskView;)V

    goto :goto_0

    :goto_1
    invoke-static {v8, p0, v7, p5, v2}, Lcom/android/wm/shell/bubbles/BubbleViewInfoTask;->-$$Nest$smpopulateCommonInfo(Lcom/android/wm/shell/bubbles/BubbleViewInfoTask$BubbleViewInfo;Landroid/content/Context;Lcom/android/wm/shell/bubbles/Bubble;Lcom/android/wm/shell/bubbles/BubbleIconFactory;Lcom/android/wm/shell/bubbles/BubbleBadgeIconFactory;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_3

    return-object v2

    :cond_3
    iget-object v1, v7, Lcom/android/wm/shell/bubbles/Bubble;->mFlyoutMessage:Lcom/android/wm/shell/bubbles/Bubble$FlyoutMessage;

    iput-object v1, v8, Lcom/android/wm/shell/bubbles/BubbleViewInfoTask$BubbleViewInfo;->flyoutMessage:Lcom/android/wm/shell/bubbles/Bubble$FlyoutMessage;

    if-eqz v1, :cond_7

    iget-object v3, v1, Lcom/android/wm/shell/bubbles/Bubble$FlyoutMessage;->senderIcon:Landroid/graphics/drawable/Icon;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v3, :cond_4

    goto :goto_4

    :cond_4
    :try_start_0
    invoke-virtual {v3}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v4

    const/4 v5, 0x4

    if-eq v4, v5, :cond_5

    invoke-virtual {v3}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v4

    const/4 v5, 0x6

    if-ne v4, v5, :cond_6

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_3

    :cond_5
    :goto_2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Landroid/graphics/drawable/Icon;->getUri()Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {p0, v4, v5, v6}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    :cond_6
    invoke-virtual {v3, p0}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :goto_3
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "loadSenderAvatar failed: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "Bubbles"

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    iput-object v2, v1, Lcom/android/wm/shell/bubbles/Bubble$FlyoutMessage;->senderAvatar:Landroid/graphics/drawable/Drawable;

    :cond_7
    return-object v8
.end method
