.class public final Lcom/android/wm/shell/bubbles/BubbleViewInfoTask;
.super Landroid/os/AsyncTask;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mBadgeIconFactory:Lcom/android/wm/shell/bubbles/BubbleBadgeIconFactory;

.field public final mBubble:Lcom/android/wm/shell/bubbles/Bubble;

.field public final mCallback:Lcom/android/wm/shell/bubbles/BubbleViewInfoTask$Callback;

.field public final mContext:Ljava/lang/ref/WeakReference;

.field public final mExpandedViewManager:Ljava/lang/ref/WeakReference;

.field public final mIconFactory:Lcom/android/wm/shell/bubbles/BubbleIconFactory;

.field public final mLayerView:Ljava/lang/ref/WeakReference;

.field public final mMainExecutor:Ljava/util/concurrent/Executor;

.field public final mPositioner:Ljava/lang/ref/WeakReference;

.field public final mSkipInflation:Z

.field public final mStackView:Ljava/lang/ref/WeakReference;

.field public final mTaskViewFactory:Ljava/lang/ref/WeakReference;


# direct methods
.method public static -$$Nest$smpopulateCommonInfo(Lcom/android/wm/shell/bubbles/BubbleViewInfoTask$BubbleViewInfo;Landroid/content/Context;Lcom/android/wm/shell/bubbles/Bubble;Lcom/android/wm/shell/bubbles/BubbleIconFactory;Lcom/android/wm/shell/bubbles/BubbleBadgeIconFactory;)Z
    .locals 9

    const-string v0, "Bubbles"

    iget-object v1, p2, Lcom/android/wm/shell/bubbles/Bubble;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    if-eqz v1, :cond_0

    iput-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleViewInfoTask$BubbleViewInfo;->shortcutInfo:Landroid/content/pm/ShortcutInfo;

    :cond_0
    iget-object v1, p2, Lcom/android/wm/shell/bubbles/Bubble;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-static {v1, p1}, Lcom/android/wm/shell/bubbles/BubbleController;->getPackageManagerForUser(ILandroid/content/Context;)Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p2, Lcom/android/wm/shell/bubbles/Bubble;->mPackageName:Ljava/lang/String;

    const v4, 0xc2200

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleViewInfoTask$BubbleViewInfo;->appName:Ljava/lang/String;

    :cond_1
    iget-object v3, p2, Lcom/android/wm/shell/bubbles/Bubble;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget-object v4, p2, Lcom/android/wm/shell/bubbles/Bubble;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v4, 0x1

    const/4 v5, 0x0

    :try_start_1
    iget-object v6, p0, Lcom/android/wm/shell/bubbles/BubbleViewInfoTask$BubbleViewInfo;->shortcutInfo:Landroid/content/pm/ShortcutInfo;

    iget-object v7, p2, Lcom/android/wm/shell/bubbles/Bubble;->mIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v6, :cond_2

    const-string v7, "launcherapps"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/LauncherApps;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v8, v8, Landroid/content/res/Configuration;->densityDpi:I

    invoke-virtual {v7, v6, v8}, Landroid/content/pm/LauncherApps;->getShortcutIconDrawable(Landroid/content/pm/ShortcutInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_2
    if-eqz v7, :cond_5

    invoke-virtual {v7}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v6

    const/4 v8, 0x4

    if-eq v6, v8, :cond_3

    invoke-virtual {v7}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v6

    const/4 v8, 0x6

    if-ne v6, v8, :cond_4

    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7}, Landroid/graphics/drawable/Icon;->getUri()Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {p1, v6, v8, v4}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    :cond_4
    invoke-virtual {v7, p1}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Exception creating icon for the bubble: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p2, Lcom/android/wm/shell/bubbles/Bubble;->mKey:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    move-object v0, v5

    :goto_0
    if-nez v0, :cond_6

    goto :goto_1

    :cond_6
    move-object v3, v0

    :goto_1
    invoke-virtual {p4, v1}, Lcom/android/wm/shell/bubbles/BubbleBadgeIconFactory;->getBadgeBitmap(Landroid/graphics/drawable/Drawable;)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleViewInfoTask$BubbleViewInfo;->badgeBitmap:Landroid/graphics/Bitmap;

    iget-boolean p2, p2, Lcom/android/wm/shell/bubbles/Bubble;->mIsImportantConversation:Z

    if-eqz p2, :cond_7

    invoke-virtual {p4, v1}, Lcom/android/wm/shell/bubbles/BubbleBadgeIconFactory;->getBadgeBitmap(Landroid/graphics/drawable/Drawable;)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object p2

    iget-object v0, p2, Lcom/android/launcher3/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    :cond_7
    iput-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleViewInfoTask$BubbleViewInfo;->rawBadgeBitmap:Landroid/graphics/Bitmap;

    new-array p2, v4, [F

    invoke-virtual {p3, v3, v2}, Lcom/android/wm/shell/bubbles/BubbleIconFactory;->getCircledBubble(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/Bitmap;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/android/launcher3/icons/BaseIconFactory;->createIconBitmap(Landroid/graphics/Bitmap;)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object p3

    iget-object p3, p3, Lcom/android/launcher3/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/android/wm/shell/bubbles/BubbleViewInfoTask$BubbleViewInfo;->bubbleBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x1040369

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/util/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object p3

    new-instance p4, Landroid/graphics/Matrix;

    invoke-direct {p4}, Landroid/graphics/Matrix;-><init>()V

    aget p2, p2, v2

    const/high16 v0, 0x42480000    # 50.0f

    invoke-virtual {p4, p2, p2, v0, v0}, Landroid/graphics/Matrix;->setScale(FFFF)V

    invoke-virtual {p3, p4}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iput-object p3, p0, Lcom/android/wm/shell/bubbles/BubbleViewInfoTask$BubbleViewInfo;->dotPath:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f060616

    invoke-virtual {p1, p2, v5}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    iput p1, p0, Lcom/android/wm/shell/bubbles/BubbleViewInfoTask$BubbleViewInfo;->dotColor:I

    move v2, v4

    goto :goto_2

    :catch_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Unable to find package: "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p2, Lcom/android/wm/shell/bubbles/Bubble;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return v2
.end method

.method public constructor <init>(Lcom/android/wm/shell/bubbles/Bubble;Landroid/content/Context;Lcom/android/wm/shell/bubbles/BubbleExpandedViewManager;Lcom/android/wm/shell/bubbles/BubbleTaskViewFactory;Lcom/android/wm/shell/bubbles/BubblePositioner;Lcom/android/wm/shell/bubbles/BubbleStackView;Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;Lcom/android/wm/shell/bubbles/BubbleIconFactory;Lcom/android/wm/shell/bubbles/BubbleBadgeIconFactory;ZLcom/android/wm/shell/bubbles/BubbleViewInfoTask$Callback;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleViewInfoTask;->mBubble:Lcom/android/wm/shell/bubbles/Bubble;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleViewInfoTask;->mContext:Ljava/lang/ref/WeakReference;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleViewInfoTask;->mExpandedViewManager:Ljava/lang/ref/WeakReference;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleViewInfoTask;->mTaskViewFactory:Ljava/lang/ref/WeakReference;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleViewInfoTask;->mPositioner:Ljava/lang/ref/WeakReference;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p6}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleViewInfoTask;->mStackView:Ljava/lang/ref/WeakReference;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p7}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleViewInfoTask;->mLayerView:Ljava/lang/ref/WeakReference;

    iput-object p8, p0, Lcom/android/wm/shell/bubbles/BubbleViewInfoTask;->mIconFactory:Lcom/android/wm/shell/bubbles/BubbleIconFactory;

    iput-object p9, p0, Lcom/android/wm/shell/bubbles/BubbleViewInfoTask;->mBadgeIconFactory:Lcom/android/wm/shell/bubbles/BubbleBadgeIconFactory;

    iput-boolean p10, p0, Lcom/android/wm/shell/bubbles/BubbleViewInfoTask;->mSkipInflation:Z

    iput-object p11, p0, Lcom/android/wm/shell/bubbles/BubbleViewInfoTask;->mCallback:Lcom/android/wm/shell/bubbles/BubbleViewInfoTask$Callback;

    iput-object p12, p0, Lcom/android/wm/shell/bubbles/BubbleViewInfoTask;->mMainExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final varargs doInBackground()Lcom/android/wm/shell/bubbles/BubbleViewInfoTask$BubbleViewInfo;
    .locals 12

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleViewInfoTask;->verifyState()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleViewInfoTask;->mLayerView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleViewInfoTask;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleViewInfoTask;->mExpandedViewManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/wm/shell/bubbles/BubbleExpandedViewManager;

    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleViewInfoTask;->mTaskViewFactory:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/wm/shell/bubbles/BubbleTaskViewFactory;

    iget-object v4, p0, Lcom/android/wm/shell/bubbles/BubbleViewInfoTask;->mPositioner:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/wm/shell/bubbles/BubblePositioner;

    iget-object v5, p0, Lcom/android/wm/shell/bubbles/BubbleViewInfoTask;->mLayerView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;

    iget-object v6, p0, Lcom/android/wm/shell/bubbles/BubbleViewInfoTask;->mIconFactory:Lcom/android/wm/shell/bubbles/BubbleIconFactory;

    iget-object v7, p0, Lcom/android/wm/shell/bubbles/BubbleViewInfoTask;->mBadgeIconFactory:Lcom/android/wm/shell/bubbles/BubbleBadgeIconFactory;

    iget-object v8, p0, Lcom/android/wm/shell/bubbles/BubbleViewInfoTask;->mBubble:Lcom/android/wm/shell/bubbles/Bubble;

    iget-boolean p0, p0, Lcom/android/wm/shell/bubbles/BubbleViewInfoTask;->mSkipInflation:Z

    new-instance v9, Lcom/android/wm/shell/bubbles/BubbleViewInfoTask$BubbleViewInfo;

    invoke-direct {v9}, Lcom/android/wm/shell/bubbles/BubbleViewInfoTask$BubbleViewInfo;-><init>()V

    if-nez p0, :cond_3

    iget-object p0, v8, Lcom/android/wm/shell/bubbles/Bubble;->mIconView:Lcom/android/wm/shell/bubbles/BadgedImageView;

    if-eqz p0, :cond_1

    iget-object p0, v8, Lcom/android/wm/shell/bubbles/Bubble;->mExpandedView:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    if-nez p0, :cond_3

    :cond_1
    iget-object p0, v8, Lcom/android/wm/shell/bubbles/Bubble;->mBubbleBarExpandedView:Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v8, v3}, Lcom/android/wm/shell/bubbles/Bubble;->getOrCreateBubbleTaskView(Lcom/android/wm/shell/bubbles/BubbleTaskViewFactory;)Lcom/android/wm/shell/bubbles/BubbleTaskView;

    move-result-object p0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v10, 0x7f0d006b

    const/4 v11, 0x0

    invoke-virtual {v3, v10, v5, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;

    iput-object v3, v9, Lcom/android/wm/shell/bubbles/BubbleViewInfoTask$BubbleViewInfo;->bubbleBarExpandedView:Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;

    invoke-virtual {v3, v2, v4, v11, p0}, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->initialize(Lcom/android/wm/shell/bubbles/BubbleExpandedViewManager;Lcom/android/wm/shell/bubbles/BubblePositioner;ZLcom/android/wm/shell/bubbles/BubbleTaskView;)V

    :cond_3
    :goto_0
    invoke-static {v9, v0, v8, v6, v7}, Lcom/android/wm/shell/bubbles/BubbleViewInfoTask;->-$$Nest$smpopulateCommonInfo(Lcom/android/wm/shell/bubbles/BubbleViewInfoTask$BubbleViewInfo;Landroid/content/Context;Lcom/android/wm/shell/bubbles/Bubble;Lcom/android/wm/shell/bubbles/BubbleIconFactory;Lcom/android/wm/shell/bubbles/BubbleBadgeIconFactory;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_1

    :cond_4
    move-object v1, v9

    :goto_1
    return-object v1

    :cond_5
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleViewInfoTask;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/content/Context;

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleViewInfoTask;->mExpandedViewManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/wm/shell/bubbles/BubbleExpandedViewManager;

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleViewInfoTask;->mTaskViewFactory:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/wm/shell/bubbles/BubbleTaskViewFactory;

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleViewInfoTask;->mPositioner:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/wm/shell/bubbles/BubblePositioner;

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleViewInfoTask;->mStackView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/wm/shell/bubbles/BubbleStackView;

    iget-object v6, p0, Lcom/android/wm/shell/bubbles/BubbleViewInfoTask;->mIconFactory:Lcom/android/wm/shell/bubbles/BubbleIconFactory;

    iget-object v7, p0, Lcom/android/wm/shell/bubbles/BubbleViewInfoTask;->mBadgeIconFactory:Lcom/android/wm/shell/bubbles/BubbleBadgeIconFactory;

    iget-object v8, p0, Lcom/android/wm/shell/bubbles/BubbleViewInfoTask;->mBubble:Lcom/android/wm/shell/bubbles/Bubble;

    iget-boolean v9, p0, Lcom/android/wm/shell/bubbles/BubbleViewInfoTask;->mSkipInflation:Z

    invoke-static/range {v1 .. v9}, Lcom/android/wm/shell/bubbles/BubbleViewInfoTask$BubbleViewInfo;->populate(Landroid/content/Context;Lcom/android/wm/shell/bubbles/BubbleExpandedViewManager;Lcom/android/wm/shell/bubbles/BubbleTaskViewFactory;Lcom/android/wm/shell/bubbles/BubblePositioner;Lcom/android/wm/shell/bubbles/BubbleStackView;Lcom/android/wm/shell/bubbles/BubbleIconFactory;Lcom/android/wm/shell/bubbles/BubbleBadgeIconFactory;Lcom/android/wm/shell/bubbles/Bubble;Z)Lcom/android/wm/shell/bubbles/BubbleViewInfoTask$BubbleViewInfo;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleViewInfoTask;->doInBackground()Lcom/android/wm/shell/bubbles/BubbleViewInfoTask$BubbleViewInfo;

    move-result-object p0

    return-object p0
.end method

.method public final onPostExecute(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lcom/android/wm/shell/bubbles/BubbleViewInfoTask$BubbleViewInfo;

    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleViewInfoTask;->mMainExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/wm/shell/bubbles/BubbleViewInfoTask$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/wm/shell/bubbles/BubbleViewInfoTask$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/bubbles/BubbleViewInfoTask;Lcom/android/wm/shell/bubbles/BubbleViewInfoTask$BubbleViewInfo;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final verifyState()Z
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleViewInfoTask;->mExpandedViewManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/bubbles/BubbleExpandedViewManager;

    check-cast v0, Lcom/android/wm/shell/bubbles/BubbleExpandedViewManager$Companion$fromBubbleController$1;

    iget-object v0, v0, Lcom/android/wm/shell/bubbles/BubbleExpandedViewManager$Companion$fromBubbleController$1;->$controller:Lcom/android/wm/shell/bubbles/BubbleController;

    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/BubbleController;->isShowingAsBubbleBar()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleViewInfoTask;->mLayerView:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    move v1, v2

    :cond_0
    return v1

    :cond_1
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleViewInfoTask;->mStackView:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method
