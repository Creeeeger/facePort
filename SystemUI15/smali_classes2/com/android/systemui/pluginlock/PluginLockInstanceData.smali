.class public Lcom/android/systemui/pluginlock/PluginLockInstanceData;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field private static final MAIN_HOME:I = 0x4

.field private static final MAIN_LOCK:I = 0x1

.field private static final SUB_HOME:I = 0x8

.field private static final SUB_LOCK:I = 0x2

.field public static final VERSION:I = 0x3


# instance fields
.field private mData:Ljava/util/ArrayList;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "data"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;",
            ">;"
        }
    .end annotation
.end field

.field private mVersion:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "version"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData;->mVersion:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public addData(Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData;->mData:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData;->mData:Ljava/util/ArrayList;

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData;->mData:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public contain(Ljava/lang/String;)Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData;->mData:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;

    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public getData(Ljava/lang/String;)Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData;->mData:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;

    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getDataList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData;->mData:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData;->mData:Ljava/util/ArrayList;

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData;->mData:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getVersion()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData;->mVersion:Ljava/lang/Integer;

    return-object p0
.end method

.method public setData(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData;->mData:Ljava/util/ArrayList;

    return-void
.end method

.method public setVersion(I)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData;->mVersion:Ljava/lang/Integer;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData;->mData:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const-string p0, "no data"

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData;->mData:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;

    invoke-virtual {v2}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
