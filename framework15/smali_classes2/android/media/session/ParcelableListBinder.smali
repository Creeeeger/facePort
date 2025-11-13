.class public Landroid/media/session/ParcelableListBinder;
.super Landroid/os/Binder;
.source "ParcelableListBinder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/os/Parcelable;",
        ">",
        "Landroid/os/Binder;"
    }
.end annotation


# static fields
.field private static final blacklist END_OF_PARCEL:I = 0x0

.field private static final blacklist ITEM_CONTINUED:I = 0x1

.field private static final blacklist SUGGESTED_MAX_IPC_SIZE:I


# instance fields
.field private blacklist mConsumed:Z

.field private final blacklist mConsumer:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private blacklist mCount:I

.field private final blacklist mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final blacklist mListElementsClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final blacklist mLock:Ljava/lang/Object;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/IBinder;->getSuggestedMaxIpcSizeBytes()I

    move-result v0

    sput v0, Landroid/media/session/ParcelableListBinder;->SUGGESTED_MAX_IPC_SIZE:I

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/Class;Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/util/function/Consumer<",
            "Ljava/util/List<",
            "TT;>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/session/ParcelableListBinder;->mLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/session/ParcelableListBinder;->mList:Ljava/util/List;

    iput-object p1, p0, Landroid/media/session/ParcelableListBinder;->mListElementsClass:Ljava/lang/Class;

    iput-object p2, p0, Landroid/media/session/ParcelableListBinder;->mConsumer:Ljava/util/function/Consumer;

    return-void
.end method

.method public static blacklist send(Landroid/os/IBinder;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Landroid/os/IBinder;",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    if-nez v1, :cond_1

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V

    :cond_1
    :goto_0
    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ge v1, v0, :cond_2

    invoke-virtual {v2}, Landroid/os/Parcel;->dataSize()I

    move-result v6

    sget v7, Landroid/media/session/ParcelableListBinder;->SUGGESTED_MAX_IPC_SIZE:I

    if-ge v6, v7, :cond_2

    invoke-virtual {v2, v5}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Parcelable;

    invoke-virtual {v2, v5, v4}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    if-ge v1, v0, :cond_3

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInt(I)V

    :cond_3
    invoke-interface {p0, v5, v2, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    if-lt v1, v0, :cond_0

    return-void
.end method


# virtual methods
.method protected whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :cond_0
    iget-object v1, p0, Landroid/media/session/ParcelableListBinder;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v2, p0, Landroid/media/session/ParcelableListBinder;->mConsumed:Z

    if-eqz v2, :cond_1

    monitor-exit v1

    const/4 v0, 0x0

    return v0

    :cond_1
    iget-object v2, p0, Landroid/media/session/ParcelableListBinder;->mList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/media/session/ParcelableListBinder;->mCount:I

    :cond_2
    :goto_0
    iget v3, p0, Landroid/media/session/ParcelableListBinder;->mCount:I

    if-ge v2, v3, :cond_4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x0

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    iget-object v4, p0, Landroid/media/session/ParcelableListBinder;->mListElementsClass:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Landroid/media/session/ParcelableListBinder;->mList:Ljava/util/List;

    move-object v5, v3

    check-cast v5, Landroid/os/Parcelable;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    nop

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    iget v3, p0, Landroid/media/session/ParcelableListBinder;->mCount:I

    if-lt v2, v3, :cond_5

    iget-object v3, p0, Landroid/media/session/ParcelableListBinder;->mList:Ljava/util/List;

    iput-boolean v0, p0, Landroid/media/session/ParcelableListBinder;->mConsumed:Z

    goto :goto_1

    :cond_5
    const/4 v3, 0x0

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_6

    iget-object v1, p0, Landroid/media/session/ParcelableListBinder;->mConsumer:Ljava/util/function/Consumer;

    invoke-interface {v1, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_6
    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
