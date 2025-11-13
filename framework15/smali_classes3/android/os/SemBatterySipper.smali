.class public Landroid/os/SemBatterySipper;
.super Ljava/lang/Object;
.source "SemBatterySipper.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/SemBatterySipper;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist mDevPowerInfo:Landroid/os/SemDevicePowerInfo;

.field public blacklist mKernelWakelockInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/SemKernelWakelockInfo;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist mScreenWakeInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/SemScreenWakeInfo;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist mUidPowerInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/SemUidPowerInfo;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist mWakeupReasonInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/SemWakeupReasonInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/os/SemBatterySipper$1;

    invoke-direct {v0}, Landroid/os/SemBatterySipper$1;-><init>()V

    sput-object v0, Landroid/os/SemBatterySipper;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/SemDevicePowerInfo;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Landroid/os/SemDevicePowerInfo;-><init>(D)V

    iput-object v0, p0, Landroid/os/SemBatterySipper;->mDevPowerInfo:Landroid/os/SemDevicePowerInfo;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/os/SemBatterySipper;->mUidPowerInfoList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/os/SemBatterySipper;->mWakeupReasonInfoList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/os/SemBatterySipper;->mKernelWakelockInfoList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/os/SemBatterySipper;->mScreenWakeInfoList:Ljava/util/List;

    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/SemDevicePowerInfo;

    invoke-direct {v0, p1}, Landroid/os/SemDevicePowerInfo;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Landroid/os/SemBatterySipper;->mDevPowerInfo:Landroid/os/SemDevicePowerInfo;

    sget-object v0, Landroid/os/SemUidPowerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/os/SemBatterySipper;->mUidPowerInfoList:Ljava/util/List;

    sget-object v0, Landroid/os/SemWakeupReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/os/SemBatterySipper;->mWakeupReasonInfoList:Ljava/util/List;

    sget-object v0, Landroid/os/SemKernelWakelockInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/os/SemBatterySipper;->mKernelWakelockInfoList:Ljava/util/List;

    sget-object v0, Landroid/os/SemScreenWakeInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/os/SemBatterySipper;->mScreenWakeInfoList:Ljava/util/List;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/SemDevicePowerInfo;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/SemDevicePowerInfo;",
            "Ljava/util/List<",
            "Landroid/os/SemUidPowerInfo;",
            ">;",
            "Ljava/util/List<",
            "Landroid/os/SemWakeupReasonInfo;",
            ">;",
            "Ljava/util/List<",
            "Landroid/os/SemKernelWakelockInfo;",
            ">;",
            "Ljava/util/List<",
            "Landroid/os/SemScreenWakeInfo;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/os/SemBatterySipper;->mDevPowerInfo:Landroid/os/SemDevicePowerInfo;

    iput-object p2, p0, Landroid/os/SemBatterySipper;->mUidPowerInfoList:Ljava/util/List;

    iput-object p3, p0, Landroid/os/SemBatterySipper;->mWakeupReasonInfoList:Ljava/util/List;

    iput-object p4, p0, Landroid/os/SemBatterySipper;->mKernelWakelockInfoList:Ljava/util/List;

    iput-object p5, p0, Landroid/os/SemBatterySipper;->mScreenWakeInfoList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroid/os/SemBatterySipper;->mDevPowerInfo:Landroid/os/SemDevicePowerInfo;

    invoke-virtual {v0, p1, p2}, Landroid/os/SemDevicePowerInfo;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Landroid/os/SemBatterySipper;->mUidPowerInfoList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    iget-object v0, p0, Landroid/os/SemBatterySipper;->mWakeupReasonInfoList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    iget-object v0, p0, Landroid/os/SemBatterySipper;->mKernelWakelockInfoList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    iget-object v0, p0, Landroid/os/SemBatterySipper;->mScreenWakeInfoList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return-void
.end method
