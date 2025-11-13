.class public final Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;
.super Ljava/lang/Object;
.source "CellInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/V1_6/CellInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CellInfoRatSpecificInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo$hidl_discriminator;
    }
.end annotation


# instance fields
.field private blacklist hidl_d:B

.field private blacklist hidl_o:Ljava/lang/Object;


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-byte v0, p0, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->hidl_d:B

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->hidl_o:Ljava/lang/Object;

    new-instance v0, Landroid/hardware/radio/V1_5/CellInfoGsm;

    invoke-direct {v0}, Landroid/hardware/radio/V1_5/CellInfoGsm;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->hidl_o:Ljava/lang/Object;

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
            "Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;",
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

    mul-int/lit16 v3, v2, 0xc8

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

    new-instance v5, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;-><init>()V

    mul-int/lit16 v6, v4, 0xc8

    int-to-long v6, v6

    invoke-virtual {v5, p0, v3, v6, v7}, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

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
            "Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;",
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

    mul-int/lit16 v3, v1, 0xc8

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;

    mul-int/lit16 v5, v3, 0xc8

    int-to-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    return-void
.end method


# virtual methods
.method public blacklist cdma()Landroid/hardware/radio/V1_2/CellInfoCdma;
    .locals 4

    iget-byte v0, p0, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->hidl_d:B

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->hidl_o:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->hidl_o:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "null"

    :goto_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Read access to inactive union components is disallowed. Discriminator value is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v3, p0, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->hidl_d:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (corresponding to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v3, p0, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->hidl_d:B

    invoke-static {v3}, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo$hidl_discriminator;->getName(B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), and hidl_o is of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    iget-object v0, p0, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->hidl_o:Ljava/lang/Object;

    if-eqz v0, :cond_3

    const-class v0, Landroid/hardware/radio/V1_2/CellInfoCdma;

    iget-object v1, p0, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->hidl_o:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Union is in a corrupted state."

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_1
    iget-object v0, p0, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->hidl_o:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/radio/V1_2/CellInfoCdma;

    return-object v0
.end method

.method public blacklist cdma(Landroid/hardware/radio/V1_2/CellInfoCdma;)V
    .locals 1

    const/4 v0, 0x5

    iput-byte v0, p0, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->hidl_d:B

    iput-object p1, p0, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->hidl_o:Ljava/lang/Object;

    return-void
.end method

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

    const-class v3, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    move-object v2, p1

    check-cast v2, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;

    iget-byte v3, p0, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->hidl_d:B

    iget-byte v4, v2, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->hidl_d:B

    if-eq v3, v4, :cond_3

    return v1

    :cond_3
    iget-object v3, p0, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->hidl_o:Ljava/lang/Object;

    iget-object v4, v2, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->hidl_o:Ljava/lang/Object;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method public blacklist getDiscriminator()B
    .locals 1

    iget-byte v0, p0, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->hidl_d:B

    return v0
.end method

.method public blacklist gsm()Landroid/hardware/radio/V1_5/CellInfoGsm;
    .locals 4

    iget-byte v0, p0, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->hidl_d:B

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->hidl_o:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->hidl_o:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "null"

    :goto_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Read access to inactive union components is disallowed. Discriminator value is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v3, p0, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->hidl_d:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (corresponding to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v3, p0, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->hidl_d:B

    invoke-static {v3}, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo$hidl_discriminator;->getName(B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), and hidl_o is of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    iget-object v0, p0, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->hidl_o:Ljava/lang/Object;

    if-eqz v0, :cond_3

    const-class v0, Landroid/hardware/radio/V1_5/CellInfoGsm;

    iget-object v1, p0, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->hidl_o:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Union is in a corrupted state."

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_1
    iget-object v0, p0, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->hidl_o:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/radio/V1_5/CellInfoGsm;

    return-object v0
.end method

.method public blacklist gsm(Landroid/hardware/radio/V1_5/CellInfoGsm;)V
    .locals 1

    const/4 v0, 0x0

    iput-byte v0, p0, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->hidl_d:B

    iput-object p1, p0, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->hidl_o:Ljava/lang/Object;

    return-void
.end method

.method public final whitelist test-api hashCode()I
    .locals 2

    iget-object v0, p0, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->hidl_o:Ljava/lang/Object;

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-byte v1, p0, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->hidl_d:B

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist lte()Landroid/hardware/radio/V1_6/CellInfoLte;
    .locals 4

    iget-byte v0, p0, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->hidl_d:B

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->hidl_o:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->hidl_o:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "null"

    :goto_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Read access to inactive union components is disallowed. Discriminator value is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v3, p0, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->hidl_d:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (corresponding to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v3, p0, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->hidl_d:B

    invoke-static {v3}, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo$hidl_discriminator;->getName(B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), and hidl_o is of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    iget-object v0, p0, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->hidl_o:Ljava/lang/Object;

    if-eqz v0, :cond_3

    const-class v0, Landroid/hardware/radio/V1_6/CellInfoLte;

    iget-object v1, p0, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->hidl_o:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Union is in a corrupted state."

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_1
    iget-object v0, p0, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->hidl_o:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/radio/V1_6/CellInfoLte;

    return-object v0
.end method

.method public blacklist lte(Landroid/hardware/radio/V1_6/CellInfoLte;)V
    .locals 1

    const/4 v0, 0x3

    iput-byte v0, p0, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->hidl_d:B

    iput-object p1, p0, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->hidl_o:Ljava/lang/Object;

    return-void
.end method

.method public blacklist nr()Landroid/hardware/radio/V1_6/CellInfoNr;
    .locals 4

    iget-byte v0, p0, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->hidl_d:B

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->hidl_o:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->hidl_o:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "null"

    :goto_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Read access to inactive union components is disallowed. Discriminator value is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v3, p0, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->hidl_d:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (corresponding to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v3, p0, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->hidl_d:B

    invoke-static {v3}, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo$hidl_discriminator;->getName(B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), and hidl_o is of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    iget-object v0, p0, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->hidl_o:Ljava/lang/Object;

    if-eqz v0, :cond_3

    const-class v0, Landroid/hardware/radio/V1_6/CellInfoNr;

    iget-object v1, p0, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->hidl_o:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Union is in a corrupted state."

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_1
    iget-object v0, p0, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->hidl_o:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/radio/V1_6/CellInfoNr;

    return-object v0
.end method

.method public blacklist nr(Landroid/hardware/radio/V1_6/CellInfoNr;)V
    .locals 1

    const/4 v0, 0x4

    iput-byte v0, p0, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->hidl_d:B

    iput-object p1, p0, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->hidl_o:Ljava/lang/Object;

    return-void
.end method

.method public final blacklist readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .locals 3

    const-wide/16 v0, 0x0

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v0

    iput-byte v0, p0, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->hidl_d:B

    iget-byte v0, p0, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->hidl_d:B

    const-wide/16 v1, 0x8

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown union discriminator (value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->hidl_d:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    new-instance v0, Landroid/hardware/radio/V1_2/CellInfoCdma;

    invoke-direct {v0}, Landroid/hardware/radio/V1_2/CellInfoCdma;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->hidl_o:Ljava/lang/Object;

    iget-object v0, p0, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->hidl_o:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/radio/V1_2/CellInfoCdma;

    add-long/2addr v1, p3

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/hardware/radio/V1_2/CellInfoCdma;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    goto :goto_0

    :pswitch_1
    new-instance v0, Landroid/hardware/radio/V1_6/CellInfoNr;

    invoke-direct {v0}, Landroid/hardware/radio/V1_6/CellInfoNr;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->hidl_o:Ljava/lang/Object;

    iget-object v0, p0, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->hidl_o:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/radio/V1_6/CellInfoNr;

    add-long/2addr v1, p3

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/hardware/radio/V1_6/CellInfoNr;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Landroid/hardware/radio/V1_6/CellInfoLte;

    invoke-direct {v0}, Landroid/hardware/radio/V1_6/CellInfoLte;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->hidl_o:Ljava/lang/Object;

    iget-object v0, p0, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->hidl_o:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/radio/V1_6/CellInfoLte;

    add-long/2addr v1, p3

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/hardware/radio/V1_6/CellInfoLte;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    goto :goto_0

    :pswitch_3
    new-instance v0, Landroid/hardware/radio/V1_5/CellInfoTdscdma;

    invoke-direct {v0}, Landroid/hardware/radio/V1_5/CellInfoTdscdma;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->hidl_o:Ljava/lang/Object;

    iget-object v0, p0, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->hidl_o:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/radio/V1_5/CellInfoTdscdma;

    add-long/2addr v1, p3

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/hardware/radio/V1_5/CellInfoTdscdma;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    goto :goto_0

    :pswitch_4
    new-instance v0, Landroid/hardware/radio/V1_5/CellInfoWcdma;

    invoke-direct {v0}, Landroid/hardware/radio/V1_5/CellInfoWcdma;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->hidl_o:Ljava/lang/Object;

    iget-object v0, p0, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->hidl_o:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/radio/V1_5/CellInfoWcdma;

    add-long/2addr v1, p3

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/hardware/radio/V1_5/CellInfoWcdma;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    goto :goto_0

    :pswitch_5
    new-instance v0, Landroid/hardware/radio/V1_5/CellInfoGsm;

    invoke-direct {v0}, Landroid/hardware/radio/V1_5/CellInfoGsm;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->hidl_o:Ljava/lang/Object;

    iget-object v0, p0, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->hidl_o:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/radio/V1_5/CellInfoGsm;

    add-long/2addr v1, p3

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/hardware/radio/V1_5/CellInfoGsm;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    nop

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final blacklist readFromParcel(Landroid/os/HwParcel;)V
    .locals 3

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    return-void
.end method

.method public blacklist tdscdma()Landroid/hardware/radio/V1_5/CellInfoTdscdma;
    .locals 4

    iget-byte v0, p0, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->hidl_d:B

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->hidl_o:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->hidl_o:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "null"

    :goto_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Read access to inactive union components is disallowed. Discriminator value is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v3, p0, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->hidl_d:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (corresponding to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v3, p0, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->hidl_d:B

    invoke-static {v3}, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo$hidl_discriminator;->getName(B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), and hidl_o is of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    iget-object v0, p0, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->hidl_o:Ljava/lang/Object;

    if-eqz v0, :cond_3

    const-class v0, Landroid/hardware/radio/V1_5/CellInfoTdscdma;

    iget-object v1, p0, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->hidl_o:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Union is in a corrupted state."

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_1
    iget-object v0, p0, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->hidl_o:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/radio/V1_5/CellInfoTdscdma;

    return-object v0
.end method

.method public blacklist tdscdma(Landroid/hardware/radio/V1_5/CellInfoTdscdma;)V
    .locals 1

    const/4 v0, 0x2

    iput-byte v0, p0, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->hidl_d:B

    iput-object p1, p0, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->hidl_o:Ljava/lang/Object;

    return-void
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->hidl_d:B

    packed-switch v1, :pswitch_data_0

    new-instance v1, Ljava/lang/Error;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown union discriminator (value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v3, p0, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->hidl_d:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    const-string v1, ".cdma = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->cdma()Landroid/hardware/radio/V1_2/CellInfoCdma;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_1
    const-string v1, ".nr = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->nr()Landroid/hardware/radio/V1_6/CellInfoNr;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_2
    const-string v1, ".lte = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->lte()Landroid/hardware/radio/V1_6/CellInfoLte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_3
    const-string v1, ".tdscdma = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->tdscdma()Landroid/hardware/radio/V1_5/CellInfoTdscdma;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_4
    const-string v1, ".wcdma = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->wcdma()Landroid/hardware/radio/V1_5/CellInfoWcdma;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_5
    const-string v1, ".gsm = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->gsm()Landroid/hardware/radio/V1_5/CellInfoGsm;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    nop

    :goto_0
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist wcdma()Landroid/hardware/radio/V1_5/CellInfoWcdma;
    .locals 4

    iget-byte v0, p0, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->hidl_d:B

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->hidl_o:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->hidl_o:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "null"

    :goto_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Read access to inactive union components is disallowed. Discriminator value is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v3, p0, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->hidl_d:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (corresponding to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v3, p0, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->hidl_d:B

    invoke-static {v3}, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo$hidl_discriminator;->getName(B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), and hidl_o is of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    iget-object v0, p0, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->hidl_o:Ljava/lang/Object;

    if-eqz v0, :cond_3

    const-class v0, Landroid/hardware/radio/V1_5/CellInfoWcdma;

    iget-object v1, p0, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->hidl_o:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Union is in a corrupted state."

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_1
    iget-object v0, p0, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->hidl_o:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/radio/V1_5/CellInfoWcdma;

    return-object v0
.end method

.method public blacklist wcdma(Landroid/hardware/radio/V1_5/CellInfoWcdma;)V
    .locals 1

    const/4 v0, 0x1

    iput-byte v0, p0, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->hidl_d:B

    iput-object p1, p0, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->hidl_o:Ljava/lang/Object;

    return-void
.end method

.method public final blacklist writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .locals 3

    const-wide/16 v0, 0x0

    add-long/2addr v0, p2

    iget-byte v2, p0, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->hidl_d:B

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt8(JB)V

    iget-byte v0, p0, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->hidl_d:B

    const-wide/16 v1, 0x8

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/Error;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown union discriminator (value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->hidl_d:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-virtual {p0}, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->cdma()Landroid/hardware/radio/V1_2/CellInfoCdma;

    move-result-object v0

    add-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Landroid/hardware/radio/V1_2/CellInfoCdma;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->nr()Landroid/hardware/radio/V1_6/CellInfoNr;

    move-result-object v0

    add-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Landroid/hardware/radio/V1_6/CellInfoNr;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->lte()Landroid/hardware/radio/V1_6/CellInfoLte;

    move-result-object v0

    add-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Landroid/hardware/radio/V1_6/CellInfoLte;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->tdscdma()Landroid/hardware/radio/V1_5/CellInfoTdscdma;

    move-result-object v0

    add-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Landroid/hardware/radio/V1_5/CellInfoTdscdma;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0}, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->wcdma()Landroid/hardware/radio/V1_5/CellInfoWcdma;

    move-result-object v0

    add-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Landroid/hardware/radio/V1_5/CellInfoWcdma;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    goto :goto_0

    :pswitch_5
    invoke-virtual {p0}, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->gsm()Landroid/hardware/radio/V1_5/CellInfoGsm;

    move-result-object v0

    add-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Landroid/hardware/radio/V1_5/CellInfoGsm;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    nop

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final blacklist writeToParcel(Landroid/os/HwParcel;)V
    .locals 3

    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0xc8

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    return-void
.end method
