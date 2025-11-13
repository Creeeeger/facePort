.class public final Landroid/telephony/BarringInfo$BarringServiceInfo;
.super Ljava/lang/Object;
.source "BarringInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/BarringInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BarringServiceInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/BarringInfo$BarringServiceInfo$BarringType;
    }
.end annotation


# static fields
.field public static final whitelist BARRING_TYPE_CONDITIONAL:I = 0x1

.field public static final whitelist BARRING_TYPE_NONE:I = 0x0

.field public static final whitelist BARRING_TYPE_UNCONDITIONAL:I = 0x2

.field public static final whitelist BARRING_TYPE_UNKNOWN:I = -0x1

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/BarringInfo$BarringServiceInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mBarringType:I

.field private final blacklist mConditionalBarringFactor:I

.field private final blacklist mConditionalBarringTimeSeconds:I

.field private final blacklist mIsConditionallyBarred:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/telephony/BarringInfo$BarringServiceInfo$1;

    invoke-direct {v0}, Landroid/telephony/BarringInfo$BarringServiceInfo$1;-><init>()V

    sput-object v0, Landroid/telephony/BarringInfo$BarringServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0, v0}, Landroid/telephony/BarringInfo$BarringServiceInfo;-><init>(IZII)V

    return-void
.end method

.method public constructor blacklist <init>(IZII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/telephony/BarringInfo$BarringServiceInfo;->mBarringType:I

    iput-boolean p2, p0, Landroid/telephony/BarringInfo$BarringServiceInfo;->mIsConditionallyBarred:Z

    iput p3, p0, Landroid/telephony/BarringInfo$BarringServiceInfo;->mConditionalBarringFactor:I

    iput p4, p0, Landroid/telephony/BarringInfo$BarringServiceInfo;->mConditionalBarringTimeSeconds:I

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/BarringInfo$BarringServiceInfo;->mBarringType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/BarringInfo$BarringServiceInfo;->mIsConditionallyBarred:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/BarringInfo$BarringServiceInfo;->mConditionalBarringFactor:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/BarringInfo$BarringServiceInfo;->mConditionalBarringTimeSeconds:I

    return-void
.end method

.method private static blacklist barringTypeToString(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_0
    const-string v0, "UNCONDITIONAL"

    goto :goto_0

    :pswitch_1
    const-string v0, "CONDITIONAL"

    goto :goto_0

    :pswitch_2
    const-string v0, "NONE"

    goto :goto_0

    :pswitch_3
    const-string v0, "UNKNOWN"

    :goto_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Landroid/telephony/BarringInfo$BarringServiceInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/telephony/BarringInfo$BarringServiceInfo;

    iget v2, p0, Landroid/telephony/BarringInfo$BarringServiceInfo;->mBarringType:I

    iget v3, v0, Landroid/telephony/BarringInfo$BarringServiceInfo;->mBarringType:I

    if-ne v2, v3, :cond_1

    iget-boolean v2, p0, Landroid/telephony/BarringInfo$BarringServiceInfo;->mIsConditionallyBarred:Z

    iget-boolean v3, v0, Landroid/telephony/BarringInfo$BarringServiceInfo;->mIsConditionallyBarred:Z

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/telephony/BarringInfo$BarringServiceInfo;->mConditionalBarringFactor:I

    iget v3, v0, Landroid/telephony/BarringInfo$BarringServiceInfo;->mConditionalBarringFactor:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/telephony/BarringInfo$BarringServiceInfo;->mConditionalBarringTimeSeconds:I

    iget v3, v0, Landroid/telephony/BarringInfo$BarringServiceInfo;->mConditionalBarringTimeSeconds:I

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public whitelist getBarringType()I
    .locals 1

    iget v0, p0, Landroid/telephony/BarringInfo$BarringServiceInfo;->mBarringType:I

    return v0
.end method

.method public whitelist getConditionalBarringFactor()I
    .locals 1

    iget v0, p0, Landroid/telephony/BarringInfo$BarringServiceInfo;->mConditionalBarringFactor:I

    return v0
.end method

.method public whitelist getConditionalBarringTimeSeconds()I
    .locals 1

    iget v0, p0, Landroid/telephony/BarringInfo$BarringServiceInfo;->mConditionalBarringTimeSeconds:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 4

    iget v0, p0, Landroid/telephony/BarringInfo$BarringServiceInfo;->mBarringType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-boolean v1, p0, Landroid/telephony/BarringInfo$BarringServiceInfo;->mIsConditionallyBarred:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget v2, p0, Landroid/telephony/BarringInfo$BarringServiceInfo;->mConditionalBarringFactor:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Landroid/telephony/BarringInfo$BarringServiceInfo;->mConditionalBarringTimeSeconds:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist isBarred()Z
    .locals 3

    iget v0, p0, Landroid/telephony/BarringInfo$BarringServiceInfo;->mBarringType:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Landroid/telephony/BarringInfo$BarringServiceInfo;->mBarringType:I

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Landroid/telephony/BarringInfo$BarringServiceInfo;->mIsConditionallyBarred:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :cond_1
    :goto_0
    return v2
.end method

.method public whitelist isConditionallyBarred()Z
    .locals 1

    iget-boolean v0, p0, Landroid/telephony/BarringInfo$BarringServiceInfo;->mIsConditionallyBarred:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BarringServiceInfo {mBarringType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/BarringInfo$BarringServiceInfo;->mBarringType:I

    invoke-static {v1}, Landroid/telephony/BarringInfo$BarringServiceInfo;->barringTypeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIsConditionallyBarred="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/telephony/BarringInfo$BarringServiceInfo;->mIsConditionallyBarred:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mConditionalBarringFactor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/BarringInfo$BarringServiceInfo;->mConditionalBarringFactor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mConditionalBarringTimeSeconds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/BarringInfo$BarringServiceInfo;->mConditionalBarringTimeSeconds:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Landroid/telephony/BarringInfo$BarringServiceInfo;->mBarringType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/telephony/BarringInfo$BarringServiceInfo;->mIsConditionallyBarred:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget v0, p0, Landroid/telephony/BarringInfo$BarringServiceInfo;->mConditionalBarringFactor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/BarringInfo$BarringServiceInfo;->mConditionalBarringTimeSeconds:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
