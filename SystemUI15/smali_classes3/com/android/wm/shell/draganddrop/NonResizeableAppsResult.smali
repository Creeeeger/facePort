.class public final Lcom/android/wm/shell/draganddrop/NonResizeableAppsResult;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/wm/shell/draganddrop/AppResult;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getContentType()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getDragAppActivityInfo()Landroid/content/pm/ActivityInfo;
    .locals 1

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "getDragAppActivityInfo not implemented by NonResizeableAppsResult"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final hasResizableResolveInfo()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final hasResolveInfoInFullscreenOnly(Lcom/android/wm/shell/draganddrop/VisibleTasks;Z)Z
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "hasResolveInfoInFullscreenOnly not implemented by NonResizeableAppsResult"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final isAlreadyRunningSingleInstanceTask(Lcom/android/wm/shell/draganddrop/VisibleTasks;Z)Z
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "isAlreadyRunningSingleInstanceTask not implemented by NonResizeableAppsResult"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final makeExecutableApp(Landroid/content/Context;ILcom/android/wm/shell/draganddrop/VisibleTasks;Z)Lcom/android/wm/shell/draganddrop/AppInfo;
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "makeExecutableApp not implemented by NonResizeableAppsResult"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
