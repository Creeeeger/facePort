.class Lcom/samsung/android/settings/bluetooth/BluetoothScanActivity$ScanAppInfo;
.super Ljava/lang/Object;
.source "BluetoothScanActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/bluetooth/BluetoothScanActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ScanAppInfo"
.end annotation


# instance fields
.field private mPackageName:Ljava/lang/String;

.field private mSeverity:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 364
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 365
    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanActivity$ScanAppInfo;->mPackageName:Ljava/lang/String;

    .line 366
    iput-object p2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanActivity$ScanAppInfo;->mSeverity:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getPackageName()Ljava/lang/String;
    .locals 0

    .line 370
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanActivity$ScanAppInfo;->mPackageName:Ljava/lang/String;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public getSeverity()Ljava/lang/String;
    .locals 0

    .line 378
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanActivity$ScanAppInfo;->mSeverity:Ljava/lang/String;

    return-object p0
.end method
