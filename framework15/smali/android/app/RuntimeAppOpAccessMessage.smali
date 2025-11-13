.class public final Landroid/app/RuntimeAppOpAccessMessage;
.super Ljava/lang/Object;
.source "RuntimeAppOpAccessMessage.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/RuntimeAppOpAccessMessage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mAttributionTag:Ljava/lang/String;

.field private final blacklist mMessage:Ljava/lang/String;

.field private final blacklist mOpCode:I

.field private final blacklist mPackageName:Ljava/lang/String;

.field private final blacklist mSamplingStrategy:I

.field private final blacklist mUid:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/app/RuntimeAppOpAccessMessage$1;

    invoke-direct {v0}, Landroid/app/RuntimeAppOpAccessMessage$1;-><init>()V

    sput-object v0, Landroid/app/RuntimeAppOpAccessMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 12

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move v1, p1

    iput v1, v0, Landroid/app/RuntimeAppOpAccessMessage;->mUid:I

    const-class v2, Landroid/annotation/IntRange;

    iget v4, v0, Landroid/app/RuntimeAppOpAccessMessage;->mUid:I

    const-string v5, "from"

    const-wide/16 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v2 .. v7}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/IntRange;ILjava/lang/String;J)V

    move v2, p2

    iput v2, v0, Landroid/app/RuntimeAppOpAccessMessage;->mOpCode:I

    const-class v3, Landroid/annotation/IntRange;

    iget v5, v0, Landroid/app/RuntimeAppOpAccessMessage;->mOpCode:I

    const-string/jumbo v9, "to"

    const-wide/16 v10, 0x94

    const/4 v4, 0x0

    const-string v6, "from"

    const-wide/16 v7, 0x0

    invoke-static/range {v3 .. v11}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/IntRange;ILjava/lang/String;JLjava/lang/String;J)V

    move-object v3, p3

    iput-object v3, v0, Landroid/app/RuntimeAppOpAccessMessage;->mPackageName:Ljava/lang/String;

    const-class v4, Landroid/annotation/NonNull;

    iget-object v5, v0, Landroid/app/RuntimeAppOpAccessMessage;->mPackageName:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v4, v6, v5}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    move-object/from16 v4, p4

    iput-object v4, v0, Landroid/app/RuntimeAppOpAccessMessage;->mAttributionTag:Ljava/lang/String;

    move-object/from16 v5, p5

    iput-object v5, v0, Landroid/app/RuntimeAppOpAccessMessage;->mMessage:Ljava/lang/String;

    const-class v7, Landroid/annotation/NonNull;

    iget-object v8, v0, Landroid/app/RuntimeAppOpAccessMessage;->mMessage:Ljava/lang/String;

    invoke-static {v7, v6, v8}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    move/from16 v7, p6

    iput v7, v0, Landroid/app/RuntimeAppOpAccessMessage;->mSamplingStrategy:I

    const-class v8, Landroid/app/AppOpsManager$SamplingStrategy;

    iget v9, v0, Landroid/app/RuntimeAppOpAccessMessage;->mSamplingStrategy:I

    invoke-static {v8, v6, v9}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 24

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    and-int/lit8 v5, v1, 0x8

    const/4 v6, 0x0

    if-nez v5, :cond_0

    move-object v5, v6

    goto :goto_0

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    iput v2, v0, Landroid/app/RuntimeAppOpAccessMessage;->mUid:I

    const-class v9, Landroid/annotation/IntRange;

    iget v11, v0, Landroid/app/RuntimeAppOpAccessMessage;->mUid:I

    const-string v12, "from"

    const-wide/16 v13, 0x0

    const/4 v10, 0x0

    invoke-static/range {v9 .. v14}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/IntRange;ILjava/lang/String;J)V

    iput v3, v0, Landroid/app/RuntimeAppOpAccessMessage;->mOpCode:I

    const-class v15, Landroid/annotation/IntRange;

    iget v9, v0, Landroid/app/RuntimeAppOpAccessMessage;->mOpCode:I

    const-string/jumbo v21, "to"

    const-wide/16 v22, 0x94

    const/16 v16, 0x0

    const-string v18, "from"

    const-wide/16 v19, 0x0

    move/from16 v17, v9

    invoke-static/range {v15 .. v23}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/IntRange;ILjava/lang/String;JLjava/lang/String;J)V

    iput-object v4, v0, Landroid/app/RuntimeAppOpAccessMessage;->mPackageName:Ljava/lang/String;

    const-class v9, Landroid/annotation/NonNull;

    iget-object v10, v0, Landroid/app/RuntimeAppOpAccessMessage;->mPackageName:Ljava/lang/String;

    invoke-static {v9, v6, v10}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput-object v5, v0, Landroid/app/RuntimeAppOpAccessMessage;->mAttributionTag:Ljava/lang/String;

    iput-object v7, v0, Landroid/app/RuntimeAppOpAccessMessage;->mMessage:Ljava/lang/String;

    const-class v9, Landroid/annotation/NonNull;

    iget-object v10, v0, Landroid/app/RuntimeAppOpAccessMessage;->mMessage:Ljava/lang/String;

    invoke-static {v9, v6, v10}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput v8, v0, Landroid/app/RuntimeAppOpAccessMessage;->mSamplingStrategy:I

    const-class v9, Landroid/app/AppOpsManager$SamplingStrategy;

    iget v10, v0, Landroid/app/RuntimeAppOpAccessMessage;->mSamplingStrategy:I

    invoke-static {v9, v6, v10}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

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

.method public whitelist getAttributionTag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/app/RuntimeAppOpAccessMessage;->mAttributionTag:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/app/RuntimeAppOpAccessMessage;->mMessage:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getOp()Ljava/lang/String;
    .locals 1

    iget v0, p0, Landroid/app/RuntimeAppOpAccessMessage;->mOpCode:I

    invoke-static {v0}, Landroid/app/AppOpsManager;->opToPublicName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/app/RuntimeAppOpAccessMessage;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getSamplingStrategy()I
    .locals 1

    iget v0, p0, Landroid/app/RuntimeAppOpAccessMessage;->mSamplingStrategy:I

    return v0
.end method

.method public whitelist getUid()I
    .locals 1

    iget v0, p0, Landroid/app/RuntimeAppOpAccessMessage;->mUid:I

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/app/RuntimeAppOpAccessMessage;->mAttributionTag:Ljava/lang/String;

    if-eqz v1, :cond_0

    or-int/lit8 v1, v0, 0x8

    int-to-byte v0, v1

    :cond_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget v1, p0, Landroid/app/RuntimeAppOpAccessMessage;->mUid:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Landroid/app/RuntimeAppOpAccessMessage;->mOpCode:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Landroid/app/RuntimeAppOpAccessMessage;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/app/RuntimeAppOpAccessMessage;->mAttributionTag:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/app/RuntimeAppOpAccessMessage;->mAttributionTag:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Landroid/app/RuntimeAppOpAccessMessage;->mMessage:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v1, p0, Landroid/app/RuntimeAppOpAccessMessage;->mSamplingStrategy:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
