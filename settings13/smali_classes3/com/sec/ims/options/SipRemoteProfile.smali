.class public Lcom/sec/ims/options/SipRemoteProfile;
.super Ljava/lang/Object;
.source "SipRemoteProfile.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/sec/ims/options/SipRemoteProfile;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mAvailability:I

.field public transient mCapabilities:Landroid/os/Bundle;

.field private mProfileName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    new-instance v0, Lcom/sec/ims/options/SipRemoteProfile$1;

    invoke-direct {v0}, Lcom/sec/ims/options/SipRemoteProfile$1;-><init>()V

    sput-object v0, Lcom/sec/ims/options/SipRemoteProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/options/SipRemoteProfile;->mProfileName:Ljava/lang/String;

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/options/SipRemoteProfile;->mCapabilities:Landroid/os/Bundle;

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/sec/ims/options/SipRemoteProfile;->mAvailability:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/sec/ims/options/SipRemoteProfile-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/ims/options/SipRemoteProfile;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 64
    iget-object p2, p0, Lcom/sec/ims/options/SipRemoteProfile;->mProfileName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 65
    iget-object p2, p0, Lcom/sec/ims/options/SipRemoteProfile;->mCapabilities:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 66
    iget p0, p0, Lcom/sec/ims/options/SipRemoteProfile;->mAvailability:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
