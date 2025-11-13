.class public Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field private mClock:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "clock"
    .end annotation
.end field

.field private mClockState:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "clock_state"
    .end annotation
.end field

.field private mNotificationBackup:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "notification_visibility"
    .end annotation
.end field

.field private mNotificationBackupType:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "notification_origin"
    .end annotation
.end field

.field private mNotificationState:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "notification"
    .end annotation
.end field

.field private mShortcut:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "shortcut"
    .end annotation
.end field

.field private mShortcutState:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "shortcut_state"
    .end annotation
.end field

.field private mWallpaperDynamic:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "wallpaper_dynamic"
    .end annotation
.end field

.field private mWallpaperDynamicSub:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "wallpaper_dynamic_sub"
    .end annotation
.end field

.field private mWallpaperSource:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "wallpaper_source"
    .end annotation
.end field

.field private mWallpaperSourceSub:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "wallpaper_source_sub"
    .end annotation
.end field

.field private mWallpaperType:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "wallpaper_type"
    .end annotation
.end field

.field private mWallpaperTypeSub:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "wallpaper_type_sub"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->mClockState:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->mClock:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->mNotificationState:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->mNotificationBackupType:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->mNotificationBackup:Ljava/lang/Integer;

    const/4 v1, -0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->mWallpaperDynamic:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->mWallpaperType:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->mWallpaperSource:Ljava/lang/Integer;

    iput-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->mWallpaperDynamicSub:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->mWallpaperTypeSub:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->mWallpaperSourceSub:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->mShortcut:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->mShortcutState:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public getClock()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->mClock:Ljava/lang/Integer;

    if-nez p0, :cond_0

    const/4 p0, -0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public getClockState()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->mClockState:Ljava/lang/Integer;

    if-nez p0, :cond_0

    const/4 p0, -0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public getNotificationBackupType()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->mNotificationBackupType:Ljava/lang/Integer;

    if-nez p0, :cond_0

    const/4 p0, -0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public getNotificationBackupVisibility()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->mNotificationBackup:Ljava/lang/Integer;

    if-nez p0, :cond_0

    const/4 p0, -0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public getNotificationState()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->mNotificationState:Ljava/lang/Integer;

    if-nez p0, :cond_0

    const/4 p0, -0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public getShortcutBackupValue()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->mShortcut:Ljava/lang/Integer;

    if-nez p0, :cond_0

    const/4 p0, -0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public getShortcutState()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->mShortcutState:Ljava/lang/Integer;

    if-nez p0, :cond_0

    const/4 p0, -0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public getWallpaperDynamic(I)Ljava/lang/Integer;
    .locals 1

    const/4 v0, -0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->mWallpaperDynamic:Ljava/lang/Integer;

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    return-object p0

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->mWallpaperDynamicSub:Ljava/lang/Integer;

    if-nez p0, :cond_2

    return-object v0

    :cond_2
    return-object p0
.end method

.method public getWallpaperSource(I)Ljava/lang/Integer;
    .locals 1

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->mWallpaperSource:Ljava/lang/Integer;

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    return-object p0

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->mWallpaperSourceSub:Ljava/lang/Integer;

    if-nez p0, :cond_2

    return-object v0

    :cond_2
    return-object p0
.end method

.method public getWallpaperType(I)Ljava/lang/Integer;
    .locals 1

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->mWallpaperType:Ljava/lang/Integer;

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    return-object p0

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->mWallpaperTypeSub:Ljava/lang/Integer;

    if-nez p0, :cond_2

    return-object v0

    :cond_2
    return-object p0
.end method

.method public setClock(I)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->mClock:Ljava/lang/Integer;

    return-void
.end method

.method public setClockState(I)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->mClockState:Ljava/lang/Integer;

    return-void
.end method

.method public setNotificationBackupType(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->mNotificationBackupType:Ljava/lang/Integer;

    return-void
.end method

.method public setNotificationBackupVisibility(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->mNotificationBackup:Ljava/lang/Integer;

    return-void
.end method

.method public setNotificationState(I)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->mNotificationState:Ljava/lang/Integer;

    return-void
.end method

.method public setShortcutBackup(I)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->mShortcut:Ljava/lang/Integer;

    return-void
.end method

.method public setShortcutState(I)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->mShortcutState:Ljava/lang/Integer;

    return-void
.end method

.method public setWallpaperDynamic(I)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->mWallpaperDynamic:Ljava/lang/Integer;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->mWallpaperDynamicSub:Ljava/lang/Integer;

    return-void
.end method

.method public setWallpaperDynamic(II)V
    .locals 0

    if-nez p1, :cond_0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->mWallpaperDynamic:Ljava/lang/Integer;

    goto :goto_0

    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->mWallpaperDynamicSub:Ljava/lang/Integer;

    :goto_0
    return-void
.end method

.method public setWallpaperSource(I)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->mWallpaperSource:Ljava/lang/Integer;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->mWallpaperSourceSub:Ljava/lang/Integer;

    return-void
.end method

.method public setWallpaperSource(II)V
    .locals 0

    if-nez p1, :cond_0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->mWallpaperSource:Ljava/lang/Integer;

    goto :goto_0

    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->mWallpaperSourceSub:Ljava/lang/Integer;

    :goto_0
    return-void
.end method

.method public setWallpaperType(I)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->mWallpaperType:Ljava/lang/Integer;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->mWallpaperTypeSub:Ljava/lang/Integer;

    return-void
.end method

.method public setWallpaperType(II)V
    .locals 0

    if-nez p1, :cond_0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->mWallpaperType:Ljava/lang/Integer;

    goto :goto_0

    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->mWallpaperTypeSub:Ljava/lang/Integer;

    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->mClock:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->mNotificationState:Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->mNotificationBackupType:Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->mNotificationBackup:Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->mWallpaperDynamic:Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->mWallpaperType:Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->mWallpaperSource:Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->mWallpaperDynamicSub:Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->mWallpaperTypeSub:Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->mWallpaperSourceSub:Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->mShortcut:Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->mShortcutState:Ljava/lang/Integer;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
