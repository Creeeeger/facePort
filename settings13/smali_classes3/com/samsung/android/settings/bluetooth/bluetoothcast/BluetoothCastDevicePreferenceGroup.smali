.class public Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreferenceGroup;
.super Ljava/lang/Object;
.source "BluetoothCastDevicePreferenceGroup.java"


# instance fields
.field private mCastList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreference;",
            ">;"
        }
    .end annotation
.end field

.field private mChildIdCounter:I

.field private mIsVisibleDivider:Z

.field private mLayout:I

.field private mProgress:Z

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 29
    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreferenceGroup;->mTitle:Ljava/lang/String;

    const/4 v0, 0x0

    .line 30
    iput v0, p0, Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreferenceGroup;->mLayout:I

    .line 34
    iput v0, p0, Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreferenceGroup;->mChildIdCounter:I

    .line 36
    iput-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreferenceGroup;->mProgress:Z

    const/4 v0, 0x1

    .line 37
    iput-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreferenceGroup;->mIsVisibleDivider:Z

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreferenceGroup;->mCastList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public addCastPreference(ILcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreference;)Z
    .locals 2

    .line 83
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreferenceGroup;->mCastList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 84
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 85
    monitor-enter p0

    .line 86
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreferenceGroup;->mCastList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le p1, v0, :cond_0

    .line 87
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreferenceGroup;->mCastList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreferenceGroup;->mCastList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 90
    iget p1, p0, Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreferenceGroup;->mChildIdCounter:I

    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreferenceGroup;->mChildIdCounter:I

    int-to-long v0, p1

    invoke-virtual {p2, v0, v1}, Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreference;->setChildId(J)V

    .line 91
    monitor-exit p0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    const-string p0, "BluetoothDevicePreferenceGroup"

    const-string p1, "addCastPreference :: contains preference"

    .line 93
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    const-string p0, "BluetoothDevicePreferenceGroup"

    const-string p1, "addCastPreference :: mCastList is null"

    .line 97
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eqz p1, :cond_1

    .line 146
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 149
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreferenceGroup;->getTitle()Ljava/lang/String;

    move-result-object p0

    check-cast p1, Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreferenceGroup;

    invoke-virtual {p1}, Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreferenceGroup;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public getCastPreference(I)Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreference;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreferenceGroup;->mCastList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreferenceGroup;->mCastList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreference;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getCastPreferenceCount()I
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreferenceGroup;->mCastList:Ljava/util/ArrayList;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getCastPreferenceList()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreference;",
            ">;"
        }
    .end annotation

    .line 65
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreferenceGroup;->mCastList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getLayoutResource()I
    .locals 0

    .line 54
    iget p0, p0, Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreferenceGroup;->mLayout:I

    return p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreferenceGroup;->mTitle:Ljava/lang/String;

    return-object p0
.end method

.method public isVisibleDivider()Z
    .locals 0

    .line 136
    iget-boolean p0, p0, Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreferenceGroup;->mIsVisibleDivider:Z

    return p0
.end method

.method public remove(Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreference;)V
    .locals 0

    .line 109
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreferenceGroup;->mCastList:Ljava/util/ArrayList;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeAll()V
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreferenceGroup;->mCastList:Ljava/util/ArrayList;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreferenceGroup;->mTitle:Ljava/lang/String;

    return-void
.end method
