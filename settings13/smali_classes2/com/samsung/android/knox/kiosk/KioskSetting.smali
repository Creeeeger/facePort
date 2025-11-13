.class public Lcom/samsung/android/knox/kiosk/KioskSetting;
.super Ljava/lang/Object;
.source "KioskSetting.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/knox/kiosk/KioskSetting;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public airCommand:Z

.field public airView:Z

.field public blockedEdgeFunctions:I

.field public clearAllNotifications:Z

.field public hardwareKey:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public homeKey:Z

.field public multiWindow:Z

.field public navigationBar:Z

.field public settingsChanges:Z

.field public smartClip:Z

.field public statusBar:Z

.field public statusBarExpansion:Z

.field public systemBar:Z

.field public taskManager:Z

.field public wipeRecentTasks:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 160
    new-instance v0, Lcom/samsung/android/knox/kiosk/KioskSetting$1;

    invoke-direct {v0}, Lcom/samsung/android/knox/kiosk/KioskSetting$1;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/kiosk/KioskSetting;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 6

    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/knox/kiosk/KioskSetting;->settingsChanges:Z

    .line 122
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lcom/samsung/android/knox/kiosk/KioskSetting;->statusBarExpansion:Z

    .line 123
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_2

    :cond_2
    move v0, v2

    :goto_2
    iput-boolean v0, p0, Lcom/samsung/android/knox/kiosk/KioskSetting;->homeKey:Z

    .line 124
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    goto :goto_3

    :cond_3
    move v0, v2

    :goto_3
    iput-boolean v0, p0, Lcom/samsung/android/knox/kiosk/KioskSetting;->airCommand:Z

    .line 125
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    goto :goto_4

    :cond_4
    move v0, v2

    :goto_4
    iput-boolean v0, p0, Lcom/samsung/android/knox/kiosk/KioskSetting;->airView:Z

    .line 127
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    goto :goto_5

    :cond_5
    move v0, v2

    :goto_5
    if-eqz v0, :cond_6

    .line 129
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 131
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/knox/kiosk/KioskSetting;->hardwareKey:Ljava/util/List;

    move v3, v2

    .line 133
    :goto_6
    array-length v4, v0

    if-ge v3, v4, :cond_6

    .line 134
    iget-object v4, p0, Lcom/samsung/android/knox/kiosk/KioskSetting;->hardwareKey:Ljava/util/List;

    aget v5, v0, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 138
    :cond_6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_7

    move v0, v1

    goto :goto_7

    :cond_7
    move v0, v2

    :goto_7
    iput-boolean v0, p0, Lcom/samsung/android/knox/kiosk/KioskSetting;->multiWindow:Z

    .line 139
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_8

    move v0, v1

    goto :goto_8

    :cond_8
    move v0, v2

    :goto_8
    iput-boolean v0, p0, Lcom/samsung/android/knox/kiosk/KioskSetting;->smartClip:Z

    .line 140
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_9

    move v0, v1

    goto :goto_9

    :cond_9
    move v0, v2

    :goto_9
    iput-boolean v0, p0, Lcom/samsung/android/knox/kiosk/KioskSetting;->taskManager:Z

    .line 141
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_a

    move v0, v1

    goto :goto_a

    :cond_a
    move v0, v2

    :goto_a
    iput-boolean v0, p0, Lcom/samsung/android/knox/kiosk/KioskSetting;->clearAllNotifications:Z

    .line 142
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_b

    move v0, v1

    goto :goto_b

    :cond_b
    move v0, v2

    :goto_b
    iput-boolean v0, p0, Lcom/samsung/android/knox/kiosk/KioskSetting;->navigationBar:Z

    .line 143
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_c

    move v0, v1

    goto :goto_c

    :cond_c
    move v0, v2

    :goto_c
    iput-boolean v0, p0, Lcom/samsung/android/knox/kiosk/KioskSetting;->statusBar:Z

    .line 144
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_d

    move v0, v1

    goto :goto_d

    :cond_d
    move v0, v2

    :goto_d
    iput-boolean v0, p0, Lcom/samsung/android/knox/kiosk/KioskSetting;->systemBar:Z

    .line 145
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_e

    :cond_e
    move v1, v2

    :goto_e
    iput-boolean v1, p0, Lcom/samsung/android/knox/kiosk/KioskSetting;->wipeRecentTasks:Z

    .line 146
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/knox/kiosk/KioskSetting;->blockedEdgeFunctions:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 84
    iget-boolean p2, p0, Lcom/samsung/android/knox/kiosk/KioskSetting;->settingsChanges:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 85
    iget-boolean p2, p0, Lcom/samsung/android/knox/kiosk/KioskSetting;->statusBarExpansion:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 86
    iget-boolean p2, p0, Lcom/samsung/android/knox/kiosk/KioskSetting;->homeKey:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    iget-boolean p2, p0, Lcom/samsung/android/knox/kiosk/KioskSetting;->airCommand:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 88
    iget-boolean p2, p0, Lcom/samsung/android/knox/kiosk/KioskSetting;->airView:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 91
    iget-object p2, p0, Lcom/samsung/android/knox/kiosk/KioskSetting;->hardwareKey:Ljava/util/List;

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    .line 92
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 93
    iget-object p2, p0, Lcom/samsung/android/knox/kiosk/KioskSetting;->hardwareKey:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    new-array p2, p2, [I

    .line 95
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/knox/kiosk/KioskSetting;->hardwareKey:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 96
    iget-object v1, p0, Lcom/samsung/android/knox/kiosk/KioskSetting;->hardwareKey:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aput v1, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 99
    :cond_0
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    goto :goto_1

    .line 102
    :cond_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 105
    :goto_1
    iget-boolean p2, p0, Lcom/samsung/android/knox/kiosk/KioskSetting;->multiWindow:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    iget-boolean p2, p0, Lcom/samsung/android/knox/kiosk/KioskSetting;->smartClip:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 107
    iget-boolean p2, p0, Lcom/samsung/android/knox/kiosk/KioskSetting;->taskManager:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 108
    iget-boolean p2, p0, Lcom/samsung/android/knox/kiosk/KioskSetting;->clearAllNotifications:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 109
    iget-boolean p2, p0, Lcom/samsung/android/knox/kiosk/KioskSetting;->navigationBar:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 110
    iget-boolean p2, p0, Lcom/samsung/android/knox/kiosk/KioskSetting;->statusBar:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    iget-boolean p2, p0, Lcom/samsung/android/knox/kiosk/KioskSetting;->systemBar:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    iget-boolean p2, p0, Lcom/samsung/android/knox/kiosk/KioskSetting;->wipeRecentTasks:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 113
    iget p0, p0, Lcom/samsung/android/knox/kiosk/KioskSetting;->blockedEdgeFunctions:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
