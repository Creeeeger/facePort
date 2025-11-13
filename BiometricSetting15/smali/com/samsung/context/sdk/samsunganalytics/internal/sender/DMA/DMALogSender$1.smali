.class public final Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMALogSender$1;
.super Ljava/lang/Object;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"

# interfaces
.implements Lcom/samsung/context/sdk/samsunganalytics/internal/Callback;


# instance fields
.field public final synthetic this$0:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMALogSender;


# direct methods
.method public constructor <init>(Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMALogSender;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMALogSender$1;->this$0:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMALogSender;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onResult(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMALogSender$1;->this$0:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMALogSender;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMALogSender;->sendCommon()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMALogSender;->sendAll()V

    .line 9
    .line 10
    .line 11
    return-void
.end method
