.class public final Lcom/samsung/android/settings/deviceinfo/aboutphone/deviceimage/DeviceImageManager$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/deviceinfo/aboutphone/deviceimage/DeviceImageManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/deviceinfo/aboutphone/deviceimage/DeviceImageManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/deviceimage/DeviceImageManager$1;->this$0:Lcom/samsung/android/settings/deviceinfo/aboutphone/deviceimage/DeviceImageManager;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    const-string v0, "com.samsung.android.scpm.product"

    const-string v1, "SCPM Product is not available"

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/deviceimage/DeviceImageManager$1;->this$0:Lcom/samsung/android/settings/deviceinfo/aboutphone/deviceimage/DeviceImageManager;

    iget-object v2, v2, Lcom/samsung/android/settings/deviceinfo/aboutphone/deviceimage/DeviceImageManager;->mScpmProduct:Lcom/samsung/scpm/odm/dos/product/ScpmProduct;

    const-string/jumbo v3, "scpm result : "

    const-string v4, "DeviceImageManager"

    const-string/jumbo v5, "register"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    :try_start_0
    iget-object v6, v2, Lcom/samsung/scpm/odm/dos/product/ScpmProduct;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v6, v0, v5}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v2}, Lcom/samsung/scpm/odm/dos/product/ScpmProduct;->register()Lcom/samsung/scpm/odm/dos/common/ScpmDataSet;

    move-result-object v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v2, Lcom/samsung/scpm/odm/dos/common/ScpmDataSet;->result:I

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_0
    move-exception v2

    goto :goto_0

    :cond_0
    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "resister failed --> error :"

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/deviceimage/DeviceImageManager$1;->this$0:Lcom/samsung/android/settings/deviceinfo/aboutphone/deviceimage/DeviceImageManager;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "initialize"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, v2, Lcom/samsung/android/settings/deviceinfo/aboutphone/deviceimage/DeviceImageManager;->mScpmProduct:Lcom/samsung/scpm/odm/dos/product/ScpmProduct;

    iget-object v7, v6, Lcom/samsung/scpm/odm/dos/product/ScpmProduct;->context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v7, v0, v5}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v7

    if-eqz v7, :cond_1

    const/4 v7, 0x1

    goto :goto_2

    :cond_1
    move v7, v5

    :goto_2
    const-string v8, ", rmsg = "

    const/4 v9, 0x0

    if-eqz v7, :cond_4

    iget-object v2, v2, Lcom/samsung/android/settings/deviceinfo/aboutphone/deviceimage/DeviceImageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v10, "initialize : "

    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, v6, Lcom/samsung/scpm/odm/dos/product/ScpmProduct;->appId:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget-boolean v10, Lcom/samsung/scpm/odm/dos/common/LOG;->ENABLED:Z

    iget-object v10, v6, Lcom/samsung/scpm/odm/dos/product/ScpmProduct;->TAG:Ljava/lang/String;

    if-eqz v7, :cond_2

    invoke-static {v10, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :try_start_1
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v11, "receiverPackageName"

    invoke-virtual {v7, v11, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v6, Lcom/samsung/scpm/odm/dos/product/ScpmProduct;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v3, v2, v7}, Lcom/samsung/scpm/odm/dos/product/ScpmProduct;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/scpm/odm/dos/common/ScpmDataSet;->create(Landroid/os/Bundle;)Lcom/samsung/scpm/odm/dos/common/ScpmDataSet;

    move-result-object v3

    if-eqz v2, :cond_3

    const-string v6, "filterId"

    invoke-virtual {v2, v6, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    :cond_3
    new-instance v2, Lcom/samsung/scpm/odm/dos/configuration/ConfigurationDataSet;

    iget v6, v3, Lcom/samsung/scpm/odm/dos/common/ScpmDataSet;->result:I

    iget v7, v3, Lcom/samsung/scpm/odm/dos/common/ScpmDataSet;->rcode:I

    iget-object v3, v3, Lcom/samsung/scpm/odm/dos/common/ScpmDataSet;->rmsg:Ljava/lang/String;

    invoke-direct {v2, v6, v7, v3}, Lcom/samsung/scpm/odm/dos/common/ScpmDataSet;-><init>(IILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "cannot register package : "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Lcom/samsung/scpm/odm/dos/common/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/samsung/scpm/odm/dos/configuration/ConfigurationDataSet;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "There is an exception, please check  { "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "}"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x2

    const v7, 0x55d4a80

    invoke-direct {v3, v6, v7, v2}, Lcom/samsung/scpm/odm/dos/common/ScpmDataSet;-><init>(IILjava/lang/String;)V

    move-object v2, v3

    :goto_3
    iget-object v3, v2, Lcom/samsung/scpm/odm/dos/common/ScpmDataSet;->rmsg:Ljava/lang/String;

    if-eqz v3, :cond_5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "initialize rcode = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v2, Lcom/samsung/scpm/odm/dos/common/ScpmDataSet;->rcode:I

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_4
    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_4
    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/deviceimage/DeviceImageManager$1;->this$0:Lcom/samsung/android/settings/deviceinfo/aboutphone/deviceimage/DeviceImageManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v2, "requestPki"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/deviceimage/DeviceImageManager;->mScpmProduct:Lcom/samsung/scpm/odm/dos/product/ScpmProduct;

    iget-object v3, p0, Lcom/samsung/scpm/odm/dos/product/ScpmProduct;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v0, v5}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    if-eqz v0, :cond_6

    const-string/jumbo v0, "ril.product_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "requestPki - model_code = "

    invoke-static {v1, v0, v4}, Landroidx/fragment/app/DialogFragment$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcom/samsung/scpm/odm/dos/common/LOG;->ENABLED:Z

    iget-object v1, p0, Lcom/samsung/scpm/odm/dos/product/ScpmProduct;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "requestPki : 1"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_2
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v5, "modelCodes"

    invoke-virtual {v3, v5, v0}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/scpm/odm/dos/product/ScpmProduct;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v0, v3}, Lcom/samsung/scpm/odm/dos/product/ScpmProduct;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    invoke-static {p0, v9}, Lcom/samsung/scpm/odm/dos/product/ProductDataSet;->create(Landroid/os/Bundle;Landroid/os/ParcelFileDescriptor;)Lcom/samsung/scpm/odm/dos/product/ProductDataSet;

    move-result-object p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_5

    :catch_1
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "cannot get pki from scpm : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/scpm/odm/dos/common/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/samsung/scpm/odm/dos/product/ProductDataSet;->create(Ljava/lang/Throwable;)Lcom/samsung/scpm/odm/dos/product/ProductDataSet;

    move-result-object p0

    :goto_5
    iget-object v0, p0, Lcom/samsung/scpm/odm/dos/common/ScpmDataSet;->rmsg:Ljava/lang/String;

    if-eqz v0, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "requestPki rcode = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/samsung/scpm/odm/dos/common/ScpmDataSet;->rcode:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_6
    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_6
    return-void
.end method
