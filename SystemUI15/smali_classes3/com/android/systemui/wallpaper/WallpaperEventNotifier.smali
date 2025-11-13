.class public final Lcom/android/systemui/wallpaper/WallpaperEventNotifier;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final DEBUG:Z


# instance fields
.field public final mCallbacks:Ljava/util/ArrayList;

.field public final mCoverCallbacks:Ljava/util/ArrayList;

.field public mCurStatusFlag:J

.field public final mHandler:Landroid/os/Handler;

.field public mIsThemeApplying:Z

.field public final mKeyguardWallpaperColors:Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;

.field public final mLogs:Ljava/util/ArrayList;

.field public final mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

.field public final mWallpaperManager:Landroid/app/WallpaperManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;Landroid/os/Handler;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mCurStatusFlag:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mCallbacks:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mCoverCallbacks:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mIsThemeApplying:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mLogs:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    iput-object p4, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mHandler:Landroid/os/Handler;

    const-string/jumbo p4, "wallpaper"

    invoke-virtual {p1, p4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/app/WallpaperManager;

    iput-object p4, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mWallpaperManager:Landroid/app/WallpaperManager;

    new-instance p4, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;

    invoke-virtual {p3, v0}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId(Z)I

    move-result p3

    invoke-direct {p4, p1, p2, p3}, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;-><init>(Landroid/content/Context;Lcom/android/systemui/util/SettingsHelper;I)V

    iput-object p4, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mKeyguardWallpaperColors:Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;

    return-void
.end method

.method public static getInstance()Lcom/android/systemui/wallpaper/WallpaperEventNotifier;
    .locals 2

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    return-object v0
.end method


# virtual methods
.method public final addLog(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier$DebugLog;

    invoke-direct {v0, p1}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier$DebugLog;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mLogs:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mLogs:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/16 v0, 0xc8

    if-le p1, v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mLogs:Ljava/util/ArrayList;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final debugNotify(ZJLandroid/app/SemWallpaperColors;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2, p3}, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->getChangeFlagsString(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, ", isCover = "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", colors = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_0

    invoke-virtual {p4}, Landroid/app/SemWallpaperColors;->toSimpleString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string p1, "null"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string p1, ": "

    invoke-static {p5, p1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "WallpaperEventNotifier"

    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->addLog(Ljava/lang/String;)V

    return-void
.end method

.method public final getSemWallpaperColors(Z)Landroid/app/SemWallpaperColors;
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mKeyguardWallpaperColors:Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;

    iget v0, p0, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->mSelectedUserId:I

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->getSemWallpaperColors(IZ)Landroid/app/SemWallpaperColors;

    move-result-object p0

    return-object p0
.end method

.method public final registerCallback(ZLcom/android/systemui/widget/SystemUIWidgetCallback;J)V
    .locals 9

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mCoverCallbacks:Ljava/util/ArrayList;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mCallbacks:Ljava/util/ArrayList;

    :goto_0
    monitor-enter v0

    if-eqz p1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mCoverCallbacks:Ljava/util/ArrayList;

    goto :goto_1

    :catchall_0
    move-exception p0

    goto/16 :goto_6

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mCallbacks:Ljava/util/ArrayList;

    :goto_1
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p2, :cond_2

    const-string p0, "WallpaperEventNotifier"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "registerCallback: Object tried to add another callback "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Debug;->getCaller()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->removeCallback(ZLcom/android/systemui/widget/SystemUIWidgetCallback;)V

    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mIsThemeApplying:Z

    const-string v1, "WallpaperEventNotifier"

    if-eqz v0, :cond_4

    const-string/jumbo p1, "sendUpdates: Ignore update while theme is applying..."

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->addLog(Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mKeyguardWallpaperColors:Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;

    iget v2, v0, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->mSelectedUserId:I

    invoke-virtual {v0, v2, p1}, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->getSemWallpaperColors(IZ)Landroid/app/SemWallpaperColors;

    move-result-object v0

    if-nez v0, :cond_5

    const-string/jumbo p1, "sendUpdates: We don\'t have any colors to notify for now."

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo p1, "sendUpdates: We don\'t have any colors to notify for now"

    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->addLog(Ljava/lang/String;)V

    goto :goto_5

    :cond_5
    const-wide/16 v2, 0x0

    if-eqz p1, :cond_6

    const-wide/16 v4, -0x404

    :goto_3
    and-long/2addr p3, v4

    goto :goto_4

    :cond_6
    iget-wide v4, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mCurStatusFlag:J

    const-wide/16 v6, 0x1

    and-long/2addr v6, v4

    cmp-long v6, v6, v2

    if-nez v6, :cond_7

    const-wide/16 v6, -0x2

    and-long/2addr p3, v6

    :cond_7
    const-wide/16 v6, 0x2

    and-long/2addr v6, v4

    cmp-long v6, v6, v2

    if-nez v6, :cond_8

    const-wide/16 v6, -0x3

    and-long/2addr p3, v6

    :cond_8
    const-wide/16 v6, 0x400

    and-long/2addr v4, v6

    cmp-long v4, v4, v2

    if-nez v4, :cond_9

    const-wide/16 v4, -0x401

    goto :goto_3

    :cond_9
    :goto_4
    cmp-long v2, p3, v2

    if-eqz v2, :cond_b

    sget-boolean v2, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->DEBUG:Z

    if-eqz v2, :cond_a

    const-string/jumbo v8, "sendUpdates"

    move-object v3, p0

    move v4, p1

    move-wide v5, p3

    move-object v7, v0

    invoke-virtual/range {v3 .. v8}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->debugNotify(ZJLandroid/app/SemWallpaperColors;Ljava/lang/String;)V

    :cond_a
    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p1, "sendUpdates: typesTobeNotified = "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p3, p4}, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->getChangeFlagsString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p2, p3, p4, v0}, Lcom/android/systemui/widget/SystemUIWidgetCallback;->updateStyle(JLandroid/app/SemWallpaperColors;)V

    goto :goto_5

    :cond_b
    const-string/jumbo p1, "sendUpdates: Nothing to notify"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->addLog(Ljava/lang/String;)V

    :goto_5
    return-void

    :goto_6
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final removeCallback(ZLcom/android/systemui/widget/SystemUIWidgetCallback;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mCoverCallbacks:Ljava/util/ArrayList;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mCallbacks:Ljava/util/ArrayList;

    :goto_0
    monitor-enter v0

    if-eqz p1, :cond_1

    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mCoverCallbacks:Ljava/util/ArrayList;

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mCallbacks:Ljava/util/ArrayList;

    :goto_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_2
    if-ltz p1, :cond_3

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p2, :cond_2

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_2
    add-int/lit8 p1, p1, -0x1

    goto :goto_2

    :cond_3
    monitor-exit v0

    return-void

    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final setCurStatusFlag(ZLandroid/app/SemWallpaperColors;)V
    .locals 2

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mCurStatusFlag:J

    :goto_0
    if-nez p2, :cond_1

    const-string/jumbo p1, "setCurStatusFlag: colors is null. May cause unexptected behaviour!"

    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->addLog(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mKeyguardWallpaperColors:Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;

    invoke-virtual {v0, p2}, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->checkBaseUpdates(Landroid/app/SemWallpaperColors;)J

    move-result-wide v0

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    iput-wide v0, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mCurStatusFlag:J

    :goto_1
    return-void
.end method

.method public final update(ZJLandroid/app/SemWallpaperColors;)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v7, p1

    move-object/from16 v8, p4

    iget-boolean v1, v0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mIsThemeApplying:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "update: Ignore update while theme is applying..."

    invoke-virtual {v0, v1}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->addLog(Ljava/lang/String;)V

    const-string v0, "WallpaperEventNotifier"

    const-string/jumbo v1, "update: Ignore update while theme is applying..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-eqz v7, :cond_2

    sget-boolean v1, Lcom/android/systemui/LsRune;->SUBSCREEN_LARGE_FRONT_SUB_DISPLAY:Z

    if-eqz v1, :cond_1

    const-wide/16 v1, -0x2

    :goto_0
    and-long v1, p2, v1

    move-wide v9, v1

    goto :goto_1

    :cond_1
    const-wide/16 v1, -0x404

    goto :goto_0

    :cond_2
    move-wide/from16 v9, p2

    :goto_1
    invoke-virtual {v0, v7, v8}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->setCurStatusFlag(ZLandroid/app/SemWallpaperColors;)V

    const-wide/16 v11, 0x0

    cmp-long v1, v9, v11

    if-eqz v1, :cond_d

    const-string v6, "notifyUpdate"

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-wide v3, v9

    move-object/from16 v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->debugNotify(ZJLandroid/app/SemWallpaperColors;Ljava/lang/String;)V

    if-eqz v7, :cond_3

    iget-object v1, v0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mCoverCallbacks:Ljava/util/ArrayList;

    goto :goto_2

    :cond_3
    iget-object v1, v0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mCallbacks:Ljava/util/ArrayList;

    :goto_2
    monitor-enter v1

    if-eqz v7, :cond_4

    :try_start_0
    iget-object v2, v0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mCoverCallbacks:Ljava/util/ArrayList;

    goto :goto_3

    :catchall_0
    move-exception v0

    goto/16 :goto_a

    :cond_4
    iget-object v2, v0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mCallbacks:Ljava/util/ArrayList;

    :goto_3
    const/4 v3, 0x0

    move v4, v3

    :goto_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_c

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/widget/SystemUIWidgetCallback;

    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    if-eqz v6, :cond_b

    and-long v15, v13, v9

    cmp-long v5, v15, v11

    if-nez v5, :cond_a

    const-wide/16 v15, 0x8

    and-long/2addr v15, v13

    cmp-long v5, v15, v11

    if-nez v5, :cond_5

    goto :goto_6

    :cond_5
    move v5, v3

    :goto_5
    sget v7, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->NUM_SEPARATED_AREA:I

    if-ge v5, v7, :cond_7

    sget-object v7, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->UPDATE_FLAGS:[J

    aget-wide v15, v7, v5

    and-long/2addr v15, v13

    cmp-long v7, v15, v11

    if-eqz v7, :cond_6

    sget-object v7, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->UPDATE_FLAGS_SHADOW:[J

    aget-wide v15, v7, v5

    and-long/2addr v15, v9

    cmp-long v7, v15, v11

    if-eqz v7, :cond_6

    goto :goto_8

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_7
    :goto_6
    const-wide/16 v15, 0x4

    and-long/2addr v15, v13

    cmp-long v5, v15, v11

    if-nez v5, :cond_8

    goto :goto_9

    :cond_8
    move v5, v3

    :goto_7
    sget v7, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->NUM_SEPARATED_AREA:I

    if-ge v5, v7, :cond_b

    sget-object v7, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->UPDATE_FLAGS:[J

    aget-wide v15, v7, v5

    and-long/2addr v15, v13

    cmp-long v7, v15, v11

    if-eqz v7, :cond_9

    sget-object v7, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->UPDATE_FLAGS_ADAPTIVE_CONTRAST:[J

    aget-wide v15, v7, v5

    and-long/2addr v15, v9

    cmp-long v7, v15, v11

    if-eqz v7, :cond_9

    goto :goto_8

    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :cond_a
    :goto_8
    iget-object v5, v0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mHandler:Landroid/os/Handler;

    new-instance v7, Lcom/android/systemui/wallpaper/WallpaperEventNotifier$$ExternalSyntheticLambda1;

    invoke-direct {v7, v6, v9, v10, v8}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/widget/SystemUIWidgetCallback;JLandroid/app/SemWallpaperColors;)V

    invoke-virtual {v5, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_b
    :goto_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_c
    monitor-exit v1

    goto :goto_b

    :goto_a
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_d
    :goto_b
    return-void
.end method
