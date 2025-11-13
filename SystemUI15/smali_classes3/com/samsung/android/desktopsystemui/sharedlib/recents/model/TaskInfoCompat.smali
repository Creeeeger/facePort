.class public Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/TaskInfoCompat;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getActivityType(Landroid/app/TaskInfo;)I
    .locals 0

    iget-object p0, p0, Landroid/app/TaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object p0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getActivityType()I

    move-result p0

    return p0
.end method

.method public static getPipSourceRectHint(Landroid/app/PictureInPictureParams;)Landroid/graphics/Rect;
    .locals 0

    invoke-virtual {p0}, Landroid/app/PictureInPictureParams;->getSourceRectHint()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public static getTaskDescription(Landroid/app/TaskInfo;)Landroid/app/ActivityManager$TaskDescription;
    .locals 0

    iget-object p0, p0, Landroid/app/TaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    return-object p0
.end method

.method public static getTopActivity(Landroid/app/TaskInfo;)Landroid/content/ComponentName;
    .locals 0

    iget-object p0, p0, Landroid/app/TaskInfo;->topActivity:Landroid/content/ComponentName;

    return-object p0
.end method

.method public static getTopActivityInfo(Landroid/app/TaskInfo;)Landroid/content/pm/ActivityInfo;
    .locals 0

    iget-object p0, p0, Landroid/app/TaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    return-object p0
.end method

.method public static getUserId(Landroid/app/TaskInfo;)I
    .locals 0

    iget p0, p0, Landroid/app/TaskInfo;->userId:I

    return p0
.end method

.method public static getWindowConfigurationBounds(Landroid/app/TaskInfo;)Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Landroid/app/TaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object p0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public static getWindowingMode(Landroid/app/TaskInfo;)I
    .locals 0

    iget-object p0, p0, Landroid/app/TaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object p0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result p0

    return p0
.end method

.method public static isAutoEnterPipEnabled(Landroid/app/PictureInPictureParams;)Z
    .locals 0

    invoke-virtual {p0}, Landroid/app/PictureInPictureParams;->isAutoEnterEnabled()Z

    move-result p0

    return p0
.end method

.method public static isTopTransparentActivity(Landroid/app/TaskInfo;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public static supportsSplitScreenMultiWindow(Landroid/app/TaskInfo;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
