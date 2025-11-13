.class public final Lokhttp3/internal/http2/Settings;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public set:I

.field public final values:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lokhttp3/internal/http2/Settings$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lokhttp3/internal/http2/Settings$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    new-array v0, v0, [I

    iput-object v0, p0, Lokhttp3/internal/http2/Settings;->values:[I

    return-void
.end method


# virtual methods
.method public final getInitialWindowSize()I
    .locals 1

    iget v0, p0, Lokhttp3/internal/http2/Settings;->set:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    iget-object p0, p0, Lokhttp3/internal/http2/Settings;->values:[I

    const/4 v0, 0x7

    aget p0, p0, v0

    goto :goto_0

    :cond_0
    const p0, 0xffff

    :goto_0
    return p0
.end method

.method public final set(II)V
    .locals 3

    if-ltz p1, :cond_1

    iget-object v0, p0, Lokhttp3/internal/http2/Settings;->values:[I

    array-length v1, v0

    if-lt p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    shl-int/2addr v1, p1

    iget v2, p0, Lokhttp3/internal/http2/Settings;->set:I

    or-int/2addr v1, v2

    iput v1, p0, Lokhttp3/internal/http2/Settings;->set:I

    aput p2, v0, p1

    :cond_1
    :goto_0
    return-void
.end method
