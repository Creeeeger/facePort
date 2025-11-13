.class public Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;
.super Ljava/lang/Object;
.source "BluetoothRetryDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mCount:I

.field private mFailCase:Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;

.field private mIsFired:Z

.field private mIsForRestored:Z

.field private mMaxCount:I

.field private mRestoredDeviceList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTipsIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;Z)V
    .locals 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;->mIsFired:Z

    const-string v0, "BluetoothRetryDetector"

    .line 46
    iput-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;->TAG:Ljava/lang/String;

    .line 64
    invoke-virtual {p0, p2}, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;->init(Z)V

    .line 65
    iput-object p1, p0, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;->mFailCase:Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;

    .line 66
    invoke-virtual {p1}, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;->getMaxCount()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;->mMaxCount:I

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;->mIsFired:Z

    const-string v0, "BluetoothRetryDetector"

    .line 46
    iput-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;->TAG:Ljava/lang/String;

    .line 59
    invoke-virtual {p0, p1}, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;->init(Z)V

    return-void
.end method

.method private launchTipsActivity(Landroid/content/Context;)V
    .locals 3

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Launching tips:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;->mFailCase:Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothRetryDetector"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;->mTipsIntent:Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;->mFailCase:Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "disableReason"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 140
    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;->mTipsIntent:Landroid/content/Intent;

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 141
    iget-object p0, p0, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;->mTipsIntent:Landroid/content/Intent;

    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public addCount()V
    .locals 1

    .line 96
    iget v0, p0, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;->mCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;->mCount:I

    return-void
.end method

.method public addCount(Ljava/lang/String;)V
    .locals 1

    .line 101
    iget-boolean v0, p0, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;->mIsForRestored:Z

    if-eqz v0, :cond_1

    .line 102
    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;->mRestoredDeviceList:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;->mRestoredDeviceList:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 103
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;->mRestoredDeviceList:Ljava/util/HashMap;

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public fireTips(Landroid/content/Context;)V
    .locals 0

    .line 70
    invoke-direct {p0, p1}, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;->launchTipsActivity(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 71
    invoke-virtual {p0, p1}, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;->setFired(Z)V

    return-void
.end method

.method public getCount(Ljava/lang/String;)I
    .locals 2

    .line 84
    iget-boolean v0, p0, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;->mIsForRestored:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;->mRestoredDeviceList:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;->mRestoredDeviceList:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :cond_0
    return v1
.end method

.method public getFailCase()Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;
    .locals 0

    .line 133
    iget-object p0, p0, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;->mFailCase:Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;

    return-object p0
.end method

.method public getMaxCount()I
    .locals 0

    .line 116
    iget p0, p0, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;->mMaxCount:I

    return p0
.end method

.method public init(Z)V
    .locals 3

    .line 49
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;->mTipsIntent:Landroid/content/Intent;

    const-string v1, "com.samsung.android.net.wifi.wifiguider"

    const-string v2, "com.samsung.android.net.wifi.wifiguider.activity.bluetooth.BluetoothGuideActivity"

    .line 50
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 51
    iput-boolean p1, p0, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;->mIsForRestored:Z

    if-eqz p1, :cond_0

    .line 54
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;->mRestoredDeviceList:Ljava/util/HashMap;

    :cond_0
    return-void
.end method

.method public isCountMax()Z
    .locals 1

    .line 75
    iget v0, p0, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;->mCount:I

    invoke-virtual {p0}, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;->getMaxCount()I

    move-result p0

    if-lt v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public launchMoreTips(Landroid/content/Context;)V
    .locals 3

    .line 145
    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;->mTipsIntent:Landroid/content/Intent;

    const-string v1, "disableReason"

    const-string v2, "MORE_TIPS"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 146
    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;->mTipsIntent:Landroid/content/Intent;

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 147
    iget-object p0, p0, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;->mTipsIntent:Landroid/content/Intent;

    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 108
    iput v0, p0, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;->mCount:I

    .line 109
    invoke-virtual {p0, v0}, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;->setFired(Z)V

    .line 110
    iget-boolean v0, p0, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;->mIsForRestored:Z

    if-eqz v0, :cond_0

    .line 111
    iget-object p0, p0, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;->mRestoredDeviceList:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public setCount(I)V
    .locals 0

    .line 92
    iput p1, p0, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;->mCount:I

    return-void
.end method

.method public setFailCase(Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;)V
    .locals 2

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting failcase:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;->mFailCase:Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothRetryDetector"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iput-object p1, p0, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;->mFailCase:Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;

    return-void
.end method

.method public setFired(Z)V
    .locals 0

    .line 124
    iput-boolean p1, p0, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;->mIsFired:Z

    return-void
.end method
