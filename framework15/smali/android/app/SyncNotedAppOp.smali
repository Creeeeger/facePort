.class public final Landroid/app/SyncNotedAppOp;
.super Ljava/lang/Object;
.source "SyncNotedAppOp.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/SyncNotedAppOp;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mAttributionTag:Ljava/lang/String;

.field private final blacklist mOpCode:I

.field private final blacklist mOpMode:I

.field private final blacklist mPackageName:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/app/SyncNotedAppOp$1;

    invoke-direct {v0}, Landroid/app/SyncNotedAppOp$1;-><init>()V

    sput-object v0, Landroid/app/SyncNotedAppOp;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(IILjava/lang/String;Ljava/lang/String;)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Landroid/app/SyncNotedAppOp;->mOpCode:I

    const-class v0, Landroid/annotation/IntRange;

    iget v2, p0, Landroid/app/SyncNotedAppOp;->mOpCode:I

    const-string/jumbo v6, "to"

    const-wide/16 v7, 0x94

    const/4 v1, 0x0

    const-string v3, "from"

    const-wide/16 v4, 0x0

    invoke-static/range {v0 .. v8}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/IntRange;ILjava/lang/String;JLjava/lang/String;J)V

    iput-object p3, p0, Landroid/app/SyncNotedAppOp;->mAttributionTag:Ljava/lang/String;

    iput p1, p0, Landroid/app/SyncNotedAppOp;->mOpMode:I

    iput-object p4, p0, Landroid/app/SyncNotedAppOp;->mPackageName:Ljava/lang/String;

    return-void
.end method

.method public constructor whitelist <init>(ILjava/lang/String;)V
    .locals 2

    nop

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v1, p1, p2, v0}, Landroid/app/SyncNotedAppOp;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor blacklist <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2, p3}, Landroid/app/SyncNotedAppOp;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 14

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x0

    if-nez v3, :cond_0

    move-object v3, v4

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    and-int/lit8 v5, v0, 0x8

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    :goto_1
    iput v1, p0, Landroid/app/SyncNotedAppOp;->mOpMode:I

    iput v2, p0, Landroid/app/SyncNotedAppOp;->mOpCode:I

    const-class v5, Landroid/annotation/IntRange;

    iget v7, p0, Landroid/app/SyncNotedAppOp;->mOpCode:I

    const-string/jumbo v11, "to"

    const-wide/16 v12, 0x94

    const/4 v6, 0x0

    const-string v8, "from"

    const-wide/16 v9, 0x0

    invoke-static/range {v5 .. v13}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/IntRange;ILjava/lang/String;JLjava/lang/String;J)V

    iput-object v3, p0, Landroid/app/SyncNotedAppOp;->mAttributionTag:Ljava/lang/String;

    iput-object v4, p0, Landroid/app/SyncNotedAppOp;->mPackageName:Ljava/lang/String;

    return-void
.end method

.method private blacklist __metadata()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method private blacklist opCodeToString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Landroid/app/SyncNotedAppOp;->getOp()Ljava/lang/String;

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
    .locals 5

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

    check-cast v2, Landroid/app/SyncNotedAppOp;

    iget v3, p0, Landroid/app/SyncNotedAppOp;->mOpMode:I

    iget v4, v2, Landroid/app/SyncNotedAppOp;->mOpMode:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/app/SyncNotedAppOp;->mOpCode:I

    iget v4, v2, Landroid/app/SyncNotedAppOp;->mOpCode:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/app/SyncNotedAppOp;->mAttributionTag:Ljava/lang/String;

    iget-object v4, v2, Landroid/app/SyncNotedAppOp;->mAttributionTag:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/app/SyncNotedAppOp;->mPackageName:Ljava/lang/String;

    iget-object v4, v2, Landroid/app/SyncNotedAppOp;->mPackageName:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

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

    iget-object v0, p0, Landroid/app/SyncNotedAppOp;->mAttributionTag:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getOp()Ljava/lang/String;
    .locals 1

    iget v0, p0, Landroid/app/SyncNotedAppOp;->mOpCode:I

    invoke-static {v0}, Landroid/app/AppOpsManager;->opToPublicName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getOpMode()I
    .locals 1

    iget v0, p0, Landroid/app/SyncNotedAppOp;->mOpMode:I

    return v0
.end method

.method public blacklist getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/app/SyncNotedAppOp;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    const/4 v0, 0x1

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/app/SyncNotedAppOp;->mOpMode:I

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/app/SyncNotedAppOp;->mOpCode:I

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/app/SyncNotedAppOp;->mAttributionTag:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/app/SyncNotedAppOp;->mPackageName:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SyncNotedAppOp { opMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/SyncNotedAppOp;->mOpMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", opCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Landroid/app/SyncNotedAppOp;->opCodeToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", attributionTag = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/SyncNotedAppOp;->mAttributionTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", packageName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/SyncNotedAppOp;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/app/SyncNotedAppOp;->mAttributionTag:Ljava/lang/String;

    if-eqz v1, :cond_0

    or-int/lit8 v1, v0, 0x4

    int-to-byte v0, v1

    :cond_0
    iget-object v1, p0, Landroid/app/SyncNotedAppOp;->mPackageName:Ljava/lang/String;

    if-eqz v1, :cond_1

    or-int/lit8 v1, v0, 0x8

    int-to-byte v0, v1

    :cond_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget v1, p0, Landroid/app/SyncNotedAppOp;->mOpMode:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Landroid/app/SyncNotedAppOp;->mOpCode:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Landroid/app/SyncNotedAppOp;->mAttributionTag:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/app/SyncNotedAppOp;->mAttributionTag:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :cond_2
    iget-object v1, p0, Landroid/app/SyncNotedAppOp;->mPackageName:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/app/SyncNotedAppOp;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :cond_3
    return-void
.end method
