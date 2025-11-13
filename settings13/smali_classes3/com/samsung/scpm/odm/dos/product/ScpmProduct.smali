.class public Lcom/samsung/scpm/odm/dos/product/ScpmProduct;
.super Lcom/samsung/scpm/odm/dos/common/AbstractScpmOdmApi;
.source "ScpmProduct.java"


# direct methods
.method public static synthetic $r8$lambda$Hs-WzUr3niIc5AQTkym2f7jTul0(Lcom/samsung/scpm/odm/dos/product/ScpmProduct;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/scpm/odm/dos/product/ScpmProduct;->lambda$getPki$0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "appId"
        }
    .end annotation

    const-string v0, "Product"

    .line 33
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/scpm/odm/dos/common/AbstractScpmOdmApi;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$getPki$0(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPki : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", token : "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/samsung/scpm/odm/dos/common/ScpmAbstractApi;->context:Landroid/content/Context;

    iget-object p0, p0, Lcom/samsung/scpm/odm/dos/common/ScpmAbstractApi;->appId:Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/samsung/scpm/odm/dos/common/TokenStore;->load(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected getAuthority()Ljava/lang/String;
    .locals 0

    const-string p0, "com.samsung.android.scpm.product"

    return-object p0
.end method

.method public getPki(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/scpm/odm/dos/product/ProductDataSet;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "modelCode",
            "itemId"
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lcom/samsung/scpm/odm/dos/common/ScpmAbstractApi;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPki : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", itemId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/scpm/odm/dos/common/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/samsung/scpm/odm/dos/common/ScpmAbstractApi;->TAG:Ljava/lang/String;

    new-instance v1, Lcom/samsung/scpm/odm/dos/product/ScpmProduct$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/samsung/scpm/odm/dos/product/ScpmProduct$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/scpm/odm/dos/product/ScpmProduct;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/samsung/scpm/odm/dos/common/LOG;->d(Ljava/lang/String;Ljava/util/function/Supplier;)V

    .line 77
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 78
    invoke-virtual {p0, p2}, Lcom/samsung/scpm/odm/dos/common/ScpmAbstractApi;->openFile(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p2

    .line 79
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "token"

    .line 80
    iget-object v2, p0, Lcom/samsung/scpm/odm/dos/common/ScpmAbstractApi;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/scpm/odm/dos/common/ScpmAbstractApi;->appId:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/scpm/odm/dos/common/TokenStore;->load(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "modelCode"

    .line 81
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_0

    const-string p1, "getLastError"

    .line 84
    iget-object p2, p0, Lcom/samsung/scpm/odm/dos/common/ScpmAbstractApi;->context:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/scpm/odm/dos/common/ScpmAbstractApi;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    .line 85
    iget-object p2, p0, Lcom/samsung/scpm/odm/dos/common/ScpmAbstractApi;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cannot get product Info: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "rcode"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "rmsg"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/samsung/scpm/odm/dos/common/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 86
    invoke-static {p1, p2}, Lcom/samsung/scpm/odm/dos/product/ProductDataSet;->create(Landroid/os/Bundle;Landroid/os/ParcelFileDescriptor;)Lcom/samsung/scpm/odm/dos/product/ProductDataSet;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p1, "getPki"

    .line 88
    iget-object v1, p0, Lcom/samsung/scpm/odm/dos/common/ScpmAbstractApi;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1, v0}, Lcom/samsung/scpm/odm/dos/common/ScpmAbstractApi;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    .line 89
    invoke-static {p1, p2}, Lcom/samsung/scpm/odm/dos/product/ProductDataSet;->create(Landroid/os/Bundle;Landroid/os/ParcelFileDescriptor;)Lcom/samsung/scpm/odm/dos/product/ProductDataSet;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 92
    iget-object p0, p0, Lcom/samsung/scpm/odm/dos/common/ScpmAbstractApi;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "cannot get product Info : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/samsung/scpm/odm/dos/common/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    invoke-static {p1}, Lcom/samsung/scpm/odm/dos/product/ProductDataSet;->create(Ljava/lang/Throwable;)Lcom/samsung/scpm/odm/dos/product/ProductDataSet;

    move-result-object p0

    return-object p0
.end method

.method protected getUri()Landroid/net/Uri;
    .locals 0

    const-string p0, "content://com.samsung.android.scpm.product/"

    .line 131
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public requestPki([Ljava/lang/String;)Lcom/samsung/scpm/odm/dos/product/ProductDataSet;
    .locals 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "modelCodes"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/samsung/scpm/odm/dos/common/ScpmAbstractApi;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestPki : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/scpm/odm/dos/common/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    array-length v0, p1

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 50
    new-instance p0, Lcom/samsung/scpm/odm/dos/product/ProductDataSet;

    const/4 v3, 0x2

    const v4, 0x55d4a80

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-string v5, "There is no model codes."

    move-object v2, p0

    invoke-direct/range {v2 .. v13}, Lcom/samsung/scpm/odm/dos/product/ProductDataSet;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V

    return-object p0

    .line 54
    :cond_0
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "modelCodes"

    .line 55
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    const-string p1, "requestPki"

    .line 57
    iget-object v1, p0, Lcom/samsung/scpm/odm/dos/common/ScpmAbstractApi;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1, v0}, Lcom/samsung/scpm/odm/dos/common/ScpmAbstractApi;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    const/4 v0, 0x0

    .line 58
    invoke-static {p1, v0}, Lcom/samsung/scpm/odm/dos/product/ProductDataSet;->create(Landroid/os/Bundle;Landroid/os/ParcelFileDescriptor;)Lcom/samsung/scpm/odm/dos/product/ProductDataSet;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 60
    iget-object p0, p0, Lcom/samsung/scpm/odm/dos/common/ScpmAbstractApi;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cannot get pki from scpm : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/samsung/scpm/odm/dos/common/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-static {p1}, Lcom/samsung/scpm/odm/dos/product/ProductDataSet;->create(Ljava/lang/Throwable;)Lcom/samsung/scpm/odm/dos/product/ProductDataSet;

    move-result-object p0

    return-object p0
.end method
