.class public final Lcom/android/wm/shell/draganddrop/DragAndDropEventLogger;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mActivityInfo:Landroid/content/pm/ActivityInfo;

.field public final mIdSequence:Lcom/android/internal/logging/InstanceIdSequence;

.field public mInstanceId:Lcom/android/internal/logging/InstanceId;

.field public final mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;


# direct methods
.method public constructor <init>(Lcom/android/internal/logging/UiEventLogger;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/draganddrop/DragAndDropEventLogger;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    new-instance p1, Lcom/android/internal/logging/InstanceIdSequence;

    const v0, 0x7fffffff

    invoke-direct {p1, v0}, Lcom/android/internal/logging/InstanceIdSequence;-><init>(I)V

    iput-object p1, p0, Lcom/android/wm/shell/draganddrop/DragAndDropEventLogger;->mIdSequence:Lcom/android/internal/logging/InstanceIdSequence;

    return-void
.end method


# virtual methods
.method public final log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;Landroid/content/pm/ActivityInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropEventLogger;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    if-nez p2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    :goto_0
    if-nez p2, :cond_1

    const/4 p2, 0x0

    goto :goto_1

    :cond_1
    iget-object p2, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object p2, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    :goto_1
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropEventLogger;->mInstanceId:Lcom/android/internal/logging/InstanceId;

    invoke-interface {v0, p1, v1, p2, p0}, Lcom/android/internal/logging/UiEventLogger;->logWithInstanceId(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;Lcom/android/internal/logging/InstanceId;)V

    return-void
.end method

.method public final logStart(Lcom/android/wm/shell/draganddrop/DragSession;)Lcom/android/internal/logging/InstanceId;
    .locals 3

    iget-object v0, p1, Lcom/android/wm/shell/draganddrop/DragSession;->appData:Landroid/content/Intent;

    if-eqz v0, :cond_0

    const-string v1, "android.intent.extra.LOGGING_INSTANCE_ID"

    const-class v2, Lcom/android/internal/logging/InstanceId;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/logging/InstanceId;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropEventLogger;->mInstanceId:Lcom/android/internal/logging/InstanceId;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropEventLogger;->mIdSequence:Lcom/android/internal/logging/InstanceIdSequence;

    invoke-virtual {v0}, Lcom/android/internal/logging/InstanceIdSequence;->newInstanceId()Lcom/android/internal/logging/InstanceId;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropEventLogger;->mInstanceId:Lcom/android/internal/logging/InstanceId;

    :cond_1
    iget-object v0, p1, Lcom/android/wm/shell/draganddrop/DragSession;->activityInfo:Landroid/content/pm/ActivityInfo;

    iput-object v0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropEventLogger;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, p1, Lcom/android/wm/shell/draganddrop/DragSession;->appData:Landroid/content/Intent;

    if-eqz v1, :cond_5

    iget-object p1, p1, Lcom/android/wm/shell/draganddrop/DragSession;->mInitialDragData:Landroid/content/ClipData;

    invoke-virtual {p1}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object p1

    const-string v0, "application/vnd.android.activity"

    invoke-virtual {p1, v0}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p1, Lcom/android/wm/shell/draganddrop/DragAndDropEventLogger$DragAndDropUiEventEnum;->GLOBAL_APP_DRAG_START_ACTIVITY:Lcom/android/wm/shell/draganddrop/DragAndDropEventLogger$DragAndDropUiEventEnum;

    goto :goto_1

    :cond_2
    const-string v0, "application/vnd.android.shortcut"

    invoke-virtual {p1, v0}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object p1, Lcom/android/wm/shell/draganddrop/DragAndDropEventLogger$DragAndDropUiEventEnum;->GLOBAL_APP_DRAG_START_SHORTCUT:Lcom/android/wm/shell/draganddrop/DragAndDropEventLogger$DragAndDropUiEventEnum;

    goto :goto_1

    :cond_3
    const-string v0, "application/vnd.android.task"

    invoke-virtual {p1, v0}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    sget-object p1, Lcom/android/wm/shell/draganddrop/DragAndDropEventLogger$DragAndDropUiEventEnum;->GLOBAL_APP_DRAG_START_TASK:Lcom/android/wm/shell/draganddrop/DragAndDropEventLogger$DragAndDropUiEventEnum;

    :goto_1
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropEventLogger;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p0, p1, v0}, Lcom/android/wm/shell/draganddrop/DragAndDropEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;Landroid/content/pm/ActivityInfo;)V

    goto :goto_2

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Not an app drag"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    sget-object p1, Lcom/android/wm/shell/draganddrop/DragAndDropEventLogger$DragAndDropUiEventEnum;->GLOBAL_APP_DRAG_START_ACTIVITY:Lcom/android/wm/shell/draganddrop/DragAndDropEventLogger$DragAndDropUiEventEnum;

    invoke-virtual {p0, p1, v0}, Lcom/android/wm/shell/draganddrop/DragAndDropEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;Landroid/content/pm/ActivityInfo;)V

    :goto_2
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropEventLogger;->mInstanceId:Lcom/android/internal/logging/InstanceId;

    return-object p0
.end method
