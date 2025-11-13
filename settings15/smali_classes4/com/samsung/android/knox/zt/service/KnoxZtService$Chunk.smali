.class public final Lcom/samsung/android/knox/zt/service/KnoxZtService$Chunk;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/zt/service/KnoxZtService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Chunk"
.end annotation


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
