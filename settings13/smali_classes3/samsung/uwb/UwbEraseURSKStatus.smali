.class public Lsamsung/uwb/UwbEraseURSKStatus;
.super Ljava/lang/Object;
.source "UwbEraseURSKStatus.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lsamsung/uwb/UwbEraseURSKStatus;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mNumberOfSessionId:B

.field private mSessionIdsStatus:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field private mStatus:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 71
    new-instance v0, Lsamsung/uwb/UwbEraseURSKStatus$1;

    invoke-direct {v0}, Lsamsung/uwb/UwbEraseURSKStatus$1;-><init>()V

    sput-object v0, Lsamsung/uwb/UwbEraseURSKStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lsamsung/uwb/UwbEraseURSKStatus;->mSessionIdsStatus:Ljava/util/HashMap;

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lsamsung/uwb/UwbEraseURSKStatus;->mStatus:B

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lsamsung/uwb/UwbEraseURSKStatus;->mNumberOfSessionId:B

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    iput-object p1, p0, Lsamsung/uwb/UwbEraseURSKStatus;->mSessionIdsStatus:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UwbEraseURSKStatus {, mStatus = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lsamsung/uwb/UwbEraseURSKStatus;->mStatus:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mNumberOfSessionId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lsamsung/uwb/UwbEraseURSKStatus;->mNumberOfSessionId:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mSessionIdsStatus = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lsamsung/uwb/UwbEraseURSKStatus;->mSessionIdsStatus:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 60
    iget-byte p2, p0, Lsamsung/uwb/UwbEraseURSKStatus;->mStatus:B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 61
    iget-byte p2, p0, Lsamsung/uwb/UwbEraseURSKStatus;->mNumberOfSessionId:B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 62
    iget-object p0, p0, Lsamsung/uwb/UwbEraseURSKStatus;->mSessionIdsStatus:Ljava/util/HashMap;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    return-void
.end method
