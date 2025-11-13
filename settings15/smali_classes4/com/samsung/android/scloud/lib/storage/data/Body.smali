.class public final Lcom/samsung/android/scloud/lib/storage/data/Body;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final fileList:Ljava/util/List;

.field public final itemData:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/scloud/lib/storage/data/Body;->itemData:Lorg/json/JSONObject;

    iput-object p2, p0, Lcom/samsung/android/scloud/lib/storage/data/Body;->fileList:Ljava/util/List;

    return-void
.end method
