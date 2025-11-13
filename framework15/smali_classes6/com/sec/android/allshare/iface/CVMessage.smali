.class public Lcom/sec/android/allshare/iface/CVMessage;
.super Ljava/lang/Object;
.source "CVMessage.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/sec/android/allshare/iface/CVMessage;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist CVM_TYPE_EVENT:I = 0x4

.field public static final blacklist CVM_TYPE_REQUEST:I = 0x2

.field public static final blacklist CVM_TYPE_RESPONSE:I = 0x3

.field public static final blacklist CVM_TYPE_UNDEF:I = 0x1

.field public static final blacklist EVT_MSG_KEY:Ljava/lang/String; = "EVT_MSG_KEY"

.field public static final blacklist RES_MSG_KEY:Ljava/lang/String; = "RES_MSG_KEY"


# instance fields
.field private blacklist mActionID:Ljava/lang/String;

.field private blacklist mBundle:Landroid/os/Bundle;

.field private blacklist mMessageID:J

.field private blacklist mReplyMessenger:Landroid/os/Messenger;

.field private blacklist mType:I

.field private blacklist mVersion:J


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/android/allshare/iface/CVMessage$1;

    invoke-direct {v0}, Lcom/sec/android/allshare/iface/CVMessage$1;-><init>()V

    sput-object v0, Lcom/sec/android/allshare/iface/CVMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 3

    const-string v0, ""

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v2, v0, v1}, Lcom/sec/android/allshare/iface/CVMessage;-><init>(ILjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public constructor blacklist <init>(I)V
    .locals 2

    const-string v0, ""

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/sec/android/allshare/iface/CVMessage;-><init>(ILjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public constructor blacklist <init>(ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/allshare/iface/CVMessage;-><init>(ILjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public constructor blacklist <init>(ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/sec/android/allshare/iface/CVMessage;->mVersion:J

    iput p1, p0, Lcom/sec/android/allshare/iface/CVMessage;->mType:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/allshare/iface/CVMessage;->mMessageID:J

    iput-object p2, p0, Lcom/sec/android/allshare/iface/CVMessage;->mActionID:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/android/allshare/iface/CVMessage;->mBundle:Landroid/os/Bundle;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/allshare/iface/CVMessage;->mReplyMessenger:Landroid/os/Messenger;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/sec/android/allshare/iface/CVMessage;->mVersion:J

    invoke-virtual {p0, p1}, Lcom/sec/android/allshare/iface/CVMessage;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Lcom/sec/android/allshare/iface/CVMessage-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/allshare/iface/CVMessage;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final blacklist getActionID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/allshare/iface/CVMessage;->mActionID:Ljava/lang/String;

    return-object v0
.end method

.method public final blacklist getBundle()Landroid/os/Bundle;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/allshare/iface/CVMessage;->mBundle:Landroid/os/Bundle;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/sec/android/allshare/iface/CVMessage;->mBundle:Landroid/os/Bundle;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/allshare/iface/CVMessage;->mBundle:Landroid/os/Bundle;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    iget-object v0, p0, Lcom/sec/android/allshare/iface/CVMessage;->mBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public final blacklist getEventID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/allshare/iface/CVMessage;->mActionID:Ljava/lang/String;

    return-object v0
.end method

.method public final blacklist getMessenger()Landroid/os/Messenger;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/allshare/iface/CVMessage;->mReplyMessenger:Landroid/os/Messenger;

    return-object v0
.end method

.method public final blacklist getMsgID()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/allshare/iface/CVMessage;->mMessageID:J

    return-wide v0
.end method

.method public final blacklist getMsgType()I
    .locals 1

    iget v0, p0, Lcom/sec/android/allshare/iface/CVMessage;->mType:I

    return v0
.end method

.method public final blacklist getVersion()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/allshare/iface/CVMessage;->mVersion:J

    return-wide v0
.end method

.method public blacklist readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/allshare/iface/CVMessage;->mVersion:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/android/allshare/iface/CVMessage;->mType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/allshare/iface/CVMessage;->mMessageID:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/allshare/iface/CVMessage;->mActionID:Ljava/lang/String;

    const-class v0, Lcom/sec/android/allshare/iface/CVMessage;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/allshare/iface/CVMessage;->mBundle:Landroid/os/Bundle;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Messenger;

    iput-object v0, p0, Lcom/sec/android/allshare/iface/CVMessage;->mReplyMessenger:Landroid/os/Messenger;

    return-void
.end method

.method public blacklist setActionID(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/allshare/iface/CVMessage;->mActionID:Ljava/lang/String;

    return-void
.end method

.method public blacklist setBundle(Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/allshare/iface/CVMessage;->mBundle:Landroid/os/Bundle;

    return-void
.end method

.method public blacklist setEventID(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/allshare/iface/CVMessage;->mActionID:Ljava/lang/String;

    return-void
.end method

.method public blacklist setMessenger(Landroid/os/Messenger;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/allshare/iface/CVMessage;->mReplyMessenger:Landroid/os/Messenger;

    return-void
.end method

.method public blacklist setMsgID(J)V
    .locals 0

    iput-wide p1, p0, Lcom/sec/android/allshare/iface/CVMessage;->mMessageID:J

    return-void
.end method

.method public blacklist setMsgType(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/allshare/iface/CVMessage;->mType:I

    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/allshare/iface/CVMessage;->mVersion:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Lcom/sec/android/allshare/iface/CVMessage;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lcom/sec/android/allshare/iface/CVMessage;->mMessageID:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lcom/sec/android/allshare/iface/CVMessage;->mActionID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/allshare/iface/CVMessage;->mBundle:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/sec/android/allshare/iface/CVMessage;->mReplyMessenger:Landroid/os/Messenger;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
