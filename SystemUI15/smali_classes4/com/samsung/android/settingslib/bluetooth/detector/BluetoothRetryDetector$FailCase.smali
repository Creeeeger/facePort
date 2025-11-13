.class public final enum Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;

.field public static final enum CONNECTION_FAILURE:Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;

.field public static final enum CONNECTION_FAILURE_HOGP:Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;

.field public static final enum CONNECTION_FAILURE_LE:Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;

.field public static final enum CONNECTION_FAILURE_RING:Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;

.field public static final enum CONNECTION_FAILURE_WATCH:Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;

.field public static final enum PAIRING_FAILURE:Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;


# instance fields
.field private final maxCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;

    const-string v1, "SCANNING_FAILURE"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;-><init>(Ljava/lang/String;II)V

    new-instance v1, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;

    const-string v2, "CONNECTION_FAILURE"

    const/4 v4, 0x1

    invoke-direct {v1, v2, v4, v4}, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;->CONNECTION_FAILURE:Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;

    new-instance v2, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;

    const-string v5, "PAIRING_FAILURE"

    invoke-direct {v2, v5, v3, v4}, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;->PAIRING_FAILURE:Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;

    new-instance v3, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;

    const-string v5, "CONNECTION_FAILURE_HOGP"

    const/4 v6, 0x3

    invoke-direct {v3, v5, v6, v4}, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;->CONNECTION_FAILURE_HOGP:Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;

    new-instance v5, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;

    const-string v6, "CONNECTION_FAILURE_LE"

    const/4 v7, 0x4

    invoke-direct {v5, v6, v7, v4}, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;->CONNECTION_FAILURE_LE:Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;

    new-instance v6, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;

    const-string v7, "CONNECTION_FAILURE_WATCH"

    const/4 v8, 0x5

    invoke-direct {v6, v7, v8, v4}, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;->CONNECTION_FAILURE_WATCH:Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;

    new-instance v7, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;

    const-string v8, "CONNECTION_FAILURE_RING"

    const/4 v9, 0x6

    invoke-direct {v7, v8, v9, v4}, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;->CONNECTION_FAILURE_RING:Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    filled-new-array/range {v0 .. v6}, [Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;->$VALUES:[Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;

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

    iput p3, p0, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;->maxCount:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;
    .locals 1

    const-class v0, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;
    .locals 1

    sget-object v0, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;->$VALUES:[Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;

    invoke-virtual {v0}, [Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;

    return-object v0
.end method
