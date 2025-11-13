.class public Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/RecentTaskInfoCompat;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field private mInfo:Landroid/app/ActivityManager$RecentTaskInfo;


# direct methods
.method public constructor <init>(Landroid/app/ActivityManager$RecentTaskInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/RecentTaskInfoCompat;->mInfo:Landroid/app/ActivityManager$RecentTaskInfo;

    return-void
.end method


# virtual methods
.method public getBaseIntent()Landroid/content/Intent;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/RecentTaskInfoCompat;->mInfo:Landroid/app/ActivityManager$RecentTaskInfo;

    iget-object p0, p0, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    return-object p0
.end method

.method public getDisplayId()I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/RecentTaskInfoCompat;->mInfo:Landroid/app/ActivityManager$RecentTaskInfo;

    iget p0, p0, Landroid/app/ActivityManager$RecentTaskInfo;->displayId:I

    return p0
.end method

.method public getLastActiveTime()J
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/RecentTaskInfoCompat;->mInfo:Landroid/app/ActivityManager$RecentTaskInfo;

    iget-wide v0, p0, Landroid/app/ActivityManager$RecentTaskInfo;->lastActiveTime:J

    return-wide v0
.end method

.method public getLastGainFocusTime()J
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/RecentTaskInfoCompat;->mInfo:Landroid/app/ActivityManager$RecentTaskInfo;

    iget-wide v0, p0, Landroid/app/ActivityManager$RecentTaskInfo;->lastGainFocusTime:J

    return-wide v0
.end method

.method public getPairedTaskIds()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public getSourceComponent()Landroid/content/ComponentName;
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/RecentTaskInfoCompat;->mInfo:Landroid/app/ActivityManager$RecentTaskInfo;

    iget-object v0, p0, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/app/ActivityManager$RecentTaskInfo;->realActivity:Landroid/content/ComponentName;

    :goto_0
    return-object v0
.end method

.method public getSupportsSplitScreenMultiWindow()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getTaskDescription()Landroid/app/ActivityManager$TaskDescription;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/RecentTaskInfoCompat;->mInfo:Landroid/app/ActivityManager$RecentTaskInfo;

    iget-object p0, p0, Landroid/app/ActivityManager$RecentTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    return-object p0
.end method

.method public getTaskId()I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/RecentTaskInfoCompat;->mInfo:Landroid/app/ActivityManager$RecentTaskInfo;

    iget p0, p0, Landroid/app/ActivityManager$RecentTaskInfo;->taskId:I

    return p0
.end method

.method public getTopActivity()Landroid/content/ComponentName;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/RecentTaskInfoCompat;->mInfo:Landroid/app/ActivityManager$RecentTaskInfo;

    iget-object p0, p0, Landroid/app/ActivityManager$RecentTaskInfo;->topActivity:Landroid/content/ComponentName;

    return-object p0
.end method

.method public getUserId()I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/RecentTaskInfoCompat;->mInfo:Landroid/app/ActivityManager$RecentTaskInfo;

    iget p0, p0, Landroid/app/ActivityManager$RecentTaskInfo;->userId:I

    return p0
.end method

.method public getWindowingMode()I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/RecentTaskInfoCompat;->mInfo:Landroid/app/ActivityManager$RecentTaskInfo;

    iget-object p0, p0, Landroid/app/ActivityManager$RecentTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object p0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result p0

    return p0
.end method

.method public isDexCompatEnabled()I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/RecentTaskInfoCompat;->mInfo:Landroid/app/ActivityManager$RecentTaskInfo;

    iget-object p0, p0, Landroid/app/ActivityManager$RecentTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget p0, p0, Landroid/content/res/Configuration;->dexCompatEnabled:I

    return p0
.end method

.method public isPairTask()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isRunning()Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/RecentTaskInfoCompat;->mInfo:Landroid/app/ActivityManager$RecentTaskInfo;

    iget-boolean p0, p0, Landroid/app/ActivityManager$RecentTaskInfo;->isRunning:Z

    return p0
.end method
