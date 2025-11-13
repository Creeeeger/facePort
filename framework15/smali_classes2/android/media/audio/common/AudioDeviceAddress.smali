.class public final Landroid/media/audio/common/AudioDeviceAddress;
.super Ljava/lang/Object;
.source "AudioDeviceAddress.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/audio/common/AudioDeviceAddress$Tag;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/audio/common/AudioDeviceAddress;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist alsa:I = 0x4

.field public static final blacklist id:I = 0x0

.field public static final blacklist ipv4:I = 0x2

.field public static final blacklist ipv6:I = 0x3

.field public static final blacklist mac:I = 0x1


# instance fields
.field private blacklist _tag:I

.field private blacklist _value:Ljava/lang/Object;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/media/audio/common/AudioDeviceAddress$1;

    invoke-direct {v0}, Landroid/media/audio/common/AudioDeviceAddress$1;-><init>()V

    sput-object v0, Landroid/media/audio/common/AudioDeviceAddress;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    iput v1, p0, Landroid/media/audio/common/AudioDeviceAddress;->_tag:I

    iput-object v0, p0, Landroid/media/audio/common/AudioDeviceAddress;->_value:Ljava/lang/Object;

    return-void
.end method

.method private constructor blacklist <init>(ILjava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/media/audio/common/AudioDeviceAddress;->_tag:I

    iput-object p2, p0, Landroid/media/audio/common/AudioDeviceAddress;->_value:Ljava/lang/Object;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Landroid/media/audio/common/AudioDeviceAddress;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/media/audio/common/AudioDeviceAddress-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/audio/common/AudioDeviceAddress;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private blacklist _assertTag(I)V
    .locals 3

    invoke-virtual {p0}, Landroid/media/audio/common/AudioDeviceAddress;->getTag()I

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad access: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Landroid/media/audio/common/AudioDeviceAddress;->_tagString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/media/audio/common/AudioDeviceAddress;->getTag()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/media/audio/common/AudioDeviceAddress;->_tagString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is available."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist _set(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Landroid/media/audio/common/AudioDeviceAddress;->_tag:I

    iput-object p2, p0, Landroid/media/audio/common/AudioDeviceAddress;->_value:Ljava/lang/Object;

    return-void
.end method

.method private blacklist _tagString(I)Ljava/lang/String;
    .locals 3

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown field: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const-string v0, "alsa"

    return-object v0

    :pswitch_1
    const-string v0, "ipv6"

    return-object v0

    :pswitch_2
    const-string v0, "ipv4"

    return-object v0

    :pswitch_3
    const-string v0, "mac"

    return-object v0

    :pswitch_4
    const-string v0, "id"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist alsa([I)Landroid/media/audio/common/AudioDeviceAddress;
    .locals 2

    new-instance v0, Landroid/media/audio/common/AudioDeviceAddress;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p0}, Landroid/media/audio/common/AudioDeviceAddress;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist id(Ljava/lang/String;)Landroid/media/audio/common/AudioDeviceAddress;
    .locals 2

    new-instance v0, Landroid/media/audio/common/AudioDeviceAddress;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Landroid/media/audio/common/AudioDeviceAddress;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist ipv4([B)Landroid/media/audio/common/AudioDeviceAddress;
    .locals 2

    new-instance v0, Landroid/media/audio/common/AudioDeviceAddress;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Landroid/media/audio/common/AudioDeviceAddress;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist ipv6([I)Landroid/media/audio/common/AudioDeviceAddress;
    .locals 2

    new-instance v0, Landroid/media/audio/common/AudioDeviceAddress;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0}, Landroid/media/audio/common/AudioDeviceAddress;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist mac([B)Landroid/media/audio/common/AudioDeviceAddress;
    .locals 2

    new-instance v0, Landroid/media/audio/common/AudioDeviceAddress;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Landroid/media/audio/common/AudioDeviceAddress;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/media/audio/common/AudioDeviceAddress;->getTag()I

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    instance-of v2, p1, Landroid/media/audio/common/AudioDeviceAddress;

    if-nez v2, :cond_2

    return v1

    :cond_2
    move-object v2, p1

    check-cast v2, Landroid/media/audio/common/AudioDeviceAddress;

    iget v3, p0, Landroid/media/audio/common/AudioDeviceAddress;->_tag:I

    iget v4, v2, Landroid/media/audio/common/AudioDeviceAddress;->_tag:I

    if-eq v3, v4, :cond_3

    return v1

    :cond_3
    iget-object v3, p0, Landroid/media/audio/common/AudioDeviceAddress;->_value:Ljava/lang/Object;

    iget-object v4, v2, Landroid/media/audio/common/AudioDeviceAddress;->_value:Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method public blacklist getAlsa()[I
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/media/audio/common/AudioDeviceAddress;->_assertTag(I)V

    iget-object v0, p0, Landroid/media/audio/common/AudioDeviceAddress;->_value:Ljava/lang/Object;

    check-cast v0, [I

    return-object v0
.end method

.method public blacklist getId()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/media/audio/common/AudioDeviceAddress;->_assertTag(I)V

    iget-object v0, p0, Landroid/media/audio/common/AudioDeviceAddress;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getIpv4()[B
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/media/audio/common/AudioDeviceAddress;->_assertTag(I)V

    iget-object v0, p0, Landroid/media/audio/common/AudioDeviceAddress;->_value:Ljava/lang/Object;

    check-cast v0, [B

    return-object v0
.end method

.method public blacklist getIpv6()[I
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/media/audio/common/AudioDeviceAddress;->_assertTag(I)V

    iget-object v0, p0, Landroid/media/audio/common/AudioDeviceAddress;->_value:Ljava/lang/Object;

    check-cast v0, [I

    return-object v0
.end method

.method public blacklist getMac()[B
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/media/audio/common/AudioDeviceAddress;->_assertTag(I)V

    iget-object v0, p0, Landroid/media/audio/common/AudioDeviceAddress;->_value:Ljava/lang/Object;

    check-cast v0, [B

    return-object v0
.end method

.method public final whitelist getStability()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getTag()I
    .locals 1

    iget v0, p0, Landroid/media/audio/common/AudioDeviceAddress;->_tag:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 2

    iget v0, p0, Landroid/media/audio/common/AudioDeviceAddress;->_tag:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroid/media/audio/common/AudioDeviceAddress;->_value:Ljava/lang/Object;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->deepHashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist readFromParcel(Landroid/os/Parcel;)V
    .locals 4

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "union: unknown tag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/media/audio/common/AudioDeviceAddress;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_1
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/media/audio/common/AudioDeviceAddress;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_2
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/media/audio/common/AudioDeviceAddress;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_3
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/media/audio/common/AudioDeviceAddress;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/media/audio/common/AudioDeviceAddress;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist setAlsa([I)V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Landroid/media/audio/common/AudioDeviceAddress;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist setId(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Landroid/media/audio/common/AudioDeviceAddress;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist setIpv4([B)V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Landroid/media/audio/common/AudioDeviceAddress;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist setIpv6([I)V
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Landroid/media/audio/common/AudioDeviceAddress;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist setMac([B)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Landroid/media/audio/common/AudioDeviceAddress;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    iget v0, p0, Landroid/media/audio/common/AudioDeviceAddress;->_tag:I

    const-string v1, ")"

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown field: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/audio/common/AudioDeviceAddress;->_tag:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AudioDeviceAddress.alsa("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/media/audio/common/AudioDeviceAddress;->getAlsa()[I

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AudioDeviceAddress.ipv6("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/media/audio/common/AudioDeviceAddress;->getIpv6()[I

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AudioDeviceAddress.ipv4("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/media/audio/common/AudioDeviceAddress;->getIpv4()[B

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AudioDeviceAddress.mac("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/media/audio/common/AudioDeviceAddress;->getMac()[B

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AudioDeviceAddress.id("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/media/audio/common/AudioDeviceAddress;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Landroid/media/audio/common/AudioDeviceAddress;->_tag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/media/audio/common/AudioDeviceAddress;->_tag:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Landroid/media/audio/common/AudioDeviceAddress;->getAlsa()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Landroid/media/audio/common/AudioDeviceAddress;->getIpv6()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Landroid/media/audio/common/AudioDeviceAddress;->getIpv4()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Landroid/media/audio/common/AudioDeviceAddress;->getMac()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0}, Landroid/media/audio/common/AudioDeviceAddress;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    nop

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
