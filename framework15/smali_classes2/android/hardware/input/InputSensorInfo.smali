.class public Landroid/hardware/input/InputSensorInfo;
.super Ljava/lang/Object;
.source "InputSensorInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/input/InputSensorInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mFifoMaxEventCount:I

.field private blacklist mFifoReservedEventCount:I

.field private blacklist mFlags:I

.field private blacklist mHandle:I

.field private blacklist mId:I

.field private blacklist mMaxDelay:I

.field private blacklist mMaxRange:F

.field private blacklist mMinDelay:I

.field private blacklist mName:Ljava/lang/String;

.field private blacklist mPower:F

.field private blacklist mRequiredPermission:Ljava/lang/String;

.field private blacklist mResolution:F

.field private blacklist mStringType:Ljava/lang/String;

.field private blacklist mType:I

.field private blacklist mVendor:Ljava/lang/String;

.field private blacklist mVersion:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/hardware/input/InputSensorInfo$1;

    invoke-direct {v0}, Landroid/hardware/input/InputSensorInfo$1;-><init>()V

    sput-object v0, Landroid/hardware/input/InputSensorInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 20

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readFloat()F

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readFloat()F

    move-result v7

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readFloat()F

    move-result v8

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v14

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v15

    move/from16 v16, v15

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v15

    iput-object v1, v0, Landroid/hardware/input/InputSensorInfo;->mName:Ljava/lang/String;

    move-object/from16 v17, v1

    const-class v1, Landroid/annotation/NonNull;

    move/from16 v18, v15

    iget-object v15, v0, Landroid/hardware/input/InputSensorInfo;->mName:Ljava/lang/String;

    move/from16 v19, v14

    const/4 v14, 0x0

    invoke-static {v1, v14, v15}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput-object v2, v0, Landroid/hardware/input/InputSensorInfo;->mVendor:Ljava/lang/String;

    const-class v1, Landroid/annotation/NonNull;

    iget-object v15, v0, Landroid/hardware/input/InputSensorInfo;->mVendor:Ljava/lang/String;

    invoke-static {v1, v14, v15}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput v3, v0, Landroid/hardware/input/InputSensorInfo;->mVersion:I

    iput v4, v0, Landroid/hardware/input/InputSensorInfo;->mHandle:I

    iput v5, v0, Landroid/hardware/input/InputSensorInfo;->mType:I

    iput v6, v0, Landroid/hardware/input/InputSensorInfo;->mMaxRange:F

    iput v7, v0, Landroid/hardware/input/InputSensorInfo;->mResolution:F

    iput v8, v0, Landroid/hardware/input/InputSensorInfo;->mPower:F

    iput v9, v0, Landroid/hardware/input/InputSensorInfo;->mMinDelay:I

    iput v10, v0, Landroid/hardware/input/InputSensorInfo;->mFifoReservedEventCount:I

    iput v11, v0, Landroid/hardware/input/InputSensorInfo;->mFifoMaxEventCount:I

    iput-object v12, v0, Landroid/hardware/input/InputSensorInfo;->mStringType:Ljava/lang/String;

    const-class v1, Landroid/annotation/NonNull;

    iget-object v15, v0, Landroid/hardware/input/InputSensorInfo;->mStringType:Ljava/lang/String;

    invoke-static {v1, v14, v15}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput-object v13, v0, Landroid/hardware/input/InputSensorInfo;->mRequiredPermission:Ljava/lang/String;

    const-class v1, Landroid/annotation/NonNull;

    iget-object v15, v0, Landroid/hardware/input/InputSensorInfo;->mRequiredPermission:Ljava/lang/String;

    invoke-static {v1, v14, v15}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    move/from16 v1, v19

    iput v1, v0, Landroid/hardware/input/InputSensorInfo;->mMaxDelay:I

    move/from16 v14, v16

    iput v14, v0, Landroid/hardware/input/InputSensorInfo;->mFlags:I

    move/from16 v15, v18

    iput v15, v0, Landroid/hardware/input/InputSensorInfo;->mId:I

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;IIIFFFIIILjava/lang/String;Ljava/lang/String;III)V
    .locals 16

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v1, p1

    iput-object v1, v0, Landroid/hardware/input/InputSensorInfo;->mName:Ljava/lang/String;

    const-class v2, Landroid/annotation/NonNull;

    iget-object v3, v0, Landroid/hardware/input/InputSensorInfo;->mName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v2, v4, v3}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    move-object/from16 v2, p2

    iput-object v2, v0, Landroid/hardware/input/InputSensorInfo;->mVendor:Ljava/lang/String;

    const-class v3, Landroid/annotation/NonNull;

    iget-object v5, v0, Landroid/hardware/input/InputSensorInfo;->mVendor:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    move/from16 v3, p3

    iput v3, v0, Landroid/hardware/input/InputSensorInfo;->mVersion:I

    move/from16 v5, p4

    iput v5, v0, Landroid/hardware/input/InputSensorInfo;->mHandle:I

    move/from16 v6, p5

    iput v6, v0, Landroid/hardware/input/InputSensorInfo;->mType:I

    move/from16 v7, p6

    iput v7, v0, Landroid/hardware/input/InputSensorInfo;->mMaxRange:F

    move/from16 v8, p7

    iput v8, v0, Landroid/hardware/input/InputSensorInfo;->mResolution:F

    move/from16 v9, p8

    iput v9, v0, Landroid/hardware/input/InputSensorInfo;->mPower:F

    move/from16 v10, p9

    iput v10, v0, Landroid/hardware/input/InputSensorInfo;->mMinDelay:I

    move/from16 v11, p10

    iput v11, v0, Landroid/hardware/input/InputSensorInfo;->mFifoReservedEventCount:I

    move/from16 v12, p11

    iput v12, v0, Landroid/hardware/input/InputSensorInfo;->mFifoMaxEventCount:I

    move-object/from16 v13, p12

    iput-object v13, v0, Landroid/hardware/input/InputSensorInfo;->mStringType:Ljava/lang/String;

    const-class v14, Landroid/annotation/NonNull;

    iget-object v15, v0, Landroid/hardware/input/InputSensorInfo;->mStringType:Ljava/lang/String;

    invoke-static {v14, v4, v15}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    move-object/from16 v14, p13

    iput-object v14, v0, Landroid/hardware/input/InputSensorInfo;->mRequiredPermission:Ljava/lang/String;

    const-class v15, Landroid/annotation/NonNull;

    iget-object v1, v0, Landroid/hardware/input/InputSensorInfo;->mRequiredPermission:Ljava/lang/String;

    invoke-static {v15, v4, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    move/from16 v1, p14

    iput v1, v0, Landroid/hardware/input/InputSensorInfo;->mMaxDelay:I

    move/from16 v4, p15

    iput v4, v0, Landroid/hardware/input/InputSensorInfo;->mFlags:I

    move/from16 v15, p16

    iput v15, v0, Landroid/hardware/input/InputSensorInfo;->mId:I

    return-void
.end method

.method private blacklist __metadata()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getFifoMaxEventCount()I
    .locals 1

    iget v0, p0, Landroid/hardware/input/InputSensorInfo;->mFifoMaxEventCount:I

    return v0
.end method

.method public blacklist getFifoReservedEventCount()I
    .locals 1

    iget v0, p0, Landroid/hardware/input/InputSensorInfo;->mFifoReservedEventCount:I

    return v0
.end method

.method public blacklist getFlags()I
    .locals 1

    iget v0, p0, Landroid/hardware/input/InputSensorInfo;->mFlags:I

    return v0
.end method

.method public blacklist getHandle()I
    .locals 1

    iget v0, p0, Landroid/hardware/input/InputSensorInfo;->mHandle:I

    return v0
.end method

.method public blacklist getId()I
    .locals 1

    iget v0, p0, Landroid/hardware/input/InputSensorInfo;->mId:I

    return v0
.end method

.method public blacklist getMaxDelay()I
    .locals 1

    iget v0, p0, Landroid/hardware/input/InputSensorInfo;->mMaxDelay:I

    return v0
.end method

.method public blacklist getMaxRange()F
    .locals 1

    iget v0, p0, Landroid/hardware/input/InputSensorInfo;->mMaxRange:F

    return v0
.end method

.method public blacklist getMinDelay()I
    .locals 1

    iget v0, p0, Landroid/hardware/input/InputSensorInfo;->mMinDelay:I

    return v0
.end method

.method public blacklist getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/hardware/input/InputSensorInfo;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getPower()F
    .locals 1

    iget v0, p0, Landroid/hardware/input/InputSensorInfo;->mPower:F

    return v0
.end method

.method public blacklist getRequiredPermission()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/hardware/input/InputSensorInfo;->mRequiredPermission:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getResolution()F
    .locals 1

    iget v0, p0, Landroid/hardware/input/InputSensorInfo;->mResolution:F

    return v0
.end method

.method public blacklist getStringType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/hardware/input/InputSensorInfo;->mStringType:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getType()I
    .locals 1

    iget v0, p0, Landroid/hardware/input/InputSensorInfo;->mType:I

    return v0
.end method

.method public blacklist getVendor()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/hardware/input/InputSensorInfo;->mVendor:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getVersion()I
    .locals 1

    iget v0, p0, Landroid/hardware/input/InputSensorInfo;->mVersion:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InputSensorInfo { name = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/input/InputSensorInfo;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", vendor = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/input/InputSensorInfo;->mVendor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", version = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/input/InputSensorInfo;->mVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", handle = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/input/InputSensorInfo;->mHandle:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/input/InputSensorInfo;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", maxRange = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/input/InputSensorInfo;->mMaxRange:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", resolution = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/input/InputSensorInfo;->mResolution:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", power = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/input/InputSensorInfo;->mPower:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", minDelay = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/input/InputSensorInfo;->mMinDelay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fifoReservedEventCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/input/InputSensorInfo;->mFifoReservedEventCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fifoMaxEventCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/input/InputSensorInfo;->mFifoMaxEventCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", stringType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/input/InputSensorInfo;->mStringType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", requiredPermission = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/input/InputSensorInfo;->mRequiredPermission:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", maxDelay = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/input/InputSensorInfo;->mMaxDelay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", flags = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/input/InputSensorInfo;->mFlags:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/input/InputSensorInfo;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroid/hardware/input/InputSensorInfo;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/hardware/input/InputSensorInfo;->mVendor:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/hardware/input/InputSensorInfo;->mVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/hardware/input/InputSensorInfo;->mHandle:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/hardware/input/InputSensorInfo;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/hardware/input/InputSensorInfo;->mMaxRange:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Landroid/hardware/input/InputSensorInfo;->mResolution:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Landroid/hardware/input/InputSensorInfo;->mPower:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Landroid/hardware/input/InputSensorInfo;->mMinDelay:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/hardware/input/InputSensorInfo;->mFifoReservedEventCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/hardware/input/InputSensorInfo;->mFifoMaxEventCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/hardware/input/InputSensorInfo;->mStringType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/hardware/input/InputSensorInfo;->mRequiredPermission:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/hardware/input/InputSensorInfo;->mMaxDelay:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/hardware/input/InputSensorInfo;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/hardware/input/InputSensorInfo;->mId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
