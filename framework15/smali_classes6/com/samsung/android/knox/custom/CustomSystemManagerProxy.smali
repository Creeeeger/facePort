.class public Lcom/samsung/android/knox/custom/CustomSystemManagerProxy;
.super Ljava/lang/Object;
.source "CustomSystemManagerProxy.java"


# static fields
.field private static final greylist TAG:Ljava/lang/String; = "CustomSystemManagerProxy"

.field private static greylist mProxy:Lcom/samsung/android/knox/custom/CustomSystemManagerProxy;


# direct methods
.method public constructor greylist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist getInstance()Lcom/samsung/android/knox/custom/CustomSystemManagerProxy;
    .locals 1

    sget-object v0, Lcom/samsung/android/knox/custom/CustomSystemManagerProxy;->mProxy:Lcom/samsung/android/knox/custom/CustomSystemManagerProxy;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/knox/custom/CustomSystemManagerProxy;

    invoke-direct {v0}, Lcom/samsung/android/knox/custom/CustomSystemManagerProxy;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/custom/CustomSystemManagerProxy;->mProxy:Lcom/samsung/android/knox/custom/CustomSystemManagerProxy;

    :cond_0
    sget-object v0, Lcom/samsung/android/knox/custom/CustomSystemManagerProxy;->mProxy:Lcom/samsung/android/knox/custom/CustomSystemManagerProxy;

    return-object v0
.end method


# virtual methods
.method public greylist getExtendedCallInfoState()Z
    .locals 3

    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/sec/enterprise/IEDMProxy;->getExtendedCallInfoState()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "CustomSystemManagerProxy"

    const-string v2, "PXY-getExtendedCallInfoState returning default value"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v0, 0x1

    return v0
.end method
