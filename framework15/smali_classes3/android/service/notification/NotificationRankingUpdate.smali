.class public Landroid/service/notification/NotificationRankingUpdate;
.super Ljava/lang/Object;
.source "NotificationRankingUpdate.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/notification/NotificationRankingUpdate;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

.field private blacklist mRankingMapFd:Landroid/os/SharedMemory;

.field private final blacklist mSharedMemoryName:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/service/notification/NotificationRankingUpdate$1;

    invoke-direct {v0}, Landroid/service/notification/NotificationRankingUpdate$1;-><init>()V

    sput-object v0, Landroid/service/notification/NotificationRankingUpdate;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/service/notification/NotificationRankingUpdate;->mRankingMapFd:Landroid/os/SharedMemory;

    const-string v1, "NotificationRankingUpdatedSharedMemory"

    iput-object v1, p0, Landroid/service/notification/NotificationRankingUpdate;->mSharedMemoryName:Ljava/lang/String;

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/service/notification/Flags;->rankingUpdateAshmem()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    const-class v4, Landroid/os/SharedMemory;

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/SharedMemory;

    iput-object v3, p0, Landroid/service/notification/NotificationRankingUpdate;->mRankingMapFd:Landroid/os/SharedMemory;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v3

    iget-object v4, p0, Landroid/service/notification/NotificationRankingUpdate;->mRankingMapFd:Landroid/os/SharedMemory;

    if-nez v4, :cond_1

    iput-object v0, p0, Landroid/service/notification/NotificationRankingUpdate;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    if-eqz v2, :cond_0

    iget-object v0, p0, Landroid/service/notification/NotificationRankingUpdate;->mRankingMapFd:Landroid/os/SharedMemory;

    if-eqz v0, :cond_0

    invoke-static {v2}, Landroid/os/SharedMemory;->unmap(Ljava/nio/ByteBuffer;)V

    iget-object v0, p0, Landroid/service/notification/NotificationRankingUpdate;->mRankingMapFd:Landroid/os/SharedMemory;

    invoke-virtual {v0}, Landroid/os/SharedMemory;->close()V

    :cond_0
    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Landroid/service/notification/NotificationRankingUpdate;->mRankingMapFd:Landroid/os/SharedMemory;

    invoke-virtual {v0}, Landroid/os/SharedMemory;->mapReadOnly()Ljava/nio/ByteBuffer;

    move-result-object v0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    new-array v0, v0, [B

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    array-length v4, v0

    const/4 v5, 0x0

    invoke-virtual {v1, v0, v5, v4}, Landroid/os/Parcel;->unmarshall([BII)V

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->setDataPosition(I)V

    nop

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    const-class v5, Landroid/service/notification/NotificationListenerService$RankingMap;

    invoke-virtual {v1, v4, v5}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/service/notification/NotificationListenerService$RankingMap;

    iput-object v4, p0, Landroid/service/notification/NotificationRankingUpdate;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    invoke-direct {p0, v3}, Landroid/service/notification/NotificationRankingUpdate;->addSmartActionsFromBundleToRankingMap(Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    if-eqz v2, :cond_2

    iget-object v0, p0, Landroid/service/notification/NotificationRankingUpdate;->mRankingMapFd:Landroid/os/SharedMemory;

    if-eqz v0, :cond_2

    invoke-static {v2}, Landroid/os/SharedMemory;->unmap(Ljava/nio/ByteBuffer;)V

    iget-object v0, p0, Landroid/service/notification/NotificationRankingUpdate;->mRankingMapFd:Landroid/os/SharedMemory;

    invoke-virtual {v0}, Landroid/os/SharedMemory;->close()V

    :cond_2
    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    if-eqz v2, :cond_3

    iget-object v3, p0, Landroid/service/notification/NotificationRankingUpdate;->mRankingMapFd:Landroid/os/SharedMemory;

    if-eqz v3, :cond_3

    invoke-static {v2}, Landroid/os/SharedMemory;->unmap(Ljava/nio/ByteBuffer;)V

    iget-object v3, p0, Landroid/service/notification/NotificationRankingUpdate;->mRankingMapFd:Landroid/os/SharedMemory;

    invoke-virtual {v3}, Landroid/os/SharedMemory;->close()V

    :cond_3
    throw v0

    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/service/notification/NotificationListenerService$RankingMap;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/notification/NotificationListenerService$RankingMap;

    iput-object v0, p0, Landroid/service/notification/NotificationRankingUpdate;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    :goto_1
    return-void
.end method

.method public constructor blacklist <init>([Landroid/service/notification/NotificationListenerService$Ranking;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/service/notification/NotificationRankingUpdate;->mRankingMapFd:Landroid/os/SharedMemory;

    const-string v0, "NotificationRankingUpdatedSharedMemory"

    iput-object v0, p0, Landroid/service/notification/NotificationRankingUpdate;->mSharedMemoryName:Ljava/lang/String;

    new-instance v0, Landroid/service/notification/NotificationListenerService$RankingMap;

    invoke-direct {v0, p1}, Landroid/service/notification/NotificationListenerService$RankingMap;-><init>([Landroid/service/notification/NotificationListenerService$Ranking;)V

    iput-object v0, p0, Landroid/service/notification/NotificationRankingUpdate;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    return-void
.end method

.method private blacklist addSmartActionsFromBundleToRankingMap(Landroid/os/Bundle;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/service/notification/NotificationRankingUpdate;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    invoke-virtual {v0}, Landroid/service/notification/NotificationListenerService$RankingMap;->getOrderedKeys()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    aget-object v2, v0, v1

    const-class v3, Landroid/app/Notification$Action;

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Landroid/service/notification/NotificationRankingUpdate;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    invoke-virtual {v4, v2}, Landroid/service/notification/NotificationListenerService$RankingMap;->getRawRankingObject(Ljava/lang/String;)Landroid/service/notification/NotificationListenerService$Ranking;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/service/notification/NotificationListenerService$Ranking;->setSmartActions(Ljava/util/ArrayList;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, p1

    check-cast v0, Landroid/service/notification/NotificationRankingUpdate;

    iget-object v1, p0, Landroid/service/notification/NotificationRankingUpdate;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    iget-object v2, v0, Landroid/service/notification/NotificationRankingUpdate;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    invoke-virtual {v1, v2}, Landroid/service/notification/NotificationListenerService$RankingMap;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getRankingMap()Landroid/service/notification/NotificationListenerService$RankingMap;
    .locals 1

    iget-object v0, p0, Landroid/service/notification/NotificationRankingUpdate;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    return-object v0
.end method

.method public final blacklist isFdNotNullAndClosed()Z
    .locals 2

    iget-object v0, p0, Landroid/service/notification/NotificationRankingUpdate;->mRankingMapFd:Landroid/os/SharedMemory;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/service/notification/NotificationRankingUpdate;->mRankingMapFd:Landroid/os/SharedMemory;

    invoke-virtual {v0}, Landroid/os/SharedMemory;->getFd()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 10

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/service/notification/Flags;->rankingUpdateAshmem()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iget-object v3, p0, Landroid/service/notification/NotificationRankingUpdate;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    invoke-virtual {v3}, Landroid/service/notification/NotificationListenerService$RankingMap;->getOrderedKeys()[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    :goto_0
    array-length v5, v3

    if-ge v4, v5, :cond_1

    aget-object v5, v3, v4

    iget-object v6, p0, Landroid/service/notification/NotificationRankingUpdate;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    invoke-virtual {v6, v5}, Landroid/service/notification/NotificationListenerService$RankingMap;->getRawRankingObject(Ljava/lang/String;)Landroid/service/notification/NotificationListenerService$Ranking;

    move-result-object v6

    invoke-virtual {v6}, Landroid/service/notification/NotificationListenerService$Ranking;->getSmartActions()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {v2, v5, v7}, Landroid/os/Bundle;->putParcelableList(Ljava/lang/String;Ljava/util/List;)V

    :cond_0
    new-instance v8, Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-direct {v8}, Landroid/service/notification/NotificationListenerService$Ranking;-><init>()V

    invoke-virtual {v8, v6}, Landroid/service/notification/NotificationListenerService$Ranking;->populate(Landroid/service/notification/NotificationListenerService$Ranking;)V

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/service/notification/NotificationListenerService$Ranking;->setSmartActions(Ljava/util/ArrayList;)V

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    new-instance v4, Landroid/service/notification/NotificationListenerService$RankingMap;

    const/4 v5, 0x0

    new-array v6, v5, [Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-direct {v4, v6}, Landroid/service/notification/NotificationListenerService$RankingMap;-><init>([Landroid/service/notification/NotificationListenerService$Ranking;)V

    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {v0, v4, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    invoke-virtual {v0}, Landroid/os/Parcel;->dataSize()I

    move-result v7

    const-string v8, "NotificationRankingUpdatedSharedMemory"

    invoke-static {v8, v7}, Landroid/os/SharedMemory;->create(Ljava/lang/String;I)Landroid/os/SharedMemory;

    move-result-object v8

    iput-object v8, p0, Landroid/service/notification/NotificationRankingUpdate;->mRankingMapFd:Landroid/os/SharedMemory;

    iget-object v8, p0, Landroid/service/notification/NotificationRankingUpdate;->mRankingMapFd:Landroid/os/SharedMemory;

    invoke-virtual {v8}, Landroid/os/SharedMemory;->mapReadWrite()Ljava/nio/ByteBuffer;

    move-result-object v8

    move-object v6, v8

    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object v8

    invoke-virtual {v6, v8, v5, v7}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    iget-object v5, p0, Landroid/service/notification/NotificationRankingUpdate;->mRankingMapFd:Landroid/os/SharedMemory;

    sget v8, Landroid/system/OsConstants;->PROT_READ:I

    invoke-virtual {v5, v8}, Landroid/os/SharedMemory;->setProtect(I)Z

    iget-object v5, p0, Landroid/service/notification/NotificationRankingUpdate;->mRankingMapFd:Landroid/os/SharedMemory;

    invoke-virtual {p1, v5, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    if-eqz v6, :cond_2

    iget-object v5, p0, Landroid/service/notification/NotificationRankingUpdate;->mRankingMapFd:Landroid/os/SharedMemory;

    if-eqz v5, :cond_2

    invoke-static {v6}, Landroid/os/SharedMemory;->unmap(Ljava/nio/ByteBuffer;)V

    iget-object v5, p0, Landroid/service/notification/NotificationRankingUpdate;->mRankingMapFd:Landroid/os/SharedMemory;

    invoke-virtual {v5}, Landroid/os/SharedMemory;->close()V

    :cond_2
    goto :goto_2

    :catchall_0
    move-exception v5

    goto :goto_1

    :catch_0
    move-exception v5

    :try_start_1
    new-instance v7, Ljava/lang/RuntimeException;

    invoke-direct {v7, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    if-eqz v6, :cond_3

    iget-object v7, p0, Landroid/service/notification/NotificationRankingUpdate;->mRankingMapFd:Landroid/os/SharedMemory;

    if-eqz v7, :cond_3

    invoke-static {v6}, Landroid/os/SharedMemory;->unmap(Ljava/nio/ByteBuffer;)V

    iget-object v7, p0, Landroid/service/notification/NotificationRankingUpdate;->mRankingMapFd:Landroid/os/SharedMemory;

    invoke-virtual {v7}, Landroid/os/SharedMemory;->close()V

    :cond_3
    throw v5

    :cond_4
    iget-object v0, p0, Landroid/service/notification/NotificationRankingUpdate;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    :goto_2
    return-void
.end method
