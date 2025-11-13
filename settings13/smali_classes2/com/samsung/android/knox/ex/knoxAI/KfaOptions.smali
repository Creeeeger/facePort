.class public Lcom/samsung/android/knox/ex/knoxAI/KfaOptions;
.super Ljava/lang/Object;
.source "KfaOptions.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/ex/knoxAI/KfaOptions$InputShapeVector;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/knox/ex/knoxAI/KfaOptions;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field compUnit:I

.field dataShared:Landroid/os/SharedMemory;

.field execType:I

.field fd:Ljava/io/FileDescriptor;

.field fd_StartOffSet:J

.field inputNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mType:I

.field modelInputType:I

.field model_file:Ljava/lang/String;

.field model_package_buffer_len:I

.field model_package_buffer_ptr:[B

.field outputNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field weights_file:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 373
    new-instance v0, Lcom/samsung/android/knox/ex/knoxAI/KfaOptions$1;

    invoke-direct {v0}, Lcom/samsung/android/knox/ex/knoxAI/KfaOptions$1;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/ex/knoxAI/KfaOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 368
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 369
    invoke-direct {p0, p1}, Lcom/samsung/android/knox/ex/knoxAI/KfaOptions;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    .line 425
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/ex/knoxAI/KfaOptions;->execType:I

    .line 426
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/ex/knoxAI/KfaOptions;->compUnit:I

    .line 427
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/ex/knoxAI/KfaOptions;->mType:I

    .line 428
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 429
    new-array v0, v0, [Ljava/lang/String;

    .line 430
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V

    .line 432
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/knox/ex/knoxAI/KfaOptions;->inputNames:Ljava/util/ArrayList;

    .line 433
    invoke-static {v1, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 434
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 435
    new-array v0, v0, [Ljava/lang/String;

    .line 436
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V

    .line 437
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/knox/ex/knoxAI/KfaOptions;->outputNames:Ljava/util/ArrayList;

    .line 438
    invoke-static {v1, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 439
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/ex/knoxAI/KfaOptions;->modelInputType:I

    .line 440
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/ex/knoxAI/KfaOptions;->model_file:Ljava/lang/String;

    .line 441
    iget v0, p0, Lcom/samsung/android/knox/ex/knoxAI/KfaOptions;->modelInputType:I

    if-nez v0, :cond_0

    .line 442
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/knox/ex/knoxAI/KfaOptions;->weights_file:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 444
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/knox/ex/knoxAI/KfaOptions;->fd_StartOffSet:J

    .line 445
    invoke-virtual {p1}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    .line 446
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/knox/ex/knoxAI/KfaOptions;->fd:Ljava/io/FileDescriptor;

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 448
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/ex/knoxAI/KfaOptions;->model_package_buffer_len:I

    if-lez v0, :cond_3

    .line 450
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/samsung/android/knox/ex/knoxAI/KfaOptions;->model_package_buffer_ptr:[B

    .line 451
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 454
    const-class v0, Landroid/os/SharedMemory;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/SharedMemory;

    iput-object p1, p0, Lcom/samsung/android/knox/ex/knoxAI/KfaOptions;->dataShared:Landroid/os/SharedMemory;

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 467
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mdl["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/knox/ex/knoxAI/KfaOptions;->model_file:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "], fl ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/knox/ex/knoxAI/KfaOptions;->weights_file:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 392
    iget p2, p0, Lcom/samsung/android/knox/ex/knoxAI/KfaOptions;->execType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 393
    iget p2, p0, Lcom/samsung/android/knox/ex/knoxAI/KfaOptions;->compUnit:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 394
    iget p2, p0, Lcom/samsung/android/knox/ex/knoxAI/KfaOptions;->mType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 395
    iget-object p2, p0, Lcom/samsung/android/knox/ex/knoxAI/KfaOptions;->inputNames:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 396
    iget-object p2, p0, Lcom/samsung/android/knox/ex/knoxAI/KfaOptions;->inputNames:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    .line 397
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 398
    iget-object p2, p0, Lcom/samsung/android/knox/ex/knoxAI/KfaOptions;->outputNames:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 399
    iget-object p2, p0, Lcom/samsung/android/knox/ex/knoxAI/KfaOptions;->outputNames:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    .line 400
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 401
    iget p2, p0, Lcom/samsung/android/knox/ex/knoxAI/KfaOptions;->modelInputType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 402
    iget-object p2, p0, Lcom/samsung/android/knox/ex/knoxAI/KfaOptions;->model_file:Ljava/lang/String;

    if-nez p2, :cond_0

    const-string p2, ""

    .line 403
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 405
    :cond_0
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 407
    :goto_0
    iget p2, p0, Lcom/samsung/android/knox/ex/knoxAI/KfaOptions;->modelInputType:I

    if-nez p2, :cond_1

    .line 408
    iget-object p0, p0, Lcom/samsung/android/knox/ex/knoxAI/KfaOptions;->weights_file:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    .line 410
    iget-wide v0, p0, Lcom/samsung/android/knox/ex/knoxAI/KfaOptions;->fd_StartOffSet:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 411
    iget-object p0, p0, Lcom/samsung/android/knox/ex/knoxAI/KfaOptions;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeFileDescriptor(Ljava/io/FileDescriptor;)V

    goto :goto_1

    :cond_2
    const/4 v0, 0x2

    if-ne p2, v0, :cond_3

    .line 413
    iget p2, p0, Lcom/samsung/android/knox/ex/knoxAI/KfaOptions;->model_package_buffer_len:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 414
    iget p2, p0, Lcom/samsung/android/knox/ex/knoxAI/KfaOptions;->model_package_buffer_len:I

    if-lez p2, :cond_4

    .line 415
    iget-object p0, p0, Lcom/samsung/android/knox/ex/knoxAI/KfaOptions;->model_package_buffer_ptr:[B

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_1

    :cond_3
    const/4 v0, 0x3

    if-ne p2, v0, :cond_4

    .line 418
    iget-object p0, p0, Lcom/samsung/android/knox/ex/knoxAI/KfaOptions;->dataShared:Landroid/os/SharedMemory;

    const/4 p2, 0x0

    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    :cond_4
    :goto_1
    return-void
.end method
