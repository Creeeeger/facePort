.class public final Lcom/samsung/android/settings/analyzestorage/presenter/utils/PackageDeleteUtils$PackageDeleteObserver;
.super Landroid/content/pm/IPackageDeleteObserver$Stub;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mPackageDeleteListener:Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecuteUninstall$1$$ExternalSyntheticLambda0;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecuteUninstall$1$$ExternalSyntheticLambda0;)V
    .locals 0

    invoke-direct {p0}, Landroid/content/pm/IPackageDeleteObserver$Stub;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/utils/PackageDeleteUtils$PackageDeleteObserver;->mPackageDeleteListener:Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecuteUninstall$1$$ExternalSyntheticLambda0;

    return-void
.end method


# virtual methods
.method public final packageDeleted(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/utils/PackageDeleteUtils$PackageDeleteObserver;->mPackageDeleteListener:Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecuteUninstall$1$$ExternalSyntheticLambda0;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecuteUninstall$1$$ExternalSyntheticLambda0;->onPackageDeleted(Ljava/lang/String;Z)V

    :cond_1
    if-nez v0, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "packageDeleted ] package = "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " result "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PackageDeleteUtils"

    invoke-static {p1, p0}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method
