.class public final Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMALogSender$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/samsung/context/sdk/samsunganalytics/internal/Callback;


# instance fields
.field public final synthetic this$0:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMALogSender;


# direct methods
.method public constructor <init>(Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMALogSender;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMALogSender$1;->this$0:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMALogSender;

    return-void
.end method


# virtual methods
.method public final onResult(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    iget-object p0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMALogSender$1;->this$0:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMALogSender;

    invoke-virtual {p0}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMALogSender;->sendCommon()V

    invoke-virtual {p0}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMALogSender;->sendAll()V

    return-void
.end method
