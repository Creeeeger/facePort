.class public final Lokhttp3/internal/http1/HeadersReader;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public headerLimit:J

.field public final source:Lokio/BufferedSource;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lokhttp3/internal/http1/HeadersReader$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lokhttp3/internal/http1/HeadersReader$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lokio/BufferedSource;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokhttp3/internal/http1/HeadersReader;->source:Lokio/BufferedSource;

    const/high16 p1, 0x40000

    int-to-long v0, p1

    iput-wide v0, p0, Lokhttp3/internal/http1/HeadersReader;->headerLimit:J

    return-void
.end method
