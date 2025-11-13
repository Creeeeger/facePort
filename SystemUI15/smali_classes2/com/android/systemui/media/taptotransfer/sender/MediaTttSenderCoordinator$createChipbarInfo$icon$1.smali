.class final Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderCoordinator$createChipbarInfo$icon$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation


# instance fields
.field final synthetic $logger:Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderLogger;

.field final synthetic $packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderLogger;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderCoordinator$createChipbarInfo$icon$1;->$packageName:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderCoordinator$createChipbarInfo$icon$1;->$logger:Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderLogger;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderCoordinator$createChipbarInfo$icon$1;->$packageName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderCoordinator$createChipbarInfo$icon$1;->$logger:Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderLogger;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/android/systemui/media/taptotransfer/common/MediaTttLoggerUtils;->INSTANCE:Lcom/android/systemui/media/taptotransfer/common/MediaTttLoggerUtils;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const-string v1, "MediaTttSender"

    invoke-static {p0, v1, v0}, Lcom/android/systemui/media/taptotransfer/common/MediaTttLoggerUtils;->logPackageNotFound(Lcom/android/systemui/log/LogBuffer;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
