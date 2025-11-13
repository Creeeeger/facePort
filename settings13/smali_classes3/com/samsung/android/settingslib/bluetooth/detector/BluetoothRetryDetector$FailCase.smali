.class public final enum Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;
.super Ljava/lang/Enum;
.source "BluetoothRetryDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FailCase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;

.field public static final enum CONNECTION_FAILURE:Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;

.field public static final enum CONNECTION_FAILURE_HOGP:Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;

.field public static final enum CONNECTION_FAILURE_LE:Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;

.field public static final enum CONNECTION_FAILURE_WATCH:Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;

.field public static final enum PAIRING_FAILURE:Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;

.field public static final enum SCANNING_FAILURE:Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;


# instance fields
.field private final maxCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 19
    new-instance v0, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;

    const-string v1, "SCANNING_FAILURE"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;->SCANNING_FAILURE:Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;

    .line 20
    new-instance v1, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;

    const-string v4, "CONNECTION_FAILURE"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v5}, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;->CONNECTION_FAILURE:Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;

    .line 21
    new-instance v4, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;

    const-string v6, "PAIRING_FAILURE"

    invoke-direct {v4, v6, v3, v5}, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;->PAIRING_FAILURE:Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;

    .line 22
    new-instance v6, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;

    const-string v7, "CONNECTION_FAILURE_HOGP"

    const/4 v8, 0x3

    invoke-direct {v6, v7, v8, v5}, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;->CONNECTION_FAILURE_HOGP:Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;

    .line 23
    new-instance v7, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;

    const-string v9, "CONNECTION_FAILURE_LE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v5}, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;->CONNECTION_FAILURE_LE:Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;

    .line 24
    new-instance v9, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;

    const-string v11, "CONNECTION_FAILURE_WATCH"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v5}, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;->CONNECTION_FAILURE_WATCH:Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;

    aput-object v0, v11, v2

    aput-object v1, v11, v5

    aput-object v4, v11, v3

    aput-object v6, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    .line 18
    sput-object v11, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;->$VALUES:[Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 33
    iput p3, p0, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;->maxCount:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;
    .locals 1

    .line 18
    const-class v0, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;
    .locals 1

    .line 18
    sget-object v0, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;->$VALUES:[Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;

    invoke-virtual {v0}, [Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;

    return-object v0
.end method


# virtual methods
.method public getMaxCount()I
    .locals 0

    .line 29
    iget p0, p0, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;->maxCount:I

    return p0
.end method
