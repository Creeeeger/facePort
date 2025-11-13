.class public final Lokhttp3/ResponseBody$1;
.super Lokhttp3/ResponseBody;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic val$content:Lokio/BufferedSource;

.field public final synthetic val$contentLength:J

.field public final synthetic val$contentType:Lokhttp3/MediaType;


# direct methods
.method public constructor <init>(Lokhttp3/MediaType;JLokio/Buffer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokhttp3/ResponseBody$1;->val$contentType:Lokhttp3/MediaType;

    iput-wide p2, p0, Lokhttp3/ResponseBody$1;->val$contentLength:J

    iput-object p4, p0, Lokhttp3/ResponseBody$1;->val$content:Lokio/BufferedSource;

    return-void
.end method


# virtual methods
.method public final contentLength()J
    .locals 2

    iget-wide v0, p0, Lokhttp3/ResponseBody$1;->val$contentLength:J

    return-wide v0
.end method

.method public final contentType()Lokhttp3/MediaType;
    .locals 0

    iget-object p0, p0, Lokhttp3/ResponseBody$1;->val$contentType:Lokhttp3/MediaType;

    return-object p0
.end method

.method public final source()Lokio/BufferedSource;
    .locals 0

    iget-object p0, p0, Lokhttp3/ResponseBody$1;->val$content:Lokio/BufferedSource;

    return-object p0
.end method
