.class public final Landroid/hardware/radio/network/RadioAccessSpecifierBands;
.super Ljava/lang/Object;
.source "RadioAccessSpecifierBands.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/radio/network/RadioAccessSpecifierBands$Tag;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/radio/network/RadioAccessSpecifierBands;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist eutranBands:I = 0x3

.field public static final blacklist geranBands:I = 0x1

.field public static final blacklist ngranBands:I = 0x4

.field public static final blacklist noinit:I = 0x0

.field public static final blacklist utranBands:I = 0x2


# instance fields
.field private blacklist _tag:I

.field private blacklist _value:Ljava/lang/Object;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/hardware/radio/network/RadioAccessSpecifierBands$1;

    invoke-direct {v0}, Landroid/hardware/radio/network/RadioAccessSpecifierBands$1;-><init>()V

    sput-object v0, Landroid/hardware/radio/network/RadioAccessSpecifierBands;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    iput v1, p0, Landroid/hardware/radio/network/RadioAccessSpecifierBands;->_tag:I

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/radio/network/RadioAccessSpecifierBands;->_value:Ljava/lang/Object;

    return-void
.end method

.method private constructor blacklist <init>(ILjava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/hardware/radio/network/RadioAccessSpecifierBands;->_tag:I

    iput-object p2, p0, Landroid/hardware/radio/network/RadioAccessSpecifierBands;->_value:Ljava/lang/Object;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Landroid/hardware/radio/network/RadioAccessSpecifierBands;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/hardware/radio/network/RadioAccessSpecifierBands-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/radio/network/RadioAccessSpecifierBands;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private blacklist _assertTag(I)V
    .locals 3

    invoke-virtual {p0}, Landroid/hardware/radio/network/RadioAccessSpecifierBands;->getTag()I

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

    invoke-direct {p0, p1}, Landroid/hardware/radio/network/RadioAccessSpecifierBands;->_tagString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/hardware/radio/network/RadioAccessSpecifierBands;->getTag()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/hardware/radio/network/RadioAccessSpecifierBands;->_tagString(I)Ljava/lang/String;

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

    iput p1, p0, Landroid/hardware/radio/network/RadioAccessSpecifierBands;->_tag:I

    iput-object p2, p0, Landroid/hardware/radio/network/RadioAccessSpecifierBands;->_value:Ljava/lang/Object;

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
    const-string v0, "ngranBands"

    return-object v0

    :pswitch_1
    const-string v0, "eutranBands"

    return-object v0

    :pswitch_2
    const-string v0, "utranBands"

    return-object v0

    :pswitch_3
    const-string v0, "geranBands"

    return-object v0

    :pswitch_4
    const-string v0, "noinit"

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

.method public static blacklist eutranBands([I)Landroid/hardware/radio/network/RadioAccessSpecifierBands;
    .locals 2

    new-instance v0, Landroid/hardware/radio/network/RadioAccessSpecifierBands;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0}, Landroid/hardware/radio/network/RadioAccessSpecifierBands;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist geranBands([I)Landroid/hardware/radio/network/RadioAccessSpecifierBands;
    .locals 2

    new-instance v0, Landroid/hardware/radio/network/RadioAccessSpecifierBands;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Landroid/hardware/radio/network/RadioAccessSpecifierBands;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist ngranBands([I)Landroid/hardware/radio/network/RadioAccessSpecifierBands;
    .locals 2

    new-instance v0, Landroid/hardware/radio/network/RadioAccessSpecifierBands;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p0}, Landroid/hardware/radio/network/RadioAccessSpecifierBands;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist noinit(Z)Landroid/hardware/radio/network/RadioAccessSpecifierBands;
    .locals 3

    new-instance v0, Landroid/hardware/radio/network/RadioAccessSpecifierBands;

    const/4 v1, 0x0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/hardware/radio/network/RadioAccessSpecifierBands;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist utranBands([I)Landroid/hardware/radio/network/RadioAccessSpecifierBands;
    .locals 2

    new-instance v0, Landroid/hardware/radio/network/RadioAccessSpecifierBands;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Landroid/hardware/radio/network/RadioAccessSpecifierBands;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/hardware/radio/network/RadioAccessSpecifierBands;->getTag()I

    return v0
.end method

.method public blacklist getEutranBands()[I
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/hardware/radio/network/RadioAccessSpecifierBands;->_assertTag(I)V

    iget-object v0, p0, Landroid/hardware/radio/network/RadioAccessSpecifierBands;->_value:Ljava/lang/Object;

    check-cast v0, [I

    return-object v0
.end method

.method public blacklist getGeranBands()[I
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/hardware/radio/network/RadioAccessSpecifierBands;->_assertTag(I)V

    iget-object v0, p0, Landroid/hardware/radio/network/RadioAccessSpecifierBands;->_value:Ljava/lang/Object;

    check-cast v0, [I

    return-object v0
.end method

.method public blacklist getNgranBands()[I
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/hardware/radio/network/RadioAccessSpecifierBands;->_assertTag(I)V

    iget-object v0, p0, Landroid/hardware/radio/network/RadioAccessSpecifierBands;->_value:Ljava/lang/Object;

    check-cast v0, [I

    return-object v0
.end method

.method public blacklist getNoinit()Z
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/hardware/radio/network/RadioAccessSpecifierBands;->_assertTag(I)V

    iget-object v0, p0, Landroid/hardware/radio/network/RadioAccessSpecifierBands;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final whitelist getStability()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getTag()I
    .locals 1

    iget v0, p0, Landroid/hardware/radio/network/RadioAccessSpecifierBands;->_tag:I

    return v0
.end method

.method public blacklist getUtranBands()[I
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/hardware/radio/network/RadioAccessSpecifierBands;->_assertTag(I)V

    iget-object v0, p0, Landroid/hardware/radio/network/RadioAccessSpecifierBands;->_value:Ljava/lang/Object;

    check-cast v0, [I

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
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/hardware/radio/network/RadioAccessSpecifierBands;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_1
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/hardware/radio/network/RadioAccessSpecifierBands;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_2
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/hardware/radio/network/RadioAccessSpecifierBands;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_3
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/hardware/radio/network/RadioAccessSpecifierBands;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/radio/network/RadioAccessSpecifierBands;->_set(ILjava/lang/Object;)V

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

.method public blacklist setEutranBands([I)V
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Landroid/hardware/radio/network/RadioAccessSpecifierBands;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist setGeranBands([I)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Landroid/hardware/radio/network/RadioAccessSpecifierBands;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist setNgranBands([I)V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Landroid/hardware/radio/network/RadioAccessSpecifierBands;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist setNoinit(Z)V
    .locals 2

    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/hardware/radio/network/RadioAccessSpecifierBands;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist setUtranBands([I)V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Landroid/hardware/radio/network/RadioAccessSpecifierBands;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    iget v0, p0, Landroid/hardware/radio/network/RadioAccessSpecifierBands;->_tag:I

    const-string v1, ")"

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown field: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/hardware/radio/network/RadioAccessSpecifierBands;->_tag:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RadioAccessSpecifierBands.ngranBands("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/hardware/radio/network/RadioAccessSpecifierBands;->getNgranBands()[I

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/radio/network/NgranBands$$;->arrayToString(Ljava/lang/Object;)Ljava/lang/String;

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

    const-string v2, "RadioAccessSpecifierBands.eutranBands("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/hardware/radio/network/RadioAccessSpecifierBands;->getEutranBands()[I

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/radio/network/EutranBands$$;->arrayToString(Ljava/lang/Object;)Ljava/lang/String;

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

    const-string v2, "RadioAccessSpecifierBands.utranBands("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/hardware/radio/network/RadioAccessSpecifierBands;->getUtranBands()[I

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/radio/network/UtranBands$$;->arrayToString(Ljava/lang/Object;)Ljava/lang/String;

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

    const-string v2, "RadioAccessSpecifierBands.geranBands("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/hardware/radio/network/RadioAccessSpecifierBands;->getGeranBands()[I

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/radio/network/GeranBands$$;->arrayToString(Ljava/lang/Object;)Ljava/lang/String;

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

    const-string v2, "RadioAccessSpecifierBands.noinit("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/hardware/radio/network/RadioAccessSpecifierBands;->getNoinit()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

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

    iget v0, p0, Landroid/hardware/radio/network/RadioAccessSpecifierBands;->_tag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/hardware/radio/network/RadioAccessSpecifierBands;->_tag:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Landroid/hardware/radio/network/RadioAccessSpecifierBands;->getNgranBands()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Landroid/hardware/radio/network/RadioAccessSpecifierBands;->getEutranBands()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Landroid/hardware/radio/network/RadioAccessSpecifierBands;->getUtranBands()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Landroid/hardware/radio/network/RadioAccessSpecifierBands;->getGeranBands()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0}, Landroid/hardware/radio/network/RadioAccessSpecifierBands;->getNoinit()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

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
