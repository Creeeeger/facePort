.class public final Lcom/android/systemui/shade/NotificationShadeWindowState$Buffer;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final buffer:Lcom/android/systemui/common/buffer/RingBuffer;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/systemui/common/buffer/RingBuffer;

    sget-object v1, Lcom/android/systemui/shade/NotificationShadeWindowState$Buffer$buffer$1;->INSTANCE:Lcom/android/systemui/shade/NotificationShadeWindowState$Buffer$buffer$1;

    invoke-direct {v0, p1, v1}, Lcom/android/systemui/common/buffer/RingBuffer;-><init>(ILkotlin/jvm/functions/Function0;)V

    iput-object v0, p0, Lcom/android/systemui/shade/NotificationShadeWindowState$Buffer;->buffer:Lcom/android/systemui/common/buffer/RingBuffer;

    return-void
.end method
