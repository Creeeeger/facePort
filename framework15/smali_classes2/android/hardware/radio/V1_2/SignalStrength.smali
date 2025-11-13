.class public final Landroid/hardware/radio/V1_2/SignalStrength;
.super Ljava/lang/Object;
.source "SignalStrength.java"


# instance fields
.field public blacklist cdma:Landroid/hardware/radio/V1_0/CdmaSignalStrength;

.field public blacklist evdo:Landroid/hardware/radio/V1_0/EvdoSignalStrength;

.field public blacklist gsm:Landroid/hardware/radio/V1_0/GsmSignalStrength;

.field public blacklist lte:Landroid/hardware/radio/V1_0/LteSignalStrength;

.field public blacklist tdScdma:Landroid/hardware/radio/V1_0/TdScdmaSignalStrength;

.field public blacklist wcdma:Landroid/hardware/radio/V1_2/WcdmaSignalStrength;


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/hardware/radio/V1_0/GsmSignalStrength;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/GsmSignalStrength;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_2/SignalStrength;->gsm:Landroid/hardware/radio/V1_0/GsmSignalStrength;

    new-instance v0, Landroid/hardware/radio/V1_0/CdmaSignalStrength;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/CdmaSignalStrength;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_2/SignalStrength;->cdma:Landroid/hardware/radio/V1_0/CdmaSignalStrength;

    new-instance v0, Landroid/hardware/radio/V1_0/EvdoSignalStrength;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/EvdoSignalStrength;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_2/SignalStrength;->evdo:Landroid/hardware/radio/V1_0/EvdoSignalStrength;

    new-instance v0, Landroid/hardware/radio/V1_0/LteSignalStrength;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/LteSignalStrength;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_2/SignalStrength;->lte:Landroid/hardware/radio/V1_0/LteSignalStrength;

    new-instance v0, Landroid/hardware/radio/V1_0/TdScdmaSignalStrength;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/TdScdmaSignalStrength;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_2/SignalStrength;->tdScdma:Landroid/hardware/radio/V1_0/TdScdmaSignalStrength;

    new-instance v0, Landroid/hardware/radio/V1_2/WcdmaSignalStrength;

    invoke-direct {v0}, Landroid/hardware/radio/V1_2/WcdmaSignalStrength;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_2/SignalStrength;->wcdma:Landroid/hardware/radio/V1_2/WcdmaSignalStrength;

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
            "Landroid/hardware/radio/V1_2/SignalStrength;",
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

    mul-int/lit8 v3, v2, 0x4c

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

    new-instance v5, Landroid/hardware/radio/V1_2/SignalStrength;

    invoke-direct {v5}, Landroid/hardware/radio/V1_2/SignalStrength;-><init>()V

    mul-int/lit8 v6, v4, 0x4c

    int-to-long v6, v6

    invoke-virtual {v5, p0, v3, v6, v7}, Landroid/hardware/radio/V1_2/SignalStrength;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

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
            "Landroid/hardware/radio/V1_2/SignalStrength;",
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

    mul-int/lit8 v3, v1, 0x4c

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/radio/V1_2/SignalStrength;

    mul-int/lit8 v5, v3, 0x4c

    int-to-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Landroid/hardware/radio/V1_2/SignalStrength;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

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

    const-class v3, Landroid/hardware/radio/V1_2/SignalStrength;

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    move-object v2, p1

    check-cast v2, Landroid/hardware/radio/V1_2/SignalStrength;

    iget-object v3, p0, Landroid/hardware/radio/V1_2/SignalStrength;->gsm:Landroid/hardware/radio/V1_0/GsmSignalStrength;

    iget-object v4, v2, Landroid/hardware/radio/V1_2/SignalStrength;->gsm:Landroid/hardware/radio/V1_0/GsmSignalStrength;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    return v1

    :cond_3
    iget-object v3, p0, Landroid/hardware/radio/V1_2/SignalStrength;->cdma:Landroid/hardware/radio/V1_0/CdmaSignalStrength;

    iget-object v4, v2, Landroid/hardware/radio/V1_2/SignalStrength;->cdma:Landroid/hardware/radio/V1_0/CdmaSignalStrength;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    return v1

    :cond_4
    iget-object v3, p0, Landroid/hardware/radio/V1_2/SignalStrength;->evdo:Landroid/hardware/radio/V1_0/EvdoSignalStrength;

    iget-object v4, v2, Landroid/hardware/radio/V1_2/SignalStrength;->evdo:Landroid/hardware/radio/V1_0/EvdoSignalStrength;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    return v1

    :cond_5
    iget-object v3, p0, Landroid/hardware/radio/V1_2/SignalStrength;->lte:Landroid/hardware/radio/V1_0/LteSignalStrength;

    iget-object v4, v2, Landroid/hardware/radio/V1_2/SignalStrength;->lte:Landroid/hardware/radio/V1_0/LteSignalStrength;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    return v1

    :cond_6
    iget-object v3, p0, Landroid/hardware/radio/V1_2/SignalStrength;->tdScdma:Landroid/hardware/radio/V1_0/TdScdmaSignalStrength;

    iget-object v4, v2, Landroid/hardware/radio/V1_2/SignalStrength;->tdScdma:Landroid/hardware/radio/V1_0/TdScdmaSignalStrength;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    return v1

    :cond_7
    iget-object v3, p0, Landroid/hardware/radio/V1_2/SignalStrength;->wcdma:Landroid/hardware/radio/V1_2/WcdmaSignalStrength;

    iget-object v4, v2, Landroid/hardware/radio/V1_2/SignalStrength;->wcdma:Landroid/hardware/radio/V1_2/WcdmaSignalStrength;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    return v1

    :cond_8
    return v0
.end method

.method public final whitelist test-api hashCode()I
    .locals 7

    iget-object v0, p0, Landroid/hardware/radio/V1_2/SignalStrength;->gsm:Landroid/hardware/radio/V1_0/GsmSignalStrength;

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v0, p0, Landroid/hardware/radio/V1_2/SignalStrength;->cdma:Landroid/hardware/radio/V1_0/CdmaSignalStrength;

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v0, p0, Landroid/hardware/radio/V1_2/SignalStrength;->evdo:Landroid/hardware/radio/V1_0/EvdoSignalStrength;

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v0, p0, Landroid/hardware/radio/V1_2/SignalStrength;->lte:Landroid/hardware/radio/V1_0/LteSignalStrength;

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v0, p0, Landroid/hardware/radio/V1_2/SignalStrength;->tdScdma:Landroid/hardware/radio/V1_0/TdScdmaSignalStrength;

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v0, p0, Landroid/hardware/radio/V1_2/SignalStrength;->wcdma:Landroid/hardware/radio/V1_2/WcdmaSignalStrength;

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
    .locals 3

    iget-object v0, p0, Landroid/hardware/radio/V1_2/SignalStrength;->gsm:Landroid/hardware/radio/V1_0/GsmSignalStrength;

    const-wide/16 v1, 0x0

    add-long/2addr v1, p3

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/hardware/radio/V1_0/GsmSignalStrength;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    iget-object v0, p0, Landroid/hardware/radio/V1_2/SignalStrength;->cdma:Landroid/hardware/radio/V1_0/CdmaSignalStrength;

    const-wide/16 v1, 0xc

    add-long/2addr v1, p3

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/hardware/radio/V1_0/CdmaSignalStrength;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    iget-object v0, p0, Landroid/hardware/radio/V1_2/SignalStrength;->evdo:Landroid/hardware/radio/V1_0/EvdoSignalStrength;

    const-wide/16 v1, 0x14

    add-long/2addr v1, p3

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/hardware/radio/V1_0/EvdoSignalStrength;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    iget-object v0, p0, Landroid/hardware/radio/V1_2/SignalStrength;->lte:Landroid/hardware/radio/V1_0/LteSignalStrength;

    const-wide/16 v1, 0x20

    add-long/2addr v1, p3

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/hardware/radio/V1_0/LteSignalStrength;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    iget-object v0, p0, Landroid/hardware/radio/V1_2/SignalStrength;->tdScdma:Landroid/hardware/radio/V1_0/TdScdmaSignalStrength;

    const-wide/16 v1, 0x38

    add-long/2addr v1, p3

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/hardware/radio/V1_0/TdScdmaSignalStrength;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    iget-object v0, p0, Landroid/hardware/radio/V1_2/SignalStrength;->wcdma:Landroid/hardware/radio/V1_2/WcdmaSignalStrength;

    const-wide/16 v1, 0x3c

    add-long/2addr v1, p3

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/hardware/radio/V1_2/WcdmaSignalStrength;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    return-void
.end method

.method public final blacklist readFromParcel(Landroid/os/HwParcel;)V
    .locals 3

    const-wide/16 v0, 0x4c

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/radio/V1_2/SignalStrength;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    return-void
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".gsm = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/hardware/radio/V1_2/SignalStrength;->gsm:Landroid/hardware/radio/V1_0/GsmSignalStrength;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", .cdma = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/hardware/radio/V1_2/SignalStrength;->cdma:Landroid/hardware/radio/V1_0/CdmaSignalStrength;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", .evdo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/hardware/radio/V1_2/SignalStrength;->evdo:Landroid/hardware/radio/V1_0/EvdoSignalStrength;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", .lte = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/hardware/radio/V1_2/SignalStrength;->lte:Landroid/hardware/radio/V1_0/LteSignalStrength;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", .tdScdma = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/hardware/radio/V1_2/SignalStrength;->tdScdma:Landroid/hardware/radio/V1_0/TdScdmaSignalStrength;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", .wcdma = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/hardware/radio/V1_2/SignalStrength;->wcdma:Landroid/hardware/radio/V1_2/WcdmaSignalStrength;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final blacklist writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .locals 3

    iget-object v0, p0, Landroid/hardware/radio/V1_2/SignalStrength;->gsm:Landroid/hardware/radio/V1_0/GsmSignalStrength;

    const-wide/16 v1, 0x0

    add-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Landroid/hardware/radio/V1_0/GsmSignalStrength;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    iget-object v0, p0, Landroid/hardware/radio/V1_2/SignalStrength;->cdma:Landroid/hardware/radio/V1_0/CdmaSignalStrength;

    const-wide/16 v1, 0xc

    add-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Landroid/hardware/radio/V1_0/CdmaSignalStrength;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    iget-object v0, p0, Landroid/hardware/radio/V1_2/SignalStrength;->evdo:Landroid/hardware/radio/V1_0/EvdoSignalStrength;

    const-wide/16 v1, 0x14

    add-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Landroid/hardware/radio/V1_0/EvdoSignalStrength;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    iget-object v0, p0, Landroid/hardware/radio/V1_2/SignalStrength;->lte:Landroid/hardware/radio/V1_0/LteSignalStrength;

    const-wide/16 v1, 0x20

    add-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Landroid/hardware/radio/V1_0/LteSignalStrength;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    iget-object v0, p0, Landroid/hardware/radio/V1_2/SignalStrength;->tdScdma:Landroid/hardware/radio/V1_0/TdScdmaSignalStrength;

    const-wide/16 v1, 0x38

    add-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Landroid/hardware/radio/V1_0/TdScdmaSignalStrength;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    iget-object v0, p0, Landroid/hardware/radio/V1_2/SignalStrength;->wcdma:Landroid/hardware/radio/V1_2/WcdmaSignalStrength;

    const-wide/16 v1, 0x3c

    add-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Landroid/hardware/radio/V1_2/WcdmaSignalStrength;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    return-void
.end method

.method public final blacklist writeToParcel(Landroid/os/HwParcel;)V
    .locals 3

    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x4c

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/radio/V1_2/SignalStrength;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    return-void
.end method
