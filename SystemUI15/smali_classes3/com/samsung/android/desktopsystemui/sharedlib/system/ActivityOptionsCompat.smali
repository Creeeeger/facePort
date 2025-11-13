.class public abstract Lcom/samsung/android/desktopsystemui/sharedlib/system/ActivityOptionsCompat;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addTaskInfo(Landroid/app/ActivityOptions;Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;)V
    .locals 0

    return-void
.end method

.method public static makeCustomAnimation(Landroid/content/Context;IILjava/lang/Runnable;Landroid/os/Handler;)Landroid/app/ActivityOptions;
    .locals 6

    new-instance v4, Lcom/samsung/android/desktopsystemui/sharedlib/system/ActivityOptionsCompat$1;

    invoke-direct {v4, p3, p4}, Lcom/samsung/android/desktopsystemui/sharedlib/system/ActivityOptionsCompat$1;-><init>(Ljava/lang/Runnable;Landroid/os/Handler;)V

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p4

    invoke-static/range {v0 .. v5}, Landroid/app/ActivityOptions;->makeCustomTaskAnimation(Landroid/content/Context;IILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;Landroid/app/ActivityOptions$OnAnimationFinishedListener;)Landroid/app/ActivityOptions;

    move-result-object p0

    return-object p0
.end method

.method public static makeFreeformOptions()Landroid/app/ActivityOptions;
    .locals 2

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V

    return-object v0
.end method

.method public static makeRemoteAnimation(Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteAnimationAdapterCompat;)Landroid/app/ActivityOptions;
    .locals 0

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object p0

    return-object p0
.end method

.method public static makeRemoteTransition(Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat;)Landroid/app/ActivityOptions;
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat;->getTransition()Landroid/window/RemoteTransition;

    move-result-object p0

    invoke-static {p0}, Landroid/app/ActivityOptions;->makeRemoteTransition(Landroid/window/RemoteTransition;)Landroid/app/ActivityOptions;

    move-result-object p0

    return-object p0
.end method

.method public static makeSplitScreenOptions(Z)Landroid/app/ActivityOptions;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/samsung/android/desktopsystemui/sharedlib/system/ActivityOptionsCompat;->makeSplitScreenOptions(ZZ)Landroid/app/ActivityOptions;

    move-result-object p0

    return-object p0
.end method

.method public static makeSplitScreenOptions(ZZ)Landroid/app/ActivityOptions;
    .locals 0

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object p0

    return-object p0
.end method

.method public static setFreezeRecentTasksList(Landroid/app/ActivityOptions;)Landroid/app/ActivityOptions;
    .locals 0

    invoke-virtual {p0}, Landroid/app/ActivityOptions;->setFreezeRecentTasksReordering()V

    return-object p0
.end method

.method public static setLauncherSourceInfo(Landroid/app/ActivityOptions;J)Landroid/app/ActivityOptions;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1, p2}, Landroid/app/ActivityOptions;->setSourceInfo(IJ)V

    return-object p0
.end method

.method public static setStartedFromWindowTypeLauncher(Landroid/app/ActivityOptions;Z)Landroid/app/ActivityOptions;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/app/ActivityOptions;->setStartedFromWindowTypeLauncher(Z)V

    return-object p0
.end method
