.class public abstract enum Lcom/android/systemui/media/taptotransfer/sender/ChipStateSender;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/media/taptotransfer/sender/ChipStateSender;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/systemui/media/taptotransfer/sender/ChipStateSender;

.field public static final Companion:Lcom/android/systemui/media/taptotransfer/sender/ChipStateSender$Companion;

.field public static final enum FAR_FROM_RECEIVER:Lcom/android/systemui/media/taptotransfer/sender/ChipStateSender;

.field public static final enum TRANSFER_TO_RECEIVER_FAILED:Lcom/android/systemui/media/taptotransfer/sender/ChipStateSender;

.field public static final enum TRANSFER_TO_RECEIVER_SUCCEEDED:Lcom/android/systemui/media/taptotransfer/sender/ChipStateSender;

.field public static final enum TRANSFER_TO_RECEIVER_TRIGGERED:Lcom/android/systemui/media/taptotransfer/sender/ChipStateSender;

.field public static final enum TRANSFER_TO_THIS_DEVICE_FAILED:Lcom/android/systemui/media/taptotransfer/sender/ChipStateSender;

.field public static final enum TRANSFER_TO_THIS_DEVICE_SUCCEEDED:Lcom/android/systemui/media/taptotransfer/sender/ChipStateSender;

.field public static final enum TRANSFER_TO_THIS_DEVICE_TRIGGERED:Lcom/android/systemui/media/taptotransfer/sender/ChipStateSender;


# instance fields
.field private final endItem:Lcom/android/systemui/media/taptotransfer/sender/SenderEndItem;

.field private final stateInt:I

.field private final stringResId:Ljava/lang/Integer;

.field private final timeoutLength:Lcom/android/systemui/media/taptotransfer/sender/TimeoutLength;

.field private final transferStatus:Lcom/android/systemui/media/taptotransfer/sender/TransferStatus;

.field private final uiEvent:Lcom/android/internal/logging/UiEventLogger$UiEventEnum;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lcom/android/systemui/media/taptotransfer/sender/ChipStateSender$ALMOST_CLOSE_TO_START_CAST;

    const-string v1, "ALMOST_CLOSE_TO_START_CAST"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/media/taptotransfer/sender/ChipStateSender$ALMOST_CLOSE_TO_START_CAST;-><init>(Ljava/lang/String;I)V

    new-instance v1, Lcom/android/systemui/media/taptotransfer/sender/ChipStateSender$ALMOST_CLOSE_TO_END_CAST;

    const-string v2, "ALMOST_CLOSE_TO_END_CAST"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/media/taptotransfer/sender/ChipStateSender$ALMOST_CLOSE_TO_END_CAST;-><init>(Ljava/lang/String;I)V

    new-instance v2, Lcom/android/systemui/media/taptotransfer/sender/ChipStateSender$TRANSFER_TO_RECEIVER_TRIGGERED;

    const-string v3, "TRANSFER_TO_RECEIVER_TRIGGERED"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/android/systemui/media/taptotransfer/sender/ChipStateSender$TRANSFER_TO_RECEIVER_TRIGGERED;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/android/systemui/media/taptotransfer/sender/ChipStateSender;->TRANSFER_TO_RECEIVER_TRIGGERED:Lcom/android/systemui/media/taptotransfer/sender/ChipStateSender;

    new-instance v3, Lcom/android/systemui/media/taptotransfer/sender/ChipStateSender$TRANSFER_TO_THIS_DEVICE_TRIGGERED;

    const-string v4, "TRANSFER_TO_THIS_DEVICE_TRIGGERED"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/android/systemui/media/taptotransfer/sender/ChipStateSender$TRANSFER_TO_THIS_DEVICE_TRIGGERED;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/systemui/media/taptotransfer/sender/ChipStateSender;->TRANSFER_TO_THIS_DEVICE_TRIGGERED:Lcom/android/systemui/media/taptotransfer/sender/ChipStateSender;

    new-instance v4, Lcom/android/systemui/media/taptotransfer/sender/ChipStateSender$TRANSFER_TO_RECEIVER_SUCCEEDED;

    const-string v5, "TRANSFER_TO_RECEIVER_SUCCEEDED"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/android/systemui/media/taptotransfer/sender/ChipStateSender$TRANSFER_TO_RECEIVER_SUCCEEDED;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/android/systemui/media/taptotransfer/sender/ChipStateSender;->TRANSFER_TO_RECEIVER_SUCCEEDED:Lcom/android/systemui/media/taptotransfer/sender/ChipStateSender;

    new-instance v5, Lcom/android/systemui/media/taptotransfer/sender/ChipStateSender$TRANSFER_TO_THIS_DEVICE_SUCCEEDED;

    const-string v6, "TRANSFER_TO_THIS_DEVICE_SUCCEEDED"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/android/systemui/media/taptotransfer/sender/ChipStateSender$TRANSFER_TO_THIS_DEVICE_SUCCEEDED;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/android/systemui/media/taptotransfer/sender/ChipStateSender;->TRANSFER_TO_THIS_DEVICE_SUCCEEDED:Lcom/android/systemui/media/taptotransfer/sender/ChipStateSender;

    new-instance v6, Lcom/android/systemui/media/taptotransfer/sender/ChipStateSender$TRANSFER_TO_RECEIVER_FAILED;

    const-string v7, "TRANSFER_TO_RECEIVER_FAILED"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lcom/android/systemui/media/taptotransfer/sender/ChipStateSender$TRANSFER_TO_RECEIVER_FAILED;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/android/systemui/media/taptotransfer/sender/ChipStateSender;->TRANSFER_TO_RECEIVER_FAILED:Lcom/android/systemui/media/taptotransfer/sender/ChipStateSender;

    new-instance v7, Lcom/android/systemui/media/taptotransfer/sender/ChipStateSender$TRANSFER_TO_THIS_DEVICE_FAILED;

    const-string v8, "TRANSFER_TO_THIS_DEVICE_FAILED"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Lcom/android/systemui/media/taptotransfer/sender/ChipStateSender$TRANSFER_TO_THIS_DEVICE_FAILED;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/android/systemui/media/taptotransfer/sender/ChipStateSender;->TRANSFER_TO_THIS_DEVICE_FAILED:Lcom/android/systemui/media/taptotransfer/sender/ChipStateSender;

    new-instance v8, Lcom/android/systemui/media/taptotransfer/sender/ChipStateSender$FAR_FROM_RECEIVER;

    const-string v9, "FAR_FROM_RECEIVER"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10}, Lcom/android/systemui/media/taptotransfer/sender/ChipStateSender$FAR_FROM_RECEIVER;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/android/systemui/media/taptotransfer/sender/ChipStateSender;->FAR_FROM_RECEIVER:Lcom/android/systemui/media/taptotransfer/sender/ChipStateSender;

    filled-new-array/range {v0 .. v8}, [Lcom/android/systemui/media/taptotransfer/sender/ChipStateSender;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/media/taptotransfer/sender/ChipStateSender;->$VALUES:[Lcom/android/systemui/media/taptotransfer/sender/ChipStateSender;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    new-instance v0, Lcom/android/systemui/media/taptotransfer/sender/ChipStateSender$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/media/taptotransfer/sender/ChipStateSender$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/media/taptotransfer/sender/ChipStateSender;->Companion:Lcom/android/systemui/media/taptotransfer/sender/ChipStateSender$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILcom/android/internal/logging/UiEventLogger$UiEventEnum;Ljava/lang/Integer;Lcom/android/systemui/media/taptotransfer/sender/TransferStatus;Lcom/android/systemui/media/taptotransfer/sender/SenderEndItem;Lcom/android/systemui/media/taptotransfer/sender/TimeoutLength;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/internal/logging/UiEventLogger$UiEventEnum;",
            "Ljava/lang/Integer;",
            "Lcom/android/systemui/media/taptotransfer/sender/TransferStatus;",
            "Lcom/android/systemui/media/taptotransfer/sender/SenderEndItem;",
            "Lcom/android/systemui/media/taptotransfer/sender/TimeoutLength;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/android/systemui/media/taptotransfer/sender/ChipStateSender;->stateInt:I

    iput-object p4, p0, Lcom/android/systemui/media/taptotransfer/sender/ChipStateSender;->uiEvent:Lcom/android/internal/logging/UiEventLogger$UiEventEnum;

    iput-object p5, p0, Lcom/android/systemui/media/taptotransfer/sender/ChipStateSender;->stringResId:Ljava/lang/Integer;

    iput-object p6, p0, Lcom/android/systemui/media/taptotransfer/sender/ChipStateSender;->transferStatus:Lcom/android/systemui/media/taptotransfer/sender/TransferStatus;

    iput-object p7, p0, Lcom/android/systemui/media/taptotransfer/sender/ChipStateSender;->endItem:Lcom/android/systemui/media/taptotransfer/sender/SenderEndItem;

    iput-object p8, p0, Lcom/android/systemui/media/taptotransfer/sender/ChipStateSender;->timeoutLength:Lcom/android/systemui/media/taptotransfer/sender/TimeoutLength;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;IILcom/android/internal/logging/UiEventLogger$UiEventEnum;Ljava/lang/Integer;Lcom/android/systemui/media/taptotransfer/sender/TransferStatus;Lcom/android/systemui/media/taptotransfer/sender/SenderEndItem;Lcom/android/systemui/media/taptotransfer/sender/TimeoutLength;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 10

    and-int/lit8 v0, p9, 0x20

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/media/taptotransfer/sender/TimeoutLength;->DEFAULT:Lcom/android/systemui/media/taptotransfer/sender/TimeoutLength;

    move-object v9, v0

    goto :goto_0

    :cond_0
    move-object/from16 v9, p8

    :goto_0
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v1 .. v9}, Lcom/android/systemui/media/taptotransfer/sender/ChipStateSender;-><init>(Ljava/lang/String;IILcom/android/internal/logging/UiEventLogger$UiEventEnum;Ljava/lang/Integer;Lcom/android/systemui/media/taptotransfer/sender/TransferStatus;Lcom/android/systemui/media/taptotransfer/sender/SenderEndItem;Lcom/android/systemui/media/taptotransfer/sender/TimeoutLength;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;IILcom/android/internal/logging/UiEventLogger$UiEventEnum;Ljava/lang/Integer;Lcom/android/systemui/media/taptotransfer/sender/TransferStatus;Lcom/android/systemui/media/taptotransfer/sender/SenderEndItem;Lcom/android/systemui/media/taptotransfer/sender/TimeoutLength;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lcom/android/systemui/media/taptotransfer/sender/ChipStateSender;-><init>(Ljava/lang/String;IILcom/android/internal/logging/UiEventLogger$UiEventEnum;Ljava/lang/Integer;Lcom/android/systemui/media/taptotransfer/sender/TransferStatus;Lcom/android/systemui/media/taptotransfer/sender/SenderEndItem;Lcom/android/systemui/media/taptotransfer/sender/TimeoutLength;)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/media/taptotransfer/sender/ChipStateSender;
    .locals 1

    const-class v0, Lcom/android/systemui/media/taptotransfer/sender/ChipStateSender;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/media/taptotransfer/sender/ChipStateSender;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/media/taptotransfer/sender/ChipStateSender;
    .locals 1

    sget-object v0, Lcom/android/systemui/media/taptotransfer/sender/ChipStateSender;->$VALUES:[Lcom/android/systemui/media/taptotransfer/sender/ChipStateSender;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/media/taptotransfer/sender/ChipStateSender;

    return-object v0
.end method


# virtual methods
.method public getChipTextString(Landroid/content/Context;Ljava/lang/String;)Lcom/android/systemui/common/shared/model/Text;
    .locals 1

    new-instance v0, Lcom/android/systemui/common/shared/model/Text$Loaded;

    iget-object p0, p0, Lcom/android/systemui/media/taptotransfer/sender/ChipStateSender;->stringResId:Ljava/lang/Integer;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/systemui/common/shared/model/Text$Loaded;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public final getEndItem()Lcom/android/systemui/media/taptotransfer/sender/SenderEndItem;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/taptotransfer/sender/ChipStateSender;->endItem:Lcom/android/systemui/media/taptotransfer/sender/SenderEndItem;

    return-object p0
.end method

.method public final getStateInt()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/media/taptotransfer/sender/ChipStateSender;->stateInt:I

    return p0
.end method

.method public final getTimeoutLength()Lcom/android/systemui/media/taptotransfer/sender/TimeoutLength;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/taptotransfer/sender/ChipStateSender;->timeoutLength:Lcom/android/systemui/media/taptotransfer/sender/TimeoutLength;

    return-object p0
.end method

.method public final getTransferStatus()Lcom/android/systemui/media/taptotransfer/sender/TransferStatus;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/taptotransfer/sender/ChipStateSender;->transferStatus:Lcom/android/systemui/media/taptotransfer/sender/TransferStatus;

    return-object p0
.end method

.method public final getUiEvent()Lcom/android/internal/logging/UiEventLogger$UiEventEnum;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/taptotransfer/sender/ChipStateSender;->uiEvent:Lcom/android/internal/logging/UiEventLogger$UiEventEnum;

    return-object p0
.end method

.method public abstract isValidNextState(Lcom/android/systemui/media/taptotransfer/sender/ChipStateSender;)Z
.end method
