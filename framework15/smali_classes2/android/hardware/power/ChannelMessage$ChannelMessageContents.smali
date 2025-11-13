.class public final Landroid/hardware/power/ChannelMessage$ChannelMessageContents;
.super Ljava/lang/Object;
.source "ChannelMessage.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/power/ChannelMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ChannelMessageContents"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/power/ChannelMessage$ChannelMessageContents$SessionModeSetter;,
        Landroid/hardware/power/ChannelMessage$ChannelMessageContents$Tag;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/power/ChannelMessage$ChannelMessageContents;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist hint:I = 0x2

.field public static final blacklist mode:I = 0x3

.field public static final blacklist reserved:I = 0x0

.field public static final blacklist targetDuration:I = 0x1

.field public static final blacklist workDuration:I = 0x4


# instance fields
.field private blacklist _tag:I

.field private blacklist _value:Ljava/lang/Object;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/hardware/power/ChannelMessage$ChannelMessageContents$1;

    invoke-direct {v0}, Landroid/hardware/power/ChannelMessage$ChannelMessageContents$1;-><init>()V

    sput-object v0, Landroid/hardware/power/ChannelMessage$ChannelMessageContents;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    const/4 v1, 0x0

    iput v1, p0, Landroid/hardware/power/ChannelMessage$ChannelMessageContents;->_tag:I

    iput-object v0, p0, Landroid/hardware/power/ChannelMessage$ChannelMessageContents;->_value:Ljava/lang/Object;

    return-void

    :array_0
    .array-data 8
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private constructor blacklist <init>(ILjava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/hardware/power/ChannelMessage$ChannelMessageContents;->_tag:I

    iput-object p2, p0, Landroid/hardware/power/ChannelMessage$ChannelMessageContents;->_value:Ljava/lang/Object;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Landroid/hardware/power/ChannelMessage$ChannelMessageContents;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/hardware/power/ChannelMessage$ChannelMessageContents-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/power/ChannelMessage$ChannelMessageContents;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private blacklist _assertTag(I)V
    .locals 3

    invoke-virtual {p0}, Landroid/hardware/power/ChannelMessage$ChannelMessageContents;->getTag()I

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

    invoke-direct {p0, p1}, Landroid/hardware/power/ChannelMessage$ChannelMessageContents;->_tagString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/hardware/power/ChannelMessage$ChannelMessageContents;->getTag()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/hardware/power/ChannelMessage$ChannelMessageContents;->_tagString(I)Ljava/lang/String;

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

    iput p1, p0, Landroid/hardware/power/ChannelMessage$ChannelMessageContents;->_tag:I

    iput-object p2, p0, Landroid/hardware/power/ChannelMessage$ChannelMessageContents;->_value:Ljava/lang/Object;

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
    const-string v0, "workDuration"

    return-object v0

    :pswitch_1
    const-string v0, "mode"

    return-object v0

    :pswitch_2
    const-string v0, "hint"

    return-object v0

    :pswitch_3
    const-string v0, "targetDuration"

    return-object v0

    :pswitch_4
    const-string v0, "reserved"

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

.method public static blacklist hint(I)Landroid/hardware/power/ChannelMessage$ChannelMessageContents;
    .locals 3

    new-instance v0, Landroid/hardware/power/ChannelMessage$ChannelMessageContents;

    const/4 v1, 0x2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/hardware/power/ChannelMessage$ChannelMessageContents;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist mode(Landroid/hardware/power/ChannelMessage$ChannelMessageContents$SessionModeSetter;)Landroid/hardware/power/ChannelMessage$ChannelMessageContents;
    .locals 2

    new-instance v0, Landroid/hardware/power/ChannelMessage$ChannelMessageContents;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0}, Landroid/hardware/power/ChannelMessage$ChannelMessageContents;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist reserved([J)Landroid/hardware/power/ChannelMessage$ChannelMessageContents;
    .locals 2

    new-instance v0, Landroid/hardware/power/ChannelMessage$ChannelMessageContents;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Landroid/hardware/power/ChannelMessage$ChannelMessageContents;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist targetDuration(J)Landroid/hardware/power/ChannelMessage$ChannelMessageContents;
    .locals 3

    new-instance v0, Landroid/hardware/power/ChannelMessage$ChannelMessageContents;

    const/4 v1, 0x1

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/hardware/power/ChannelMessage$ChannelMessageContents;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist workDuration(Landroid/hardware/power/WorkDurationFixedV1;)Landroid/hardware/power/ChannelMessage$ChannelMessageContents;
    .locals 2

    new-instance v0, Landroid/hardware/power/ChannelMessage$ChannelMessageContents;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p0}, Landroid/hardware/power/ChannelMessage$ChannelMessageContents;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/hardware/power/ChannelMessage$ChannelMessageContents;->getTag()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Landroid/hardware/power/ChannelMessage$ChannelMessageContents;->getWorkDuration()Landroid/hardware/power/WorkDurationFixedV1;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/power/ChannelMessage$ChannelMessageContents;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Landroid/hardware/power/ChannelMessage$ChannelMessageContents;->getMode()Landroid/hardware/power/ChannelMessage$ChannelMessageContents$SessionModeSetter;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/power/ChannelMessage$ChannelMessageContents;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    nop

    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist getHint()I
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/hardware/power/ChannelMessage$ChannelMessageContents;->_assertTag(I)V

    iget-object v0, p0, Landroid/hardware/power/ChannelMessage$ChannelMessageContents;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist getMode()Landroid/hardware/power/ChannelMessage$ChannelMessageContents$SessionModeSetter;
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/hardware/power/ChannelMessage$ChannelMessageContents;->_assertTag(I)V

    iget-object v0, p0, Landroid/hardware/power/ChannelMessage$ChannelMessageContents;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/power/ChannelMessage$ChannelMessageContents$SessionModeSetter;

    return-object v0
.end method

.method public blacklist getReserved()[J
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/hardware/power/ChannelMessage$ChannelMessageContents;->_assertTag(I)V

    iget-object v0, p0, Landroid/hardware/power/ChannelMessage$ChannelMessageContents;->_value:Ljava/lang/Object;

    check-cast v0, [J

    return-object v0
.end method

.method public final whitelist getStability()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getTag()I
    .locals 1

    iget v0, p0, Landroid/hardware/power/ChannelMessage$ChannelMessageContents;->_tag:I

    return v0
.end method

.method public blacklist getTargetDuration()J
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/hardware/power/ChannelMessage$ChannelMessageContents;->_assertTag(I)V

    iget-object v0, p0, Landroid/hardware/power/ChannelMessage$ChannelMessageContents;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getWorkDuration()Landroid/hardware/power/WorkDurationFixedV1;
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/hardware/power/ChannelMessage$ChannelMessageContents;->_assertTag(I)V

    iget-object v0, p0, Landroid/hardware/power/ChannelMessage$ChannelMessageContents;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/power/WorkDurationFixedV1;

    return-object v0
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
    sget-object v1, Landroid/hardware/power/WorkDurationFixedV1;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/power/WorkDurationFixedV1;

    invoke-direct {p0, v0, v1}, Landroid/hardware/power/ChannelMessage$ChannelMessageContents;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_1
    sget-object v1, Landroid/hardware/power/ChannelMessage$ChannelMessageContents$SessionModeSetter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/power/ChannelMessage$ChannelMessageContents$SessionModeSetter;

    invoke-direct {p0, v0, v1}, Landroid/hardware/power/ChannelMessage$ChannelMessageContents;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/power/ChannelMessage$ChannelMessageContents;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Landroid/hardware/power/ChannelMessage$ChannelMessageContents;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_4
    const/16 v1, 0x10

    filled-new-array {v1}, [I

    move-result-object v1

    const-class v2, [J

    invoke-virtual {p1, v2, v1}, Landroid/os/Parcel;->createFixedArray(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    invoke-direct {p0, v0, v1}, Landroid/hardware/power/ChannelMessage$ChannelMessageContents;->_set(ILjava/lang/Object;)V

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

.method public blacklist setHint(I)V
    .locals 2

    const/4 v0, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/hardware/power/ChannelMessage$ChannelMessageContents;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist setMode(Landroid/hardware/power/ChannelMessage$ChannelMessageContents$SessionModeSetter;)V
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Landroid/hardware/power/ChannelMessage$ChannelMessageContents;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist setReserved([J)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Landroid/hardware/power/ChannelMessage$ChannelMessageContents;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist setTargetDuration(J)V
    .locals 2

    const/4 v0, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/hardware/power/ChannelMessage$ChannelMessageContents;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist setWorkDuration(Landroid/hardware/power/WorkDurationFixedV1;)V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Landroid/hardware/power/ChannelMessage$ChannelMessageContents;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget v0, p0, Landroid/hardware/power/ChannelMessage$ChannelMessageContents;->_tag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/hardware/power/ChannelMessage$ChannelMessageContents;->_tag:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Landroid/hardware/power/ChannelMessage$ChannelMessageContents;->getWorkDuration()Landroid/hardware/power/WorkDurationFixedV1;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Landroid/hardware/power/ChannelMessage$ChannelMessageContents;->getMode()Landroid/hardware/power/ChannelMessage$ChannelMessageContents$SessionModeSetter;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Landroid/hardware/power/ChannelMessage$ChannelMessageContents;->getHint()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Landroid/hardware/power/ChannelMessage$ChannelMessageContents;->getTargetDuration()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0}, Landroid/hardware/power/ChannelMessage$ChannelMessageContents;->getReserved()[J

    move-result-object v0

    const/16 v1, 0x10

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-virtual {p1, v0, p2, v1}, Landroid/os/Parcel;->writeFixedArray(Ljava/lang/Object;I[I)V

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
