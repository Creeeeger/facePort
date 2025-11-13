.class public final Lcom/samsung/android/scloud/lib/storage/data/RecordDataSet;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final body:Lcom/samsung/android/scloud/lib/storage/data/Body;

.field public final header:Lcom/samsung/android/scloud/lib/storage/data/Header;


# direct methods
.method public constructor <init>(Lcom/samsung/android/scloud/lib/storage/data/Header;Lcom/samsung/android/scloud/lib/storage/data/Body;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/scloud/lib/storage/data/RecordDataSet;->header:Lcom/samsung/android/scloud/lib/storage/data/Header;

    iput-object p2, p0, Lcom/samsung/android/scloud/lib/storage/data/RecordDataSet;->body:Lcom/samsung/android/scloud/lib/storage/data/Body;

    return-void
.end method
