.class public Lcom/samsung/android/knox/mtd/KMTDManager;
.super Ljava/lang/Object;
.source "KMTDManager.java"


# static fields
.field public static final greylist MTD_FEATURES:Ljava/lang/String; = "knoxmtd.analysis.features"

.field public static final greylist SERVICE_LABEL:Ljava/lang/String; = "knox.mtd"

.field private static final greylist TAG:Ljava/lang/String;

.field private static greylist mMonitoredPackageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/mtd/PackageInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final greylist mContext:Landroid/content/Context;

.field private final greylist mMtdService:Lcom/samsung/android/knox/mtd/IMTDService;


# direct methods
.method static constructor greylist <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/mtd/KMTDManager;->mMonitoredPackageList:Ljava/util/List;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KnoxAI_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/samsung/android/knox/mtd/KMTDManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/mtd/KMTDManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor greylist <init>(Lcom/samsung/android/knox/mtd/IMTDService;Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/samsung/android/knox/mtd/KMTDManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mMtdService Constructor called: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/samsung/android/knox/mtd/KMTDManager;->mMtdService:Lcom/samsung/android/knox/mtd/IMTDService;

    iput-object p2, p0, Lcom/samsung/android/knox/mtd/KMTDManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method private greylist getManagedProfileFlag(I)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/mtd/KMTDManager;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v1

    return v1
.end method

.method private greylist getUserID(I)I
    .locals 1

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    return v0
.end method


# virtual methods
.method public greylist analyzeContent(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/knox/mtd/KMTDManager;->mMtdService:Lcom/samsung/android/knox/mtd/IMTDService;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-direct {p0, p3}, Lcom/samsung/android/knox/mtd/KMTDManager;->getUserID(I)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/knox/mtd/KMTDManager;->mMtdService:Lcom/samsung/android/knox/mtd/IMTDService;

    invoke-direct {p0, v0}, Lcom/samsung/android/knox/mtd/KMTDManager;->getManagedProfileFlag(I)Z

    move-result v5

    move-object v2, p1

    move-object v3, p2

    move v4, v0

    move v6, p3

    invoke-interface/range {v1 .. v6}, Lcom/samsung/android/knox/mtd/IMTDService;->analyzeContent(Ljava/lang/String;Ljava/lang/String;IZI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/mtd/KMTDManager;->TAG:Ljava/lang/String;

    const-string v2, "Exception in KFBP Manager Service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public greylist analyzeContents(Ljava/util/List;Lcom/samsung/android/knox/mtd/MtdResultCallback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/samsung/android/knox/mtd/MtdResultCallback;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/mtd/KMTDManager;->mMtdService:Lcom/samsung/android/knox/mtd/IMTDService;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/samsung/android/knox/mtd/KMTDManager$2;

    invoke-direct {v0, p0, p2}, Lcom/samsung/android/knox/mtd/KMTDManager$2;-><init>(Lcom/samsung/android/knox/mtd/KMTDManager;Lcom/samsung/android/knox/mtd/MtdResultCallback;)V

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/mtd/KMTDManager;->mMtdService:Lcom/samsung/android/knox/mtd/IMTDService;

    invoke-interface {v1, p1, v0}, Lcom/samsung/android/knox/mtd/IMTDService;->analyzeContents(Ljava/util/List;Lcom/samsung/android/knox/mtd/IMtdCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v2, Lcom/samsung/android/knox/mtd/KMTDManager;->TAG:Ljava/lang/String;

    const-string v3, "Exception in KFBP Manager Service"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public greylist analyzeFrameBuffers(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/mtd/FrameBuffersInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/mtd/KMTDManager;->mMtdService:Lcom/samsung/android/knox/mtd/IMTDService;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/mtd/KMTDManager;->mMtdService:Lcom/samsung/android/knox/mtd/IMTDService;

    invoke-interface {v0, p1}, Lcom/samsung/android/knox/mtd/IMTDService;->analyzeFrameBuffers(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/mtd/KMTDManager;->TAG:Ljava/lang/String;

    const-string v2, "Exception in MTD Service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public greylist analyzeUrl(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;I)V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/knox/mtd/KMTDManager;->mMtdService:Lcom/samsung/android/knox/mtd/IMTDService;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-direct {p0, p4}, Lcom/samsung/android/knox/mtd/KMTDManager;->getUserID(I)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/knox/mtd/KMTDManager;->mMtdService:Lcom/samsung/android/knox/mtd/IMTDService;

    invoke-direct {p0, v0}, Lcom/samsung/android/knox/mtd/KMTDManager;->getManagedProfileFlag(I)Z

    move-result v5

    move-object v2, p1

    move-object v3, p2

    move v4, v0

    move-object v6, p3

    invoke-interface/range {v1 .. v6}, Lcom/samsung/android/knox/mtd/IMTDService;->analyzeURL(Ljava/lang/String;Ljava/lang/String;IZLandroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/mtd/KMTDManager;->TAG:Ljava/lang/String;

    const-string v2, "Exception in KFBP Manager Service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public greylist analyzeUrls(Ljava/util/List;Lcom/samsung/android/knox/mtd/MtdResultCallback;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/samsung/android/knox/mtd/MtdResultCallback;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/mtd/KMTDManager;->mMtdService:Lcom/samsung/android/knox/mtd/IMTDService;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/samsung/android/knox/mtd/KMTDManager$1;

    invoke-direct {v0, p0, p2}, Lcom/samsung/android/knox/mtd/KMTDManager$1;-><init>(Lcom/samsung/android/knox/mtd/KMTDManager;Lcom/samsung/android/knox/mtd/MtdResultCallback;)V

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/mtd/KMTDManager;->mMtdService:Lcom/samsung/android/knox/mtd/IMTDService;

    invoke-interface {v1, p1, v0, p3}, Lcom/samsung/android/knox/mtd/IMTDService;->analyzeURLs(Ljava/util/List;Lcom/samsung/android/knox/mtd/IMtdCallback;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v2, Lcom/samsung/android/knox/mtd/KMTDManager;->TAG:Ljava/lang/String;

    const-string v3, "Exception in KFBP Manager Service"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public greylist getSystemProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/mtd/KMTDManager;->mMtdService:Lcom/samsung/android/knox/mtd/IMTDService;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/mtd/KMTDManager;->mMtdService:Lcom/samsung/android/knox/mtd/IMTDService;

    invoke-interface {v0, p1}, Lcom/samsung/android/knox/mtd/IMTDService;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/mtd/KMTDManager;->TAG:Ljava/lang/String;

    const-string v2, "Exception in KFBP Manager Service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public greylist setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/mtd/KMTDManager;->mMtdService:Lcom/samsung/android/knox/mtd/IMTDService;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/mtd/KMTDManager;->mMtdService:Lcom/samsung/android/knox/mtd/IMTDService;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/knox/mtd/IMTDService;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/mtd/KMTDManager;->TAG:Ljava/lang/String;

    const-string v2, "Exception in KFBP Manager Service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method
