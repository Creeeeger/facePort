.class public abstract Lcom/android/settings/display/DeviceStateAutoRotationHelper;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public static createPreferenceControllers(Landroid/content/Context;)Lcom/google/common/collect/ImmutableList;
    .locals 10

    invoke-static {p0}, Lcom/android/settingslib/devicestate/DeviceStateRotationLockSettingsManager;->getInstance(Landroid/content/Context;)Lcom/android/settingslib/devicestate/DeviceStateRotationLockSettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v0, v0, Lcom/android/settingslib/devicestate/DeviceStateRotationLockSettingsManager;->mSettableDeviceStates:Ljava/util/List;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0300b0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    if-eq v0, v3, :cond_1

    const-string p0, "DeviceStateAutoRotHelpr"

    const-string v0, "Mismatch between number of device states and device states descriptions."

    invoke-static {p0, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0

    :cond_1
    sget-object v3, Lcom/google/common/collect/ImmutableList;->EMPTY_ITR:Lcom/google/common/collect/ImmutableList$Itr;

    const-string v3, "expectedSize"

    invoke-static {v0, v3}, Lcom/google/common/collect/CollectPreconditions;->checkNonnegative(ILjava/lang/String;)V

    const-string v3, "initialCapacity"

    invoke-static {v0, v3}, Lcom/google/common/collect/CollectPreconditions;->checkNonnegative(ILjava/lang/String;)V

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v4, v0, :cond_4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settingslib/devicestate/DeviceStateRotationLockSettingsManager$SettableDeviceState;

    iget-boolean v7, v6, Lcom/android/settingslib/devicestate/DeviceStateRotationLockSettingsManager$SettableDeviceState;->mIsSettable:Z

    if-nez v7, :cond_2

    goto :goto_1

    :cond_2
    neg-int v7, v0

    add-int/2addr v7, v4

    new-instance v8, Lcom/android/settings/display/DeviceStateAutoRotateSettingController;

    aget-object v9, v2, v4

    iget v6, v6, Lcom/android/settingslib/devicestate/DeviceStateRotationLockSettingsManager$SettableDeviceState;->mDeviceState:I

    invoke-direct {v8, p0, v6, v9, v7}, Lcom/android/settings/display/DeviceStateAutoRotateSettingController;-><init>(Landroid/content/Context;ILjava/lang/String;I)V

    add-int/lit8 v6, v5, 0x1

    array-length v7, v3

    if-ge v7, v6, :cond_3

    array-length v7, v3

    invoke-static {v7, v6}, Lcom/google/common/collect/ImmutableCollection$Builder;->expandedCapacity(II)I

    move-result v7

    invoke-static {v3, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    :cond_3
    aput-object v8, v3, v5

    move v5, v6

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    invoke-static {v5, v3}, Lcom/google/common/collect/ImmutableList;->asImmutableList(I[Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0
.end method

.method public static isDeviceStateRotationEnabled(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lcom/android/internal/view/RotationPolicy;->isRotationLockToggleVisible(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x107013e

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    array-length p0, p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
