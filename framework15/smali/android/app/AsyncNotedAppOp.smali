.class public final Landroid/app/AsyncNotedAppOp;
.super Ljava/lang/Object;
.source "AsyncNotedAppOp.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/AsyncNotedAppOp;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mAttributionTag:Ljava/lang/String;

.field private final blacklist mMessage:Ljava/lang/String;

.field private final blacklist mNotingUid:I

.field private final blacklist mOpCode:I

.field private final blacklist mTime:J


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/app/AsyncNotedAppOp$1;

    invoke-direct {v0}, Landroid/app/AsyncNotedAppOp$1;-><init>()V

    sput-object v0, Landroid/app/AsyncNotedAppOp;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(IILjava/lang/String;Ljava/lang/String;J)V
    .locals 11

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move v1, p1

    iput v1, v0, Landroid/app/AsyncNotedAppOp;->mOpCode:I

    const-class v2, Landroid/annotation/IntRange;

    iget v4, v0, Landroid/app/AsyncNotedAppOp;->mOpCode:I

    const-string v5, "from"

    const-wide/16 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v2 .. v7}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/IntRange;ILjava/lang/String;J)V

    move v2, p2

    iput v2, v0, Landroid/app/AsyncNotedAppOp;->mNotingUid:I

    const-class v3, Landroid/annotation/IntRange;

    iget v5, v0, Landroid/app/AsyncNotedAppOp;->mNotingUid:I

    const-string v6, "from"

    const-wide/16 v7, 0x0

    const/4 v4, 0x0

    invoke-static/range {v3 .. v8}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/IntRange;ILjava/lang/String;J)V

    move-object v3, p3

    iput-object v3, v0, Landroid/app/AsyncNotedAppOp;->mAttributionTag:Ljava/lang/String;

    move-object v4, p4

    iput-object v4, v0, Landroid/app/AsyncNotedAppOp;->mMessage:Ljava/lang/String;

    const-class v5, Landroid/annotation/NonNull;

    iget-object v6, v0, Landroid/app/AsyncNotedAppOp;->mMessage:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {v5, v7, v6}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    move-wide/from16 v5, p5

    iput-wide v5, v0, Landroid/app/AsyncNotedAppOp;->mTime:J

    const-class v8, Landroid/annotation/CurrentTimeMillisLong;

    iget-wide v9, v0, Landroid/app/AsyncNotedAppOp;->mTime:J

    invoke-static {v8, v7, v9, v10}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;J)V

    invoke-direct {p0}, Landroid/app/AsyncNotedAppOp;->onConstructed()V

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 21

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    and-int/lit8 v4, v1, 0x4

    const/4 v5, 0x0

    if-nez v4, :cond_0

    move-object v4, v5

    goto :goto_0

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    iput v2, v0, Landroid/app/AsyncNotedAppOp;->mOpCode:I

    const-class v9, Landroid/annotation/IntRange;

    iget v11, v0, Landroid/app/AsyncNotedAppOp;->mOpCode:I

    const-string v12, "from"

    const-wide/16 v13, 0x0

    const/4 v10, 0x0

    invoke-static/range {v9 .. v14}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/IntRange;ILjava/lang/String;J)V

    iput v3, v0, Landroid/app/AsyncNotedAppOp;->mNotingUid:I

    const-class v15, Landroid/annotation/IntRange;

    iget v9, v0, Landroid/app/AsyncNotedAppOp;->mNotingUid:I

    const-string v18, "from"

    const-wide/16 v19, 0x0

    const/16 v16, 0x0

    move/from16 v17, v9

    invoke-static/range {v15 .. v20}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/IntRange;ILjava/lang/String;J)V

    iput-object v4, v0, Landroid/app/AsyncNotedAppOp;->mAttributionTag:Ljava/lang/String;

    iput-object v6, v0, Landroid/app/AsyncNotedAppOp;->mMessage:Ljava/lang/String;

    const-class v9, Landroid/annotation/NonNull;

    iget-object v10, v0, Landroid/app/AsyncNotedAppOp;->mMessage:Ljava/lang/String;

    invoke-static {v9, v5, v10}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput-wide v7, v0, Landroid/app/AsyncNotedAppOp;->mTime:J

    const-class v9, Landroid/annotation/CurrentTimeMillisLong;

    iget-wide v10, v0, Landroid/app/AsyncNotedAppOp;->mTime:J

    invoke-static {v9, v5, v10, v11}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;J)V

    invoke-direct/range {p0 .. p0}, Landroid/app/AsyncNotedAppOp;->onConstructed()V

    return-void
.end method

.method private blacklist __metadata()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method private blacklist onConstructed()V
    .locals 4

    iget v0, p0, Landroid/app/AsyncNotedAppOp;->mOpCode:I

    const/16 v1, 0x94

    const-string/jumbo v2, "opCode"

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    return-void
.end method

.method private blacklist opCodeToString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Landroid/app/AsyncNotedAppOp;->getOp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/app/AsyncNotedAppOp;

    iget v3, p0, Landroid/app/AsyncNotedAppOp;->mOpCode:I

    iget v4, v2, Landroid/app/AsyncNotedAppOp;->mOpCode:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/app/AsyncNotedAppOp;->mNotingUid:I

    iget v4, v2, Landroid/app/AsyncNotedAppOp;->mNotingUid:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/app/AsyncNotedAppOp;->mAttributionTag:Ljava/lang/String;

    iget-object v4, v2, Landroid/app/AsyncNotedAppOp;->mAttributionTag:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/app/AsyncNotedAppOp;->mMessage:Ljava/lang/String;

    iget-object v4, v2, Landroid/app/AsyncNotedAppOp;->mMessage:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-wide v3, p0, Landroid/app/AsyncNotedAppOp;->mTime:J

    iget-wide v5, v2, Landroid/app/AsyncNotedAppOp;->mTime:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public whitelist getAttributionTag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/app/AsyncNotedAppOp;->mAttributionTag:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/app/AsyncNotedAppOp;->mMessage:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getNotingUid()I
    .locals 1

    iget v0, p0, Landroid/app/AsyncNotedAppOp;->mNotingUid:I

    return v0
.end method

.method public whitelist getOp()Ljava/lang/String;
    .locals 1

    iget v0, p0, Landroid/app/AsyncNotedAppOp;->mOpCode:I

    invoke-static {v0}, Landroid/app/AppOpsManager;->opToPublicName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getTime()J
    .locals 2

    iget-wide v0, p0, Landroid/app/AsyncNotedAppOp;->mTime:J

    return-wide v0
.end method

.method public whitelist test-api hashCode()I
    .locals 4

    const/4 v0, 0x1

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/app/AsyncNotedAppOp;->mOpCode:I

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/app/AsyncNotedAppOp;->mNotingUid:I

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/app/AsyncNotedAppOp;->mAttributionTag:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/app/AsyncNotedAppOp;->mMessage:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Landroid/app/AsyncNotedAppOp;->mTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AsyncNotedAppOp { opCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Landroid/app/AsyncNotedAppOp;->opCodeToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", notingUid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/AsyncNotedAppOp;->mNotingUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", attributionTag = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/AsyncNotedAppOp;->mAttributionTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", message = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/AsyncNotedAppOp;->mMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", time = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/app/AsyncNotedAppOp;->mTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/app/AsyncNotedAppOp;->mAttributionTag:Ljava/lang/String;

    if-eqz v1, :cond_0

    or-int/lit8 v1, v0, 0x4

    int-to-byte v0, v1

    :cond_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget v1, p0, Landroid/app/AsyncNotedAppOp;->mOpCode:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Landroid/app/AsyncNotedAppOp;->mNotingUid:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Landroid/app/AsyncNotedAppOp;->mAttributionTag:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/app/AsyncNotedAppOp;->mAttributionTag:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Landroid/app/AsyncNotedAppOp;->mMessage:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v1, p0, Landroid/app/AsyncNotedAppOp;->mTime:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
