.class final Lcom/android/systemui/media/taptotransfer/sender/ChipStateSender$TRANSFER_TO_THIS_DEVICE_TRIGGERED;
.super Lcom/android/systemui/media/taptotransfer/sender/ChipStateSender;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    sget-object v4, Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderUiEvents;->MEDIA_TTT_SENDER_TRANSFER_TO_THIS_DEVICE_TRIGGERED:Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderUiEvents;

    const v0, 0x7f130bfd

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v6, Lcom/android/systemui/media/taptotransfer/sender/TransferStatus;->IN_PROGRESS:Lcom/android/systemui/media/taptotransfer/sender/TransferStatus;

    sget-object v7, Lcom/android/systemui/media/taptotransfer/sender/SenderEndItem$Loading;->INSTANCE:Lcom/android/systemui/media/taptotransfer/sender/SenderEndItem$Loading;

    sget-object v8, Lcom/android/systemui/media/taptotransfer/sender/TimeoutLength;->LONG:Lcom/android/systemui/media/taptotransfer/sender/TimeoutLength;

    const/4 v9, 0x0

    const/4 v3, 0x3

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v9}, Lcom/android/systemui/media/taptotransfer/sender/ChipStateSender;-><init>(Ljava/lang/String;IILcom/android/internal/logging/UiEventLogger$UiEventEnum;Ljava/lang/Integer;Lcom/android/systemui/media/taptotransfer/sender/TransferStatus;Lcom/android/systemui/media/taptotransfer/sender/SenderEndItem;Lcom/android/systemui/media/taptotransfer/sender/TimeoutLength;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public final isValidNextState(Lcom/android/systemui/media/taptotransfer/sender/ChipStateSender;)Z
    .locals 0

    sget-object p0, Lcom/android/systemui/media/taptotransfer/sender/ChipStateSender;->FAR_FROM_RECEIVER:Lcom/android/systemui/media/taptotransfer/sender/ChipStateSender;

    if-eq p1, p0, :cond_1

    sget-object p0, Lcom/android/systemui/media/taptotransfer/sender/ChipStateSender;->TRANSFER_TO_THIS_DEVICE_SUCCEEDED:Lcom/android/systemui/media/taptotransfer/sender/ChipStateSender;

    if-eq p1, p0, :cond_1

    sget-object p0, Lcom/android/systemui/media/taptotransfer/sender/ChipStateSender;->TRANSFER_TO_THIS_DEVICE_FAILED:Lcom/android/systemui/media/taptotransfer/sender/ChipStateSender;

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
