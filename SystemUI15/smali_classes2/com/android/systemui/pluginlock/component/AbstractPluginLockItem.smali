.class abstract Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field protected static final KEY_ACTION:Ljava/lang/String; = "action"

.field protected static final KEY_EXTRAS:Ljava/lang/String; = "extras"

.field static final TIME_DELAY_CALLBACK:I = 0x1f40

.field static final VALUE_CHANGED_BY_DYNAMIC:I = -0x3

.field static final VALUE_CHANGED_BY_USER:I = -0x2

.field static final VALUE_DEFAULT:I = -0x1


# instance fields
.field mCallbackRegisterTime:J

.field mCallbackValue:I

.field final mContext:Landroid/content/Context;

.field final mCr:Landroid/content/ContentResolver;

.field mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

.field protected final mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/pluginlock/PluginLockInstanceState;Lcom/android/systemui/util/SettingsHelper;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mCallbackValue:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mCallbackRegisterTime:J

    iput-object p1, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mCr:Landroid/content/ContentResolver;

    iput-object p2, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    iput-object p3, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    return-void
.end method


# virtual methods
.method public abstract apply(Lcom/android/systemui/pluginlock/model/DynamicLockData;Lcom/android/systemui/pluginlock/model/DynamicLockData;)V
.end method

.method public getClockBackupValue()I
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getRecoverData()Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->getClock()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_1
    return v0
.end method

.method public getClockState()I
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getRecoverData()Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->getClockState()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_1
    return v0
.end method

.method public getNotificationBackupType()I
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getRecoverData()Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->getNotificationBackupType()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_1
    return v0
.end method

.method public getNotificationBackupVisibility()I
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getRecoverData()Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->getNotificationBackupVisibility()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_1
    return v0
.end method

.method public getNotificationState()I
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getRecoverData()Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->getNotificationState()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_1
    return v0
.end method

.method public getSettingsInt(Ljava/lang/String;I)I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/util/SettingsHelper;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getWallpaperDynamicBackupValue(I)I
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    const/4 v0, -0x2

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getRecoverData()Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->getWallpaperDynamic(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_1
    return v0
.end method

.method public getWallpaperSourceBackupValue(I)I
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getRecoverData()Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->getWallpaperSource(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_1
    return v0
.end method

.method public getWallpaperTypeBackupValue(I)I
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getRecoverData()Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->getWallpaperType(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_1
    return v0
.end method

.method public putSettingsSecure(Ljava/lang/String;I)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/util/SettingsHelper;->setSecureInt(Ljava/lang/String;I)V

    return-void
.end method

.method public putSettingsSystem(Ljava/lang/String;I)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/util/SettingsHelper;->setSystemInt(Ljava/lang/String;I)V

    return-void
.end method

.method public abstract recover()V
.end method

.method public abstract reset(Z)V
.end method

.method public resetAll()V
    .locals 0

    return-void
.end method

.method public setClockBackupValue(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getRecoverData()Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->setClock(I)V

    if-ltz p1, :cond_0

    const/4 p1, -0x3

    invoke-virtual {v0, p1}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->setClockState(I)V

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    invoke-virtual {v0, p1}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->setClockState(I)V

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->updateDb()V

    :cond_1
    return-void
.end method

.method public setClockState(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getRecoverData()Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->setClockState(I)V

    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->updateDb()V

    :cond_0
    return-void
.end method

.method public setInstanceState(ILcom/android/systemui/pluginlock/PluginLockInstanceState;)V
    .locals 0

    iput-object p2, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    return-void
.end method

.method public setInstanceState(Lcom/android/systemui/pluginlock/PluginLockInstanceState;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    return-void
.end method

.method public setNotificationBackup(II)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getRecoverData()Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->setNotificationBackupType(Ljava/lang/Integer;)V

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->setNotificationBackupVisibility(Ljava/lang/Integer;)V

    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    const/4 p1, -0x3

    invoke-virtual {v0, p1}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->setNotificationState(I)V

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    invoke-virtual {v0, p1}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->setNotificationState(I)V

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->updateDb()V

    :cond_1
    return-void
.end method

.method public setNotificationState(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getRecoverData()Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->setNotificationState(I)V

    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->updateDb()V

    :cond_0
    return-void
.end method

.method public setWallpaperBackup(II)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getRecoverData()Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->setWallpaperSource(I)V

    invoke-virtual {v0, p2}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->setWallpaperType(I)V

    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->updateDb()V

    :cond_0
    return-void
.end method

.method public setWallpaperBackup(III)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getRecoverData()Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->setWallpaperSource(II)V

    invoke-virtual {v0, p1, p3}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->setWallpaperType(II)V

    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->updateDb()V

    :cond_0
    return-void
.end method

.method public setWallpaperBackupValue(III)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getRecoverData()Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->setWallpaperDynamic(I)V

    invoke-virtual {v0, p2}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->setWallpaperSource(I)V

    invoke-virtual {v0, p3}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->setWallpaperType(I)V

    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->updateDb()V

    :cond_0
    return-void
.end method

.method public setWallpaperBackupValue(IIII)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getRecoverData()Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->setWallpaperDynamic(II)V

    invoke-virtual {v0, p1, p3}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->setWallpaperSource(II)V

    invoke-virtual {v0, p1, p4}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->setWallpaperType(II)V

    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->updateDb()V

    :cond_0
    return-void
.end method

.method public setWallpaperDynamicBackupValue(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getRecoverData()Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->setWallpaperDynamic(I)V

    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->updateDb()V

    :cond_0
    return-void
.end method

.method public setWallpaperDynamicBackupValue(II)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getRecoverData()Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->setWallpaperDynamic(II)V

    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->updateDb()V

    :cond_0
    return-void
.end method

.method public setWallpaperSourceBackupValue(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getRecoverData()Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->setWallpaperSource(I)V

    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->updateDb()V

    :cond_0
    return-void
.end method

.method public setWallpaperSourceBackupValue(II)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getRecoverData()Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->getWallpaperSource(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, p2, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->setWallpaperSource(II)V

    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->updateDb()V

    :cond_0
    return-void
.end method

.method public setWallpaperTypeBackupValue(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getRecoverData()Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->setWallpaperType(I)V

    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->updateDb()V

    :cond_0
    return-void
.end method

.method public setWallpaperTypeBackupValue(II)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getRecoverData()Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->getWallpaperType(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, p2, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->setWallpaperType(II)V

    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->updateDb()V

    :cond_0
    return-void
.end method

.method public abstract update(Lcom/android/systemui/pluginlock/model/DynamicLockData;Lcom/android/systemui/pluginlock/model/DynamicLockData;)V
.end method
