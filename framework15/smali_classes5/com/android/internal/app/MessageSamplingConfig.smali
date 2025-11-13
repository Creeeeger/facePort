.class public final Lcom/android/internal/app/MessageSamplingConfig;
.super Ljava/lang/Object;
.source "MessageSamplingConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/internal/app/MessageSamplingConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mAcceptableLeftDistance:I

.field private final blacklist mExpirationTimeSinceBootMillis:J

.field private final blacklist mSampledOpCode:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/internal/app/MessageSamplingConfig$1;

    invoke-direct {v0}, Lcom/android/internal/app/MessageSamplingConfig$1;-><init>()V

    sput-object v0, Lcom/android/internal/app/MessageSamplingConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(IIJ)V
    .locals 12

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move v1, p1

    iput v1, v0, Lcom/android/internal/app/MessageSamplingConfig;->mSampledOpCode:I

    const-class v2, Landroid/annotation/IntRange;

    iget v4, v0, Lcom/android/internal/app/MessageSamplingConfig;->mSampledOpCode:I

    const-string/jumbo v8, "to"

    const-wide/16 v9, 0x94

    const/4 v3, 0x0

    const-string/jumbo v5, "from"

    const-wide/16 v6, -0x1

    invoke-static/range {v2 .. v10}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/IntRange;ILjava/lang/String;JLjava/lang/String;J)V

    move v2, p2

    iput v2, v0, Lcom/android/internal/app/MessageSamplingConfig;->mAcceptableLeftDistance:I

    const-class v3, Landroid/annotation/IntRange;

    iget v5, v0, Lcom/android/internal/app/MessageSamplingConfig;->mAcceptableLeftDistance:I

    const-string/jumbo v9, "to"

    const-wide/16 v10, 0x94

    const/4 v4, 0x0

    const-string/jumbo v6, "from"

    const-wide/16 v7, 0x0

    invoke-static/range {v3 .. v11}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/IntRange;ILjava/lang/String;JLjava/lang/String;J)V

    move-wide v3, p3

    iput-wide v3, v0, Lcom/android/internal/app/MessageSamplingConfig;->mExpirationTimeSinceBootMillis:J

    const-class v5, Landroid/annotation/IntRange;

    iget-wide v7, v0, Lcom/android/internal/app/MessageSamplingConfig;->mExpirationTimeSinceBootMillis:J

    const-string/jumbo v9, "from"

    const-wide/16 v10, 0x0

    const/4 v6, 0x0

    invoke-static/range {v5 .. v11}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/IntRange;JLjava/lang/String;J)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 23

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput v1, v0, Lcom/android/internal/app/MessageSamplingConfig;->mSampledOpCode:I

    const-class v5, Landroid/annotation/IntRange;

    iget v7, v0, Lcom/android/internal/app/MessageSamplingConfig;->mSampledOpCode:I

    const-string/jumbo v11, "to"

    const-wide/16 v12, 0x94

    const/4 v6, 0x0

    const-string/jumbo v8, "from"

    const-wide/16 v9, -0x1

    invoke-static/range {v5 .. v13}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/IntRange;ILjava/lang/String;JLjava/lang/String;J)V

    iput v2, v0, Lcom/android/internal/app/MessageSamplingConfig;->mAcceptableLeftDistance:I

    const-class v14, Landroid/annotation/IntRange;

    iget v5, v0, Lcom/android/internal/app/MessageSamplingConfig;->mAcceptableLeftDistance:I

    const-string/jumbo v20, "to"

    const-wide/16 v21, 0x94

    const/4 v15, 0x0

    const-string/jumbo v17, "from"

    const-wide/16 v18, 0x0

    move/from16 v16, v5

    invoke-static/range {v14 .. v22}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/IntRange;ILjava/lang/String;JLjava/lang/String;J)V

    iput-wide v3, v0, Lcom/android/internal/app/MessageSamplingConfig;->mExpirationTimeSinceBootMillis:J

    const-class v6, Landroid/annotation/IntRange;

    iget-wide v8, v0, Lcom/android/internal/app/MessageSamplingConfig;->mExpirationTimeSinceBootMillis:J

    const-string/jumbo v10, "from"

    const-wide/16 v11, 0x0

    const/4 v7, 0x0

    invoke-static/range {v6 .. v12}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/IntRange;JLjava/lang/String;J)V

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

.method public blacklist getAcceptableLeftDistance()I
    .locals 1

    iget v0, p0, Lcom/android/internal/app/MessageSamplingConfig;->mAcceptableLeftDistance:I

    return v0
.end method

.method public blacklist getExpirationTimeSinceBootMillis()J
    .locals 2

    iget-wide v0, p0, Lcom/android/internal/app/MessageSamplingConfig;->mExpirationTimeSinceBootMillis:J

    return-wide v0
.end method

.method public blacklist getSampledOpCode()I
    .locals 1

    iget v0, p0, Lcom/android/internal/app/MessageSamplingConfig;->mSampledOpCode:I

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget v0, p0, Lcom/android/internal/app/MessageSamplingConfig;->mSampledOpCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/internal/app/MessageSamplingConfig;->mAcceptableLeftDistance:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lcom/android/internal/app/MessageSamplingConfig;->mExpirationTimeSinceBootMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
