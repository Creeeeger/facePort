.class public Lcom/sec/ims/cmc/CmcCallInfo;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/ims/cmc/CmcCallInfo$Builder;
    }
.end annotation


# static fields
.field public static final CALL_STATE_IDLE:I = 0x0

.field public static final CALL_STATE_INCALL:I = 0x3

.field public static final CALL_STATE_INCOMING:I = 0x1

.field public static final CALL_STATE_OUTGOING:I = 0x2

.field public static final CALL_STATE_PDCALL:I = 0x4

.field public static final CMC_TYPE_NONE:I = 0x0

.field public static final CMC_TYPE_PRIMARY:I = 0x1

.field public static final CMC_TYPE_SECONDARY:I = 0x2

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/sec/ims/cmc/CmcCallInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOG_TAG:Ljava/lang/String; = "CmcCallInfo"


# instance fields
.field private mCmcCallState:I

.field private mCmcType:I

.field private mLineSlotId:I

.field private mPdDeviceId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/ims/cmc/CmcCallInfo$1;

    invoke-direct {v0}, Lcom/sec/ims/cmc/CmcCallInfo$1;-><init>()V

    sput-object v0, Lcom/sec/ims/cmc/CmcCallInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public synthetic constructor <init>(ILandroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/sec/ims/cmc/CmcCallInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/ims/cmc/CmcCallInfo;->mLineSlotId:I

    iput v0, p0, Lcom/sec/ims/cmc/CmcCallInfo;->mCmcType:I

    iput v0, p0, Lcom/sec/ims/cmc/CmcCallInfo;->mCmcCallState:I

    const-string v0, ""

    iput-object v0, p0, Lcom/sec/ims/cmc/CmcCallInfo;->mPdDeviceId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/cmc/CmcCallInfo;->mLineSlotId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/cmc/CmcCallInfo;->mCmcType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/cmc/CmcCallInfo;->mCmcCallState:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/ims/cmc/CmcCallInfo;->mPdDeviceId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sec/ims/cmc/CmcCallInfo$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/ims/cmc/CmcCallInfo;->mLineSlotId:I

    iput v0, p0, Lcom/sec/ims/cmc/CmcCallInfo;->mCmcType:I

    iput v0, p0, Lcom/sec/ims/cmc/CmcCallInfo;->mCmcCallState:I

    const-string v0, ""

    iput-object v0, p0, Lcom/sec/ims/cmc/CmcCallInfo;->mPdDeviceId:Ljava/lang/String;

    iget v0, p1, Lcom/sec/ims/cmc/CmcCallInfo$Builder;->mLineSlotId:I

    iput v0, p0, Lcom/sec/ims/cmc/CmcCallInfo;->mLineSlotId:I

    iget v0, p1, Lcom/sec/ims/cmc/CmcCallInfo$Builder;->mCmcType:I

    iput v0, p0, Lcom/sec/ims/cmc/CmcCallInfo;->mCmcType:I

    iget v0, p1, Lcom/sec/ims/cmc/CmcCallInfo$Builder;->mCmcCallState:I

    iput v0, p0, Lcom/sec/ims/cmc/CmcCallInfo;->mCmcCallState:I

    iget-object p1, p1, Lcom/sec/ims/cmc/CmcCallInfo$Builder;->mPdDeviceId:Ljava/lang/String;

    iput-object p1, p0, Lcom/sec/ims/cmc/CmcCallInfo;->mPdDeviceId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sec/ims/cmc/CmcCallInfo;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/ims/cmc/CmcCallInfo;->mLineSlotId:I

    iput v0, p0, Lcom/sec/ims/cmc/CmcCallInfo;->mCmcType:I

    iput v0, p0, Lcom/sec/ims/cmc/CmcCallInfo;->mCmcCallState:I

    const-string v0, ""

    iput-object v0, p0, Lcom/sec/ims/cmc/CmcCallInfo;->mPdDeviceId:Ljava/lang/String;

    iget v0, p1, Lcom/sec/ims/cmc/CmcCallInfo;->mLineSlotId:I

    iput v0, p0, Lcom/sec/ims/cmc/CmcCallInfo;->mLineSlotId:I

    iget v0, p1, Lcom/sec/ims/cmc/CmcCallInfo;->mCmcType:I

    iput v0, p0, Lcom/sec/ims/cmc/CmcCallInfo;->mCmcType:I

    iget v0, p1, Lcom/sec/ims/cmc/CmcCallInfo;->mCmcCallState:I

    iput v0, p0, Lcom/sec/ims/cmc/CmcCallInfo;->mCmcCallState:I

    iget-object p1, p1, Lcom/sec/ims/cmc/CmcCallInfo;->mPdDeviceId:Ljava/lang/String;

    iput-object p1, p0, Lcom/sec/ims/cmc/CmcCallInfo;->mPdDeviceId:Ljava/lang/String;

    return-void
.end method

.method public static getBuilder()Lcom/sec/ims/cmc/CmcCallInfo$Builder;
    .locals 1

    new-instance v0, Lcom/sec/ims/cmc/CmcCallInfo$Builder;

    invoke-direct {v0}, Lcom/sec/ims/cmc/CmcCallInfo$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getCmcCallState()I
    .locals 0

    iget p0, p0, Lcom/sec/ims/cmc/CmcCallInfo;->mCmcCallState:I

    return p0
.end method

.method public getCmcType()I
    .locals 0

    iget p0, p0, Lcom/sec/ims/cmc/CmcCallInfo;->mCmcType:I

    return p0
.end method

.method public getLineSlotId()I
    .locals 0

    iget p0, p0, Lcom/sec/ims/cmc/CmcCallInfo;->mLineSlotId:I

    return p0
.end method

.method public getPdDeviceId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/ims/cmc/CmcCallInfo;->mPdDeviceId:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CmcCallInfo("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

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

    const-string v1, "]"

    invoke-static {v0, p0, v1}, Landroidx/activity/ComponentActivity$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Lcom/sec/ims/cmc/CmcCallInfo;->mLineSlotId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/sec/ims/cmc/CmcCallInfo;->mCmcType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/sec/ims/cmc/CmcCallInfo;->mCmcCallState:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p0, p0, Lcom/sec/ims/cmc/CmcCallInfo;->mPdDeviceId:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
