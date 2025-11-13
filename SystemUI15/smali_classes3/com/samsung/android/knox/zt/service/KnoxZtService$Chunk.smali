.class public final Lcom/samsung/android/knox/zt/service/KnoxZtService$Chunk;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public data:Ljava/lang/String;

.field public sequenceNumber:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/knox/zt/service/KnoxZtService$Chunk;->sequenceNumber:I

    iput-object p2, p0, Lcom/samsung/android/knox/zt/service/KnoxZtService$Chunk;->data:Ljava/lang/String;

    return-void
.end method
