.class Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory$ControlAppInfo;
.super Ljava/lang/Object;
.source "BluetoothControlHistory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ControlAppInfo"
.end annotation


# instance fields
.field private mLastEvent:I

.field private mLastEventTime:J

.field private mPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;IJ)V
    .locals 0

    .line 392
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 393
    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory$ControlAppInfo;->mPackageName:Ljava/lang/String;

    .line 394
    iput p2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory$ControlAppInfo;->mLastEvent:I

    .line 395
    iput-wide p3, p0, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory$ControlAppInfo;->mLastEventTime:J

    return-void
.end method


# virtual methods
.method public getLastEvent()I
    .locals 0

    .line 407
    iget p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory$ControlAppInfo;->mLastEvent:I

    return p0
.end method

.method public getLastEventTime()J
    .locals 2

    .line 411
    iget-wide v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory$ControlAppInfo;->mLastEventTime:J

    return-wide v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 0

    .line 399
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory$ControlAppInfo;->mPackageName:Ljava/lang/String;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method
