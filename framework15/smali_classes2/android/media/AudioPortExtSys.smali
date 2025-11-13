.class public final Landroid/media/AudioPortExtSys;
.super Ljava/lang/Object;
.source "AudioPortExtSys.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/AudioPortExtSys$Tag;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/AudioPortExtSys;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist device:I = 0x1

.field public static final blacklist mix:I = 0x2

.field public static final blacklist session:I = 0x3

.field public static final blacklist unspecified:I


# instance fields
.field private blacklist _tag:I

.field private blacklist _value:Ljava/lang/Object;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/media/AudioPortExtSys$1;

    invoke-direct {v0}, Landroid/media/AudioPortExtSys$1;-><init>()V

    sput-object v0, Landroid/media/AudioPortExtSys;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    iput v1, p0, Landroid/media/AudioPortExtSys;->_tag:I

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Landroid/media/AudioPortExtSys;->_value:Ljava/lang/Object;

    return-void
.end method

.method private constructor blacklist <init>(ILjava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/media/AudioPortExtSys;->_tag:I

    iput-object p2, p0, Landroid/media/AudioPortExtSys;->_value:Ljava/lang/Object;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Landroid/media/AudioPortExtSys;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/media/AudioPortExtSys-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/AudioPortExtSys;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private blacklist _assertTag(I)V
    .locals 3

    invoke-virtual {p0}, Landroid/media/AudioPortExtSys;->getTag()I

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

    invoke-direct {p0, p1}, Landroid/media/AudioPortExtSys;->_tagString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/media/AudioPortExtSys;->getTag()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/media/AudioPortExtSys;->_tagString(I)Ljava/lang/String;

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

    iput p1, p0, Landroid/media/AudioPortExtSys;->_tag:I

    iput-object p2, p0, Landroid/media/AudioPortExtSys;->_value:Ljava/lang/Object;

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
    const-string v0, "session"

    return-object v0

    :pswitch_1
    const-string v0, "mix"

    return-object v0

    :pswitch_2
    const-string v0, "device"

    return-object v0

    :pswitch_3
    const-string v0, "unspecified"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist describeContents(Ljava/lang/Object;)I
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_1

    move-object v0, p1

    check-cast v0, Landroid/os/Parcelable;

    invoke-interface {v0}, Landroid/os/Parcelable;->describeContents()I

    move-result v0

    return v0

    :cond_1
    return v0
.end method

.method public static blacklist device(Landroid/media/AudioPortDeviceExtSys;)Landroid/media/AudioPortExtSys;
    .locals 2

    new-instance v0, Landroid/media/AudioPortExtSys;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Landroid/media/AudioPortExtSys;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist mix(Landroid/media/AudioPortMixExtSys;)Landroid/media/AudioPortExtSys;
    .locals 2

    new-instance v0, Landroid/media/AudioPortExtSys;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Landroid/media/AudioPortExtSys;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist session(I)Landroid/media/AudioPortExtSys;
    .locals 3

    new-instance v0, Landroid/media/AudioPortExtSys;

    const/4 v1, 0x3

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/media/AudioPortExtSys;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist unspecified(Z)Landroid/media/AudioPortExtSys;
    .locals 3

    new-instance v0, Landroid/media/AudioPortExtSys;

    const/4 v1, 0x0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/media/AudioPortExtSys;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/media/AudioPortExtSys;->getTag()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Landroid/media/AudioPortExtSys;->getMix()Landroid/media/AudioPortMixExtSys;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/media/AudioPortExtSys;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Landroid/media/AudioPortExtSys;->getDevice()Landroid/media/AudioPortDeviceExtSys;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/media/AudioPortExtSys;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    nop

    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist getDevice()Landroid/media/AudioPortDeviceExtSys;
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/media/AudioPortExtSys;->_assertTag(I)V

    iget-object v0, p0, Landroid/media/AudioPortExtSys;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/media/AudioPortDeviceExtSys;

    return-object v0
.end method

.method public blacklist getMix()Landroid/media/AudioPortMixExtSys;
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/media/AudioPortExtSys;->_assertTag(I)V

    iget-object v0, p0, Landroid/media/AudioPortExtSys;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/media/AudioPortMixExtSys;

    return-object v0
.end method

.method public blacklist getSession()I
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/media/AudioPortExtSys;->_assertTag(I)V

    iget-object v0, p0, Landroid/media/AudioPortExtSys;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist getTag()I
    .locals 1

    iget v0, p0, Landroid/media/AudioPortExtSys;->_tag:I

    return v0
.end method

.method public blacklist getUnspecified()Z
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/media/AudioPortExtSys;->_assertTag(I)V

    iget-object v0, p0, Landroid/media/AudioPortExtSys;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

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
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/media/AudioPortExtSys;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_1
    sget-object v1, Landroid/media/AudioPortMixExtSys;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioPortMixExtSys;

    invoke-direct {p0, v0, v1}, Landroid/media/AudioPortExtSys;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_2
    sget-object v1, Landroid/media/AudioPortDeviceExtSys;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioPortDeviceExtSys;

    invoke-direct {p0, v0, v1}, Landroid/media/AudioPortExtSys;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/media/AudioPortExtSys;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist setDevice(Landroid/media/AudioPortDeviceExtSys;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Landroid/media/AudioPortExtSys;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist setMix(Landroid/media/AudioPortMixExtSys;)V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Landroid/media/AudioPortExtSys;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist setSession(I)V
    .locals 2

    const/4 v0, 0x3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/media/AudioPortExtSys;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist setUnspecified(Z)V
    .locals 2

    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/media/AudioPortExtSys;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Landroid/media/AudioPortExtSys;->_tag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/media/AudioPortExtSys;->_tag:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Landroid/media/AudioPortExtSys;->getSession()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Landroid/media/AudioPortExtSys;->getMix()Landroid/media/AudioPortMixExtSys;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Landroid/media/AudioPortExtSys;->getDevice()Landroid/media/AudioPortDeviceExtSys;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Landroid/media/AudioPortExtSys;->getUnspecified()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    nop

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
