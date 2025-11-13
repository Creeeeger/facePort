.class Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager$DeviceIDBootProvisionWorkerBase;
.super Ljava/lang/Object;
.source "DeviceIDProvisionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeviceIDBootProvisionWorkerBase"
.end annotation


# instance fields
.field private blacklist mImei0:Ljava/lang/String;

.field private blacklist mImei1:Ljava/lang/String;

.field private blacklist mMeid:Ljava/lang/String;

.field private blacklist mSerial:Ljava/lang/String;

.field final synthetic blacklist this$0:Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager;


# direct methods
.method private constructor blacklist <init>(Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager$DeviceIDBootProvisionWorkerBase;->this$0:Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager$DeviceIDBootProvisionWorkerBase;->mImei0:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager$DeviceIDBootProvisionWorkerBase;->mImei1:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager$DeviceIDBootProvisionWorkerBase;->mMeid:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager$DeviceIDBootProvisionWorkerBase;->mSerial:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager;Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager$DeviceIDBootProvisionWorkerBase-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager$DeviceIDBootProvisionWorkerBase;-><init>(Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager;)V

    return-void
.end method


# virtual methods
.method protected blacklist provisionDeviceID(I)I
    .locals 17

    move-object/from16 v0, p0

    sget-object v12, Landroid/os/Build;->BRAND_FOR_ATTESTATION:Ljava/lang/String;

    sget-object v13, Landroid/os/Build;->DEVICE_FOR_ATTESTATION:Ljava/lang/String;

    sget-object v14, Landroid/os/Build;->PRODUCT_FOR_ATTESTATION:Ljava/lang/String;

    sget-object v15, Landroid/os/Build;->MANUFACTURER_FOR_ATTESTATION:Ljava/lang/String;

    sget-object v16, Landroid/os/Build;->MODEL_FOR_ATTESTATION:Ljava/lang/String;

    nop

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, v0, Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager$DeviceIDBootProvisionWorkerBase;->mSerial:Ljava/lang/String;

    invoke-static {v2}, Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager$DeviceIDBootProvisionWorkerBase$1OutputConverter;->reprNonZero(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager$DeviceIDBootProvisionWorkerBase;->mSerial:Ljava/lang/String;

    invoke-static {v3}, Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager$DeviceIDBootProvisionWorkerBase$1OutputConverter;->getLengthIfNotNull(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, v0, Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager$DeviceIDBootProvisionWorkerBase;->mImei0:Ljava/lang/String;

    invoke-static {v4}, Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager$DeviceIDBootProvisionWorkerBase$1OutputConverter;->reprNonZero(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager$DeviceIDBootProvisionWorkerBase;->mImei0:Ljava/lang/String;

    invoke-static {v5}, Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager$DeviceIDBootProvisionWorkerBase$1OutputConverter;->getLengthIfNotNull(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, v0, Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager$DeviceIDBootProvisionWorkerBase;->mImei1:Ljava/lang/String;

    invoke-static {v6}, Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager$DeviceIDBootProvisionWorkerBase$1OutputConverter;->reprNonZero(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v0, Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager$DeviceIDBootProvisionWorkerBase;->mImei1:Ljava/lang/String;

    invoke-static {v7}, Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager$DeviceIDBootProvisionWorkerBase$1OutputConverter;->getLengthIfNotNull(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v8, v0, Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager$DeviceIDBootProvisionWorkerBase;->mMeid:Ljava/lang/String;

    invoke-static {v8}, Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager$DeviceIDBootProvisionWorkerBase$1OutputConverter;->reprNonZero(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, v0, Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager$DeviceIDBootProvisionWorkerBase;->mMeid:Ljava/lang/String;

    invoke-static {v9}, Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager$DeviceIDBootProvisionWorkerBase$1OutputConverter;->getLengthIfNotNull(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    filled-new-array/range {v1 .. v9}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Proceeding device ID provision. [key type = %d, serial = %s (%d), imei0 = %s (%d), imei1 = %s (%d), meid = %s (%d)]"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "DeviceIDProvisionManager"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager$DeviceIDBootProvisionWorkerBase;->this$0:Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager;

    iget-object v6, v0, Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager$DeviceIDBootProvisionWorkerBase;->mSerial:Ljava/lang/String;

    iget-object v7, v0, Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager$DeviceIDBootProvisionWorkerBase;->mImei0:Ljava/lang/String;

    iget-object v8, v0, Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager$DeviceIDBootProvisionWorkerBase;->mImei1:Ljava/lang/String;

    iget-object v9, v0, Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager$DeviceIDBootProvisionWorkerBase;->mMeid:Ljava/lang/String;

    move/from16 v2, p1

    move-object v3, v12

    move-object v4, v13

    move-object v5, v14

    move-object v10, v15

    move-object/from16 v11, v16

    invoke-static/range {v1 .. v11}, Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager;->-$$Nest$minstallDeviceID(Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method protected blacklist setupProvisionContext()Z
    .locals 9

    const-string v0, "ro.carrier"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "WIFI-ONLY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "DeviceIDProvisionManager"

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager$DeviceIDBootProvisionWorkerBase;->tryGetTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v4

    if-nez v4, :cond_0

    const-string v1, "Failed to connect to telephony service. Postponing to try again..."

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    const-string v5, "ro.multisim.simslotcount"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x2

    if-le v5, v6, :cond_1

    nop

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    const-string v7, "Only 2 SIM slots are supported, but SIM slot count was bigger than 2. Extra slots will not be taken into account. [slot count = %d]"

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x2

    goto :goto_0

    :cond_1
    if-gtz v5, :cond_2

    nop

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v6, "This is not wifi only model, but SIM slot count is strange. [slot count = %d]"

    invoke-static {v6, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_2
    :goto_0
    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_6

    invoke-virtual {p0, v4, v6}, Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager$DeviceIDBootProvisionWorkerBase;->tryGetImei(Landroid/telephony/TelephonyManager;I)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v8, "Failed to fetch imei %d. Postponing to try later."

    invoke-static {v8, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_3
    if-nez v6, :cond_4

    iput-object v7, p0, Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager$DeviceIDBootProvisionWorkerBase;->mImei0:Ljava/lang/String;

    goto :goto_2

    :cond_4
    if-ne v6, v1, :cond_5

    iput-object v7, p0, Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager$DeviceIDBootProvisionWorkerBase;->mImei1:Ljava/lang/String;

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_5
    nop

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v8, "Unknown SIM slot number %d found. Please contact the administrator."

    invoke-static {v8, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_6
    invoke-virtual {p0, v4, v2}, Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager$DeviceIDBootProvisionWorkerBase;->tryGetMeid(Landroid/telephony/TelephonyManager;I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager$DeviceIDBootProvisionWorkerBase;->mMeid:Ljava/lang/String;

    iget-object v6, p0, Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager$DeviceIDBootProvisionWorkerBase;->mMeid:Ljava/lang/String;

    if-nez v6, :cond_7

    const-string v6, "Failed to fetch meid. Skipping."

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, ""

    iput-object v6, p0, Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager$DeviceIDBootProvisionWorkerBase;->mMeid:Ljava/lang/String;

    :cond_7
    goto :goto_3

    :cond_8
    const-string v4, "Skipping imei and meid fetch because this is wifi only model."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    invoke-static {}, Landroid/os/Build;->getSerial()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager$DeviceIDBootProvisionWorkerBase;->mSerial:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager$DeviceIDBootProvisionWorkerBase;->mSerial:Ljava/lang/String;

    if-nez v4, :cond_9

    const-string v1, "Failed to retrieve device serial. Postponing to try later."

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_9
    return v1
.end method

.method protected blacklist tryGetImei(Landroid/telephony/TelephonyManager;I)Ljava/lang/String;
    .locals 3

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1, p2}, Landroid/telephony/TelephonyManager;->getImei(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V

    nop

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Imei %d not supported. Overriding to empty string."

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "DeviceIDProvisionManager"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, ""

    return-object v1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Imei fetch requested but telephony service is not connected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected blacklist tryGetMeid(Landroid/telephony/TelephonyManager;I)Ljava/lang/String;
    .locals 3

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1, v0}, Landroid/telephony/TelephonyManager;->getMeid(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V

    const-string v1, "DeviceIDProvisionManager"

    const-string v2, "Meid not supported. Overriding to empty string."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, ""

    return-object v1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Meid fetch requested but telephony service is not connected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected blacklist tryGetTelephonyManager()Landroid/telephony/TelephonyManager;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager$DeviceIDBootProvisionWorkerBase;->this$0:Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager;

    invoke-static {v0}, Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager;->-$$Nest$fgetmContext(Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager;)Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    const-string v1, "DeviceIDProvisionManager"

    const-string v2, "Failed to connect to telephony service. Postponing to try again..."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return-object v1

    :cond_0
    return-object v0
.end method
