.class public final Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final TAG:Ljava/lang/String;

.field public final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field public final mActivityTaskManager:Landroid/app/IActivityTaskManager;

.field public mAlignment:I

.field public final mCallback:Ljava/util/function/Consumer;

.field public final mContext:Landroid/content/Context;

.field public final mController:Lcom/android/wm/shell/compatui/CompatUIController;

.field public final mHandler:Landroid/os/Handler;

.field public mIsRotationFrozen:Z

.field public final mMultiTaskingAppCompatUIWindowManager:Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIWindowManager;

.field public mOrientationPolicy:I

.field public mTaskInfo:Landroid/app/TaskInfo;

.field public final mWindowManager:Landroid/view/IWindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIWindowManager;Landroid/app/TaskInfo;Ljava/util/function/Consumer;Lcom/android/wm/shell/compatui/CompatUIController;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIWindowManager;",
            "Landroid/app/TaskInfo;",
            "Ljava/util/function/Consumer<",
            "Lcom/android/wm/shell/compatui/impl/CompatUIEvents;",
            ">;",
            "Lcom/android/wm/shell/compatui/CompatUIController;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "MultiTaskingAppCompatUIController"

    iput-object v0, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIController;->TAG:Ljava/lang/String;

    const/16 v0, 0x1f

    iput v0, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIController;->mOrientationPolicy:I

    const/16 v0, 0x11

    iput v0, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIController;->mAlignment:I

    iput-object p1, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIController;->mMultiTaskingAppCompatUIWindowManager:Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIWindowManager;

    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object p2

    iput-object p2, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIController;->mWindowManager:Landroid/view/IWindowManager;

    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object p2

    iput-object p2, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIController;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    const-string p2, "accessibility"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    iput-object p1, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIController;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    iput-object p3, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIController;->mTaskInfo:Landroid/app/TaskInfo;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIController;->mHandler:Landroid/os/Handler;

    iput-object p4, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIController;->mCallback:Ljava/util/function/Consumer;

    iput-object p5, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIController;->mController:Lcom/android/wm/shell/compatui/CompatUIController;

    return-void
.end method

.method public static isAlignedVertically(Landroid/app/TaskInfo;)Z
    .locals 1

    iget-object v0, p0, Landroid/app/TaskInfo;->appCompatTaskInfo:Landroid/app/AppCompatTaskInfo;

    iget-object v0, v0, Landroid/app/AppCompatTaskInfo;->topActivityBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object p0, p0, Landroid/app/TaskInfo;->appCompatTaskInfo:Landroid/app/AppCompatTaskInfo;

    iget-object p0, p0, Landroid/app/AppCompatTaskInfo;->topActivityBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    if-le v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public final isInSizeCompat()Z
    .locals 1

    iget-object v0, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIController;->mTaskInfo:Landroid/app/TaskInfo;

    iget-object v0, v0, Landroid/app/TaskInfo;->appCompatTaskInfo:Landroid/app/AppCompatTaskInfo;

    invoke-virtual {v0}, Landroid/app/AppCompatTaskInfo;->isTopActivityInSizeCompat()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIController;->mTaskInfo:Landroid/app/TaskInfo;

    iget-object v0, v0, Landroid/app/TaskInfo;->appCompatTaskInfo:Landroid/app/AppCompatTaskInfo;

    invoke-virtual {v0}, Landroid/app/AppCompatTaskInfo;->hasMinAspectRatioOverride()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIController;->mTaskInfo:Landroid/app/TaskInfo;

    iget-object v0, v0, Landroid/app/TaskInfo;->appCompatTaskInfo:Landroid/app/AppCompatTaskInfo;

    invoke-virtual {v0}, Landroid/app/AppCompatTaskInfo;->isRotationCompatModeEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIController;->mTaskInfo:Landroid/app/TaskInfo;

    iget-object p0, p0, Landroid/app/TaskInfo;->appCompatTaskInfo:Landroid/app/AppCompatTaskInfo;

    iget-boolean p0, p0, Landroid/app/AppCompatTaskInfo;->topActivityInDisplayCompat:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final setMultiTaskingAppCompatAlignment(I)V
    .locals 6

    iget v0, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIController;->mAlignment:I

    and-int/lit8 v1, v0, 0x70

    and-int/lit8 v2, v0, 0x7

    iget-object v3, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIController;->TAG:Ljava/lang/String;

    const/16 v4, 0x50

    const/16 v5, 0x30

    if-ne p1, v5, :cond_1

    and-int/lit8 p1, v0, 0x50

    if-ne p1, v4, :cond_0

    or-int/lit8 p1, v2, 0x10

    goto :goto_0

    :cond_0
    or-int/lit8 p1, v2, 0x30

    :goto_0
    iput p1, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIController;->mAlignment:I

    goto :goto_4

    :cond_1
    if-ne p1, v4, :cond_3

    and-int/lit8 p1, v0, 0x30

    if-ne p1, v5, :cond_2

    or-int/lit8 p1, v2, 0x10

    goto :goto_1

    :cond_2
    or-int/lit8 p1, v2, 0x50

    :goto_1
    iput p1, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIController;->mAlignment:I

    goto :goto_4

    :cond_3
    const/4 v2, 0x5

    const/4 v4, 0x3

    if-ne p1, v4, :cond_5

    and-int/lit8 p1, v0, 0x5

    if-ne p1, v2, :cond_4

    or-int/lit8 p1, v1, 0x1

    goto :goto_2

    :cond_4
    or-int/lit8 p1, v1, 0x3

    :goto_2
    iput p1, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIController;->mAlignment:I

    goto :goto_4

    :cond_5
    if-ne p1, v2, :cond_7

    and-int/lit8 p1, v0, 0x3

    if-ne p1, v4, :cond_6

    or-int/lit8 p1, v1, 0x1

    goto :goto_3

    :cond_6
    or-int/lit8 p1, v1, 0x5

    :goto_3
    iput p1, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIController;->mAlignment:I

    :goto_4
    :try_start_0
    iget-object p1, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIController;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    iget p0, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIController;->mAlignment:I

    invoke-interface {p1, p0}, Landroid/app/IActivityTaskManager;->setAppCompatAlignment(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception p0

    const-string p1, "Failed to set app compat alignment"

    invoke-static {v3, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_5
    return-void

    :cond_7
    const-string p0, "Nothing to do"

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final setOrientationControlPolicy(I)V
    .locals 3

    iput p1, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIController;->mOrientationPolicy:I

    :try_start_0
    iget-object v0, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIController;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    iget-object v2, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIController;->mTaskInfo:Landroid/app/TaskInfo;

    iget-object v2, v2, Landroid/app/TaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, p1}, Landroid/app/IActivityTaskManager;->setOrientationControlPolicy(ILjava/lang/String;I)V

    iget-object p1, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIController;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/view/IWindowManager;->getWindowingMode(I)I

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/view/IWindowManager;->setWindowingMode(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iget-object p0, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIController;->TAG:Ljava/lang/String;

    const-string v0, "enableOrientationControlPolicy failed"

    invoke-static {p0, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIController;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{taskId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIController;->mTaskInfo:Landroid/app/TaskInfo;

    iget v1, v1, Landroid/app/TaskInfo;->taskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIController;->mTaskInfo:Landroid/app/TaskInfo;

    iget-object v1, v1, Landroid/app/TaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "), taskConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIController;->mTaskInfo:Landroid/app/TaskInfo;

    invoke-virtual {v1}, Landroid/app/TaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", inSizeCompat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIController;->isInSizeCompat()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", inDisplayCompat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIController;->mTaskInfo:Landroid/app/TaskInfo;

    iget-object v1, v1, Landroid/app/TaskInfo;->appCompatTaskInfo:Landroid/app/AppCompatTaskInfo;

    iget-boolean v1, v1, Landroid/app/AppCompatTaskInfo;->topActivityInDisplayCompat:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", rotationFrozen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIController;->mIsRotationFrozen:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", orientationPolicy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIController;->mOrientationPolicy:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", activityBounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIController;->mTaskInfo:Landroid/app/TaskInfo;

    iget-object v1, v1, Landroid/app/TaskInfo;->appCompatTaskInfo:Landroid/app/AppCompatTaskInfo;

    iget-object v1, v1, Landroid/app/AppCompatTaskInfo;->topActivityBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", taskOrientation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIController;->mTaskInfo:Landroid/app/TaskInfo;

    invoke-virtual {v1}, Landroid/app/TaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", contextOrientation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", alignment=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIController;->mAlignment:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", resizeable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIController;->mTaskInfo:Landroid/app/TaskInfo;

    iget-boolean v1, v1, Landroid/app/TaskInfo;->isResizeable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", visible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIController;->mTaskInfo:Landroid/app/TaskInfo;

    iget-boolean p0, p0, Landroid/app/TaskInfo;->isVisible:Z

    const-string/jumbo v1, "}"

    invoke-static {v0, p0, v1}, Landroidx/appcompat/app/AppCompatDelegateImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
