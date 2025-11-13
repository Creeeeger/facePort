.class public final Landroid/hardware/radio/V1_6/RegStateResult;
.super Ljava/lang/Object;
.source "RegStateResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/radio/V1_6/RegStateResult$AccessTechnologySpecificInfo;
    }
.end annotation


# instance fields
.field public blacklist accessTechnologySpecificInfo:Landroid/hardware/radio/V1_6/RegStateResult$AccessTechnologySpecificInfo;

.field public blacklist cellIdentity:Landroid/hardware/radio/V1_5/CellIdentity;

.field public blacklist rat:I

.field public blacklist reasonForDenial:I

.field public blacklist regState:I

.field public blacklist registeredPlmn:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/radio/V1_6/RegStateResult;->regState:I

    iput v0, p0, Landroid/hardware/radio/V1_6/RegStateResult;->rat:I

    iput v0, p0, Landroid/hardware/radio/V1_6/RegStateResult;->reasonForDenial:I

    new-instance v0, Landroid/hardware/radio/V1_5/CellIdentity;

    invoke-direct {v0}, Landroid/hardware/radio/V1_5/CellIdentity;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_6/RegStateResult;->cellIdentity:Landroid/hardware/radio/V1_5/CellIdentity;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_6/RegStateResult;->registeredPlmn:Ljava/lang/String;

    new-instance v0, Landroid/hardware/radio/V1_6/RegStateResult$AccessTechnologySpecificInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_6/RegStateResult$AccessTechnologySpecificInfo;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_6/RegStateResult;->accessTechnologySpecificInfo:Landroid/hardware/radio/V1_6/RegStateResult$AccessTechnologySpecificInfo;

    return-void
.end method

.method public static final blacklist readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/HwParcel;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_6/RegStateResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    mul-int/lit16 v3, v2, 0xe0

    int-to-long v5, v3

    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v3

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    new-instance v5, Landroid/hardware/radio/V1_6/RegStateResult;

    invoke-direct {v5}, Landroid/hardware/radio/V1_6/RegStateResult;-><init>()V

    mul-int/lit16 v6, v4, 0xe0

    int-to-long v6, v6

    invoke-virtual {v5, p0, v3, v6, v7}, Landroid/hardware/radio/V1_6/RegStateResult;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static final blacklist writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/HwParcel;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_6/RegStateResult;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit16 v3, v1, 0xe0

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/radio/V1_6/RegStateResult;

    mul-int/lit16 v5, v3, 0xe0

    int-to-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Landroid/hardware/radio/V1_6/RegStateResult;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    return-void
.end method


# virtual methods
.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/radio/V1_6/RegStateResult;

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    move-object v2, p1

    check-cast v2, Landroid/hardware/radio/V1_6/RegStateResult;

    iget v3, p0, Landroid/hardware/radio/V1_6/RegStateResult;->regState:I

    iget v4, v2, Landroid/hardware/radio/V1_6/RegStateResult;->regState:I

    if-eq v3, v4, :cond_3

    return v1

    :cond_3
    iget v3, p0, Landroid/hardware/radio/V1_6/RegStateResult;->rat:I

    iget v4, v2, Landroid/hardware/radio/V1_6/RegStateResult;->rat:I

    if-eq v3, v4, :cond_4

    return v1

    :cond_4
    iget v3, p0, Landroid/hardware/radio/V1_6/RegStateResult;->reasonForDenial:I

    iget v4, v2, Landroid/hardware/radio/V1_6/RegStateResult;->reasonForDenial:I

    if-eq v3, v4, :cond_5

    return v1

    :cond_5
    iget-object v3, p0, Landroid/hardware/radio/V1_6/RegStateResult;->cellIdentity:Landroid/hardware/radio/V1_5/CellIdentity;

    iget-object v4, v2, Landroid/hardware/radio/V1_6/RegStateResult;->cellIdentity:Landroid/hardware/radio/V1_5/CellIdentity;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    return v1

    :cond_6
    iget-object v3, p0, Landroid/hardware/radio/V1_6/RegStateResult;->registeredPlmn:Ljava/lang/String;

    iget-object v4, v2, Landroid/hardware/radio/V1_6/RegStateResult;->registeredPlmn:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    return v1

    :cond_7
    iget-object v3, p0, Landroid/hardware/radio/V1_6/RegStateResult;->accessTechnologySpecificInfo:Landroid/hardware/radio/V1_6/RegStateResult$AccessTechnologySpecificInfo;

    iget-object v4, v2, Landroid/hardware/radio/V1_6/RegStateResult;->accessTechnologySpecificInfo:Landroid/hardware/radio/V1_6/RegStateResult$AccessTechnologySpecificInfo;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    return v1

    :cond_8
    return v0
.end method

.method public final whitelist test-api hashCode()I
    .locals 7

    iget v0, p0, Landroid/hardware/radio/V1_6/RegStateResult;->regState:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v0, p0, Landroid/hardware/radio/V1_6/RegStateResult;->rat:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v0, p0, Landroid/hardware/radio/V1_6/RegStateResult;->reasonForDenial:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v0, p0, Landroid/hardware/radio/V1_6/RegStateResult;->cellIdentity:Landroid/hardware/radio/V1_5/CellIdentity;

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v0, p0, Landroid/hardware/radio/V1_6/RegStateResult;->registeredPlmn:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v0, p0, Landroid/hardware/radio/V1_6/RegStateResult;->accessTechnologySpecificInfo:Landroid/hardware/radio/V1_6/RegStateResult$AccessTechnologySpecificInfo;

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final blacklist readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .locals 14

    move-object v0, p0

    move-object v9, p1

    move-object/from16 v10, p2

    const-wide/16 v1, 0x0

    add-long v3, p3, v1

    invoke-virtual {v10, v3, v4}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v3

    iput v3, v0, Landroid/hardware/radio/V1_6/RegStateResult;->regState:I

    const-wide/16 v3, 0x4

    add-long v3, p3, v3

    invoke-virtual {v10, v3, v4}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v3

    iput v3, v0, Landroid/hardware/radio/V1_6/RegStateResult;->rat:I

    const-wide/16 v3, 0x8

    add-long v3, p3, v3

    invoke-virtual {v10, v3, v4}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v3

    iput v3, v0, Landroid/hardware/radio/V1_6/RegStateResult;->reasonForDenial:I

    iget-object v3, v0, Landroid/hardware/radio/V1_6/RegStateResult;->cellIdentity:Landroid/hardware/radio/V1_5/CellIdentity;

    const-wide/16 v4, 0x10

    add-long v4, p3, v4

    invoke-virtual {v3, p1, v10, v4, v5}, Landroid/hardware/radio/V1_5/CellIdentity;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    const-wide/16 v3, 0xb8

    add-long v5, p3, v3

    invoke-virtual {v10, v5, v6}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Landroid/hardware/radio/V1_6/RegStateResult;->registeredPlmn:Ljava/lang/String;

    iget-object v5, v0, Landroid/hardware/radio/V1_6/RegStateResult;->registeredPlmn:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    array-length v5, v5

    add-int/lit8 v5, v5, 0x1

    int-to-long v5, v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    add-long v3, p3, v3

    add-long v11, v3, v1

    const/4 v13, 0x0

    move-object v1, p1

    move-wide v2, v5

    move-wide v4, v7

    move-wide v6, v11

    move v8, v13

    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    iget-object v1, v0, Landroid/hardware/radio/V1_6/RegStateResult;->accessTechnologySpecificInfo:Landroid/hardware/radio/V1_6/RegStateResult$AccessTechnologySpecificInfo;

    const-wide/16 v2, 0xc8

    add-long v2, p3, v2

    invoke-virtual {v1, p1, v10, v2, v3}, Landroid/hardware/radio/V1_6/RegStateResult$AccessTechnologySpecificInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    return-void
.end method

.method public final blacklist readFromParcel(Landroid/os/HwParcel;)V
    .locals 3

    const-wide/16 v0, 0xe0

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/radio/V1_6/RegStateResult;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    return-void
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".regState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/hardware/radio/V1_6/RegStateResult;->regState:I

    invoke-static {v1}, Landroid/hardware/radio/V1_0/RegState;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", .rat = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/hardware/radio/V1_6/RegStateResult;->rat:I

    invoke-static {v1}, Landroid/hardware/radio/V1_4/RadioTechnology;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", .reasonForDenial = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/hardware/radio/V1_6/RegStateResult;->reasonForDenial:I

    invoke-static {v1}, Landroid/hardware/radio/V1_5/RegistrationFailCause;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", .cellIdentity = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/hardware/radio/V1_6/RegStateResult;->cellIdentity:Landroid/hardware/radio/V1_5/CellIdentity;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", .registeredPlmn = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/hardware/radio/V1_6/RegStateResult;->registeredPlmn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", .accessTechnologySpecificInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/hardware/radio/V1_6/RegStateResult;->accessTechnologySpecificInfo:Landroid/hardware/radio/V1_6/RegStateResult$AccessTechnologySpecificInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final blacklist writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .locals 3

    const-wide/16 v0, 0x0

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/radio/V1_6/RegStateResult;->regState:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0x4

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/radio/V1_6/RegStateResult;->rat:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0x8

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/radio/V1_6/RegStateResult;->reasonForDenial:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    iget-object v0, p0, Landroid/hardware/radio/V1_6/RegStateResult;->cellIdentity:Landroid/hardware/radio/V1_5/CellIdentity;

    const-wide/16 v1, 0x10

    add-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Landroid/hardware/radio/V1_5/CellIdentity;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    const-wide/16 v0, 0xb8

    add-long/2addr v0, p2

    iget-object v2, p0, Landroid/hardware/radio/V1_6/RegStateResult;->registeredPlmn:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    iget-object v0, p0, Landroid/hardware/radio/V1_6/RegStateResult;->accessTechnologySpecificInfo:Landroid/hardware/radio/V1_6/RegStateResult$AccessTechnologySpecificInfo;

    const-wide/16 v1, 0xc8

    add-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Landroid/hardware/radio/V1_6/RegStateResult$AccessTechnologySpecificInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    return-void
.end method

.method public final blacklist writeToParcel(Landroid/os/HwParcel;)V
    .locals 3

    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0xe0

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/radio/V1_6/RegStateResult;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    return-void
.end method
