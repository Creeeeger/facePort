.class public Lcom/samsung/android/scloud/lib/platform/data/ScpmDataSet;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final rcode:I

.field public final result:I

.field public final rmsg:Ljava/lang/String;

.field public final token:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/scloud/lib/platform/data/ScpmDataSet;->result:I

    iput p2, p0, Lcom/samsung/android/scloud/lib/platform/data/ScpmDataSet;->rcode:I

    iput-object p3, p0, Lcom/samsung/android/scloud/lib/platform/data/ScpmDataSet;->rmsg:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/scloud/lib/platform/data/ScpmDataSet;->token:Ljava/lang/String;

    return-void
.end method
