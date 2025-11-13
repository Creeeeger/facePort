.class public final Landroid/media/tv/TableResponse$Builder;
.super Ljava/lang/Object;
.source "TableResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/TableResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final blacklist mRequestId:I

.field private final blacklist mResponseResult:I

.field private final blacklist mSequence:I

.field private final blacklist mSize:I

.field private blacklist mTableByteArray:[B

.field private blacklist mTableSharedMemory:Landroid/os/SharedMemory;

.field private blacklist mTableUri:Landroid/net/Uri;

.field private final blacklist mVersion:I


# direct methods
.method public constructor whitelist <init>(IIIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/media/tv/TableResponse$Builder;->mRequestId:I

    iput p2, p0, Landroid/media/tv/TableResponse$Builder;->mSequence:I

    iput p3, p0, Landroid/media/tv/TableResponse$Builder;->mResponseResult:I

    iput p4, p0, Landroid/media/tv/TableResponse$Builder;->mVersion:I

    iput p5, p0, Landroid/media/tv/TableResponse$Builder;->mSize:I

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/media/tv/TableResponse;
    .locals 11

    new-instance v10, Landroid/media/tv/TableResponse;

    iget v1, p0, Landroid/media/tv/TableResponse$Builder;->mRequestId:I

    iget v2, p0, Landroid/media/tv/TableResponse$Builder;->mSequence:I

    iget v3, p0, Landroid/media/tv/TableResponse$Builder;->mResponseResult:I

    iget v4, p0, Landroid/media/tv/TableResponse$Builder;->mVersion:I

    iget v5, p0, Landroid/media/tv/TableResponse$Builder;->mSize:I

    iget-object v6, p0, Landroid/media/tv/TableResponse$Builder;->mTableUri:Landroid/net/Uri;

    iget-object v7, p0, Landroid/media/tv/TableResponse$Builder;->mTableByteArray:[B

    iget-object v8, p0, Landroid/media/tv/TableResponse$Builder;->mTableSharedMemory:Landroid/os/SharedMemory;

    const/4 v9, 0x0

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Landroid/media/tv/TableResponse;-><init>(IIIIILandroid/net/Uri;[BLandroid/os/SharedMemory;Landroid/media/tv/TableResponse-IA;)V

    return-object v10
.end method

.method public whitelist setTableByteArray([B)Landroid/media/tv/TableResponse$Builder;
    .locals 1

    iput-object p1, p0, Landroid/media/tv/TableResponse$Builder;->mTableByteArray:[B

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/tv/TableResponse$Builder;->mTableUri:Landroid/net/Uri;

    iput-object v0, p0, Landroid/media/tv/TableResponse$Builder;->mTableSharedMemory:Landroid/os/SharedMemory;

    return-object p0
.end method

.method public whitelist setTableSharedMemory(Landroid/os/SharedMemory;)Landroid/media/tv/TableResponse$Builder;
    .locals 1

    iput-object p1, p0, Landroid/media/tv/TableResponse$Builder;->mTableSharedMemory:Landroid/os/SharedMemory;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/tv/TableResponse$Builder;->mTableUri:Landroid/net/Uri;

    iput-object v0, p0, Landroid/media/tv/TableResponse$Builder;->mTableByteArray:[B

    return-object p0
.end method

.method public whitelist setTableUri(Landroid/net/Uri;)Landroid/media/tv/TableResponse$Builder;
    .locals 1

    iput-object p1, p0, Landroid/media/tv/TableResponse$Builder;->mTableUri:Landroid/net/Uri;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/tv/TableResponse$Builder;->mTableByteArray:[B

    iput-object v0, p0, Landroid/media/tv/TableResponse$Builder;->mTableSharedMemory:Landroid/os/SharedMemory;

    return-object p0
.end method
