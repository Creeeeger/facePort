.class public final enum Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderUiEvents;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/internal/logging/UiEventLogger$UiEventEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderUiEvents;",
        ">;",
        "Lcom/android/internal/logging/UiEventLogger$UiEventEnum;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderUiEvents;

.field public static final enum MEDIA_TTT_SENDER_ALMOST_CLOSE_TO_END_CAST:Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderUiEvents;

.field public static final enum MEDIA_TTT_SENDER_ALMOST_CLOSE_TO_START_CAST:Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderUiEvents;

.field public static final enum MEDIA_TTT_SENDER_FAR_FROM_RECEIVER:Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderUiEvents;

.field public static final enum MEDIA_TTT_SENDER_TRANSFER_TO_RECEIVER_FAILED:Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderUiEvents;

.field public static final enum MEDIA_TTT_SENDER_TRANSFER_TO_RECEIVER_SUCCEEDED:Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderUiEvents;

.field public static final enum MEDIA_TTT_SENDER_TRANSFER_TO_RECEIVER_TRIGGERED:Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderUiEvents;

.field public static final enum MEDIA_TTT_SENDER_TRANSFER_TO_THIS_DEVICE_FAILED:Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderUiEvents;

.field public static final enum MEDIA_TTT_SENDER_TRANSFER_TO_THIS_DEVICE_SUCCEEDED:Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderUiEvents;

.field public static final enum MEDIA_TTT_SENDER_TRANSFER_TO_THIS_DEVICE_TRIGGERED:Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderUiEvents;

.field public static final enum MEDIA_TTT_SENDER_UNDO_TRANSFER_TO_RECEIVER_CLICKED:Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderUiEvents;

.field public static final enum MEDIA_TTT_SENDER_UNDO_TRANSFER_TO_THIS_DEVICE_CLICKED:Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderUiEvents;


# instance fields
.field private final metricId:I


# direct methods
.method static constructor <clinit>()V
    .locals 14

    new-instance v0, Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderUiEvents;

    const/4 v1, 0x0

    const/16 v2, 0x3cb

    const-string v3, "MEDIA_TTT_SENDER_UNDO_TRANSFER_TO_RECEIVER_CLICKED"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderUiEvents;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderUiEvents;->MEDIA_TTT_SENDER_UNDO_TRANSFER_TO_RECEIVER_CLICKED:Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderUiEvents;

    new-instance v1, Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderUiEvents;

    const/4 v2, 0x1

    const/16 v3, 0x3cc

    const-string v4, "MEDIA_TTT_SENDER_UNDO_TRANSFER_TO_THIS_DEVICE_CLICKED"

    invoke-direct {v1, v4, v2, v3}, Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderUiEvents;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderUiEvents;->MEDIA_TTT_SENDER_UNDO_TRANSFER_TO_THIS_DEVICE_CLICKED:Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderUiEvents;

    new-instance v2, Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderUiEvents;

    const/4 v3, 0x2

    const/16 v4, 0x3cd

    const-string v5, "MEDIA_TTT_SENDER_ALMOST_CLOSE_TO_START_CAST"

    invoke-direct {v2, v5, v3, v4}, Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderUiEvents;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderUiEvents;->MEDIA_TTT_SENDER_ALMOST_CLOSE_TO_START_CAST:Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderUiEvents;

    new-instance v3, Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderUiEvents;

    const/4 v4, 0x3

    const/16 v5, 0x3ce

    const-string v6, "MEDIA_TTT_SENDER_ALMOST_CLOSE_TO_END_CAST"

    invoke-direct {v3, v6, v4, v5}, Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderUiEvents;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderUiEvents;->MEDIA_TTT_SENDER_ALMOST_CLOSE_TO_END_CAST:Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderUiEvents;

    new-instance v4, Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderUiEvents;

    const/4 v5, 0x4

    const/16 v6, 0x3cf

    const-string v7, "MEDIA_TTT_SENDER_TRANSFER_TO_RECEIVER_TRIGGERED"

    invoke-direct {v4, v7, v5, v6}, Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderUiEvents;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderUiEvents;->MEDIA_TTT_SENDER_TRANSFER_TO_RECEIVER_TRIGGERED:Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderUiEvents;

    new-instance v5, Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderUiEvents;

    const/4 v6, 0x5

    const/16 v7, 0x3d0

    const-string v8, "MEDIA_TTT_SENDER_TRANSFER_TO_THIS_DEVICE_TRIGGERED"

    invoke-direct {v5, v8, v6, v7}, Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderUiEvents;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderUiEvents;->MEDIA_TTT_SENDER_TRANSFER_TO_THIS_DEVICE_TRIGGERED:Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderUiEvents;

    new-instance v6, Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderUiEvents;

    const/4 v7, 0x6

    const/16 v8, 0x3d1

    const-string v9, "MEDIA_TTT_SENDER_TRANSFER_TO_RECEIVER_SUCCEEDED"

    invoke-direct {v6, v9, v7, v8}, Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderUiEvents;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderUiEvents;->MEDIA_TTT_SENDER_TRANSFER_TO_RECEIVER_SUCCEEDED:Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderUiEvents;

    new-instance v7, Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderUiEvents;

    const/4 v8, 0x7

    const/16 v9, 0x3d2

    const-string v10, "MEDIA_TTT_SENDER_TRANSFER_TO_THIS_DEVICE_SUCCEEDED"

    invoke-direct {v7, v10, v8, v9}, Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderUiEvents;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderUiEvents;->MEDIA_TTT_SENDER_TRANSFER_TO_THIS_DEVICE_SUCCEEDED:Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderUiEvents;

    new-instance v8, Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderUiEvents;

    const/16 v9, 0x8

    const/16 v10, 0x3d3

    const-string v11, "MEDIA_TTT_SENDER_TRANSFER_TO_RECEIVER_FAILED"

    invoke-direct {v8, v11, v9, v10}, Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderUiEvents;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderUiEvents;->MEDIA_TTT_SENDER_TRANSFER_TO_RECEIVER_FAILED:Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderUiEvents;

    new-instance v9, Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderUiEvents;

    const/16 v10, 0x9

    const/16 v11, 0x3d4

    const-string v12, "MEDIA_TTT_SENDER_TRANSFER_TO_THIS_DEVICE_FAILED"

    invoke-direct {v9, v12, v10, v11}, Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderUiEvents;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderUiEvents;->MEDIA_TTT_SENDER_TRANSFER_TO_THIS_DEVICE_FAILED:Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderUiEvents;

    new-instance v10, Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderUiEvents;

    const/16 v11, 0xa

    const/16 v12, 0x3d5

    const-string v13, "MEDIA_TTT_SENDER_FAR_FROM_RECEIVER"

    invoke-direct {v10, v13, v11, v12}, Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderUiEvents;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderUiEvents;->MEDIA_TTT_SENDER_FAR_FROM_RECEIVER:Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderUiEvents;

    filled-new-array/range {v0 .. v10}, [Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderUiEvents;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderUiEvents;->$VALUES:[Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderUiEvents;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderUiEvents;->metricId:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderUiEvents;
    .locals 1

    const-class v0, Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderUiEvents;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderUiEvents;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderUiEvents;
    .locals 1

    sget-object v0, Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderUiEvents;->$VALUES:[Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderUiEvents;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderUiEvents;

    return-object v0
.end method


# virtual methods
.method public final getId()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderUiEvents;->metricId:I

    return p0
.end method
