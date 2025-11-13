.class public final Lcom/android/wm/shell/draganddrop/MimeTypeAppResult;
.super Lcom/android/wm/shell/draganddrop/BaseAppResult;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mActivityInfo:Landroid/content/pm/ActivityInfo;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$MultiInstanceBlockList;Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$MultiInstanceAllowList;Landroid/content/pm/ActivityInfo;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p4}, Lcom/android/wm/shell/draganddrop/BaseAppResult;-><init>(Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$MultiInstanceBlockList;Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$MultiInstanceAllowList;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/android/wm/shell/draganddrop/MimeTypeAppResult;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    return-void
.end method


# virtual methods
.method public final getDragAppActivityInfo()Landroid/content/pm/ActivityInfo;
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/MimeTypeAppResult;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    return-object p0
.end method

.method public final hasResizableResolveInfo()Z
    .locals 2

    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/MimeTypeAppResult;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getSupportedMultiWindowModes(Landroid/content/pm/ActivityInfo;)I

    move-result p0

    and-int/lit8 p0, p0, 0x3

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final hasResolveInfoInFullscreenOnly(Lcom/android/wm/shell/draganddrop/VisibleTasks;Z)Z
    .locals 1

    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/MimeTypeAppResult;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p1}, Lcom/android/wm/shell/draganddrop/VisibleTasks;->getFullscreenTasks()Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/MimeTypeAppResult;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/wm/shell/draganddrop/BaseAppResult;->isVisibleSingleInstance(Ljava/util/List;Landroid/content/pm/ActivityInfo;Z)Z

    move-result p0

    return p0
.end method

.method public final isAlreadyRunningSingleInstanceTask(Lcom/android/wm/shell/draganddrop/VisibleTasks;Z)Z
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/MimeTypeAppResult;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getVisibleTasks()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/android/wm/shell/draganddrop/VisibleTasks$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/android/wm/shell/draganddrop/VisibleTasks$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/draganddrop/VisibleTasks;)V

    invoke-interface {v0, v1}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    iget-object p1, p0, Lcom/android/wm/shell/draganddrop/MimeTypeAppResult;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/wm/shell/draganddrop/BaseAppResult;->isVisibleSingleInstance(Ljava/util/List;Landroid/content/pm/ActivityInfo;Z)Z

    move-result p0

    return p0
.end method

.method public final makeExecutableApp(Landroid/content/Context;ILcom/android/wm/shell/draganddrop/VisibleTasks;Z)Lcom/android/wm/shell/draganddrop/AppInfo;
    .locals 2

    iget-object p1, p0, Lcom/android/wm/shell/draganddrop/MimeTypeAppResult;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p1, :cond_0

    new-instance p0, Lcom/android/wm/shell/draganddrop/AppInfo;

    invoke-direct {p0, v1, v1, v0}, Lcom/android/wm/shell/draganddrop/AppInfo;-><init>(Landroid/content/Intent;Landroid/graphics/drawable/Drawable;Z)V

    return-object p0

    :cond_0
    invoke-virtual {p3, p2}, Lcom/android/wm/shell/draganddrop/VisibleTasks;->getTasksException(I)Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lcom/android/wm/shell/draganddrop/MimeTypeAppResult;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p0, p1, p2, p4}, Lcom/android/wm/shell/draganddrop/BaseAppResult;->isVisibleSingleInstance(Ljava/util/List;Landroid/content/pm/ActivityInfo;Z)Z

    move-result p0

    if-eqz p0, :cond_1

    return-object v1

    :cond_1
    new-instance p0, Lcom/android/wm/shell/draganddrop/AppInfo;

    invoke-direct {p0, v1, v1, v0}, Lcom/android/wm/shell/draganddrop/AppInfo;-><init>(Landroid/content/Intent;Landroid/graphics/drawable/Drawable;Z)V

    return-object p0
.end method
