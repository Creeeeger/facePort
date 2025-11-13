.class public final Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mCount:I

.field public mFailCase:Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;

.field public mIsForRestored:Z

.field public final mMaxCount:I

.field public mRestoredDeviceList:Ljava/util/HashMap;

.field public mTipsIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;->mTipsIntent:Landroid/content/Intent;

    const-string v1, "com.samsung.android.net.wifi.wifiguider"

    const-string v2, "com.samsung.android.net.wifi.wifiguider.activity.bluetooth.BluetoothGuideActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;->mIsForRestored:Z

    iput-object p1, p0, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;->mFailCase:Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;

    invoke-virtual {p1}, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;->getMaxCount()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;->mMaxCount:I

    return-void
.end method


# virtual methods
.method public final fireTips(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Launching tips:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;->mFailCase:Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothRetryDetector"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;->mTipsIntent:Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;->mFailCase:Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "disableReason"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;->mTipsIntent:Landroid/content/Intent;

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object p0, p0, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;->mTipsIntent:Landroid/content/Intent;

    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public final reset()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;->mCount:I

    iget-boolean v0, p0, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;->mIsForRestored:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;->mRestoredDeviceList:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public final setFailCase(Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Setting failcase:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;->mFailCase:Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothRetryDetector"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;->mFailCase:Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;

    return-void
.end method
