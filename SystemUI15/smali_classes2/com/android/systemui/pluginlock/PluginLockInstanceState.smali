.class public Lcom/android/systemui/pluginlock/PluginLockInstanceState;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field private static final ALLOWED_NUMBER_BASE_BASIC:I = 0xa

.field private static final ALLOWED_NUMBER_BASE_DYNAMIC:I = 0x2710

.field private static final DEFAULT_SERVICE_TYPE:I = 0x0

.field private static final KEY_PLUGIN_LOCK_INSTANCE_DATA:Ljava/lang/String; = "key_plugin_lock_instance_data"

.field private static final PLUGIN_LOCK_MODE_BASIC:I = 0x1

.field private static final PLUGIN_LOCK_MODE_DYNAMIC:I = 0x2

.field private static final SERVICE_TYPE_SEPARATOR:Ljava/lang/String; = ":"

.field private static final TAG:Ljava/lang/String; = "PluginLockInstanceState"

.field public static mDbCacheData:Ljava/lang/String;

.field public static final mLock:Ljava/lang/Object;


# instance fields
.field private mAllowedNumber:I

.field private mContext:Landroid/content/Context;

.field private final mCr:Landroid/content/ContentResolver;

.field private mData:Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;

.field private final mGson:Lcom/google/gson/Gson;

.field private mInstance:Lcom/samsung/systemui/splugins/pluginlock/PluginLock;

.field private mIsDestroyed:Z

.field private mMode:I

.field private mPackageName:Ljava/lang/String;

.field private mTimeStamp:J

.field private final mUtils:Lcom/android/systemui/pluginlock/PluginLockUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/systemui/splugins/pluginlock/PluginLock;Landroid/content/Context;Lcom/android/systemui/pluginlock/PluginLockUtils;)V
    .locals 6

    const-string v0, "PluginLockInstanceState mPackageName["

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x1

    iput v1, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mMode:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mIsDestroyed:Z

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "PluginLockInstanceState: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PluginLockInstanceState"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mInstance:Lcom/samsung/systemui/splugins/pluginlock/PluginLock;

    iput-object p2, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mCr:Landroid/content/ContentResolver;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mPackageName:Ljava/lang/String;

    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mTimeStamp:J

    new-instance p2, Lcom/google/gson/GsonBuilder;

    invoke-direct {p2}, Lcom/google/gson/GsonBuilder;-><init>()V

    iput-boolean v1, p2, Lcom/google/gson/GsonBuilder;->escapeHtmlChars:Z

    invoke-virtual {p2}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mGson:Lcom/google/gson/Gson;

    iput-object p3, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mUtils:Lcom/android/systemui/pluginlock/PluginLockUtils;

    :try_start_0
    invoke-interface {p1}, Lcom/samsung/systemui/splugins/pluginlock/PluginLock;->getBasicManager()Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;->getServiceType()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mPackageName:Ljava/lang/String;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mPackageName:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ":"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mPackageName:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "]"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "PluginLockInstanceState Throwable "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    iget-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mInstance:Lcom/samsung/systemui/splugins/pluginlock/PluginLock;

    invoke-interface {p1}, Lcom/samsung/systemui/splugins/SPlugin;->getVersion()I

    move-result p1

    const/16 p2, 0x44c

    if-lt p1, p2, :cond_1

    iget-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mInstance:Lcom/samsung/systemui/splugins/pluginlock/PluginLock;

    invoke-interface {p1}, Lcom/samsung/systemui/splugins/pluginlock/PluginLock;->getBasicManager()Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;->getMode()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mMode:I

    invoke-direct {p0}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->initInstanceData()V

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "mMode = "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mMode:I

    invoke-static {p0, v3, p1}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    return-void
.end method

.method private getDbData()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mDbCacheData:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mDbCacheData:Ljava/lang/String;

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mCr:Landroid/content/ContentResolver;

    const-string v0, "key_plugin_lock_instance_data"

    invoke-static {p0, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method private initInstanceData()V
    .locals 10

    const-string v0, "initInstanceData() strData:"

    const-string v1, "initInstanceData() instanceData:"

    const-string v2, "initInstanceData list = "

    iget-object v3, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mContext:Landroid/content/Context;

    if-nez v3, :cond_0

    return-void

    :cond_0
    sget-object v3, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    invoke-direct {p0}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getDbData()Ljava/lang/String;

    move-result-object v4

    const-string v5, "PluginLockInstanceState"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0x2710

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/16 v7, 0xa

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    goto/16 :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mGson:Lcom/google/gson/Gson;

    const-class v8, Lcom/android/systemui/pluginlock/PluginLockInstanceData;

    invoke-virtual {v0, v8, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/pluginlock/PluginLockInstanceData;

    iget-object v4, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mUtils:Lcom/android/systemui/pluginlock/PluginLockUtils;

    const-string v8, "PluginLockInstanceState"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/systemui/pluginlock/PluginLockInstanceData;->getData(Ljava/lang/String;)Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v8, v1}, Lcom/android/systemui/pluginlock/PluginLockUtils;->addDump(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/systemui/pluginlock/PluginLockInstanceData;->contain(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    new-instance v1, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;

    invoke-direct {v1}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mData:Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;

    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/PluginLockInstanceData;->getDataList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v4, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mMode:I

    if-ne v4, v6, :cond_2

    mul-int/2addr v1, v7

    add-int/2addr v1, v7

    iput v1, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mAllowedNumber:I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_4

    :cond_2
    if-ne v4, v5, :cond_3

    mul-int/2addr v1, v7

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mAllowedNumber:I

    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mData:Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;

    iget-object v2, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;->setPackageName(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mData:Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;

    iget v2, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mAllowedNumber:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;->setNumber(Ljava/lang/Integer;)V

    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mData:Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;

    invoke-virtual {v0, v1}, Lcom/android/systemui/pluginlock/PluginLockInstanceData;->addData(Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;)V

    invoke-direct {p0, v0}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->updateDb(Lcom/android/systemui/pluginlock/PluginLockInstanceData;)V

    goto :goto_3

    :cond_4
    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/systemui/pluginlock/PluginLockInstanceData;->getData(Ljava/lang/String;)Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mData:Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;->getNumber()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mAllowedNumber:I

    goto :goto_3

    :cond_5
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mUtils:Lcom/android/systemui/pluginlock/PluginLockUtils;

    const-string v8, "PluginLockInstanceState"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v8, v0}, Lcom/android/systemui/pluginlock/PluginLockUtils;->addDump(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/android/systemui/pluginlock/PluginLockInstanceData;

    invoke-direct {v0}, Lcom/android/systemui/pluginlock/PluginLockInstanceData;-><init>()V

    new-instance v1, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;

    invoke-direct {v1}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mData:Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;

    iget v4, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mMode:I

    if-ne v4, v6, :cond_6

    iput v7, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mAllowedNumber:I

    goto :goto_2

    :cond_6
    if-ne v4, v5, :cond_7

    iput v2, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mAllowedNumber:I

    :cond_7
    :goto_2
    iget-object v2, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;->setPackageName(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mData:Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;

    iget v2, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mAllowedNumber:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;->setNumber(Ljava/lang/Integer;)V

    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mData:Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;

    invoke-virtual {v0, v1}, Lcom/android/systemui/pluginlock/PluginLockInstanceData;->addData(Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;)V

    invoke-direct {p0, v0}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->updateDb(Lcom/android/systemui/pluginlock/PluginLockInstanceData;)V

    :cond_8
    :goto_3
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "PluginLockInstanceState"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "initInstanceData setAllowedNumber "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mAllowedNumber:I

    invoke-static {v2, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mInstance:Lcom/samsung/systemui/splugins/pluginlock/PluginLock;

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/pluginlock/PluginLock;->getBasicManager()Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;

    move-result-object v0

    iget p0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mAllowedNumber:I

    invoke-interface {v0, p0}, Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;->setAllowedNumber(I)V

    return-void

    :goto_4
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private updateDb(Lcom/android/systemui/pluginlock/PluginLockInstanceData;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "update instance data: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PluginLockInstanceState"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/PluginLockInstanceData;->getVersion()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    invoke-virtual {p1, v1}, Lcom/android/systemui/pluginlock/PluginLockInstanceData;->setVersion(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mGson:Lcom/google/gson/Gson;

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mDbCacheData:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mCr:Landroid/content/ContentResolver;

    const-string v0, "key_plugin_lock_instance_data"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "destroy() "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mPackageName:Ljava/lang/String;

    const-string v2, "PluginLockInstanceState"

    invoke-static {v0, v1, v2}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mInstance:Lcom/samsung/systemui/splugins/pluginlock/PluginLock;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/pluginlock/PluginLock;->getBasicManager()Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mInstance:Lcom/samsung/systemui/splugins/pluginlock/PluginLock;

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/pluginlock/PluginLock;->getBasicManager()Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;->setCallback(Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager$Callback;)V

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mInstance:Lcom/samsung/systemui/splugins/pluginlock/PluginLock;

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/pluginlock/PluginLock;->getBasicManager()Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;->setPanelView(Landroid/view/ViewGroup;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mInstance:Lcom/samsung/systemui/splugins/pluginlock/PluginLock;

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/SPlugin;->onDestroy()V

    iput-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mInstance:Lcom/samsung/systemui/splugins/pluginlock/PluginLock;

    :cond_1
    iput-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mPackageName:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mTimeStamp:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mIsDestroyed:Z

    return-void
.end method

.method public getAllowedNumber()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mAllowedNumber:I

    return p0
.end method

.method public getData()Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mData:Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;

    return-object p0
.end method

.method public getDataVersion()I
    .locals 2

    invoke-direct {p0}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getDbData()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mGson:Lcom/google/gson/Gson;

    const-class v1, Lcom/android/systemui/pluginlock/PluginLockInstanceData;

    invoke-virtual {p0, v1, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData;

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockInstanceData;->getVersion()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const-string v0, "getDataVersion() "

    const-string v1, "PluginLockInstanceState"

    invoke-static {p0, v0, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public getPluginLockContext()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public getPluginLockInstance()Lcom/samsung/systemui/splugins/pluginlock/PluginLock;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mInstance:Lcom/samsung/systemui/splugins/pluginlock/PluginLock;

    return-object p0
.end method

.method public getPluginLockTimeStamp()J
    .locals 2

    iget-wide v0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mTimeStamp:J

    return-wide v0
.end method

.method public getRecoverData()Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mData:Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;->getRecoverData()Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public hasEnabledPlugin(I)Z
    .locals 6

    invoke-direct {p0}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getDbData()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mGson:Lcom/google/gson/Gson;

    const-class v1, Lcom/android/systemui/pluginlock/PluginLockInstanceData;

    invoke-virtual {p0, v1, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData;

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockInstanceData;->getDataList()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;

    sget-boolean v2, Lcom/android/systemui/LsRune;->PLUGIN_LOCK_MULTIPLE_ACTIVATION:Z

    if-eqz v2, :cond_1

    invoke-virtual {v1, p1}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;->getTimeStamps(I)Ljava/lang/Long;

    move-result-object v2

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;->getTimeStamp()Ljava/lang/Long;

    move-result-object v2

    :goto_1
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    invoke-virtual {v1, p1}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;->isEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public isEnabled(I)Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mData:Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;

    invoke-virtual {p0, p1}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;->isEnabled(I)Z

    move-result p0

    return p0
.end method

.method public isEnabledOtherScreen(I)Z
    .locals 2

    const/4 v0, 0x1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mData:Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;

    invoke-virtual {p0, v0}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;->isEnabled(I)Z

    move-result p0

    return p0

    :cond_0
    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mData:Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;

    invoke-virtual {p0, v1}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;->isEnabled(I)Z

    move-result p0

    return p0

    :cond_1
    return v1
.end method

.method public isModeDynamic()Z
    .locals 1

    iget p0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mMode:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isRecentInstance()Z
    .locals 8

    invoke-direct {p0}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getDbData()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mGson:Lcom/google/gson/Gson;

    const-class v2, Lcom/android/systemui/pluginlock/PluginLockInstanceData;

    invoke-virtual {v1, v2, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/pluginlock/PluginLockInstanceData;

    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/PluginLockInstanceData;->getDataList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v1, 0x0

    move-wide v3, v1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;

    invoke-virtual {v5}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;->getTimeStamp()Ljava/lang/Long;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v5}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;->getTimeStamp()Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v6, v3, v6

    if-gez v6, :cond_0

    invoke-virtual {v5}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;->getTimeStamp()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    goto :goto_0

    :cond_1
    cmp-long v0, v3, v1

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mData:Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;

    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;->getTimeStamp()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mData:Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;

    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;->getTimeStamp()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v0, v3

    if-ltz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isRecentInstance() true, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mPackageName:Ljava/lang/String;

    const-string v2, "PluginLockInstanceState"

    invoke-static {v1, p0, v2}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return v0
.end method

.method public isRecentInstance(I)Z
    .locals 9

    invoke-direct {p0}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getDbData()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mGson:Lcom/google/gson/Gson;

    const-class v2, Lcom/android/systemui/pluginlock/PluginLockInstanceData;

    invoke-virtual {v1, v2, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/pluginlock/PluginLockInstanceData;

    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/PluginLockInstanceData;->getDataList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v1, 0x0

    move-wide v3, v1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;

    sget-boolean v6, Lcom/android/systemui/LsRune;->PLUGIN_LOCK_MULTIPLE_ACTIVATION:Z

    if-eqz v6, :cond_1

    invoke-virtual {v5, p1}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;->getTimeStamps(I)Ljava/lang/Long;

    move-result-object v6

    goto :goto_1

    :cond_1
    invoke-virtual {v5}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;->getTimeStamp()Ljava/lang/Long;

    move-result-object v6

    :goto_1
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    cmp-long v7, v3, v7

    if-gez v7, :cond_0

    invoke-virtual {v5, p1}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    goto :goto_0

    :cond_2
    sget-boolean v0, Lcom/android/systemui/LsRune;->PLUGIN_LOCK_MULTIPLE_ACTIVATION:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mData:Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;

    invoke-virtual {v0, p1}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;->getTimeStamps(I)Ljava/lang/Long;

    move-result-object v0

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mData:Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;

    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;->getTimeStamp()Ljava/lang/Long;

    move-result-object v0

    :goto_2
    cmp-long v1, v3, v1

    if-lez v1, :cond_4

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v0, v3

    if-ltz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mData:Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;

    invoke-virtual {v0, p1}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;->isEnabled(I)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x1

    goto :goto_3

    :cond_4
    const/4 p1, 0x0

    :goto_3
    if-eqz p1, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "isRecentInstance() true, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mPackageName:Ljava/lang/String;

    const-string v1, "PluginLockInstanceState"

    invoke-static {v0, p0, v1}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return p1
.end method

.method public reset(Lcom/samsung/systemui/splugins/pluginlock/PluginLock;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mInstance:Lcom/samsung/systemui/splugins/pluginlock/PluginLock;

    iput-object p2, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mContext:Landroid/content/Context;

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mTimeStamp:J

    iget-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mData:Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;->setTimeStamp(Ljava/lang/Long;)V

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->updateDb()V

    return-void
.end method

.method public resetStateData()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mIsDestroyed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mData:Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;->setTimeStamp(Ljava/lang/Long;)V

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mData:Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;->setWhich(I)V

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->updateDb()V

    :cond_1
    return-void
.end method

.method public setStateData(IJ)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mIsDestroyed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mData:Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;

    if-eqz v0, :cond_1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;->setTimeStamp(ILjava/lang/Long;)V

    iget-object p2, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mData:Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;

    const/4 p3, 0x1

    invoke-virtual {p2, p1, p3}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;->setScreen(IZ)V

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->updateDb()V

    :cond_1
    return-void
.end method

.method public setStateData(IZ)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mIsDestroyed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mTimeStamp:J

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mTimeStamp:J

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mData:Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;

    if-eqz v0, :cond_2

    iget-wide v1, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mTimeStamp:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;->setTimeStamp(ILjava/lang/Long;)V

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mData:Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;->setScreen(IZ)V

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->updateDb()V

    :cond_2
    return-void
.end method

.method public setTimeStamp(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mIsDestroyed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mTimeStamp:J

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mTimeStamp:J

    :goto_0
    iget-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mData:Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;

    if-eqz p1, :cond_2

    iget-wide v0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mTimeStamp:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;->setTimeStamp(Ljava/lang/Long;)V

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->updateDb()V

    :cond_2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mData:Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "null"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", instance["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mInstance:Lcom/samsung/systemui/splugins/pluginlock/PluginLock;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public updateDb()V
    .locals 5

    iget-boolean v0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mIsDestroyed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getDbData()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_2

    :cond_1
    :goto_0
    new-instance v1, Lcom/android/systemui/pluginlock/PluginLockInstanceData;

    invoke-direct {v1}, Lcom/android/systemui/pluginlock/PluginLockInstanceData;-><init>()V

    new-instance v2, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;

    invoke-direct {v2}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mData:Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;

    iget v3, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mMode:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    const/16 v3, 0xa

    iput v3, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mAllowedNumber:I

    goto :goto_1

    :cond_2
    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    const/16 v3, 0x2710

    iput v3, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mAllowedNumber:I

    :cond_3
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;->setPackageName(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mData:Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;

    iget v3, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mAllowedNumber:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;->setNumber(Ljava/lang/Integer;)V

    iget-object v2, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mData:Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;

    invoke-virtual {v1, v2}, Lcom/android/systemui/pluginlock/PluginLockInstanceData;->addData(Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;)V

    iget-object v2, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mGson:Lcom/google/gson/Gson;

    invoke-virtual {v2, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :cond_4
    iget-object v2, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mGson:Lcom/google/gson/Gson;

    const-class v3, Lcom/android/systemui/pluginlock/PluginLockInstanceData;

    invoke-virtual {v2, v3, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/pluginlock/PluginLockInstanceData;

    iget-object v2, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/systemui/pluginlock/PluginLockInstanceData;->getData(Ljava/lang/String;)Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v3, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mData:Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;

    invoke-virtual {v3}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;->getNumber()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;->setNumber(Ljava/lang/Integer;)V

    iget-object v3, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mData:Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;

    invoke-virtual {v3}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;->getTimeStamp()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;->setTimeStamp(Ljava/lang/Long;)V

    iget-object v3, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mData:Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;

    invoke-virtual {v3}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;->getTimeStamps()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;->setTimeStampList(Ljava/util/List;)V

    iget-object v3, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mData:Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;

    invoke-virtual {v3}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;->getRecoverData()Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;->setRecoverData(Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;)V

    iget-object v3, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mData:Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;

    invoke-virtual {v3}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;->getWhich()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;->setWhich(I)V

    :cond_5
    invoke-direct {p0, v1}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->updateDb(Lcom/android/systemui/pluginlock/PluginLockInstanceData;)V

    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
