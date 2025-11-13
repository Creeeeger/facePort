.class public Landroid/os/BluetoothBatteryStats;
.super Ljava/lang/Object;
.source "BluetoothBatteryStats.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/BluetoothBatteryStats$UidStats;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/BluetoothBatteryStats;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mUidStats:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/BluetoothBatteryStats$UidStats;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/os/BluetoothBatteryStats$1;

    invoke-direct {v0}, Landroid/os/BluetoothBatteryStats$1;-><init>()V

    sput-object v0, Landroid/os/BluetoothBatteryStats;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Landroid/os/BluetoothBatteryStats;->mUidStats:Ljava/util/List;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Landroid/os/BluetoothBatteryStats;->mUidStats:Ljava/util/List;

    new-instance v3, Landroid/os/BluetoothBatteryStats$UidStats;

    const/4 v4, 0x0

    invoke-direct {v3, p1, v4}, Landroid/os/BluetoothBatteryStats$UidStats;-><init>(Landroid/os/Parcel;Landroid/os/BluetoothBatteryStats$UidStats-IA;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/BluetoothBatteryStats$UidStats;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/os/BluetoothBatteryStats;->mUidStats:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getUidStats()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/BluetoothBatteryStats$UidStats;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/os/BluetoothBatteryStats;->mUidStats:Ljava/util/List;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    iget-object v0, p0, Landroid/os/BluetoothBatteryStats;->mUidStats:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Landroid/os/BluetoothBatteryStats;->mUidStats:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/BluetoothBatteryStats$UidStats;

    invoke-static {v2, p1}, Landroid/os/BluetoothBatteryStats$UidStats;->-$$Nest$mwriteToParcel(Landroid/os/BluetoothBatteryStats$UidStats;Landroid/os/Parcel;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
