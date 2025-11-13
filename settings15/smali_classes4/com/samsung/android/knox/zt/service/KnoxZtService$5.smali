.class Lcom/samsung/android/knox/zt/service/KnoxZtService$5;
.super Lcom/samsung/android/knox/zt/service/IChunkedAidlInterface$Stub;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/knox/zt/service/KnoxZtService;->queryAllSignals(Lcom/samsung/android/knox/zt/devicetrust/monitor/IChunkedStringCallback;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/knox/zt/service/KnoxZtService;

.field public final synthetic val$callback:Lcom/samsung/android/knox/zt/devicetrust/monitor/IChunkedStringCallback;


# direct methods
.method public constructor <init>(Lcom/samsung/android/knox/zt/service/KnoxZtService;Lcom/samsung/android/knox/zt/devicetrust/monitor/IChunkedStringCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/zt/service/KnoxZtService$5;->this$0:Lcom/samsung/android/knox/zt/service/KnoxZtService;

    iput-object p2, p0, Lcom/samsung/android/knox/zt/service/KnoxZtService$5;->val$callback:Lcom/samsung/android/knox/zt/devicetrust/monitor/IChunkedStringCallback;

    invoke-direct {p0}, Lcom/samsung/android/knox/zt/service/IChunkedAidlInterface$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public sendChunk(Ljava/lang/String;IZ)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/zt/service/KnoxZtService$5;->val$callback:Lcom/samsung/android/knox/zt/devicetrust/monitor/IChunkedStringCallback;

    invoke-interface {p0, p1, p2, p3}, Lcom/samsung/android/knox/zt/devicetrust/monitor/IChunkedStringCallback;->sendChunk(Ljava/lang/String;IZ)V

    return-void
.end method
