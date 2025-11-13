.class public final Lokio/internal/EocdRecord;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final centralDirectoryOffset:J

.field public final commentByteCount:I

.field public final entryCount:J


# direct methods
.method public constructor <init>(JJI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lokio/internal/EocdRecord;->entryCount:J

    iput-wide p3, p0, Lokio/internal/EocdRecord;->centralDirectoryOffset:J

    iput p5, p0, Lokio/internal/EocdRecord;->commentByteCount:I

    return-void
.end method
