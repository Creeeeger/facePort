.class public final Landroid/media/tv/DsmccResponse;
.super Landroid/media/tv/BroadcastInfoResponse;
.source "DsmccResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/DsmccResponse$BiopMessageType;
    }
.end annotation


# static fields
.field public static final whitelist BIOP_MESSAGE_TYPE_DIRECTORY:Ljava/lang/String; = "directory"

.field public static final whitelist BIOP_MESSAGE_TYPE_FILE:Ljava/lang/String; = "file"

.field public static final whitelist BIOP_MESSAGE_TYPE_SERVICE_GATEWAY:Ljava/lang/String; = "service_gateway"

.field public static final whitelist BIOP_MESSAGE_TYPE_STREAM:Ljava/lang/String; = "stream"

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/tv/DsmccResponse;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist RESPONSE_TYPE:I = 0x6


# instance fields
.field private final blacklist mBiopMessageType:Ljava/lang/String;

.field private final blacklist mChildList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mEventIds:[I

.field private final blacklist mEventNames:[Ljava/lang/String;

.field private final blacklist mFileDescriptor:Landroid/os/ParcelFileDescriptor;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/media/tv/DsmccResponse$1;

    invoke-direct {v0}, Landroid/media/tv/DsmccResponse$1;-><init>()V

    sput-object v0, Landroid/media/tv/DsmccResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(IIILandroid/os/ParcelFileDescriptor;)V
    .locals 1

    const/4 v0, 0x6

    invoke-direct {p0, v0, p1, p2, p3}, Landroid/media/tv/BroadcastInfoResponse;-><init>(IIII)V

    const-string v0, "file"

    iput-object v0, p0, Landroid/media/tv/DsmccResponse;->mBiopMessageType:Ljava/lang/String;

    iput-object p4, p0, Landroid/media/tv/DsmccResponse;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/tv/DsmccResponse;->mChildList:Ljava/util/List;

    iput-object v0, p0, Landroid/media/tv/DsmccResponse;->mEventIds:[I

    iput-object v0, p0, Landroid/media/tv/DsmccResponse;->mEventNames:[Ljava/lang/String;

    return-void
.end method

.method public constructor whitelist <init>(IIIZLjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIZ",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x6

    invoke-direct {p0, v0, p1, p2, p3}, Landroid/media/tv/BroadcastInfoResponse;-><init>(IIII)V

    if-eqz p4, :cond_0

    const-string/jumbo v0, "service_gateway"

    iput-object v0, p0, Landroid/media/tv/DsmccResponse;->mBiopMessageType:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, "directory"

    iput-object v0, p0, Landroid/media/tv/DsmccResponse;->mBiopMessageType:Ljava/lang/String;

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/tv/DsmccResponse;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    iput-object p5, p0, Landroid/media/tv/DsmccResponse;->mChildList:Ljava/util/List;

    iput-object v0, p0, Landroid/media/tv/DsmccResponse;->mEventIds:[I

    iput-object v0, p0, Landroid/media/tv/DsmccResponse;->mEventNames:[Ljava/lang/String;

    return-void
.end method

.method public constructor whitelist <init>(III[I[Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x6

    invoke-direct {p0, v0, p1, p2, p3}, Landroid/media/tv/BroadcastInfoResponse;-><init>(IIII)V

    const-string/jumbo v0, "stream"

    iput-object v0, p0, Landroid/media/tv/DsmccResponse;->mBiopMessageType:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/tv/DsmccResponse;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    iput-object v0, p0, Landroid/media/tv/DsmccResponse;->mChildList:Ljava/util/List;

    if-eqz p4, :cond_0

    if-eqz p5, :cond_0

    array-length v0, p4

    array-length v1, p5

    if-eq v0, v1, :cond_1

    :cond_0
    if-nez p4, :cond_2

    if-nez p5, :cond_2

    :cond_1
    iput-object p4, p0, Landroid/media/tv/DsmccResponse;->mEventIds:[I

    iput-object p5, p0, Landroid/media/tv/DsmccResponse;->mEventNames:[Ljava/lang/String;

    return-void

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The size of eventIds and eventNames must be equal"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 5

    const/4 v0, 0x6

    invoke-direct {p0, v0, p1}, Landroid/media/tv/BroadcastInfoResponse;-><init>(ILandroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/tv/DsmccResponse;->mBiopMessageType:Ljava/lang/String;

    iget-object v0, p0, Landroid/media/tv/DsmccResponse;->mBiopMessageType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_1
    const-string/jumbo v1, "stream"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_2
    const-string/jumbo v1, "service_gateway"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_3
    const-string v1, "directory"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "unexpected BIOP message type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_2

    new-array v2, v0, [I

    iput-object v2, p0, Landroid/media/tv/DsmccResponse;->mEventIds:[I

    new-array v2, v0, [Ljava/lang/String;

    iput-object v2, p0, Landroid/media/tv/DsmccResponse;->mEventNames:[Ljava/lang/String;

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Landroid/media/tv/DsmccResponse;->mEventIds:[I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    aput v4, v3, v2

    iget-object v3, p0, Landroid/media/tv/DsmccResponse;->mEventNames:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_1
    goto :goto_3

    :cond_2
    iput-object v1, p0, Landroid/media/tv/DsmccResponse;->mEventIds:[I

    iput-object v1, p0, Landroid/media/tv/DsmccResponse;->mEventNames:[Ljava/lang/String;

    :goto_3
    iput-object v1, p0, Landroid/media/tv/DsmccResponse;->mChildList:Ljava/util/List;

    iput-object v1, p0, Landroid/media/tv/DsmccResponse;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    goto :goto_6

    :pswitch_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Landroid/media/tv/DsmccResponse;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    iput-object v1, p0, Landroid/media/tv/DsmccResponse;->mChildList:Ljava/util/List;

    iput-object v1, p0, Landroid/media/tv/DsmccResponse;->mEventIds:[I

    iput-object v1, p0, Landroid/media/tv/DsmccResponse;->mEventNames:[Ljava/lang/String;

    goto :goto_6

    :pswitch_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_4

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/media/tv/DsmccResponse;->mChildList:Ljava/util/List;

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v0, :cond_3

    iget-object v3, p0, Landroid/media/tv/DsmccResponse;->mChildList:Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_3
    goto :goto_5

    :cond_4
    iput-object v1, p0, Landroid/media/tv/DsmccResponse;->mChildList:Ljava/util/List;

    :goto_5
    iput-object v1, p0, Landroid/media/tv/DsmccResponse;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    iput-object v1, p0, Landroid/media/tv/DsmccResponse;->mEventIds:[I

    iput-object v1, p0, Landroid/media/tv/DsmccResponse;->mEventNames:[Ljava/lang/String;

    nop

    :goto_6
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x395fe193 -> :sswitch_3
        -0x3935d146 -> :sswitch_2
        -0x352ab080 -> :sswitch_1
        0x2ff57c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static blacklist createFromParcelBody(Landroid/os/Parcel;)Landroid/media/tv/DsmccResponse;
    .locals 1

    new-instance v0, Landroid/media/tv/DsmccResponse;

    invoke-direct {v0, p0}, Landroid/media/tv/DsmccResponse;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getBiopMessageType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/media/tv/DsmccResponse;->mBiopMessageType:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getChildList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/media/tv/DsmccResponse;->mBiopMessageType:Ljava/lang/String;

    const-string v1, "directory"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/media/tv/DsmccResponse;->mBiopMessageType:Ljava/lang/String;

    const-string/jumbo v1, "service_gateway"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not directory object"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/media/tv/DsmccResponse;->mChildList:Ljava/util/List;

    if-eqz v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/media/tv/DsmccResponse;->mChildList:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    return-object v0
.end method

.method public whitelist getFile()Landroid/os/ParcelFileDescriptor;
    .locals 2

    iget-object v0, p0, Landroid/media/tv/DsmccResponse;->mBiopMessageType:Ljava/lang/String;

    const-string v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/tv/DsmccResponse;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not file object"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getStreamEventIds()[I
    .locals 2

    iget-object v0, p0, Landroid/media/tv/DsmccResponse;->mBiopMessageType:Ljava/lang/String;

    const-string/jumbo v1, "stream"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/media/tv/DsmccResponse;->mEventIds:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/tv/DsmccResponse;->mEventIds:[I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [I

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not stream event object"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getStreamEventNames()[Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Landroid/media/tv/DsmccResponse;->mBiopMessageType:Ljava/lang/String;

    const-string/jumbo v1, "stream"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/media/tv/DsmccResponse;->mEventNames:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/tv/DsmccResponse;->mEventNames:[Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not stream event object"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    invoke-super {p0, p1, p2}, Landroid/media/tv/BroadcastInfoResponse;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Landroid/media/tv/DsmccResponse;->mBiopMessageType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/media/tv/DsmccResponse;->mBiopMessageType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    sparse-switch v1, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_1
    const-string/jumbo v1, "stream"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_2
    const-string/jumbo v1, "service_gateway"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_1

    :sswitch_3
    const-string v1, "directory"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "unexpected BIOP message type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v0, p0, Landroid/media/tv/DsmccResponse;->mEventIds:[I

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/media/tv/DsmccResponse;->mEventIds:[I

    array-length v0, v0

    if-lez v0, :cond_2

    iget-object v0, p0, Landroid/media/tv/DsmccResponse;->mEventIds:[I

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x0

    :goto_2
    iget-object v1, p0, Landroid/media/tv/DsmccResponse;->mEventIds:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroid/media/tv/DsmccResponse;->mEventIds:[I

    aget v1, v1, v0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Landroid/media/tv/DsmccResponse;->mEventNames:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1
    goto :goto_4

    :cond_2
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4

    :pswitch_1
    iget-object v0, p0, Landroid/media/tv/DsmccResponse;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFileDescriptor(Ljava/io/FileDescriptor;)V

    goto :goto_4

    :pswitch_2
    iget-object v0, p0, Landroid/media/tv/DsmccResponse;->mChildList:Ljava/util/List;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/media/tv/DsmccResponse;->mChildList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Landroid/media/tv/DsmccResponse;->mChildList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/media/tv/DsmccResponse;->mChildList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    goto :goto_4

    :cond_4
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    nop

    :goto_4
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x395fe193 -> :sswitch_3
        -0x3935d146 -> :sswitch_2
        -0x352ab080 -> :sswitch_1
        0x2ff57c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
