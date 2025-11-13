.class public Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/RunningTaskInfoCompat;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field private mInfo:Landroid/app/ActivityManager$RunningTaskInfo;


# direct methods
.method public constructor <init>(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/RunningTaskInfoCompat;->mInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    return-void
.end method


# virtual methods
.method public getBaseIntent()Landroid/content/Intent;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/RunningTaskInfoCompat;->mInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->baseIntent:Landroid/content/Intent;

    return-object p0
.end method

.method public getDisplayId()I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/RunningTaskInfoCompat;->mInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    return p0
.end method

.method public getLastActiveTime()J
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/RunningTaskInfoCompat;->mInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-wide v0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->lastActiveTime:J

    return-wide v0
.end method

.method public getLastGainFocusTime()J
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/RunningTaskInfoCompat;->mInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-wide v0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->lastGainFocusTime:J

    return-wide v0
.end method

.method public getSourceComponent()Landroid/content/ComponentName;
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/RunningTaskInfoCompat;->mInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->origActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->realActivity:Landroid/content/ComponentName;

    :goto_0
    return-object v0
.end method

.method public getTaskId()I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/RunningTaskInfoCompat;->mInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    return p0
.end method

.method public getUserId()I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/RunningTaskInfoCompat;->mInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    return p0
.end method

.method public getWindowingMode()I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/RunningTaskInfoCompat;->mInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object p0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result p0

    return p0
.end method

.method public isRunning()Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/RunningTaskInfoCompat;->mInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-boolean p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->isRunning:Z

    return p0
.end method
