.class public final Landroid/os/CoolingDevice;
.super Ljava/lang/Object;
.source "CoolingDevice.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/CoolingDevice$Type;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/CoolingDevice;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist TYPE_BATTERY:I = 0x1

.field public static final blacklist TYPE_CAMERA:I = 0xc

.field public static final blacklist TYPE_COMPONENT:I = 0x6

.field public static final blacklist TYPE_CPU:I = 0x2

.field public static final blacklist TYPE_DISPLAY:I = 0x9

.field public static final blacklist TYPE_FAN:I = 0x0

.field public static final blacklist TYPE_FLASHLIGHT:I = 0xd

.field public static final blacklist TYPE_GPU:I = 0x3

.field public static final blacklist TYPE_MODEM:I = 0x4

.field public static final blacklist TYPE_NPU:I = 0x5

.field public static final blacklist TYPE_POWER_AMPLIFIER:I = 0x8

.field public static final blacklist TYPE_SPEAKER:I = 0xa

.field public static final blacklist TYPE_TPU:I = 0x7

.field public static final blacklist TYPE_USB_PORT:I = 0xe

.field public static final blacklist TYPE_WIFI:I = 0xb


# instance fields
.field private final blacklist mName:Ljava/lang/String;

.field private final blacklist mType:I

.field private final blacklist mValue:J


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/os/CoolingDevice$1;

    invoke-direct {v0}, Landroid/os/CoolingDevice$1;-><init>()V

    sput-object v0, Landroid/os/CoolingDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(JILjava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p3}, Landroid/os/CoolingDevice;->isValidType(I)Z

    move-result v0

    const-string v1, "Invalid Type"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iput-wide p1, p0, Landroid/os/CoolingDevice;->mValue:J

    iput p3, p0, Landroid/os/CoolingDevice;->mType:I

    invoke-static {p4}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/os/CoolingDevice;->mName:Ljava/lang/String;

    return-void
.end method

.method public static blacklist isValidType(I)Z
    .locals 1

    if-ltz p0, :cond_0

    const/16 v0, 0xe

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 6

    instance-of v0, p1, Landroid/os/CoolingDevice;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/os/CoolingDevice;

    iget-wide v2, v0, Landroid/os/CoolingDevice;->mValue:J

    iget-wide v4, p0, Landroid/os/CoolingDevice;->mValue:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    iget v2, v0, Landroid/os/CoolingDevice;->mType:I

    iget v3, p0, Landroid/os/CoolingDevice;->mType:I

    if-ne v2, v3, :cond_1

    iget-object v2, v0, Landroid/os/CoolingDevice;->mName:Ljava/lang/String;

    iget-object v3, p0, Landroid/os/CoolingDevice;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public blacklist getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/os/CoolingDevice;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getType()I
    .locals 1

    iget v0, p0, Landroid/os/CoolingDevice;->mType:I

    return v0
.end method

.method public blacklist getValue()J
    .locals 2

    iget-wide v0, p0, Landroid/os/CoolingDevice;->mValue:J

    return-wide v0
.end method

.method public whitelist test-api hashCode()I
    .locals 4

    iget-object v0, p0, Landroid/os/CoolingDevice;->mName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Landroid/os/CoolingDevice;->mValue:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/os/CoolingDevice;->mType:I

    add-int/2addr v0, v2

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CoolingDevice{mValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/os/CoolingDevice;->mValue:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/CoolingDevice;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/CoolingDevice;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-wide v0, p0, Landroid/os/CoolingDevice;->mValue:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Landroid/os/CoolingDevice;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/os/CoolingDevice;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
