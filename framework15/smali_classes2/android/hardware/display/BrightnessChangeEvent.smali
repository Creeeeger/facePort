.class public final Landroid/hardware/display/BrightnessChangeEvent;
.super Ljava/lang/Object;
.source "BrightnessChangeEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/display/BrightnessChangeEvent$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/display/BrightnessChangeEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final whitelist batteryLevel:F

.field public final whitelist brightness:F

.field public final whitelist colorSampleDuration:J

.field public final whitelist colorTemperature:I

.field public final whitelist colorValueBuckets:[J

.field public final whitelist isDefaultBrightnessConfig:Z

.field public final whitelist isUserSetBrightness:Z

.field public final whitelist lastBrightness:F

.field public final whitelist luxTimestamps:[J

.field public final whitelist luxValues:[F

.field public final whitelist nightMode:Z

.field public final whitelist packageName:Ljava/lang/String;

.field public final whitelist powerBrightnessFactor:F

.field public final whitelist reduceBrightColors:Z

.field public final whitelist reduceBrightColorsOffset:F

.field public final whitelist reduceBrightColorsStrength:I

.field public final whitelist timeStamp:J

.field public final whitelist uniqueDisplayId:Ljava/lang/String;

.field public final greylist-max-o userId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/hardware/display/BrightnessChangeEvent$1;

    invoke-direct {v0}, Landroid/hardware/display/BrightnessChangeEvent$1;-><init>()V

    sput-object v0, Landroid/hardware/display/BrightnessChangeEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(FJLjava/lang/String;ILjava/lang/String;[F[JFFZIZIFFZZ[JJ)V
    .locals 16

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move/from16 v1, p1

    iput v1, v0, Landroid/hardware/display/BrightnessChangeEvent;->brightness:F

    move-wide/from16 v2, p2

    iput-wide v2, v0, Landroid/hardware/display/BrightnessChangeEvent;->timeStamp:J

    move-object/from16 v4, p4

    iput-object v4, v0, Landroid/hardware/display/BrightnessChangeEvent;->packageName:Ljava/lang/String;

    move/from16 v5, p5

    iput v5, v0, Landroid/hardware/display/BrightnessChangeEvent;->userId:I

    move-object/from16 v6, p6

    iput-object v6, v0, Landroid/hardware/display/BrightnessChangeEvent;->uniqueDisplayId:Ljava/lang/String;

    move-object/from16 v7, p7

    iput-object v7, v0, Landroid/hardware/display/BrightnessChangeEvent;->luxValues:[F

    move-object/from16 v8, p8

    iput-object v8, v0, Landroid/hardware/display/BrightnessChangeEvent;->luxTimestamps:[J

    move/from16 v9, p9

    iput v9, v0, Landroid/hardware/display/BrightnessChangeEvent;->batteryLevel:F

    move/from16 v10, p10

    iput v10, v0, Landroid/hardware/display/BrightnessChangeEvent;->powerBrightnessFactor:F

    move/from16 v11, p11

    iput-boolean v11, v0, Landroid/hardware/display/BrightnessChangeEvent;->nightMode:Z

    move/from16 v12, p12

    iput v12, v0, Landroid/hardware/display/BrightnessChangeEvent;->colorTemperature:I

    move/from16 v13, p13

    iput-boolean v13, v0, Landroid/hardware/display/BrightnessChangeEvent;->reduceBrightColors:Z

    move/from16 v14, p14

    iput v14, v0, Landroid/hardware/display/BrightnessChangeEvent;->reduceBrightColorsStrength:I

    move/from16 v15, p15

    iput v15, v0, Landroid/hardware/display/BrightnessChangeEvent;->reduceBrightColorsOffset:F

    move/from16 v1, p16

    iput v1, v0, Landroid/hardware/display/BrightnessChangeEvent;->lastBrightness:F

    move/from16 v1, p17

    iput-boolean v1, v0, Landroid/hardware/display/BrightnessChangeEvent;->isDefaultBrightnessConfig:Z

    move/from16 v1, p18

    iput-boolean v1, v0, Landroid/hardware/display/BrightnessChangeEvent;->isUserSetBrightness:Z

    move-object/from16 v1, p19

    iput-object v1, v0, Landroid/hardware/display/BrightnessChangeEvent;->colorValueBuckets:[J

    move-wide/from16 v1, p20

    iput-wide v1, v0, Landroid/hardware/display/BrightnessChangeEvent;->colorSampleDuration:J

    return-void
.end method

.method synthetic constructor blacklist <init>(FJLjava/lang/String;ILjava/lang/String;[F[JFFZIZIFFZZ[JJLandroid/hardware/display/BrightnessChangeEvent-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p21}, Landroid/hardware/display/BrightnessChangeEvent;-><init>(FJLjava/lang/String;ILjava/lang/String;[F[JFFZIZIFFZZ[JJ)V

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/hardware/display/BrightnessChangeEvent;Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Landroid/hardware/display/BrightnessChangeEvent;->brightness:F

    iput v0, p0, Landroid/hardware/display/BrightnessChangeEvent;->brightness:F

    iget-wide v0, p1, Landroid/hardware/display/BrightnessChangeEvent;->timeStamp:J

    iput-wide v0, p0, Landroid/hardware/display/BrightnessChangeEvent;->timeStamp:J

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p1, Landroid/hardware/display/BrightnessChangeEvent;->packageName:Ljava/lang/String;

    :goto_0
    iput-object v0, p0, Landroid/hardware/display/BrightnessChangeEvent;->packageName:Ljava/lang/String;

    iget v0, p1, Landroid/hardware/display/BrightnessChangeEvent;->userId:I

    iput v0, p0, Landroid/hardware/display/BrightnessChangeEvent;->userId:I

    iget-object v0, p1, Landroid/hardware/display/BrightnessChangeEvent;->uniqueDisplayId:Ljava/lang/String;

    iput-object v0, p0, Landroid/hardware/display/BrightnessChangeEvent;->uniqueDisplayId:Ljava/lang/String;

    iget-object v0, p1, Landroid/hardware/display/BrightnessChangeEvent;->luxValues:[F

    iput-object v0, p0, Landroid/hardware/display/BrightnessChangeEvent;->luxValues:[F

    iget-object v0, p1, Landroid/hardware/display/BrightnessChangeEvent;->luxTimestamps:[J

    iput-object v0, p0, Landroid/hardware/display/BrightnessChangeEvent;->luxTimestamps:[J

    iget v0, p1, Landroid/hardware/display/BrightnessChangeEvent;->batteryLevel:F

    iput v0, p0, Landroid/hardware/display/BrightnessChangeEvent;->batteryLevel:F

    iget v0, p1, Landroid/hardware/display/BrightnessChangeEvent;->powerBrightnessFactor:F

    iput v0, p0, Landroid/hardware/display/BrightnessChangeEvent;->powerBrightnessFactor:F

    iget-boolean v0, p1, Landroid/hardware/display/BrightnessChangeEvent;->nightMode:Z

    iput-boolean v0, p0, Landroid/hardware/display/BrightnessChangeEvent;->nightMode:Z

    iget v0, p1, Landroid/hardware/display/BrightnessChangeEvent;->colorTemperature:I

    iput v0, p0, Landroid/hardware/display/BrightnessChangeEvent;->colorTemperature:I

    iget-boolean v0, p1, Landroid/hardware/display/BrightnessChangeEvent;->reduceBrightColors:Z

    iput-boolean v0, p0, Landroid/hardware/display/BrightnessChangeEvent;->reduceBrightColors:Z

    iget v0, p1, Landroid/hardware/display/BrightnessChangeEvent;->reduceBrightColorsStrength:I

    iput v0, p0, Landroid/hardware/display/BrightnessChangeEvent;->reduceBrightColorsStrength:I

    iget v0, p1, Landroid/hardware/display/BrightnessChangeEvent;->reduceBrightColorsOffset:F

    iput v0, p0, Landroid/hardware/display/BrightnessChangeEvent;->reduceBrightColorsOffset:F

    iget v0, p1, Landroid/hardware/display/BrightnessChangeEvent;->lastBrightness:F

    iput v0, p0, Landroid/hardware/display/BrightnessChangeEvent;->lastBrightness:F

    iget-boolean v0, p1, Landroid/hardware/display/BrightnessChangeEvent;->isDefaultBrightnessConfig:Z

    iput-boolean v0, p0, Landroid/hardware/display/BrightnessChangeEvent;->isDefaultBrightnessConfig:Z

    iget-boolean v0, p1, Landroid/hardware/display/BrightnessChangeEvent;->isUserSetBrightness:Z

    iput-boolean v0, p0, Landroid/hardware/display/BrightnessChangeEvent;->isUserSetBrightness:Z

    iget-object v0, p1, Landroid/hardware/display/BrightnessChangeEvent;->colorValueBuckets:[J

    iput-object v0, p0, Landroid/hardware/display/BrightnessChangeEvent;->colorValueBuckets:[J

    iget-wide v0, p1, Landroid/hardware/display/BrightnessChangeEvent;->colorSampleDuration:J

    iput-wide v0, p0, Landroid/hardware/display/BrightnessChangeEvent;->colorSampleDuration:J

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/hardware/display/BrightnessChangeEvent;->brightness:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/display/BrightnessChangeEvent;->timeStamp:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/display/BrightnessChangeEvent;->packageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/display/BrightnessChangeEvent;->userId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/display/BrightnessChangeEvent;->uniqueDisplayId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/display/BrightnessChangeEvent;->luxValues:[F

    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/display/BrightnessChangeEvent;->luxTimestamps:[J

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/hardware/display/BrightnessChangeEvent;->batteryLevel:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/hardware/display/BrightnessChangeEvent;->powerBrightnessFactor:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/display/BrightnessChangeEvent;->nightMode:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/display/BrightnessChangeEvent;->colorTemperature:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/display/BrightnessChangeEvent;->reduceBrightColors:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/display/BrightnessChangeEvent;->reduceBrightColorsStrength:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/hardware/display/BrightnessChangeEvent;->reduceBrightColorsOffset:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/hardware/display/BrightnessChangeEvent;->lastBrightness:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/display/BrightnessChangeEvent;->isDefaultBrightnessConfig:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/display/BrightnessChangeEvent;->isUserSetBrightness:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/display/BrightnessChangeEvent;->colorValueBuckets:[J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/display/BrightnessChangeEvent;->colorSampleDuration:J

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/hardware/display/BrightnessChangeEvent-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/display/BrightnessChangeEvent;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BrightnessChangeEvent{brightness: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/display/BrightnessChangeEvent;->brightness:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", timeStamp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/hardware/display/BrightnessChangeEvent;->timeStamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", packageName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/display/BrightnessChangeEvent;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", userId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/display/BrightnessChangeEvent;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uniqueDisplayId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/display/BrightnessChangeEvent;->uniqueDisplayId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", luxValues: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/display/BrightnessChangeEvent;->luxValues:[F

    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", luxTimestamps: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/display/BrightnessChangeEvent;->luxTimestamps:[J

    invoke-static {v1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", batteryLevel: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/display/BrightnessChangeEvent;->batteryLevel:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", powerBrightnessFactor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/display/BrightnessChangeEvent;->powerBrightnessFactor:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", nightMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/hardware/display/BrightnessChangeEvent;->nightMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", colorTemperature: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/display/BrightnessChangeEvent;->colorTemperature:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", reduceBrightColors: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/hardware/display/BrightnessChangeEvent;->reduceBrightColors:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", reduceBrightColorsStrength: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/display/BrightnessChangeEvent;->reduceBrightColorsStrength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", reduceBrightColorsOffset: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/display/BrightnessChangeEvent;->reduceBrightColorsOffset:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lastBrightness: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/display/BrightnessChangeEvent;->lastBrightness:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isDefaultBrightnessConfig: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/hardware/display/BrightnessChangeEvent;->isDefaultBrightnessConfig:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isUserSetBrightness: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/hardware/display/BrightnessChangeEvent;->isUserSetBrightness:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", colorValueBuckets: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/display/BrightnessChangeEvent;->colorValueBuckets:[J

    invoke-static {v1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", colorSampleDuration: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/hardware/display/BrightnessChangeEvent;->colorSampleDuration:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget v0, p0, Landroid/hardware/display/BrightnessChangeEvent;->brightness:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget-wide v0, p0, Landroid/hardware/display/BrightnessChangeEvent;->timeStamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Landroid/hardware/display/BrightnessChangeEvent;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/hardware/display/BrightnessChangeEvent;->userId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/hardware/display/BrightnessChangeEvent;->uniqueDisplayId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/hardware/display/BrightnessChangeEvent;->luxValues:[F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloatArray([F)V

    iget-object v0, p0, Landroid/hardware/display/BrightnessChangeEvent;->luxTimestamps:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    iget v0, p0, Landroid/hardware/display/BrightnessChangeEvent;->batteryLevel:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Landroid/hardware/display/BrightnessChangeEvent;->powerBrightnessFactor:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget-boolean v0, p0, Landroid/hardware/display/BrightnessChangeEvent;->nightMode:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget v0, p0, Landroid/hardware/display/BrightnessChangeEvent;->colorTemperature:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/hardware/display/BrightnessChangeEvent;->reduceBrightColors:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget v0, p0, Landroid/hardware/display/BrightnessChangeEvent;->reduceBrightColorsStrength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/hardware/display/BrightnessChangeEvent;->reduceBrightColorsOffset:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Landroid/hardware/display/BrightnessChangeEvent;->lastBrightness:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget-boolean v0, p0, Landroid/hardware/display/BrightnessChangeEvent;->isDefaultBrightnessConfig:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Landroid/hardware/display/BrightnessChangeEvent;->isUserSetBrightness:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-object v0, p0, Landroid/hardware/display/BrightnessChangeEvent;->colorValueBuckets:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    iget-wide v0, p0, Landroid/hardware/display/BrightnessChangeEvent;->colorSampleDuration:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
