.class public final Lcom/android/wm/shell/draganddrop/DefaultAppResult;
.super Lcom/android/wm/shell/draganddrop/BaseAppResult;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$MultiInstanceBlockList;Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$MultiInstanceAllowList;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/wm/shell/draganddrop/BaseAppResult;-><init>(Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$MultiInstanceBlockList;Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$MultiInstanceAllowList;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getDragAppActivityInfo()Landroid/content/pm/ActivityInfo;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final hasResizableResolveInfo()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final hasResolveInfoInFullscreenOnly(Lcom/android/wm/shell/draganddrop/VisibleTasks;Z)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final isAlreadyRunningSingleInstanceTask(Lcom/android/wm/shell/draganddrop/VisibleTasks;Z)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final makeExecutableApp(Landroid/content/Context;ILcom/android/wm/shell/draganddrop/VisibleTasks;Z)Lcom/android/wm/shell/draganddrop/AppInfo;
    .locals 0

    new-instance p0, Lcom/android/wm/shell/draganddrop/AppInfo;

    const/4 p1, 0x0

    const/4 p2, 0x0

    invoke-direct {p0, p1, p1, p2}, Lcom/android/wm/shell/draganddrop/AppInfo;-><init>(Landroid/content/Intent;Landroid/graphics/drawable/Drawable;Z)V

    return-object p0
.end method
