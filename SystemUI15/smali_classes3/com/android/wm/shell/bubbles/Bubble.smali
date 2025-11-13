.class public final Lcom/android/wm/shell/bubbles/Bubble;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/wm/shell/bubbles/BubbleViewProvider;


# instance fields
.field public final mAppIntent:Landroid/content/Intent;

.field public mAppName:Ljava/lang/String;

.field public mAppUid:I

.field public mBadgeBitmap:Landroid/graphics/Bitmap;

.field public mBubbleBarExpandedView:Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;

.field public mBubbleBitmap:Landroid/graphics/Bitmap;

.field public final mBubbleMetadataFlagListener:Lcom/android/wm/shell/bubbles/Bubbles$BubbleMetadataFlagListener;

.field public mBubbleTaskView:Lcom/android/wm/shell/bubbles/BubbleTaskView;

.field public mChannelId:Ljava/lang/String;

.field public mDeleteIntent:Landroid/app/PendingIntent;

.field public mDesiredHeight:I

.field public mDesiredHeightResId:I

.field public mDotColor:I

.field public mDotPath:Landroid/graphics/Path;

.field public mExpandedView:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

.field public mFlags:I

.field public mFlyoutMessage:Lcom/android/wm/shell/bubbles/Bubble$FlyoutMessage;

.field public final mGroupKey:Ljava/lang/String;

.field public mIcon:Landroid/graphics/drawable/Icon;

.field public mIconView:Lcom/android/wm/shell/bubbles/BadgedImageView;

.field public mInflateSynchronously:Z

.field public mInflationTask:Lcom/android/wm/shell/bubbles/BubbleViewInfoTask;

.field public mInstanceId:Lcom/android/internal/logging/InstanceId;

.field public mIntent:Landroid/app/PendingIntent;

.field public mIntentActive:Z

.field public final mIntentCancelListener:Lcom/android/wm/shell/bubbles/Bubble$$ExternalSyntheticLambda0;

.field public final mIsAppBubble:Z

.field public mIsBubble:Z

.field public mIsDismissable:Z

.field public mIsImportantConversation:Z

.field public mIsTextChanged:Z

.field public final mKey:Ljava/lang/String;

.field public mLastAccessed:J

.field public mLastUpdated:J

.field public final mLocusId:Landroid/content/LocusId;

.field public final mMainExecutor:Ljava/util/concurrent/Executor;

.field public mMetadataShortcutId:Ljava/lang/String;

.field public mNotificationId:I

.field public mPackageName:Ljava/lang/String;

.field public mPendingIntentCanceled:Z

.field public mRawBadgeBitmap:Landroid/graphics/Bitmap;

.field public mShortcutInfo:Landroid/content/pm/ShortcutInfo;

.field public mShouldSuppressNotificationDot:Z

.field public mShouldSuppressNotificationList:Z

.field public mShouldSuppressPeek:Z

.field public mShowBubbleUpdateDot:Z

.field public mSuppressFlyout:Z

.field public final mTaskId:I

.field public mTitle:Ljava/lang/String;

.field public mUser:Landroid/os/UserHandle;


# direct methods
.method private constructor <init>(Landroid/content/Intent;Landroid/os/UserHandle;Landroid/graphics/drawable/Icon;ZLjava/lang/String;Ljava/util/concurrent/Executor;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mAppUid:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/wm/shell/bubbles/Bubble;->mGroupKey:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/wm/shell/bubbles/Bubble;->mLocusId:Landroid/content/LocusId;

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/wm/shell/bubbles/Bubble;->mFlags:I

    iput-object p2, p0, Lcom/android/wm/shell/bubbles/Bubble;->mUser:Landroid/os/UserHandle;

    iput-object p3, p0, Lcom/android/wm/shell/bubbles/Bubble;->mIcon:Landroid/graphics/drawable/Icon;

    iput-boolean p4, p0, Lcom/android/wm/shell/bubbles/Bubble;->mIsAppBubble:Z

    iput-object p5, p0, Lcom/android/wm/shell/bubbles/Bubble;->mKey:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/android/wm/shell/bubbles/Bubble;->mShowBubbleUpdateDot:Z

    iput-object p6, p0, Lcom/android/wm/shell/bubbles/Bubble;->mMainExecutor:Ljava/util/concurrent/Executor;

    iput v0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mTaskId:I

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/Bubble;->mAppIntent:Landroid/content/Intent;

    const p2, 0x7fffffff

    iput p2, p0, Lcom/android/wm/shell/bubbles/Bubble;->mDesiredHeight:I

    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/Bubble;->mPackageName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/wm/shell/bubbles/BubbleEntry;Lcom/android/wm/shell/bubbles/Bubbles$BubbleMetadataFlagListener;Lcom/android/wm/shell/bubbles/Bubbles$PendingIntentCanceledListener;Ljava/util/concurrent/Executor;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mShowBubbleUpdateDot:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mAppUid:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/wm/shell/bubbles/Bubble;->mIsAppBubble:Z

    iget-object v1, p1, Lcom/android/wm/shell/bubbles/BubbleEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/wm/shell/bubbles/Bubble;->mKey:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/wm/shell/bubbles/BubbleEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/wm/shell/bubbles/Bubble;->mGroupKey:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/wm/shell/bubbles/BubbleEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification;->getLocusId()Landroid/content/LocusId;

    move-result-object v1

    iput-object v1, p0, Lcom/android/wm/shell/bubbles/Bubble;->mLocusId:Landroid/content/LocusId;

    iput-object p2, p0, Lcom/android/wm/shell/bubbles/Bubble;->mBubbleMetadataFlagListener:Lcom/android/wm/shell/bubbles/Bubbles$BubbleMetadataFlagListener;

    new-instance p2, Lcom/android/wm/shell/bubbles/Bubble$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0, p4, p3}, Lcom/android/wm/shell/bubbles/Bubble$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/bubbles/Bubble;Ljava/util/concurrent/Executor;Lcom/android/wm/shell/bubbles/Bubbles$PendingIntentCanceledListener;)V

    iput-object p2, p0, Lcom/android/wm/shell/bubbles/Bubble;->mIntentCancelListener:Lcom/android/wm/shell/bubbles/Bubble$$ExternalSyntheticLambda0;

    iput-object p4, p0, Lcom/android/wm/shell/bubbles/Bubble;->mMainExecutor:Ljava/util/concurrent/Executor;

    iput v0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mTaskId:I

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/bubbles/Bubble;->setEntry(Lcom/android/wm/shell/bubbles/BubbleEntry;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;IILjava/lang/String;ILjava/lang/String;ZLjava/util/concurrent/Executor;Lcom/android/wm/shell/bubbles/Bubbles$BubbleMetadataFlagListener;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mShowBubbleUpdateDot:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mAppUid:I

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mMetadataShortcutId:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/wm/shell/bubbles/Bubble;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/Bubble;->mKey:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/Bubble;->mGroupKey:Ljava/lang/String;

    if-eqz p7, :cond_0

    new-instance p1, Landroid/content/LocusId;

    invoke-direct {p1, p7}, Landroid/content/LocusId;-><init>(Ljava/lang/String;)V

    :cond_0
    iput-object p1, p0, Lcom/android/wm/shell/bubbles/Bubble;->mLocusId:Landroid/content/LocusId;

    iput-boolean p8, p0, Lcom/android/wm/shell/bubbles/Bubble;->mIsDismissable:Z

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/wm/shell/bubbles/Bubble;->mFlags:I

    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object p7

    iput-object p7, p0, Lcom/android/wm/shell/bubbles/Bubble;->mUser:Landroid/os/UserHandle;

    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object p7

    iput-object p7, p0, Lcom/android/wm/shell/bubbles/Bubble;->mPackageName:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object p2

    iput-object p2, p0, Lcom/android/wm/shell/bubbles/Bubble;->mIcon:Landroid/graphics/drawable/Icon;

    iput p3, p0, Lcom/android/wm/shell/bubbles/Bubble;->mDesiredHeight:I

    iput p4, p0, Lcom/android/wm/shell/bubbles/Bubble;->mDesiredHeightResId:I

    iput-object p5, p0, Lcom/android/wm/shell/bubbles/Bubble;->mTitle:Ljava/lang/String;

    iput-boolean p1, p0, Lcom/android/wm/shell/bubbles/Bubble;->mShowBubbleUpdateDot:Z

    iput-object p9, p0, Lcom/android/wm/shell/bubbles/Bubble;->mMainExecutor:Ljava/util/concurrent/Executor;

    iput p6, p0, Lcom/android/wm/shell/bubbles/Bubble;->mTaskId:I

    iput-object p10, p0, Lcom/android/wm/shell/bubbles/Bubble;->mBubbleMetadataFlagListener:Lcom/android/wm/shell/bubbles/Bubbles$BubbleMetadataFlagListener;

    iput-boolean p1, p0, Lcom/android/wm/shell/bubbles/Bubble;->mIsAppBubble:Z

    return-void
.end method

.method public static createAppBubble(Landroid/content/Intent;Landroid/os/UserHandle;Landroid/graphics/drawable/Icon;Ljava/util/concurrent/Executor;)Lcom/android/wm/shell/bubbles/Bubble;
    .locals 8

    new-instance v7, Lcom/android/wm/shell/bubbles/Bubble;

    invoke-virtual {p0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/wm/shell/bubbles/Bubble;->getAppBubbleKeyForApp(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/lang/String;

    move-result-object v5

    const/4 v4, 0x1

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/wm/shell/bubbles/Bubble;-><init>(Landroid/content/Intent;Landroid/os/UserHandle;Landroid/graphics/drawable/Icon;ZLjava/lang/String;Ljava/util/concurrent/Executor;)V

    return-object v7
.end method

.method public static getAppBubbleKeyForApp(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "key_app_bubble:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final asBubbleBarBubble()Lcom/android/wm/shell/common/bubbles/BubbleInfo;
    .locals 11

    new-instance v10, Lcom/android/wm/shell/common/bubbles/BubbleInfo;

    iget v2, p0, Lcom/android/wm/shell/bubbles/Bubble;->mFlags:I

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v3, v0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mMetadataShortcutId:Ljava/lang/String;

    goto :goto_0

    :goto_1
    iget-object v4, p0, Lcom/android/wm/shell/bubbles/Bubble;->mIcon:Landroid/graphics/drawable/Icon;

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    iget-object v6, p0, Lcom/android/wm/shell/bubbles/Bubble;->mPackageName:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/wm/shell/bubbles/Bubble;->mTitle:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/wm/shell/bubbles/Bubble;->mAppName:Ljava/lang/String;

    iget-boolean v9, p0, Lcom/android/wm/shell/bubbles/Bubble;->mIsImportantConversation:Z

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/Bubble;->mKey:Ljava/lang/String;

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lcom/android/wm/shell/common/bubbles/BubbleInfo;-><init>(Ljava/lang/String;ILjava/lang/String;Landroid/graphics/drawable/Icon;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v10
.end method

.method public final cleanupExpandedView(Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mExpandedView:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mTaskView:Lcom/android/wm/shell/taskview/TaskView;

    if-eqz v0, :cond_0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/SurfaceView;->setVisibility(I)V

    :cond_0
    iput-object v1, p0, Lcom/android/wm/shell/bubbles/Bubble;->mExpandedView:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mBubbleBarExpandedView:Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->mMenuViewController:Lcom/android/wm/shell/bubbles/bar/BubbleBarMenuViewController;

    invoke-virtual {v0, v2}, Lcom/android/wm/shell/bubbles/bar/BubbleBarMenuViewController;->hideMenu(Z)V

    iput-object v1, p0, Lcom/android/wm/shell/bubbles/Bubble;->mBubbleBarExpandedView:Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;

    :cond_2
    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/android/wm/shell/bubbles/Bubble;->mBubbleTaskView:Lcom/android/wm/shell/bubbles/BubbleTaskView;

    if-eqz p1, :cond_6

    iget v0, p1, Lcom/android/wm/shell/bubbles/BubbleTaskView;->taskId:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_5

    sget-boolean v0, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    if-eqz v0, :cond_3

    iget-object p1, p1, Lcom/android/wm/shell/bubbles/BubbleTaskView;->taskView:Lcom/android/wm/shell/taskview/TaskView;

    iget-object p1, p1, Lcom/android/wm/shell/taskview/TaskView;->mTaskViewTaskController:Lcom/android/wm/shell/taskview/TaskViewTaskController;

    invoke-virtual {p1}, Lcom/android/wm/shell/taskview/TaskViewTaskController;->removeTask()V

    goto :goto_0

    :cond_3
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    iget p1, p1, Lcom/android/wm/shell/bubbles/BubbleTaskView;->taskId:I

    invoke-interface {v0, p1}, Landroid/app/IActivityTaskManager;->removeTask(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_4

    const-string p1, ""

    :cond_4
    const-string v0, "BubbleTaskView"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_0
    iput-object v1, p0, Lcom/android/wm/shell/bubbles/Bubble;->mBubbleTaskView:Lcom/android/wm/shell/bubbles/BubbleTaskView;

    :cond_6
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/Bubble;->mIntent:Landroid/app/PendingIntent;

    if-eqz p1, :cond_7

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mIntentCancelListener:Lcom/android/wm/shell/bubbles/Bubble$$ExternalSyntheticLambda0;

    invoke-virtual {p1, v0}, Landroid/app/PendingIntent;->unregisterCancelListener(Landroid/app/PendingIntent$CancelListener;)V

    :cond_7
    iput-boolean v2, p0, Lcom/android/wm/shell/bubbles/Bubble;->mIntentActive:Z

    return-void
.end method

.method public final cleanupViews()V
    .locals 7

    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_BUBBLES_enabled:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mKey:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_BUBBLES:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v6

    const-wide v2, -0x66401fe03b26c3d6L

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v1 .. v6}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/bubbles/Bubble;->cleanupExpandedView(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mIconView:Lcom/android/wm/shell/bubbles/BadgedImageView;

    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;)V
    .locals 4

    const-string v0, "key: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  showInShade:   "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/Bubble;->showInShade()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  showDot:       "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/Bubble;->showDot()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  showFlyout:    "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/Bubble;->showFlyout()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  lastActivity:  "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mLastUpdated:J

    iget-wide v2, p0, Lcom/android/wm/shell/bubbles/Bubble;->mLastAccessed:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    const-string v0, "  desiredHeight: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mDesiredHeightResId:I

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mDesiredHeight:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  suppressNotif: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/bubbles/Bubble;->isEnabled(I)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  autoExpand:    "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/bubbles/Bubble;->isEnabled(I)Z

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    const-string v1, "  isDismissable: "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/wm/shell/bubbles/Bubble;->mIsDismissable:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "  bubbleMetadataFlagListener null?: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/Bubble;->mBubbleMetadataFlagListener:Lcom/android/wm/shell/bubbles/Bubbles$BubbleMetadataFlagListener;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-static {v1, v0, p1}, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;)V

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mExpandedView:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    if-eqz p0, :cond_2

    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "BubbleExpandedView:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  taskId: "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mTaskId:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  stackView: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mStackView:Lcom/android/wm/shell/bubbles/BubbleStackView;

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p1, Lcom/android/wm/shell/bubbles/Bubble;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    check-cast p1, Lcom/android/wm/shell/bubbles/Bubble;

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mKey:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/wm/shell/bubbles/Bubble;->mKey:Ljava/lang/String;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final getAppBadge()Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mBadgeBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public final getBubbleBarExpandedView()Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mBubbleBarExpandedView:Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;

    return-object p0
.end method

.method public final getBubbleIcon()Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mBubbleBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public final getDotColor()I
    .locals 0

    iget p0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mDotColor:I

    return p0
.end method

.method public final getDotPath()Landroid/graphics/Path;
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mDotPath:Landroid/graphics/Path;

    return-object p0
.end method

.method public final getExpandedView()Lcom/android/wm/shell/bubbles/BubbleExpandedView;
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mExpandedView:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    return-object p0
.end method

.method public final getIconView$1()Lcom/android/wm/shell/bubbles/BadgedImageView;
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mIconView:Lcom/android/wm/shell/bubbles/BadgedImageView;

    return-object p0
.end method

.method public final getKey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mKey:Ljava/lang/String;

    return-object p0
.end method

.method public final getOrCreateBubbleTaskView(Lcom/android/wm/shell/bubbles/BubbleTaskViewFactory;)Lcom/android/wm/shell/bubbles/BubbleTaskView;
    .locals 5

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mBubbleTaskView:Lcom/android/wm/shell/bubbles/BubbleTaskView;

    if-nez v0, :cond_0

    check-cast p1, Lcom/android/wm/shell/bubbles/BubbleController$1;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/wm/shell/taskview/TaskViewTaskController;

    iget-object v1, p1, Lcom/android/wm/shell/bubbles/BubbleController$1;->val$context:Landroid/content/Context;

    iget-object v2, p1, Lcom/android/wm/shell/bubbles/BubbleController$1;->val$syncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    iget-object v3, p1, Lcom/android/wm/shell/bubbles/BubbleController$1;->val$organizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    iget-object v4, p1, Lcom/android/wm/shell/bubbles/BubbleController$1;->val$taskViewTransitions:Lcom/android/wm/shell/taskview/TaskViewTransitions;

    invoke-direct {v0, v1, v3, v4, v2}, Lcom/android/wm/shell/taskview/TaskViewTaskController;-><init>(Landroid/content/Context;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/taskview/TaskViewTransitions;Lcom/android/wm/shell/common/SyncTransactionQueue;)V

    new-instance v1, Lcom/android/wm/shell/taskview/TaskView;

    iget-object v2, p1, Lcom/android/wm/shell/bubbles/BubbleController$1;->val$context:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/android/wm/shell/taskview/TaskView;-><init>(Landroid/content/Context;Lcom/android/wm/shell/taskview/TaskViewTaskController;)V

    new-instance v0, Lcom/android/wm/shell/bubbles/BubbleTaskView;

    iget-object p1, p1, Lcom/android/wm/shell/bubbles/BubbleController$1;->val$mainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    invoke-direct {v0, v1, p1}, Lcom/android/wm/shell/bubbles/BubbleTaskView;-><init>(Lcom/android/wm/shell/taskview/TaskView;Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mBubbleTaskView:Lcom/android/wm/shell/bubbles/BubbleTaskView;

    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mBubbleTaskView:Lcom/android/wm/shell/bubbles/BubbleTaskView;

    return-object p0
.end method

.method public final getSettingsIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APP_NOTIFICATION_BUBBLE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/Bubble;->mChannelId:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v2, "miscellaneous"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.settings.CHANNEL_NOTIFICATION_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.provider.extra.CHANNEL_ID"

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/Bubble;->mChannelId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const-string v1, "android.settings.APP_NOTIFICATION_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/Bubble;->mPackageName:Ljava/lang/String;

    const-string v2, "android.provider.extra.APP_PACKAGE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget v1, p0, Lcom/android/wm/shell/bubbles/Bubble;->mAppUid:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    goto :goto_2

    :cond_1
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/Bubble;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-static {v1, p1}, Lcom/android/wm/shell/bubbles/BubbleController;->getPackageManagerForUser(ILandroid/content/Context;)Landroid/content/pm/PackageManager;

    move-result-object p1

    if-nez p1, :cond_2

    :goto_1
    move v1, v2

    goto :goto_2

    :cond_2
    :try_start_0
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p1, p0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget v1, p0, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    const-string p1, "Bubble"

    const-string v1, "cannot find uid"

    invoke-static {p1, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :goto_2
    if-eq v1, v2, :cond_3

    const-string p0, "app_uid"

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_3
    const p0, 0x8000

    invoke-virtual {v0, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 p0, 0x10000000

    invoke-virtual {v0, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-object v0
.end method

.method public final getTaskId()I
    .locals 1

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mBubbleBarExpandedView:Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;

    if-eqz v0, :cond_1

    iget-object p0, v0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->mBubbleTaskViewHelper:Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;

    if-eqz p0, :cond_0

    iget p0, p0, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;->mTaskId:I

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0

    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mExpandedView:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    if-eqz v0, :cond_2

    iget p0, v0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mTaskId:I

    goto :goto_1

    :cond_2
    iget p0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mTaskId:I

    :goto_1
    return p0
.end method

.method public final hasMetadataShortcutId()Z
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mMetadataShortcutId:Ljava/lang/String;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mKey:Ljava/lang/String;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final inflate(Lcom/android/wm/shell/bubbles/BubbleViewInfoTask$Callback;Landroid/content/Context;Lcom/android/wm/shell/bubbles/BubbleExpandedViewManager;Lcom/android/wm/shell/bubbles/BubbleTaskViewFactory;Lcom/android/wm/shell/bubbles/BubblePositioner;Lcom/android/wm/shell/bubbles/BubbleStackView;Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;Lcom/android/wm/shell/bubbles/BubbleIconFactory;Lcom/android/wm/shell/bubbles/BubbleBadgeIconFactory;Z)V
    .locals 15

    move-object v13, p0

    iget-object v0, v13, Lcom/android/wm/shell/bubbles/Bubble;->mInflationTask:Lcom/android/wm/shell/bubbles/BubbleViewInfoTask;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    iget-object v0, v13, Lcom/android/wm/shell/bubbles/Bubble;->mInflationTask:Lcom/android/wm/shell/bubbles/BubbleViewInfoTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_0
    new-instance v14, Lcom/android/wm/shell/bubbles/BubbleViewInfoTask;

    iget-object v12, v13, Lcom/android/wm/shell/bubbles/Bubble;->mMainExecutor:Ljava/util/concurrent/Executor;

    move-object v0, v14

    move-object v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v10, p10

    move-object/from16 v11, p1

    invoke-direct/range {v0 .. v12}, Lcom/android/wm/shell/bubbles/BubbleViewInfoTask;-><init>(Lcom/android/wm/shell/bubbles/Bubble;Landroid/content/Context;Lcom/android/wm/shell/bubbles/BubbleExpandedViewManager;Lcom/android/wm/shell/bubbles/BubbleTaskViewFactory;Lcom/android/wm/shell/bubbles/BubblePositioner;Lcom/android/wm/shell/bubbles/BubbleStackView;Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;Lcom/android/wm/shell/bubbles/BubbleIconFactory;Lcom/android/wm/shell/bubbles/BubbleBadgeIconFactory;ZLcom/android/wm/shell/bubbles/BubbleViewInfoTask$Callback;Ljava/util/concurrent/Executor;)V

    iput-object v14, v13, Lcom/android/wm/shell/bubbles/Bubble;->mInflationTask:Lcom/android/wm/shell/bubbles/BubbleViewInfoTask;

    iget-boolean v0, v13, Lcom/android/wm/shell/bubbles/Bubble;->mInflateSynchronously:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    new-array v0, v1, [Ljava/lang/Void;

    invoke-virtual {v14}, Lcom/android/wm/shell/bubbles/BubbleViewInfoTask;->doInBackground()Lcom/android/wm/shell/bubbles/BubbleViewInfoTask$BubbleViewInfo;

    move-result-object v0

    invoke-virtual {v14}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_3

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, v14, Lcom/android/wm/shell/bubbles/BubbleViewInfoTask;->mMainExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/android/wm/shell/bubbles/BubbleViewInfoTask$$ExternalSyntheticLambda0;

    invoke-direct {v2, v14, v0}, Lcom/android/wm/shell/bubbles/BubbleViewInfoTask$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/bubbles/BubbleViewInfoTask;Lcom/android/wm/shell/bubbles/BubbleViewInfoTask$BubbleViewInfo;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_2
    new-array v0, v1, [Ljava/lang/Void;

    invoke-virtual {v14, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_3
    :goto_0
    return-void
.end method

.method public final isEnabled(I)Z
    .locals 0

    iget p0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mFlags:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isSuppressed()Z
    .locals 0

    iget p0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mFlags:I

    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final setEntry(Lcom/android/wm/shell/bubbles/BubbleEntry;)V
    .locals 7

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/Bubble;->showDot()Z

    move-result v0

    iget-object v1, p1, Lcom/android/wm/shell/bubbles/BubbleEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPostTime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/wm/shell/bubbles/Bubble;->mLastUpdated:J

    iget-object v1, p1, Lcom/android/wm/shell/bubbles/BubbleEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification;->isBubbleNotification()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/wm/shell/bubbles/Bubble;->mIsBubble:Z

    iget-object v1, p1, Lcom/android/wm/shell/bubbles/BubbleEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/wm/shell/bubbles/Bubble;->mPackageName:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/wm/shell/bubbles/BubbleEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    iput-object v1, p0, Lcom/android/wm/shell/bubbles/Bubble;->mUser:Landroid/os/UserHandle;

    iget-object v1, p1, Lcom/android/wm/shell/bubbles/BubbleEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget-object v1, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v2, "android.title"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lcom/android/wm/shell/bubbles/Bubble;->mTitle:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/wm/shell/bubbles/BubbleEntry;->mRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/service/notification/NotificationListenerService$Ranking;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/android/wm/shell/bubbles/BubbleEntry;->mRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v1}, Landroid/service/notification/NotificationListenerService$Ranking;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    iget-object v1, p1, Lcom/android/wm/shell/bubbles/BubbleEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification;->getChannelId()Ljava/lang/String;

    move-result-object v1

    :goto_1
    iput-object v1, p0, Lcom/android/wm/shell/bubbles/Bubble;->mChannelId:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/wm/shell/bubbles/BubbleEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v1

    iput v1, p0, Lcom/android/wm/shell/bubbles/Bubble;->mNotificationId:I

    iget-object v1, p1, Lcom/android/wm/shell/bubbles/BubbleEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v1

    iput v1, p0, Lcom/android/wm/shell/bubbles/Bubble;->mAppUid:I

    iget-object v1, p1, Lcom/android/wm/shell/bubbles/BubbleEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getInstanceId()Lcom/android/internal/logging/InstanceId;

    move-result-object v1

    iput-object v1, p0, Lcom/android/wm/shell/bubbles/Bubble;->mInstanceId:Lcom/android/internal/logging/InstanceId;

    iget-object v1, p1, Lcom/android/wm/shell/bubbles/BubbleEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification;->getNotificationStyle()Ljava/lang/Class;

    move-result-object v3

    new-instance v4, Lcom/android/wm/shell/bubbles/Bubble$FlyoutMessage;

    invoke-direct {v4}, Lcom/android/wm/shell/bubbles/Bubble$FlyoutMessage;-><init>()V

    iget-object v5, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v6, "android.isGroupConversation"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, v4, Lcom/android/wm/shell/bubbles/Bubble$FlyoutMessage;->isGroupChat:Z

    :try_start_0
    const-class v5, Landroid/app/Notification$BigTextStyle;

    invoke-virtual {v5, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v6, "android.text"

    if-eqz v5, :cond_3

    :try_start_1
    iget-object v3, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v5, "android.bigText"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_2

    :cond_2
    iget-object v1, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    :goto_2
    iput-object v3, v4, Lcom/android/wm/shell/bubbles/Bubble$FlyoutMessage;->message:Ljava/lang/CharSequence;

    goto/16 :goto_6

    :catch_0
    move-exception v1

    goto/16 :goto_5

    :cond_3
    const-class v5, Landroid/app/Notification$MessagingStyle;

    invoke-virtual {v5, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v1, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v3, "android.messages"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/os/Parcelable;

    invoke-static {v1}, Landroid/app/Notification$MessagingStyle$Message;->getMessagesFromBundleArray([Landroid/os/Parcelable;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Landroid/app/Notification$MessagingStyle;->findLatestIncomingMessage(Ljava/util/List;)Landroid/app/Notification$MessagingStyle$Message;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Landroid/app/Notification$MessagingStyle$Message;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, v4, Lcom/android/wm/shell/bubbles/Bubble$FlyoutMessage;->message:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Landroid/app/Notification$MessagingStyle$Message;->getSenderPerson()Landroid/app/Person;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v3

    goto :goto_3

    :cond_4
    move-object v3, v2

    :goto_3
    iput-object v3, v4, Lcom/android/wm/shell/bubbles/Bubble$FlyoutMessage;->senderName:Ljava/lang/CharSequence;

    iput-object v2, v4, Lcom/android/wm/shell/bubbles/Bubble$FlyoutMessage;->senderAvatar:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/app/Person;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v1

    goto :goto_4

    :cond_5
    move-object v1, v2

    :goto_4
    iput-object v1, v4, Lcom/android/wm/shell/bubbles/Bubble$FlyoutMessage;->senderIcon:Landroid/graphics/drawable/Icon;

    goto :goto_6

    :cond_6
    const-class v5, Landroid/app/Notification$InboxStyle;

    invoke-virtual {v5, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v1, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v3, "android.textLines"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_9

    array-length v3, v1

    if-lez v3, :cond_9

    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    aget-object v1, v1, v3

    iput-object v1, v4, Lcom/android/wm/shell/bubbles/Bubble$FlyoutMessage;->message:Ljava/lang/CharSequence;

    goto :goto_6

    :cond_7
    const-class v5, Landroid/app/Notification$MediaStyle;

    invoke-virtual {v5, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    goto :goto_6

    :cond_8
    iget-object v1, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v4, Lcom/android/wm/shell/bubbles/Bubble$FlyoutMessage;->message:Ljava/lang/CharSequence;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_6

    :goto_5
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    :cond_9
    :goto_6
    iput-object v4, p0, Lcom/android/wm/shell/bubbles/Bubble;->mFlyoutMessage:Lcom/android/wm/shell/bubbles/Bubble$FlyoutMessage;

    iget-object v1, p1, Lcom/android/wm/shell/bubbles/BubbleEntry;->mRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Landroid/service/notification/NotificationListenerService$Ranking;->getConversationShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/wm/shell/bubbles/Bubble;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    iget-object v1, p1, Lcom/android/wm/shell/bubbles/BubbleEntry;->mRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v1}, Landroid/service/notification/NotificationListenerService$Ranking;->isTextChanged()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/wm/shell/bubbles/Bubble;->mIsTextChanged:Z

    iget-object v1, p1, Lcom/android/wm/shell/bubbles/BubbleEntry;->mRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v1}, Landroid/service/notification/NotificationListenerService$Ranking;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v1

    if-eqz v1, :cond_a

    iget-object v1, p1, Lcom/android/wm/shell/bubbles/BubbleEntry;->mRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v1}, Landroid/service/notification/NotificationListenerService$Ranking;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/NotificationChannel;->isImportantConversation()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/wm/shell/bubbles/Bubble;->mIsImportantConversation:Z

    :cond_a
    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/BubbleEntry;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    move-result-object v1

    if-eqz v1, :cond_f

    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/BubbleEntry;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification$BubbleMetadata;->getShortcutId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/wm/shell/bubbles/Bubble;->mMetadataShortcutId:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/BubbleEntry;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification$BubbleMetadata;->getFlags()I

    move-result v1

    iput v1, p0, Lcom/android/wm/shell/bubbles/Bubble;->mFlags:I

    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/BubbleEntry;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification$BubbleMetadata;->getDesiredHeight()I

    move-result v1

    iput v1, p0, Lcom/android/wm/shell/bubbles/Bubble;->mDesiredHeight:I

    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/BubbleEntry;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification$BubbleMetadata;->getDesiredHeightResId()I

    move-result v1

    iput v1, p0, Lcom/android/wm/shell/bubbles/Bubble;->mDesiredHeightResId:I

    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/BubbleEntry;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification$BubbleMetadata;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v1

    iput-object v1, p0, Lcom/android/wm/shell/bubbles/Bubble;->mIcon:Landroid/graphics/drawable/Icon;

    iget-boolean v1, p0, Lcom/android/wm/shell/bubbles/Bubble;->mIntentActive:Z

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/Bubble;->mIntent:Landroid/app/PendingIntent;

    if-nez v1, :cond_b

    goto :goto_7

    :cond_b
    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/BubbleEntry;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification$BubbleMetadata;->getIntent()Landroid/app/PendingIntent;

    move-result-object v1

    if-nez v1, :cond_e

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/Bubble;->mIntent:Landroid/app/PendingIntent;

    iget-object v3, p0, Lcom/android/wm/shell/bubbles/Bubble;->mIntentCancelListener:Lcom/android/wm/shell/bubbles/Bubble$$ExternalSyntheticLambda0;

    invoke-virtual {v1, v3}, Landroid/app/PendingIntent;->unregisterCancelListener(Landroid/app/PendingIntent$CancelListener;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/wm/shell/bubbles/Bubble;->mIntentActive:Z

    iput-object v2, p0, Lcom/android/wm/shell/bubbles/Bubble;->mIntent:Landroid/app/PendingIntent;

    goto :goto_8

    :cond_c
    :goto_7
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/Bubble;->mIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_d

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/Bubble;->mIntentCancelListener:Lcom/android/wm/shell/bubbles/Bubble$$ExternalSyntheticLambda0;

    invoke-virtual {v1, v2}, Landroid/app/PendingIntent;->unregisterCancelListener(Landroid/app/PendingIntent$CancelListener;)V

    :cond_d
    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/BubbleEntry;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification$BubbleMetadata;->getIntent()Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/wm/shell/bubbles/Bubble;->mIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_e

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/Bubble;->mIntentCancelListener:Lcom/android/wm/shell/bubbles/Bubble$$ExternalSyntheticLambda0;

    invoke-virtual {v1, v2}, Landroid/app/PendingIntent;->registerCancelListener(Landroid/app/PendingIntent$CancelListener;)V

    :cond_e
    :goto_8
    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/BubbleEntry;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification$BubbleMetadata;->getDeleteIntent()Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/wm/shell/bubbles/Bubble;->mDeleteIntent:Landroid/app/PendingIntent;

    :cond_f
    iget-boolean v1, p1, Lcom/android/wm/shell/bubbles/BubbleEntry;->mIsDismissable:Z

    iput-boolean v1, p0, Lcom/android/wm/shell/bubbles/Bubble;->mIsDismissable:Z

    iget-boolean v1, p1, Lcom/android/wm/shell/bubbles/BubbleEntry;->mShouldSuppressNotificationDot:Z

    iput-boolean v1, p0, Lcom/android/wm/shell/bubbles/Bubble;->mShouldSuppressNotificationDot:Z

    iget-boolean v1, p1, Lcom/android/wm/shell/bubbles/BubbleEntry;->mShouldSuppressNotificationList:Z

    iput-boolean v1, p0, Lcom/android/wm/shell/bubbles/Bubble;->mShouldSuppressNotificationList:Z

    iget-boolean p1, p1, Lcom/android/wm/shell/bubbles/BubbleEntry;->mShouldSuppressPeek:Z

    iput-boolean p1, p0, Lcom/android/wm/shell/bubbles/Bubble;->mShouldSuppressPeek:Z

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/Bubble;->showDot()Z

    move-result p1

    if-eq v0, p1, :cond_10

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/Bubble;->showDot()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/bubbles/Bubble;->setShowDot(Z)V

    :cond_10
    return-void
.end method

.method public setInflateSynchronously(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/wm/shell/bubbles/Bubble;->mInflateSynchronously:Z

    return-void
.end method

.method public setShouldAutoExpand(Z)V
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/bubbles/Bubble;->isEnabled(I)Z

    move-result v1

    if-eqz p1, :cond_0

    iget v2, p0, Lcom/android/wm/shell/bubbles/Bubble;->mFlags:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mFlags:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mFlags:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mFlags:I

    :goto_0
    if-eq v1, p1, :cond_1

    iget-object p1, p0, Lcom/android/wm/shell/bubbles/Bubble;->mBubbleMetadataFlagListener:Lcom/android/wm/shell/bubbles/Bubbles$BubbleMetadataFlagListener;

    if-eqz p1, :cond_1

    invoke-interface {p1, p0}, Lcom/android/wm/shell/bubbles/Bubbles$BubbleMetadataFlagListener;->onBubbleMetadataFlagChanged(Lcom/android/wm/shell/bubbles/Bubble;)V

    :cond_1
    return-void
.end method

.method public final setShowDot(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/wm/shell/bubbles/Bubble;->mShowBubbleUpdateDot:Z

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mIconView:Lcom/android/wm/shell/bubbles/BadgedImageView;

    if-eqz p0, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/bubbles/BadgedImageView;->updateDotVisibility(Z)V

    :cond_0
    return-void
.end method

.method public final setSuppressBubble(Z)V
    .locals 2

    iget v0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/Bubble;->isSuppressed()Z

    move-result v0

    if-eqz p1, :cond_0

    iget v1, p0, Lcom/android/wm/shell/bubbles/Bubble;->mFlags:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/android/wm/shell/bubbles/Bubble;->mFlags:I

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/android/wm/shell/bubbles/Bubble;->mFlags:I

    and-int/lit8 v1, v1, -0x9

    iput v1, p0, Lcom/android/wm/shell/bubbles/Bubble;->mFlags:I

    :goto_0
    if-eq v0, p1, :cond_1

    iget-object p1, p0, Lcom/android/wm/shell/bubbles/Bubble;->mBubbleMetadataFlagListener:Lcom/android/wm/shell/bubbles/Bubbles$BubbleMetadataFlagListener;

    if-eqz p1, :cond_1

    invoke-interface {p1, p0}, Lcom/android/wm/shell/bubbles/Bubbles$BubbleMetadataFlagListener;->onBubbleMetadataFlagChanged(Lcom/android/wm/shell/bubbles/Bubble;)V

    :cond_1
    return-void

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "calling setSuppressBubble on "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mKey:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " when bubble not suppressable"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Bubble"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setSuppressNotification(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/Bubble;->showInShade()Z

    move-result v0

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/android/wm/shell/bubbles/Bubble;->mFlags:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/android/wm/shell/bubbles/Bubble;->mFlags:I

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/android/wm/shell/bubbles/Bubble;->mFlags:I

    and-int/lit8 p1, p1, -0x3

    iput p1, p0, Lcom/android/wm/shell/bubbles/Bubble;->mFlags:I

    :goto_0
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/Bubble;->showInShade()Z

    move-result p1

    if-eq p1, v0, :cond_1

    iget-object p1, p0, Lcom/android/wm/shell/bubbles/Bubble;->mBubbleMetadataFlagListener:Lcom/android/wm/shell/bubbles/Bubbles$BubbleMetadataFlagListener;

    if-eqz p1, :cond_1

    invoke-interface {p1, p0}, Lcom/android/wm/shell/bubbles/Bubbles$BubbleMetadataFlagListener;->onBubbleMetadataFlagChanged(Lcom/android/wm/shell/bubbles/Bubble;)V

    :cond_1
    return-void
.end method

.method public final setTaskViewVisibility()V
    .locals 1

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mExpandedView:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->setContentVisibility(Z)V

    :cond_0
    return-void
.end method

.method public setTextChangedForTest(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/wm/shell/bubbles/Bubble;->mIsTextChanged:Z

    return-void
.end method

.method public final showDot()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mShowBubbleUpdateDot:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mShouldSuppressNotificationDot:Z

    if-nez v0, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/bubbles/Bubble;->isEnabled(I)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public showFlyout()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mSuppressFlyout:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mShouldSuppressPeek:Z

    if-nez v0, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/bubbles/Bubble;->isEnabled(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean p0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mShouldSuppressNotificationList:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final showInShade()Z
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/bubbles/Bubble;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean p0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mIsDismissable:Z

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Bubble{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/Bubble;->mKey:Ljava/lang/String;

    const/16 v1, 0x7d

    invoke-static {v0, p0, v1}, Landroidx/compose/runtime/OpaqueKey$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
