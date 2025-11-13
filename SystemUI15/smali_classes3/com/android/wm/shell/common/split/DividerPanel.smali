.class public final Lcom/android/wm/shell/common/split/DividerPanel;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/View$OnHoverListener;


# instance fields
.field public mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field public mAddToAppPairDialog:Landroid/app/AlertDialog;

.field public mAppPairShortcutController:Lcom/android/wm/shell/splitscreen/AppPairShortcutController;

.field public mCallbacks:Lcom/android/wm/shell/common/split/DividerPanel$DividerPanelCallbacks;

.field public final mContentResolver:Landroid/content/ContentResolver;

.field public mContext:Landroid/content/Context;

.field public final mDismissReceiver:Lcom/android/wm/shell/common/split/DividerPanel$1;

.field public final mH:Lcom/android/wm/shell/common/split/DividerPanel$H;

.field public mIsLongPressOrHover:Z

.field public final mIsSystemUser:Z

.field public final mRemoveRunnable:Lcom/android/wm/shell/common/split/DividerPanel$$ExternalSyntheticLambda1;

.field public mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

.field public mView:Lcom/android/wm/shell/common/split/DividerPanelView;

.field public final mWindowManager:Lcom/android/wm/shell/common/split/DividerPanelWindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/wm/shell/common/split/DividerPanel;->mIsLongPressOrHover:Z

    new-instance v1, Lcom/android/wm/shell/common/split/DividerPanel$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/common/split/DividerPanel$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/common/split/DividerPanel;)V

    iput-object v1, p0, Lcom/android/wm/shell/common/split/DividerPanel;->mRemoveRunnable:Lcom/android/wm/shell/common/split/DividerPanel$$ExternalSyntheticLambda1;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    const v2, 0x10302e3

    invoke-direct {v1, p1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/android/wm/shell/common/split/DividerPanel;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/wm/shell/common/split/DividerPanel;->mContentResolver:Landroid/content/ContentResolver;

    new-instance v1, Lcom/android/wm/shell/common/split/DividerPanelWindowManager;

    invoke-direct {v1, p1}, Lcom/android/wm/shell/common/split/DividerPanelWindowManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/wm/shell/common/split/DividerPanel;->mWindowManager:Lcom/android/wm/shell/common/split/DividerPanelWindowManager;

    new-instance v6, Lcom/android/wm/shell/common/split/DividerPanel$H;

    invoke-direct {v6, p0, v0}, Lcom/android/wm/shell/common/split/DividerPanel$H;-><init>(Lcom/android/wm/shell/common/split/DividerPanel;I)V

    iput-object v6, p0, Lcom/android/wm/shell/common/split/DividerPanel;->mH:Lcom/android/wm/shell/common/split/DividerPanel$H;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/android/wm/shell/common/split/DividerPanel;->mIsSystemUser:Z

    new-instance v3, Lcom/android/wm/shell/common/split/DividerPanel$1;

    invoke-direct {v3, p0}, Lcom/android/wm/shell/common/split/DividerPanel$1;-><init>(Lcom/android/wm/shell/common/split/DividerPanel;)V

    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    const-string p0, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v4, p0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v4, p0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p0, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v4, p0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v7, 0x2

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final getAppPairDialogItems()Landroid/util/ArrayMap;
    .locals 4

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/DividerPanel;->isAddToTaskBarEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/wm/shell/common/split/DividerPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f131341

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v1, p0, Lcom/android/wm/shell/common/split/DividerPanel;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->isDefaultLauncher(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/wm/shell/common/split/DividerPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f130762

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/DividerPanel;->isAddToEdgeEnable()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object p0, p0, Lcom/android/wm/shell/common/split/DividerPanel;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v2, 0x7f1301bb

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public final isAddToEdgeEnable()Z
    .locals 7

    iget-object v0, p0, Lcom/android/wm/shell/common/split/DividerPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "edge_enable"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const-string v1, "DividerPanel"

    const/4 v4, 0x1

    if-ne v0, v4, :cond_a

    iget-object v0, p0, Lcom/android/wm/shell/common/split/DividerPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v5, "cocktail_bar_enabled_cocktails"

    invoke-static {v0, v5, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    const-string v5, "com.samsung.app.honeyspace.edge.appsedge.ui.panel.AppsEdgePanelProvider"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/wm/shell/common/split/DividerPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v5, "easy_mode_switch"

    invoke-static {v0, v5, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "EasyMode on"

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    iget-boolean v0, p0, Lcom/android/wm/shell/common/split/DividerPanel;->mIsSystemUser:Z

    if-nez v0, :cond_1

    const-string p0, "Not system user"

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/common/split/DividerPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-ne v0, v5, :cond_4

    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->isTablet()Z

    move-result v0

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_FOLDING_POLICY:Z

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/android/wm/shell/common/split/DividerPanel;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->isInSubDisplay(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const-string p0, "Is not tablet, or is foldable device, but is in sub-display."

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_3
    :goto_0
    return v4

    :cond_4
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_APP_PAIR_FOLDING_POLICY:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/wm/shell/common/split/DividerPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v6, "edge_show_screen"

    invoke-static {v0, v6, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iget-object p0, p0, Lcom/android/wm/shell/common/split/DividerPanel;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->isInSubDisplay(Landroid/content/Context;)Z

    move-result p0

    if-eqz v0, :cond_6

    if-eq v0, v4, :cond_5

    if-eq v0, v5, :cond_7

    move p0, v2

    goto :goto_1

    :cond_5
    xor-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_6
    move p0, v4

    :cond_7
    :goto_1
    if-nez p0, :cond_8

    const-string p0, "Invalid edge show screen"

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_8
    return v4

    :cond_9
    const-string p0, "AppsEdge disable"

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_a
    const-string p0, "Edge disable"

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public final isAddToTaskBarEnable()Z
    .locals 7

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_LAUNCHER_SUPPORT_TASKBAR"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/wm/shell/common/split/DividerPanel;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "sem_task_bar_available"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    iget-object p0, p0, Lcom/android/wm/shell/common/split/DividerPanel;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->isInSubDisplay(Landroid/content/Context;)Z

    move-result p0

    const-string/jumbo v4, "supportTaskBar: "

    const-string v5, "hasTaskBar: "

    const-string v6, " inSubDisplay: "

    invoke-static {v4, v5, v6, v0, v1}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "DividerPanel"

    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    if-nez p0, :cond_1

    move v3, v2

    :cond_1
    return v3
.end method

.method public final isSupportPanelOpenPolicy()Z
    .locals 3

    iget-object p0, p0, Lcom/android/wm/shell/common/split/DividerPanel;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    if-eqz p0, :cond_4

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz p0, :cond_1

    iget-object v1, p0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    :cond_1
    const-string p0, "com.samsung.android.app.taskedge"

    if-eqz v0, :cond_2

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->isAppsEdgeActivity(Landroid/content/ComponentName;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    if-eqz v1, :cond_4

    invoke-static {v1}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->isAppsEdgeActivity(Landroid/content/ComponentName;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    :cond_3
    const/4 p0, 0x0

    return p0

    :cond_4
    const/4 p0, 0x1

    return p0
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/common/split/DividerPanel;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    iget-object v0, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0a09f3

    if-ne v1, v2, :cond_2

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->rotateMultiSplitWithTransition()Z

    :cond_0
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_DIVIDER_SA_LOGGING:Z

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/android/wm/shell/common/split/DividerPanel;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {p1}, Lcom/android/wm/shell/common/split/SplitLayout;->isVerticalDivision()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "Horizontal split -> Vertical split"

    goto :goto_0

    :cond_1
    const-string p1, "Vertical split -> Horizontal split"

    :goto_0
    const-string v0, "1032"

    invoke-static {v0, p1}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0a0ce5

    if-ne v1, v2, :cond_4

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->swapTasksInSplitScreenMode$1()V

    :cond_3
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_DIVIDER_SA_LOGGING:Z

    if-eqz p1, :cond_5

    const-string p1, "1033"

    invoke-static {p1}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a00ad

    if-ne p1, v0, :cond_5

    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/DividerPanel;->getAppPairDialogItems()Landroid/util/ArrayMap;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/wm/shell/common/split/DividerPanel;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f130185

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/CharSequence;

    new-instance v2, Lcom/android/wm/shell/common/split/DividerPanel$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, p1}, Lcom/android/wm/shell/common/split/DividerPanel$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/common/split/DividerPanel;Landroid/util/ArrayMap;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/common/split/DividerPanel;->mAddToAppPairDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x7d8

    invoke-virtual {p1, v0}, Landroid/view/Window;->setType(I)V

    iget-object p1, p0, Lcom/android/wm/shell/common/split/DividerPanel;->mAddToAppPairDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x50

    invoke-virtual {p1, v0}, Landroid/view/Window;->setGravity(I)V

    iget-object p1, p0, Lcom/android/wm/shell/common/split/DividerPanel;->mAddToAppPairDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_APP_PAIR_SA_LOGGING:Z

    if-eqz p1, :cond_5

    const-string p1, "1036"

    invoke-static {p1}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;)V

    :cond_5
    :goto_1
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/wm/shell/common/split/DividerPanel;->mIsLongPressOrHover:Z

    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/DividerPanel;->removeDividerPanel()V

    return-void
.end method

.method public final onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/16 p2, 0x9

    const/4 v0, 0x0

    if-eq p1, p2, :cond_1

    const/16 p2, 0xa

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean v0, p0, Lcom/android/wm/shell/common/split/DividerPanel;->mIsLongPressOrHover:Z

    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/DividerPanel;->scheduleRemoveDividerPanel()V

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/wm/shell/common/split/DividerPanel;->mIsLongPressOrHover:Z

    :goto_0
    return v0
.end method

.method public final onLongClick(Landroid/view/View;)Z
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/wm/shell/common/split/DividerPanel;->mIsLongPressOrHover:Z

    const/4 p0, 0x0

    return p0
.end method

.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-eq p1, p2, :cond_0

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean v0, p0, Lcom/android/wm/shell/common/split/DividerPanel;->mIsLongPressOrHover:Z

    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/DividerPanel;->scheduleRemoveDividerPanel()V

    :goto_0
    return v0
.end method

.method public final removeDividerPanel()V
    .locals 4

    iget-boolean v0, p0, Lcom/android/wm/shell/common/split/DividerPanel;->mIsLongPressOrHover:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/common/split/DividerPanel;->mWindowManager:Lcom/android/wm/shell/common/split/DividerPanelWindowManager;

    iget-object v1, v0, Lcom/android/wm/shell/common/split/DividerPanelWindowManager;->mView:Landroid/view/View;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "remove, mView="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/android/wm/shell/common/split/DividerPanelWindowManager;->mView:Landroid/view/View;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "DividerPanelWindowManager"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/android/wm/shell/common/split/DividerPanelWindowManager;->mWm:Landroid/view/WindowManager;

    iget-object v3, v0, Lcom/android/wm/shell/common/split/DividerPanelWindowManager;->mView:Landroid/view/View;

    invoke-interface {v1, v3}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    iput-object v2, v0, Lcom/android/wm/shell/common/split/DividerPanelWindowManager;->mView:Landroid/view/View;

    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/common/split/DividerPanel;->mCallbacks:Lcom/android/wm/shell/common/split/DividerPanel$DividerPanelCallbacks;

    if-eqz v0, :cond_2

    check-cast v0, Lcom/android/wm/shell/common/split/SplitWindowManager;

    iget-boolean v1, v0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mShowingFirstAutoOpenDividerPanel:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mIsFirstAutoOpenDividerPanel:Z

    iget-object v0, v0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "divider_panel_first_auto_open"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string v0, "SplitWindowManager"

    const-string v1, "Exit DividerPanel first auto open"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iput-object v2, p0, Lcom/android/wm/shell/common/split/DividerPanel;->mCallbacks:Lcom/android/wm/shell/common/split/DividerPanel$DividerPanelCallbacks;

    return-void
.end method

.method public final scheduleRemoveDividerPanel()V
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/common/split/DividerPanel;->mH:Lcom/android/wm/shell/common/split/DividerPanel$H;

    iget-object v1, p0, Lcom/android/wm/shell/common/split/DividerPanel;->mRemoveRunnable:Lcom/android/wm/shell/common/split/DividerPanel$$ExternalSyntheticLambda1;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/wm/shell/common/split/DividerPanel;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    const/16 v1, 0xbb8

    if-eqz v0, :cond_0

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/view/accessibility/AccessibilityManager;->getRecommendedTimeoutMillis(II)I

    move-result v1

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/common/split/DividerPanel;->mH:Lcom/android/wm/shell/common/split/DividerPanel$H;

    iget-object p0, p0, Lcom/android/wm/shell/common/split/DividerPanel;->mRemoveRunnable:Lcom/android/wm/shell/common/split/DividerPanel$$ExternalSyntheticLambda1;

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final updateDividerPanel()V
    .locals 17

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/common/split/DividerPanel;->removeDividerPanel()V

    iget-object v1, v0, Lcom/android/wm/shell/common/split/DividerPanel;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d00e8

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/common/split/DividerPanelView;

    iput-object v1, v0, Lcom/android/wm/shell/common/split/DividerPanel;->mView:Lcom/android/wm/shell/common/split/DividerPanelView;

    new-instance v2, Lcom/android/wm/shell/common/split/DividerPanel$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lcom/android/wm/shell/common/split/DividerPanel$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/common/split/DividerPanel;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v1, v0, Lcom/android/wm/shell/common/split/DividerPanel;->mView:Lcom/android/wm/shell/common/split/DividerPanelView;

    const v2, 0x7f0a09f3

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/LottieAnimationView;

    iget-object v2, v0, Lcom/android/wm/shell/common/split/DividerPanel;->mView:Lcom/android/wm/shell/common/split/DividerPanelView;

    const v4, 0x7f0a0ce5

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/LottieAnimationView;

    iget-object v4, v0, Lcom/android/wm/shell/common/split/DividerPanel;->mView:Lcom/android/wm/shell/common/split/DividerPanelView;

    const v5, 0x7f0a00ad

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_FREE_POSITION:Z

    const/4 v2, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_1

    iget-object v5, v0, Lcom/android/wm/shell/common/split/DividerPanel;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {v5}, Lcom/android/wm/shell/common/split/SplitLayout;->isVerticalDivision()Z

    move-result v5

    if-nez v5, :cond_0

    :goto_0
    move v5, v4

    goto :goto_1

    :cond_0
    move v5, v2

    goto :goto_1

    :cond_1
    iget-object v5, v0, Lcom/android/wm/shell/common/split/DividerPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    if-ne v5, v4, :cond_0

    goto :goto_0

    :goto_1
    iget-object v6, v0, Lcom/android/wm/shell/common/split/DividerPanel;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    iget-object v6, v6, Lcom/android/wm/shell/common/split/SplitLayout;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    const-string v7, "DividerPanel"

    if-nez v6, :cond_2

    const-string v0, "addDividerPanel, failed. StageCoordinator is null"

    invoke-static {v7, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_14

    :cond_2
    invoke-virtual {v6}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getSplitCreateMode()I

    move-result v8

    iget-object v9, v0, Lcom/android/wm/shell/common/split/DividerPanel;->mView:Lcom/android/wm/shell/common/split/DividerPanelView;

    invoke-virtual {v6}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isMultiSplitScreenVisible()Z

    move-result v6

    sget-boolean v10, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT:Z

    const/4 v11, 0x4

    const/4 v12, 0x5

    const/4 v13, 0x3

    const/4 v14, 0x2

    if-nez v10, :cond_3

    move v1, v2

    goto :goto_6

    :cond_3
    if-eq v8, v14, :cond_9

    if-eq v8, v13, :cond_8

    if-eq v8, v11, :cond_5

    if-eq v8, v12, :cond_4

    const/4 v1, -0x1

    goto :goto_3

    :cond_4
    move v1, v14

    goto :goto_3

    :cond_5
    if-eqz v1, :cond_7

    :cond_6
    move v1, v12

    goto :goto_3

    :cond_7
    :goto_2
    move v1, v13

    goto :goto_3

    :cond_8
    move v1, v11

    goto :goto_3

    :cond_9
    if-eqz v1, :cond_6

    goto :goto_2

    :goto_3
    if-eq v1, v13, :cond_b

    if-ne v1, v12, :cond_a

    goto :goto_4

    :cond_a
    move v1, v2

    goto :goto_5

    :cond_b
    :goto_4
    move v1, v4

    :goto_5
    iget-object v10, v0, Lcom/android/wm/shell/common/split/DividerPanel;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {v10, v1}, Lcom/android/wm/shell/common/split/SplitLayout;->isSplitScreenFeasible(Z)Z

    move-result v1

    :goto_6
    iget-object v10, v0, Lcom/android/wm/shell/common/split/DividerPanel;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    iget-object v10, v10, Lcom/android/wm/shell/common/split/SplitLayout;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    if-eqz v10, :cond_c

    iget-boolean v10, v10, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellDividerVisible:Z

    if-nez v10, :cond_c

    move v10, v4

    goto :goto_7

    :cond_c
    move v10, v2

    :goto_7
    iget-object v15, v0, Lcom/android/wm/shell/common/split/DividerPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v15

    iget v15, v15, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v4, 0x258

    if-ge v15, v4, :cond_e

    iget-object v4, v0, Lcom/android/wm/shell/common/split/DividerPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    if-ne v4, v14, :cond_e

    :cond_d
    :goto_8
    move v4, v2

    goto/16 :goto_c

    :cond_e
    iget-object v4, v0, Lcom/android/wm/shell/common/split/DividerPanel;->mAppPairShortcutController:Lcom/android/wm/shell/splitscreen/AppPairShortcutController;

    iget-object v15, v0, Lcom/android/wm/shell/common/split/DividerPanel;->mContext:Landroid/content/Context;

    iget-object v4, v4, Lcom/android/wm/shell/splitscreen/AppPairShortcutController;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    iget-object v13, v4, Lcom/android/wm/shell/common/split/SplitLayout;->mWinToken1:Landroid/window/WindowContainerToken;

    const-string v14, "AppPairShortcutController"

    if-eqz v13, :cond_17

    iget-object v12, v4, Lcom/android/wm/shell/common/split/SplitLayout;->mWinToken2:Landroid/window/WindowContainerToken;

    if-nez v12, :cond_f

    goto/16 :goto_b

    :cond_f
    iget-object v12, v4, Lcom/android/wm/shell/common/split/SplitLayout;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {v12, v13, v3}, Landroid/window/TaskOrganizer;->getChildTasks(Landroid/window/WindowContainerToken;[I)Ljava/util/List;

    move-result-object v13

    iget-object v11, v4, Lcom/android/wm/shell/common/split/SplitLayout;->mWinToken2:Landroid/window/WindowContainerToken;

    invoke-virtual {v12, v11, v3}, Landroid/window/TaskOrganizer;->getChildTasks(Landroid/window/WindowContainerToken;[I)Ljava/util/List;

    move-result-object v11

    sget-boolean v16, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_APP_PAIR:Z

    if-eqz v16, :cond_10

    iget-object v4, v4, Lcom/android/wm/shell/common/split/SplitLayout;->mWinToken3:Landroid/window/WindowContainerToken;

    if-eqz v4, :cond_10

    invoke-virtual {v12, v4, v3}, Landroid/window/TaskOrganizer;->getChildTasks(Landroid/window/WindowContainerToken;[I)Ljava/util/List;

    move-result-object v4

    goto :goto_9

    :cond_10
    move-object v4, v3

    :goto_9
    if-eqz v13, :cond_16

    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_16

    if-eqz v11, :cond_16

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_11

    goto/16 :goto_a

    :cond_11
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v13, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/app/TaskInfo;

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/TaskInfo;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v16, :cond_12

    if-eqz v4, :cond_12

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_12

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/TaskInfo;

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_12
    invoke-static {v15, v12}, Lcom/android/wm/shell/splitscreen/AppPairShortcutController;->isSupportAppPairForMultiInstance(Landroid/content/Context;Ljava/util/ArrayList;)Z

    move-result v4

    if-nez v4, :cond_13

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v11, "[isSupportAppPairPolicy] isSupportAppPairForMultiInstance returns false. "

    invoke-direct {v4, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v14, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    :cond_13
    invoke-static {v12}, Lcom/android/wm/shell/splitscreen/AppPairShortcutController;->isSupportAppPairType(Ljava/util/ArrayList;)Z

    move-result v4

    if-nez v4, :cond_14

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v11, "[isSupportAppPairPolicy] isSupportAppPairType returns false. "

    invoke-direct {v4, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v14, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/common/split/DividerPanel;->isAddToTaskBarEnable()Z

    move-result v4

    if-nez v4, :cond_15

    iget-object v4, v0, Lcom/android/wm/shell/common/split/DividerPanel;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->isDefaultLauncher(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_15

    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/common/split/DividerPanel;->isAddToEdgeEnable()Z

    move-result v4

    if-eqz v4, :cond_d

    :cond_15
    const/4 v4, 0x1

    goto :goto_c

    :cond_16
    :goto_a
    const-string v4, "[isSupportAppPairPolicy] getChildTasks() is null or empty"

    invoke-static {v14, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    :cond_17
    :goto_b
    const-string v4, "isSupportAppPairPolicy: Can\'t find topActivity there is null"

    invoke-static {v14, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    :goto_c
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v11, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_DIVIDER:Z

    const/16 v12, 0x32

    if-eqz v11, :cond_1d

    if-eqz v1, :cond_1d

    iget-object v11, v9, Lcom/android/wm/shell/common/split/DividerPanelView;->mRotatingIcon:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v11, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    if-eqz v6, :cond_1c

    const/4 v6, 0x4

    if-ne v8, v6, :cond_18

    const/16 v6, 0x64

    goto :goto_d

    :cond_18
    const/4 v6, 0x5

    if-ne v8, v6, :cond_19

    const/16 v6, 0x96

    goto :goto_d

    :cond_19
    const/4 v6, 0x2

    if-ne v8, v6, :cond_1a

    const/16 v6, 0xc8

    goto :goto_d

    :cond_1a
    const/4 v6, 0x3

    if-ne v8, v6, :cond_1b

    const/16 v6, 0xfa

    goto :goto_d

    :cond_1b
    move v6, v2

    goto :goto_d

    :cond_1c
    if-eqz v5, :cond_1b

    move v6, v12

    :goto_d
    add-int/lit8 v8, v6, 0x1e

    iget-object v11, v9, Lcom/android/wm/shell/common/split/DividerPanelView;->mRotatingIcon:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v11, v6}, Lcom/airbnb/lottie/LottieAnimationView;->setMinFrame(I)V

    iget-object v6, v9, Lcom/android/wm/shell/common/split/DividerPanelView;->mRotatingIcon:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v6, v8}, Lcom/airbnb/lottie/LottieAnimationView;->setMaxFrame(I)V

    :cond_1d
    const/16 v6, 0x8

    if-eqz v10, :cond_1f

    if-eqz v5, :cond_1e

    goto :goto_e

    :cond_1e
    move v12, v2

    :goto_e
    add-int/lit8 v8, v12, 0x21

    iget-object v11, v9, Lcom/android/wm/shell/common/split/DividerPanelView;->mSwitchingIcon:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v11, v12}, Lcom/airbnb/lottie/LottieAnimationView;->setMinFrame(I)V

    iget-object v11, v9, Lcom/android/wm/shell/common/split/DividerPanelView;->mSwitchingIcon:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v11, v8}, Lcom/airbnb/lottie/LottieAnimationView;->setMaxFrame(I)V

    goto :goto_f

    :cond_1f
    iget-object v8, v9, Lcom/android/wm/shell/common/split/DividerPanelView;->mSwitchingIcon:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v8, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_f
    if-nez v4, :cond_20

    iget-object v8, v9, Lcom/android/wm/shell/common/split/DividerPanelView;->mAddAppPairIcon:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v8, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_20
    if-eqz v1, :cond_21

    iget-object v3, v9, Lcom/android/wm/shell/common/split/DividerPanelView;->mRotatingIcon:Lcom/airbnb/lottie/LottieAnimationView;

    goto :goto_10

    :cond_21
    if-eqz v10, :cond_22

    iget-object v3, v9, Lcom/android/wm/shell/common/split/DividerPanelView;->mSwitchingIcon:Lcom/airbnb/lottie/LottieAnimationView;

    goto :goto_10

    :cond_22
    if-eqz v4, :cond_23

    iget-object v3, v9, Lcom/android/wm/shell/common/split/DividerPanelView;->mAddAppPairIcon:Lcom/airbnb/lottie/LottieAnimationView;

    :cond_23
    :goto_10
    iget-object v1, v9, Lcom/android/wm/shell/common/split/DividerPanelView;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/android/wm/shell/common/split/DividerPanelView$$ExternalSyntheticLambda2;

    invoke-direct {v6, v3}, Lcom/android/wm/shell/common/split/DividerPanelView$$ExternalSyntheticLambda2;-><init>(Lcom/airbnb/lottie/LottieAnimationView;)V

    const-wide/16 v11, 0x96

    invoke-virtual {v1, v6, v11, v12}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v1, v9, Lcom/android/wm/shell/common/split/DividerPanelView;->mRotatingIcon:Lcom/airbnb/lottie/LottieAnimationView;

    new-instance v3, Lcom/android/wm/shell/common/split/DividerPanelView$1;

    invoke-direct {v3, v9, v10, v4}, Lcom/android/wm/shell/common/split/DividerPanelView$1;-><init>(Lcom/android/wm/shell/common/split/DividerPanelView;ZZ)V

    invoke-virtual {v1, v3}, Lcom/airbnb/lottie/LottieAnimationView;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v1, v9, Lcom/android/wm/shell/common/split/DividerPanelView;->mSwitchingIcon:Lcom/airbnb/lottie/LottieAnimationView;

    new-instance v3, Lcom/android/wm/shell/common/split/DividerPanelView$2;

    invoke-direct {v3, v9, v4}, Lcom/android/wm/shell/common/split/DividerPanelView$2;-><init>(Lcom/android/wm/shell/common/split/DividerPanelView;Z)V

    invoke-virtual {v1, v3}, Lcom/airbnb/lottie/LottieAnimationView;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v1, v0, Lcom/android/wm/shell/common/split/DividerPanel;->mView:Lcom/android/wm/shell/common/split/DividerPanelView;

    iget-object v3, v1, Lcom/android/wm/shell/common/split/DividerPanelView;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    move v4, v2

    move v6, v4

    :goto_11
    if-ge v4, v3, :cond_25

    iget-object v8, v1, Lcom/android/wm/shell/common/split/DividerPanelView;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-nez v8, :cond_24

    add-int/lit8 v6, v6, 0x1

    :cond_24
    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    :cond_25
    iget-object v3, v1, Lcom/android/wm/shell/common/split/DividerPanelView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070aab

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-object v1, v1, Lcom/android/wm/shell/common/split/DividerPanelView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f070aaf

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const/4 v4, 0x2

    mul-int/2addr v1, v4

    mul-int/2addr v3, v6

    add-int/2addr v3, v1

    iget-object v1, v0, Lcom/android/wm/shell/common/split/DividerPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f070aae

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v4, v0, Lcom/android/wm/shell/common/split/DividerPanel;->mView:Lcom/android/wm/shell/common/split/DividerPanelView;

    new-instance v6, Lcom/android/wm/shell/common/split/DividerPanel$2;

    invoke-direct {v6, v0, v3, v1}, Lcom/android/wm/shell/common/split/DividerPanel$2;-><init>(Lcom/android/wm/shell/common/split/DividerPanel;II)V

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iget-object v6, v0, Lcom/android/wm/shell/common/split/DividerPanel;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    iget-object v8, v0, Lcom/android/wm/shell/common/split/DividerPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v8}, Lcom/android/wm/shell/common/split/SplitLayout;->getDisplayLayout(Landroid/content/Context;)Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v8, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_BOUNDS_POLICY:Z

    if-eqz v8, :cond_26

    const/4 v8, 0x1

    invoke-virtual {v6, v4, v8}, Lcom/android/wm/shell/common/DisplayLayout;->getStableBounds(Landroid/graphics/Rect;Z)V

    goto :goto_12

    :cond_26
    iget v8, v6, Lcom/android/wm/shell/common/DisplayLayout;->mWidth:I

    iget v6, v6, Lcom/android/wm/shell/common/DisplayLayout;->mHeight:I

    invoke-virtual {v4, v2, v2, v8, v6}, Landroid/graphics/Rect;->set(IIII)V

    :goto_12
    iget-object v2, v0, Lcom/android/wm/shell/common/split/DividerPanel;->mWindowManager:Lcom/android/wm/shell/common/split/DividerPanelWindowManager;

    iget-object v6, v0, Lcom/android/wm/shell/common/split/DividerPanel;->mView:Lcom/android/wm/shell/common/split/DividerPanelView;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v14, Landroid/view/WindowManager$LayoutParams;

    const v12, 0x40020

    const/4 v13, -0x3

    const/16 v11, 0xa2b

    move-object v8, v14

    move v9, v3

    move v10, v1

    invoke-direct/range {v8 .. v13}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v14, v2, Lcom/android/wm/shell/common/split/DividerPanelWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v14, v7}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v7, v2, Lcom/android/wm/shell/common/split/DividerPanelWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    const/4 v8, 0x1

    iput v8, v7, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    iget v8, v7, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v8, v8, 0x50

    iput v8, v7, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const v8, 0x7f140354

    iput v8, v7, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    const/16 v7, 0x700

    invoke-virtual {v6, v7}, Landroid/view/View;->setSystemUiVisibility(I)V

    iget-object v7, v2, Lcom/android/wm/shell/common/split/DividerPanelWindowManager;->mDividerView:Lcom/android/wm/shell/common/split/DividerView;

    invoke-virtual {v7}, Lcom/android/wm/shell/common/split/DividerView;->getCurrentPosition()I

    move-result v7

    iget-object v8, v2, Lcom/android/wm/shell/common/split/DividerPanelWindowManager;->mDividerView:Lcom/android/wm/shell/common/split/DividerView;

    iget-object v9, v8, Lcom/android/wm/shell/common/split/DividerView;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    iget v9, v9, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerSize:I

    iget-object v10, v2, Lcom/android/wm/shell/common/split/DividerPanelWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    const/16 v11, 0x33

    iput v11, v10, Landroid/view/WindowManager$LayoutParams;->gravity:I

    if-eqz v5, :cond_27

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v5

    iget-object v8, v2, Lcom/android/wm/shell/common/split/DividerPanelWindowManager;->mDividerView:Lcom/android/wm/shell/common/split/DividerView;

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v8

    const/4 v10, 0x2

    div-int/2addr v8, v10

    add-int/2addr v8, v5

    iget-object v5, v2, Lcom/android/wm/shell/common/split/DividerPanelWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v8

    div-int/2addr v3, v10

    sub-int/2addr v4, v3

    iput v4, v5, Landroid/view/WindowManager$LayoutParams;->x:I

    div-int/2addr v1, v10

    sub-int/2addr v7, v1

    div-int/2addr v9, v10

    add-int/2addr v9, v7

    iput v9, v5, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_13

    :cond_27
    const/4 v10, 0x2

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getTop()I

    move-result v5

    iget-object v8, v2, Lcom/android/wm/shell/common/split/DividerPanelWindowManager;->mDividerView:Lcom/android/wm/shell/common/split/DividerView;

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v8

    div-int/2addr v8, v10

    add-int/2addr v8, v5

    iget-object v5, v2, Lcom/android/wm/shell/common/split/DividerPanelWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    div-int/2addr v3, v10

    sub-int/2addr v7, v3

    div-int/2addr v9, v10

    add-int/2addr v9, v7

    iput v9, v5, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v3, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v8

    div-int/2addr v1, v10

    sub-int/2addr v3, v1

    iput v3, v5, Landroid/view/WindowManager$LayoutParams;->y:I

    :goto_13
    iget-object v1, v2, Lcom/android/wm/shell/common/split/DividerPanelWindowManager;->mWm:Landroid/view/WindowManager;

    iget-object v3, v2, Lcom/android/wm/shell/common/split/DividerPanelWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v6, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-object v6, v2, Lcom/android/wm/shell/common/split/DividerPanelWindowManager;->mView:Landroid/view/View;

    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/common/split/DividerPanel;->scheduleRemoveDividerPanel()V

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_DIVIDER_SA_LOGGING:Z

    if-eqz v0, :cond_28

    const-string v0, "1031"

    invoke-static {v0}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;)V

    :cond_28
    :goto_14
    return-void
.end method
