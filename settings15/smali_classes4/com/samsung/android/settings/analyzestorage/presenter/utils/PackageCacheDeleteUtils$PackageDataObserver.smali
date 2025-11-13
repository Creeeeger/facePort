.class public final Lcom/samsung/android/settings/analyzestorage/presenter/utils/PackageCacheDeleteUtils$PackageDataObserver;
.super Landroid/content/pm/IPackageDataObserver$Stub;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mPackageDataListener:Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecuteClearAppCache$1$$ExternalSyntheticLambda0;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecuteClearAppCache$1$$ExternalSyntheticLambda0;)V
    .locals 0

    invoke-direct {p0}, Landroid/content/pm/IPackageDataObserver$Stub;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/utils/PackageCacheDeleteUtils$PackageDataObserver;->mPackageDataListener:Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecuteClearAppCache$1$$ExternalSyntheticLambda0;

    return-void
.end method


# virtual methods
.method public final onRemoveCompleted(Ljava/lang/String;Z)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/utils/PackageCacheDeleteUtils$PackageDataObserver;->mPackageDataListener:Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecuteClearAppCache$1$$ExternalSyntheticLambda0;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecuteClearAppCache$1$$ExternalSyntheticLambda0;->onRemoveCompleted(Ljava/lang/String;Z)V

    :cond_0
    if-nez p2, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "onRemoveCompleted() ] Application cache is not deleted. PackageName : "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PackageCacheDeleteUtils"

    invoke-static {p1, p0}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
