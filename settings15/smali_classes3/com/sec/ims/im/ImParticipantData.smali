.class public Lcom/sec/ims/im/ImParticipantData;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/sec/ims/im/ImParticipantData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mChatId:Ljava/lang/String;

.field private mId:I

.field private mStatus:I

.field private mUriString:Ljava/lang/String;

.field private mUserAlias:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/ims/im/ImParticipantData$1;

    invoke-direct {v0}, Lcom/sec/ims/im/ImParticipantData$1;-><init>()V

    sput-object v0, Lcom/sec/ims/im/ImParticipantData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public synthetic constructor <init>(ILandroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/sec/ims/im/ImParticipantData;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/im/ImParticipantData;->mChatId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/im/ImParticipantData;->mUriString:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/im/ImParticipantData;->mId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/im/ImParticipantData;->mStatus:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/ims/im/ImParticipantData;->mUserAlias:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/ims/im/ImParticipantData;->mChatId:Ljava/lang/String;

    iput-object p2, p0, Lcom/sec/ims/im/ImParticipantData;->mUriString:Ljava/lang/String;

    iput p3, p0, Lcom/sec/ims/im/ImParticipantData;->mId:I

    iput p4, p0, Lcom/sec/ims/im/ImParticipantData;->mStatus:I

    iput-object p5, p0, Lcom/sec/ims/im/ImParticipantData;->mUserAlias:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getChatId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/ims/im/ImParticipantData;->mChatId:Ljava/lang/String;

    return-object p0
.end method

.method public getId()I
    .locals 0

    iget p0, p0, Lcom/sec/ims/im/ImParticipantData;->mId:I

    return p0
.end method

.method public getStatus()I
    .locals 0

    iget p0, p0, Lcom/sec/ims/im/ImParticipantData;->mStatus:I

    return p0
.end method

.method public getUriString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/ims/im/ImParticipantData;->mUriString:Ljava/lang/String;

    return-object p0
.end method

.method public getUserAlias()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/ims/im/ImParticipantData;->mUserAlias:Ljava/lang/String;

    return-object p0
.end method

.method public setChatId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/ims/im/ImParticipantData;->mChatId:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .locals 0

    iput p1, p0, Lcom/sec/ims/im/ImParticipantData;->mId:I

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    iput p1, p0, Lcom/sec/ims/im/ImParticipantData;->mStatus:I

    return-void
.end method

.method public setUriString(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/ims/im/ImParticipantData;->mUriString:Ljava/lang/String;

    return-void
.end method

.method public setUserAlias(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/ims/im/ImParticipantData;->mUserAlias:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ImParticipant [mChatId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/ims/im/ImParticipantData;->mChatId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mUriString="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/ims/im/ImParticipantData;->mUriString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/ims/im/ImParticipantData;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/ims/im/ImParticipantData;->mStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mUserAlias="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/ims/im/ImParticipantData;->mUserAlias:Ljava/lang/String;

    const-string v1, "]"

    invoke-static {v0, p0, v1}, Landroidx/activity/ComponentActivity$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Lcom/sec/ims/im/ImParticipantData;->mChatId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/sec/ims/im/ImParticipantData;->mUriString:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/sec/ims/im/ImParticipantData;->mId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/sec/ims/im/ImParticipantData;->mStatus:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p0, p0, Lcom/sec/ims/im/ImParticipantData;->mUserAlias:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
