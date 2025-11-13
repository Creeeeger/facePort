.class public Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;
.super Ljava/lang/Object;
.source "BluetoothDevicePreferenceGroup.java"


# instance fields
.field private mChildIdCounter:I

.field private mIsVisibleDivider:Z

.field private mLayout:I

.field private mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/bluetooth/BluetoothDevicePreference;",
            ">;"
        }
    .end annotation
.end field

.field private mProgress:Z

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 30
    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->mTitle:Ljava/lang/String;

    const/4 v0, 0x0

    .line 31
    iput v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->mLayout:I

    .line 35
    iput v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->mChildIdCounter:I

    .line 37
    iput-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->mProgress:Z

    const/4 v0, 0x1

    .line 38
    iput-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->mIsVisibleDivider:Z

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->mList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public addPreference(ILcom/android/settings/bluetooth/BluetoothDevicePreference;)Z
    .locals 2

    .line 84
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->mList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 85
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 86
    monitor-enter p0

    .line 87
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le p1, v0, :cond_0

    .line 88
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->mList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 91
    iget p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->mChildIdCounter:I

    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->mChildIdCounter:I

    int-to-long v0, p1

    invoke-virtual {p2, v0, v1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->setChildId(J)V

    .line 92
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

    const-string p1, "addPreference :: contains preference"

    .line 94
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    const-string p0, "BluetoothDevicePreferenceGroup"

    const-string p1, "addPreference :: mList is null"

    .line 98
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public contains(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)Z
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->mList:Ljava/util/ArrayList;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public findDevice(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)I
    .locals 2

    const/4 v0, 0x0

    .line 75
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 76
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getCachedDevice()Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public getLayoutResource()I
    .locals 0

    .line 55
    iget p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->mLayout:I

    return p0
.end method

.method public getPreference(I)Lcom/android/settings/bluetooth/BluetoothDevicePreference;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->mList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->mList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getPreferenceCount()I
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->mList:Ljava/util/ArrayList;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getPreferenceList()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/bluetooth/BluetoothDevicePreference;",
            ">;"
        }
    .end annotation

    .line 66
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->mList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->mTitle:Ljava/lang/String;

    return-object p0
.end method

.method public isVisibleDivider()Z
    .locals 0

    .line 137
    iget-boolean p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->mIsVisibleDivider:Z

    return p0
.end method

.method public remove(I)V
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->mList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->mList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public remove(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->mList:Ljava/util/ArrayList;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeAll()V
    .locals 0

    .line 118
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->mList:Ljava/util/ArrayList;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    return-void
.end method

.method public setLayoutResource(I)V
    .locals 0

    .line 52
    iput p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->mLayout:I

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->mTitle:Ljava/lang/String;

    return-void
.end method
