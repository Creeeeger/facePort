.class public interface abstract Lcom/android/wm/shell/draganddrop/AppResult;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# virtual methods
.method public abstract getContentType()Ljava/lang/String;
.end method

.method public abstract getDragAppActivityInfo()Landroid/content/pm/ActivityInfo;
.end method

.method public abstract hasResizableResolveInfo()Z
.end method

.method public abstract hasResolveInfoInFullscreenOnly(Lcom/android/wm/shell/draganddrop/VisibleTasks;Z)Z
.end method

.method public abstract isAlreadyRunningSingleInstanceTask(Lcom/android/wm/shell/draganddrop/VisibleTasks;Z)Z
.end method

.method public abstract makeExecutableApp(Landroid/content/Context;ILcom/android/wm/shell/draganddrop/VisibleTasks;Z)Lcom/android/wm/shell/draganddrop/AppInfo;
.end method
