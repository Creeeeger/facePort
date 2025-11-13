.class public Lcom/samsung/android/settings/deviceinfo/batteryinfo/BatteryHealthPreferenceController;
.super Lcom/samsung/android/settings/deviceinfo/batteryinfo/BatteryRegulatoryPreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field private final mBatteryManager:Landroid/os/BatteryManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/deviceinfo/batteryinfo/BatteryRegulatoryPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-class p2, Landroid/os/BatteryManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/BatteryManager;

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/batteryinfo/BatteryHealthPreferenceController;->mBatteryManager:Landroid/os/BatteryManager;

    return-void
.end method

.method private getBatteryHealths()[J
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/batteryinfo/BatteryHealthPreferenceController;->mBatteryManager:Landroid/os/BatteryManager;

    const/16 v0, 0x6b

    invoke-virtual {p0, v0}, Landroid/os/BatteryManager;->semGetValuesAsLong(I)[J

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "bm.SEM_BATTERY_PROPERTY_BSOH : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BatteryRegulatoryPreferenceController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method private parseHealthValue([JI)Ljava/lang/String;
    .locals 1

    const-string p0, ""

    :try_start_0
    aget-wide p1, p1, p2

    long-to-int p1, p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    return-object p0

    :cond_0
    invoke-static {p1}, Lcom/android/settingslib/Utils;->formatPercentage(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Battery Health Parse Error : "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "BatteryRegulatoryPreferenceController"

    invoke-static {p1, p2, v0}, Lcom/android/settings/applications/manageapplications/CloneBackend$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getBackupKeys()Ljava/util/List;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/deviceinfo/batteryinfo/BatteryRegulatoryPreferenceController;->getBackupKeys()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getBatteryRegulatoryValues()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/batteryinfo/BatteryHealthPreferenceController;->getBatteryHealths()[J

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/batteryinfo/BatteryHealthPreferenceController;->showRepresentativeOnly()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/settings/deviceinfo/batteryinfo/BatteryHealthPreferenceController;->parseHealthValue([JI)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    sget v3, Lcom/samsung/android/settings/deviceinfo/batteryinfo/BatteryInfoUtils;->mBatteryCount:I

    if-gt v2, v3, :cond_1

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/settings/deviceinfo/batteryinfo/BatteryHealthPreferenceController;->parseHealthValue([JI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getLaunchIntent()Landroid/content/Intent;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/deviceinfo/batteryinfo/BatteryRegulatoryPreferenceController;->getLaunchIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getSliceHighlightMenuRes()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/deviceinfo/batteryinfo/BatteryRegulatoryPreferenceController;->getStatusText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getValue()Lcom/samsung/android/settings/cube/ControlValue;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/deviceinfo/batteryinfo/BatteryRegulatoryPreferenceController;->getValue()Lcom/samsung/android/settings/cube/ControlValue;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic ignoreUserInteraction()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/deviceinfo/batteryinfo/BatteryRegulatoryPreferenceController;->ignoreUserInteraction()V

    return-void
.end method

.method public bridge synthetic isControllable()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/deviceinfo/batteryinfo/BatteryRegulatoryPreferenceController;->isControllable()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isPublicSlice()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic isSliceable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/deviceinfo/batteryinfo/BatteryRegulatoryPreferenceController;->needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/deviceinfo/batteryinfo/BatteryRegulatoryPreferenceController;->runDefaultAction()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/deviceinfo/batteryinfo/BatteryRegulatoryPreferenceController;->setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;

    move-result-object p0

    return-object p0
.end method

.method public showRepresentativeOnly()Z
    .locals 1

    sget p0, Lcom/samsung/android/settings/deviceinfo/batteryinfo/BatteryInfoUtils;->mBatteryCount:I

    const/4 v0, 0x1

    if-le p0, v0, :cond_0

    sget-boolean p0, Lcom/samsung/android/settings/deviceinfo/batteryinfo/BatteryInfoUtils;->mIsDetachableBatteryDevice:Z

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
