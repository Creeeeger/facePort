.class public final enum Lcom/android/systemui/media/taptotransfer/receiver/ChipStateReceiver;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/media/taptotransfer/receiver/ChipStateReceiver;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/systemui/media/taptotransfer/receiver/ChipStateReceiver;

.field public static final enum CLOSE_TO_SENDER:Lcom/android/systemui/media/taptotransfer/receiver/ChipStateReceiver;

.field public static final Companion:Lcom/android/systemui/media/taptotransfer/receiver/ChipStateReceiver$Companion;


# instance fields
.field private final stateInt:I

.field private final uiEvent:Lcom/android/internal/logging/UiEventLogger$UiEventEnum;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/android/systemui/media/taptotransfer/receiver/ChipStateReceiver;

    sget-object v1, Lcom/android/systemui/media/taptotransfer/receiver/MediaTttReceiverUiEvents;->MEDIA_TTT_RECEIVER_CLOSE_TO_SENDER:Lcom/android/systemui/media/taptotransfer/receiver/MediaTttReceiverUiEvents;

    const-string v2, "CLOSE_TO_SENDER"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v3, v1}, Lcom/android/systemui/media/taptotransfer/receiver/ChipStateReceiver;-><init>(Ljava/lang/String;IILcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    sput-object v0, Lcom/android/systemui/media/taptotransfer/receiver/ChipStateReceiver;->CLOSE_TO_SENDER:Lcom/android/systemui/media/taptotransfer/receiver/ChipStateReceiver;

    new-instance v1, Lcom/android/systemui/media/taptotransfer/receiver/ChipStateReceiver;

    sget-object v2, Lcom/android/systemui/media/taptotransfer/receiver/MediaTttReceiverUiEvents;->MEDIA_TTT_RECEIVER_FAR_FROM_SENDER:Lcom/android/systemui/media/taptotransfer/receiver/MediaTttReceiverUiEvents;

    const-string v3, "FAR_FROM_SENDER"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4, v2}, Lcom/android/systemui/media/taptotransfer/receiver/ChipStateReceiver;-><init>(Ljava/lang/String;IILcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    new-instance v2, Lcom/android/systemui/media/taptotransfer/receiver/ChipStateReceiver;

    sget-object v3, Lcom/android/systemui/media/taptotransfer/receiver/MediaTttReceiverUiEvents;->MEDIA_TTT_RECEIVER_TRANSFER_TO_RECEIVER_SUCCEEDED:Lcom/android/systemui/media/taptotransfer/receiver/MediaTttReceiverUiEvents;

    const-string v4, "TRANSFER_TO_RECEIVER_SUCCEEDED"

    const/4 v5, 0x2

    invoke-direct {v2, v4, v5, v5, v3}, Lcom/android/systemui/media/taptotransfer/receiver/ChipStateReceiver;-><init>(Ljava/lang/String;IILcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    new-instance v3, Lcom/android/systemui/media/taptotransfer/receiver/ChipStateReceiver;

    sget-object v4, Lcom/android/systemui/media/taptotransfer/receiver/MediaTttReceiverUiEvents;->MEDIA_TTT_RECEIVER_TRANSFER_TO_RECEIVER_FAILED:Lcom/android/systemui/media/taptotransfer/receiver/MediaTttReceiverUiEvents;

    const-string v5, "TRANSFER_TO_RECEIVER_FAILED"

    const/4 v6, 0x3

    invoke-direct {v3, v5, v6, v6, v4}, Lcom/android/systemui/media/taptotransfer/receiver/ChipStateReceiver;-><init>(Ljava/lang/String;IILcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    filled-new-array {v0, v1, v2, v3}, [Lcom/android/systemui/media/taptotransfer/receiver/ChipStateReceiver;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/media/taptotransfer/receiver/ChipStateReceiver;->$VALUES:[Lcom/android/systemui/media/taptotransfer/receiver/ChipStateReceiver;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    new-instance v0, Lcom/android/systemui/media/taptotransfer/receiver/ChipStateReceiver$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/media/taptotransfer/receiver/ChipStateReceiver$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/media/taptotransfer/receiver/ChipStateReceiver;->Companion:Lcom/android/systemui/media/taptotransfer/receiver/ChipStateReceiver$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILcom/android/internal/logging/UiEventLogger$UiEventEnum;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/internal/logging/UiEventLogger$UiEventEnum;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/android/systemui/media/taptotransfer/receiver/ChipStateReceiver;->stateInt:I

    iput-object p4, p0, Lcom/android/systemui/media/taptotransfer/receiver/ChipStateReceiver;->uiEvent:Lcom/android/internal/logging/UiEventLogger$UiEventEnum;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/media/taptotransfer/receiver/ChipStateReceiver;
    .locals 1

    const-class v0, Lcom/android/systemui/media/taptotransfer/receiver/ChipStateReceiver;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/media/taptotransfer/receiver/ChipStateReceiver;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/media/taptotransfer/receiver/ChipStateReceiver;
    .locals 1

    sget-object v0, Lcom/android/systemui/media/taptotransfer/receiver/ChipStateReceiver;->$VALUES:[Lcom/android/systemui/media/taptotransfer/receiver/ChipStateReceiver;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/media/taptotransfer/receiver/ChipStateReceiver;

    return-object v0
.end method


# virtual methods
.method public final getStateInt()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/media/taptotransfer/receiver/ChipStateReceiver;->stateInt:I

    return p0
.end method

.method public final getUiEvent()Lcom/android/internal/logging/UiEventLogger$UiEventEnum;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/taptotransfer/receiver/ChipStateReceiver;->uiEvent:Lcom/android/internal/logging/UiEventLogger$UiEventEnum;

    return-object p0
.end method
