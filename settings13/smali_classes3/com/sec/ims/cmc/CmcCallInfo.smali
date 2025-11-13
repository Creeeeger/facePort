.class public Lcom/sec/ims/cmc/CmcCallInfo;
.super Ljava/lang/Object;
.source "CmcCallInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/sec/ims/cmc/CmcCallInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCmcCallState:I

.field private mCmcType:I

.field private mLineSlotId:I

.field private mPdDeviceId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 69
    new-instance v0, Lcom/sec/ims/cmc/CmcCallInfo$1;

    invoke-direct {v0}, Lcom/sec/ims/cmc/CmcCallInfo$1;-><init>()V

    sput-object v0, Lcom/sec/ims/cmc/CmcCallInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput v0, p0, Lcom/sec/ims/cmc/CmcCallInfo;->mLineSlotId:I

    .line 36
    iput v0, p0, Lcom/sec/ims/cmc/CmcCallInfo;->mCmcType:I

    .line 37
    iput v0, p0, Lcom/sec/ims/cmc/CmcCallInfo;->mCmcCallState:I

    const-string v0, ""

    .line 38
    iput-object v0, p0, Lcom/sec/ims/cmc/CmcCallInfo;->mPdDeviceId:Ljava/lang/String;

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/cmc/CmcCallInfo;->mLineSlotId:I

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/cmc/CmcCallInfo;->mCmcType:I

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/cmc/CmcCallInfo;->mCmcCallState:I

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/ims/cmc/CmcCallInfo;->mPdDeviceId:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/sec/ims/cmc/CmcCallInfo-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/ims/cmc/CmcCallInfo;-><init>(Landroid/os/Parcel;)V

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

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CmcCallInfo("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/ims/cmc/CmcCallInfo;->mLineSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") [mCmcType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/ims/cmc/CmcCallInfo;->mCmcType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mCmcCallState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/ims/cmc/CmcCallInfo;->mCmcCallState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mPdDeviceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/ims/cmc/CmcCallInfo;->mPdDeviceId:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 63
    iget p2, p0, Lcom/sec/ims/cmc/CmcCallInfo;->mLineSlotId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 64
    iget p2, p0, Lcom/sec/ims/cmc/CmcCallInfo;->mCmcType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 65
    iget p2, p0, Lcom/sec/ims/cmc/CmcCallInfo;->mCmcCallState:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 66
    iget-object p0, p0, Lcom/sec/ims/cmc/CmcCallInfo;->mPdDeviceId:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
