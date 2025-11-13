.class public final Lokhttp3/MultipartBody$Builder;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final boundary:Lokio/ByteString;

.field public final parts:Ljava/util/List;

.field public type:Lokhttp3/MediaType;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v1, Lokhttp3/MultipartBody;->MIXED:Lokhttp3/MediaType;

    iput-object v1, p0, Lokhttp3/MultipartBody$Builder;->type:Lokhttp3/MediaType;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lokhttp3/MultipartBody$Builder;->parts:Ljava/util/List;

    sget-object v1, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    invoke-static {v0}, Lokio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/MultipartBody$Builder;->boundary:Lokio/ByteString;

    return-void
.end method
