.class public final Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceItem;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final mGroupId:I

.field public final mIsActive:Z

.field public final mName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceItem$1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceItem;->mName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceItem;->mGroupId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceItem;->mIsActive:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceItem;->mName:Ljava/lang/String;

    iput p2, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceItem;->mGroupId:I

    iput-boolean p3, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceItem;->mIsActive:Z

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceItem;->mName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceItem;->mGroupId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceItem;->mIsActive:Z

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    return-void
.end method
