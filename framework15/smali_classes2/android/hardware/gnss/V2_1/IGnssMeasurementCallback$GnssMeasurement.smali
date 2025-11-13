.class public final Landroid/hardware/gnss/V2_1/IGnssMeasurementCallback$GnssMeasurement;
.super Ljava/lang/Object;
.source "IGnssMeasurementCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/gnss/V2_1/IGnssMeasurementCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GnssMeasurement"
.end annotation


# instance fields
.field public blacklist basebandCN0DbHz:D

.field public blacklist flags:I

.field public blacklist fullInterSignalBiasNs:D

.field public blacklist fullInterSignalBiasUncertaintyNs:D

.field public blacklist satelliteInterSignalBiasNs:D

.field public blacklist satelliteInterSignalBiasUncertaintyNs:D

.field public blacklist v2_0:Landroid/hardware/gnss/V2_0/IGnssMeasurementCallback$GnssMeasurement;


# direct methods
.method public constructor blacklist <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/hardware/gnss/V2_0/IGnssMeasurementCallback$GnssMeasurement;

    invoke-direct {v0}, Landroid/hardware/gnss/V2_0/IGnssMeasurementCallback$GnssMeasurement;-><init>()V

    iput-object v0, p0, Landroid/hardware/gnss/V2_1/IGnssMeasurementCallback$GnssMeasurement;->v2_0:Landroid/hardware/gnss/V2_0/IGnssMeasurementCallback$GnssMeasurement;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/gnss/V2_1/IGnssMeasurementCallback$GnssMeasurement;->fullInterSignalBiasNs:D

    iput-wide v0, p0, Landroid/hardware/gnss/V2_1/IGnssMeasurementCallback$GnssMeasurement;->fullInterSignalBiasUncertaintyNs:D

    iput-wide v0, p0, Landroid/hardware/gnss/V2_1/IGnssMeasurementCallback$GnssMeasurement;->satelliteInterSignalBiasNs:D

    iput-wide v0, p0, Landroid/hardware/gnss/V2_1/IGnssMeasurementCallback$GnssMeasurement;->satelliteInterSignalBiasUncertaintyNs:D

    iput-wide v0, p0, Landroid/hardware/gnss/V2_1/IGnssMeasurementCallback$GnssMeasurement;->basebandCN0DbHz:D

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
            "Landroid/hardware/gnss/V2_1/IGnssMeasurementCallback$GnssMeasurement;",
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

    new-instance v5, Landroid/hardware/gnss/V2_1/IGnssMeasurementCallback$GnssMeasurement;

    invoke-direct {v5}, Landroid/hardware/gnss/V2_1/IGnssMeasurementCallback$GnssMeasurement;-><init>()V

    mul-int/lit16 v6, v4, 0xe0

    int-to-long v6, v6

    invoke-virtual {v5, p0, v3, v6, v7}, Landroid/hardware/gnss/V2_1/IGnssMeasurementCallback$GnssMeasurement;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

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
            "Landroid/hardware/gnss/V2_1/IGnssMeasurementCallback$GnssMeasurement;",
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

    check-cast v4, Landroid/hardware/gnss/V2_1/IGnssMeasurementCallback$GnssMeasurement;

    mul-int/lit16 v5, v3, 0xe0

    int-to-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Landroid/hardware/gnss/V2_1/IGnssMeasurementCallback$GnssMeasurement;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

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
    .locals 7

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

    const-class v3, Landroid/hardware/gnss/V2_1/IGnssMeasurementCallback$GnssMeasurement;

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    move-object v2, p1

    check-cast v2, Landroid/hardware/gnss/V2_1/IGnssMeasurementCallback$GnssMeasurement;

    iget-object v3, p0, Landroid/hardware/gnss/V2_1/IGnssMeasurementCallback$GnssMeasurement;->v2_0:Landroid/hardware/gnss/V2_0/IGnssMeasurementCallback$GnssMeasurement;

    iget-object v4, v2, Landroid/hardware/gnss/V2_1/IGnssMeasurementCallback$GnssMeasurement;->v2_0:Landroid/hardware/gnss/V2_0/IGnssMeasurementCallback$GnssMeasurement;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    return v1

    :cond_3
    iget v3, p0, Landroid/hardware/gnss/V2_1/IGnssMeasurementCallback$GnssMeasurement;->flags:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, v2, Landroid/hardware/gnss/V2_1/IGnssMeasurementCallback$GnssMeasurement;->flags:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    return v1

    :cond_4
    iget-wide v3, p0, Landroid/hardware/gnss/V2_1/IGnssMeasurementCallback$GnssMeasurement;->fullInterSignalBiasNs:D

    iget-wide v5, v2, Landroid/hardware/gnss/V2_1/IGnssMeasurementCallback$GnssMeasurement;->fullInterSignalBiasNs:D

    cmpl-double v3, v3, v5

    if-eqz v3, :cond_5

    return v1

    :cond_5
    iget-wide v3, p0, Landroid/hardware/gnss/V2_1/IGnssMeasurementCallback$GnssMeasurement;->fullInterSignalBiasUncertaintyNs:D

    iget-wide v5, v2, Landroid/hardware/gnss/V2_1/IGnssMeasurementCallback$GnssMeasurement;->fullInterSignalBiasUncertaintyNs:D

    cmpl-double v3, v3, v5

    if-eqz v3, :cond_6

    return v1

    :cond_6
    iget-wide v3, p0, Landroid/hardware/gnss/V2_1/IGnssMeasurementCallback$GnssMeasurement;->satelliteInterSignalBiasNs:D

    iget-wide v5, v2, Landroid/hardware/gnss/V2_1/IGnssMeasurementCallback$GnssMeasurement;->satelliteInterSignalBiasNs:D

    cmpl-double v3, v3, v5

    if-eqz v3, :cond_7

    return v1

    :cond_7
    iget-wide v3, p0, Landroid/hardware/gnss/V2_1/IGnssMeasurementCallback$GnssMeasurement;->satelliteInterSignalBiasUncertaintyNs:D

    iget-wide v5, v2, Landroid/hardware/gnss/V2_1/IGnssMeasurementCallback$GnssMeasurement;->satelliteInterSignalBiasUncertaintyNs:D

    cmpl-double v3, v3, v5

    if-eqz v3, :cond_8

    return v1

    :cond_8
    iget-wide v3, p0, Landroid/hardware/gnss/V2_1/IGnssMeasurementCallback$GnssMeasurement;->basebandCN0DbHz:D

    iget-wide v5, v2, Landroid/hardware/gnss/V2_1/IGnssMeasurementCallback$GnssMeasurement;->basebandCN0DbHz:D

    cmpl-double v3, v3, v5

    if-eqz v3, :cond_9

    return v1

    :cond_9
    return v0
.end method

.method public final whitelist test-api hashCode()I
    .locals 9

    iget-object v0, p0, Landroid/hardware/gnss/V2_1/IGnssMeasurementCallback$GnssMeasurement;->v2_0:Landroid/hardware/gnss/V2_0/IGnssMeasurementCallback$GnssMeasurement;

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v0, p0, Landroid/hardware/gnss/V2_1/IGnssMeasurementCallback$GnssMeasurement;->flags:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-wide v3, p0, Landroid/hardware/gnss/V2_1/IGnssMeasurementCallback$GnssMeasurement;->fullInterSignalBiasNs:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-wide v4, p0, Landroid/hardware/gnss/V2_1/IGnssMeasurementCallback$GnssMeasurement;->fullInterSignalBiasUncertaintyNs:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-wide v5, p0, Landroid/hardware/gnss/V2_1/IGnssMeasurementCallback$GnssMeasurement;->satelliteInterSignalBiasNs:D

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-wide v6, p0, Landroid/hardware/gnss/V2_1/IGnssMeasurementCallback$GnssMeasurement;->satelliteInterSignalBiasUncertaintyNs:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-wide v7, p0, Landroid/hardware/gnss/V2_1/IGnssMeasurementCallback$GnssMeasurement;->basebandCN0DbHz:D

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array/range {v1 .. v7}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final blacklist readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .locals 3

    iget-object v0, p0, Landroid/hardware/gnss/V2_1/IGnssMeasurementCallback$GnssMeasurement;->v2_0:Landroid/hardware/gnss/V2_0/IGnssMeasurementCallback$GnssMeasurement;

    const-wide/16 v1, 0x0

    add-long/2addr v1, p3

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/hardware/gnss/V2_0/IGnssMeasurementCallback$GnssMeasurement;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    const-wide/16 v0, 0xb0

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Landroid/hardware/gnss/V2_1/IGnssMeasurementCallback$GnssMeasurement;->flags:I

    const-wide/16 v0, 0xb8

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getDouble(J)D

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/gnss/V2_1/IGnssMeasurementCallback$GnssMeasurement;->fullInterSignalBiasNs:D

    const-wide/16 v0, 0xc0

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getDouble(J)D

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/gnss/V2_1/IGnssMeasurementCallback$GnssMeasurement;->fullInterSignalBiasUncertaintyNs:D

    const-wide/16 v0, 0xc8

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getDouble(J)D

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/gnss/V2_1/IGnssMeasurementCallback$GnssMeasurement;->satelliteInterSignalBiasNs:D

    const-wide/16 v0, 0xd0

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getDouble(J)D

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/gnss/V2_1/IGnssMeasurementCallback$GnssMeasurement;->satelliteInterSignalBiasUncertaintyNs:D

    const-wide/16 v0, 0xd8

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getDouble(J)D

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/gnss/V2_1/IGnssMeasurementCallback$GnssMeasurement;->basebandCN0DbHz:D

    return-void
.end method

.method public final blacklist readFromParcel(Landroid/os/HwParcel;)V
    .locals 3

    const-wide/16 v0, 0xe0

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/gnss/V2_1/IGnssMeasurementCallback$GnssMeasurement;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    return-void
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".v2_0 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/hardware/gnss/V2_1/IGnssMeasurementCallback$GnssMeasurement;->v2_0:Landroid/hardware/gnss/V2_0/IGnssMeasurementCallback$GnssMeasurement;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", .flags = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/hardware/gnss/V2_1/IGnssMeasurementCallback$GnssMeasurement;->flags:I

    invoke-static {v1}, Landroid/hardware/gnss/V2_1/IGnssMeasurementCallback$GnssMeasurementFlags;->dumpBitfield(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", .fullInterSignalBiasNs = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/hardware/gnss/V2_1/IGnssMeasurementCallback$GnssMeasurement;->fullInterSignalBiasNs:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", .fullInterSignalBiasUncertaintyNs = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/hardware/gnss/V2_1/IGnssMeasurementCallback$GnssMeasurement;->fullInterSignalBiasUncertaintyNs:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", .satelliteInterSignalBiasNs = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/hardware/gnss/V2_1/IGnssMeasurementCallback$GnssMeasurement;->satelliteInterSignalBiasNs:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", .satelliteInterSignalBiasUncertaintyNs = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/hardware/gnss/V2_1/IGnssMeasurementCallback$GnssMeasurement;->satelliteInterSignalBiasUncertaintyNs:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", .basebandCN0DbHz = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/hardware/gnss/V2_1/IGnssMeasurementCallback$GnssMeasurement;->basebandCN0DbHz:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final blacklist writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .locals 4

    iget-object v0, p0, Landroid/hardware/gnss/V2_1/IGnssMeasurementCallback$GnssMeasurement;->v2_0:Landroid/hardware/gnss/V2_0/IGnssMeasurementCallback$GnssMeasurement;

    const-wide/16 v1, 0x0

    add-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Landroid/hardware/gnss/V2_0/IGnssMeasurementCallback$GnssMeasurement;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    const-wide/16 v0, 0xb0

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/gnss/V2_1/IGnssMeasurementCallback$GnssMeasurement;->flags:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0xb8

    add-long/2addr v0, p2

    iget-wide v2, p0, Landroid/hardware/gnss/V2_1/IGnssMeasurementCallback$GnssMeasurement;->fullInterSignalBiasNs:D

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/os/HwBlob;->putDouble(JD)V

    const-wide/16 v0, 0xc0

    add-long/2addr v0, p2

    iget-wide v2, p0, Landroid/hardware/gnss/V2_1/IGnssMeasurementCallback$GnssMeasurement;->fullInterSignalBiasUncertaintyNs:D

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/os/HwBlob;->putDouble(JD)V

    const-wide/16 v0, 0xc8

    add-long/2addr v0, p2

    iget-wide v2, p0, Landroid/hardware/gnss/V2_1/IGnssMeasurementCallback$GnssMeasurement;->satelliteInterSignalBiasNs:D

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/os/HwBlob;->putDouble(JD)V

    const-wide/16 v0, 0xd0

    add-long/2addr v0, p2

    iget-wide v2, p0, Landroid/hardware/gnss/V2_1/IGnssMeasurementCallback$GnssMeasurement;->satelliteInterSignalBiasUncertaintyNs:D

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/os/HwBlob;->putDouble(JD)V

    const-wide/16 v0, 0xd8

    add-long/2addr v0, p2

    iget-wide v2, p0, Landroid/hardware/gnss/V2_1/IGnssMeasurementCallback$GnssMeasurement;->basebandCN0DbHz:D

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/os/HwBlob;->putDouble(JD)V

    return-void
.end method

.method public final blacklist writeToParcel(Landroid/os/HwParcel;)V
    .locals 3

    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0xe0

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/gnss/V2_1/IGnssMeasurementCallback$GnssMeasurement;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    return-void
.end method
