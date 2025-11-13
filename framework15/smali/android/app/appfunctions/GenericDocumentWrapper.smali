.class public final Landroid/app/appfunctions/GenericDocumentWrapper;
.super Ljava/lang/Object;
.source "GenericDocumentWrapper.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/appfunctions/GenericDocumentWrapper;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mGenericDocument:Landroid/app/appsearch/GenericDocument;

.field private final blacklist mLock:Ljava/lang/Object;

.field private blacklist mParcel:Landroid/os/Parcel;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/app/appfunctions/GenericDocumentWrapper$1;

    invoke-direct {v0}, Landroid/app/appfunctions/GenericDocumentWrapper$1;-><init>()V

    sput-object v0, Landroid/app/appfunctions/GenericDocumentWrapper;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/app/appsearch/GenericDocument;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/app/appfunctions/GenericDocumentWrapper;->mLock:Ljava/lang/Object;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/appsearch/GenericDocument;

    iput-object v0, p0, Landroid/app/appfunctions/GenericDocumentWrapper;->mGenericDocument:Landroid/app/appsearch/GenericDocument;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/appfunctions/GenericDocumentWrapper;->mParcel:Landroid/os/Parcel;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/app/appfunctions/GenericDocumentWrapper;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/appfunctions/GenericDocumentWrapper;->mGenericDocument:Landroid/app/appsearch/GenericDocument;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcel;

    iput-object v0, p0, Landroid/app/appfunctions/GenericDocumentWrapper;->mParcel:Landroid/os/Parcel;

    return-void
.end method

.method private blacklist unparcel()V
    .locals 5

    iget-object v0, p0, Landroid/app/appfunctions/GenericDocumentWrapper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/app/appfunctions/GenericDocumentWrapper;->mGenericDocument:Landroid/app/appsearch/GenericDocument;

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Landroid/app/appfunctions/GenericDocumentWrapper;->mParcel:Landroid/os/Parcel;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->readBlob()[B

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    array-length v3, v1

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4, v3}, Landroid/os/Parcel;->unmarshall([BII)V

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    invoke-static {v2}, Landroid/app/appsearch/GenericDocument;->createFromParcel(Landroid/os/Parcel;)Landroid/app/appsearch/GenericDocument;

    move-result-object v3

    iput-object v3, p0, Landroid/app/appfunctions/GenericDocumentWrapper;->mGenericDocument:Landroid/app/appsearch/GenericDocument;

    iget-object v3, p0, Landroid/app/appfunctions/GenericDocumentWrapper;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    const/4 v3, 0x0

    iput-object v3, p0, Landroid/app/appfunctions/GenericDocumentWrapper;->mParcel:Landroid/os/Parcel;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    nop

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v3

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    nop

    throw v3

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getValue()Landroid/app/appsearch/GenericDocument;
    .locals 2

    invoke-direct {p0}, Landroid/app/appfunctions/GenericDocumentWrapper;->unparcel()V

    iget-object v0, p0, Landroid/app/appfunctions/GenericDocumentWrapper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/app/appfunctions/GenericDocumentWrapper;->mGenericDocument:Landroid/app/appsearch/GenericDocument;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/appsearch/GenericDocument;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 7

    iget-object v0, p0, Landroid/app/appfunctions/GenericDocumentWrapper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/app/appfunctions/GenericDocumentWrapper;->mGenericDocument:Landroid/app/appsearch/GenericDocument;

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    const/4 v2, -0x1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v3, p0, Landroid/app/appfunctions/GenericDocumentWrapper;->mGenericDocument:Landroid/app/appsearch/GenericDocument;

    invoke-virtual {v3, v2, p2}, Landroid/app/appsearch/GenericDocument;->writeToParcel(Landroid/os/Parcel;I)V

    invoke-virtual {v2}, Landroid/os/Parcel;->marshall()[B

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    nop

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeBlob([B)V

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v5

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    sub-int v6, v5, v4

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->setDataPosition(I)V

    goto :goto_0

    :catchall_0
    move-exception v3

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    nop

    throw v3

    :cond_0
    iget-object v1, p0, Landroid/app/appfunctions/GenericDocumentWrapper;->mParcel:Landroid/os/Parcel;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->dataSize()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v1}, Landroid/os/Parcel;->dataSize()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3, v2}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V

    :goto_0
    monitor-exit v0

    return-void

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method
