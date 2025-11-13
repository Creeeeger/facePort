.class public Lcom/samsung/android/settings/deviceinfo/aboutphone/deviceimage/DeviceImageManager;
.super Ljava/lang/Object;
.source "DeviceImageManager.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mScpmProduct:Lcom/samsung/scpm/odm/dos/product/ScpmProduct;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/scpm/odm/dos/product/ScpmProduct;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/deviceimage/DeviceImageManager;->mContext:Landroid/content/Context;

    .line 25
    iput-object p2, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/deviceimage/DeviceImageManager;->mScpmProduct:Lcom/samsung/scpm/odm/dos/product/ScpmProduct;

    return-void
.end method


# virtual methods
.method public handleResult([Ljava/lang/String;)Z
    .locals 7

    const-string v0, "DeviceImageManager"

    const-string v1, "handleResult"

    .line 84
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p1, v3

    .line 86
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "modelCode : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget-object v5, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/deviceimage/DeviceImageManager;->mScpmProduct:Lcom/samsung/scpm/odm/dos/product/ScpmProduct;

    const-string v6, "2"

    invoke-virtual {v5, v4, v6}, Lcom/samsung/scpm/odm/dos/product/ScpmProduct;->getPki(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/scpm/odm/dos/product/ProductDataSet;

    move-result-object v4

    .line 89
    iget-object v5, v4, Lcom/samsung/scpm/odm/dos/product/ProductDataSet;->parcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v5, :cond_0

    .line 90
    iget-object v6, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/deviceimage/DeviceImageManager;->mContext:Landroid/content/Context;

    invoke-static {v6, v5}, Lcom/samsung/android/settings/deviceinfo/aboutphone/deviceimage/DeviceImageFileUtils;->writeImageFile(Landroid/content/Context;Landroid/os/ParcelFileDescriptor;)V

    .line 97
    :try_start_0
    iget-object v4, v4, Lcom/samsung/scpm/odm/dos/product/ProductDataSet;->parcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    .line 99
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "file close error : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const-string p0, "Can not update."

    .line 92
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public initialize()V
    .locals 3

    const-string v0, "DeviceImageManager"

    const-string v1, "initialize"

    .line 43
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/deviceimage/DeviceImageManager;->mScpmProduct:Lcom/samsung/scpm/odm/dos/product/ScpmProduct;

    invoke-virtual {v1}, Lcom/samsung/scpm/odm/dos/common/ScpmAbstractApi;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 45
    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/deviceimage/DeviceImageManager;->mScpmProduct:Lcom/samsung/scpm/odm/dos/product/ScpmProduct;

    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/deviceimage/DeviceImageManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/samsung/scpm/odm/dos/common/AbstractScpmOdmApi;->initialize(Ljava/lang/String;)Lcom/samsung/scpm/odm/dos/common/ScpmDataSet;

    move-result-object p0

    .line 46
    iget-object v1, p0, Lcom/samsung/scpm/odm/dos/common/ScpmDataSet;->rmsg:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 47
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initialize rcode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/scpm/odm/dos/common/ScpmDataSet;->rcode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", rmsg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/scpm/odm/dos/common/ScpmDataSet;->rmsg:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string p0, "SCPM Product is not available"

    .line 50
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public register()V
    .locals 3

    const-string v0, "DeviceImageManager"

    const-string v1, "register"

    .line 29
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/deviceimage/DeviceImageManager;->mScpmProduct:Lcom/samsung/scpm/odm/dos/product/ScpmProduct;

    invoke-virtual {v1}, Lcom/samsung/scpm/odm/dos/common/ScpmAbstractApi;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 32
    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/deviceimage/DeviceImageManager;->mScpmProduct:Lcom/samsung/scpm/odm/dos/product/ScpmProduct;

    invoke-virtual {p0}, Lcom/samsung/scpm/odm/dos/common/AbstractScpmOdmApi;->register()Lcom/samsung/scpm/odm/dos/common/ScpmDataSet;

    move-result-object p0

    .line 33
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scpm result : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/samsung/scpm/odm/dos/common/ScpmDataSet;->result:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string p0, "SCPM Product is not available"

    .line 35
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 38
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resister failed --> error :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public requestPki()V
    .locals 4

    const-string v0, "DeviceImageManager"

    const-string v1, "requestPki"

    .line 56
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/deviceimage/DeviceImageManager;->mScpmProduct:Lcom/samsung/scpm/odm/dos/product/ScpmProduct;

    invoke-virtual {v1}, Lcom/samsung/scpm/odm/dos/common/ScpmAbstractApi;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "ril.product_code"

    .line 58
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 59
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestPki - model_code = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    .line 62
    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/deviceimage/DeviceImageManager;->mScpmProduct:Lcom/samsung/scpm/odm/dos/product/ScpmProduct;

    invoke-virtual {p0, v2}, Lcom/samsung/scpm/odm/dos/product/ScpmProduct;->requestPki([Ljava/lang/String;)Lcom/samsung/scpm/odm/dos/product/ProductDataSet;

    move-result-object p0

    .line 63
    iget-object v1, p0, Lcom/samsung/scpm/odm/dos/common/ScpmDataSet;->rmsg:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 64
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestPki rcode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/scpm/odm/dos/common/ScpmDataSet;->rcode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", rmsg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/scpm/odm/dos/common/ScpmDataSet;->rmsg:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string p0, "SCPM Product is not available"

    .line 67
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method
