.class public final Lcom/android/settings/spa/app/appinfo/AppForceStopRepository;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final appButtonRepository:Lcom/android/settings/spa/app/appinfo/AppButtonRepository;

.field public final context:Landroid/content/Context;

.field public final packageInfoPresenter:Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter;


# direct methods
.method public constructor <init>(Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter;)V
    .locals 2

    new-instance v0, Lcom/android/settings/spa/app/appinfo/AppButtonRepository;

    iget-object v1, p1, Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settings/spa/app/appinfo/AppButtonRepository;-><init>(Landroid/content/Context;)V

    const-string v1, "packageInfoPresenter"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/spa/app/appinfo/AppForceStopRepository;->packageInfoPresenter:Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter;

    iput-object v0, p0, Lcom/android/settings/spa/app/appinfo/AppForceStopRepository;->appButtonRepository:Lcom/android/settings/spa/app/appinfo/AppButtonRepository;

    iget-object p1, p1, Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter;->context:Landroid/content/Context;

    iput-object p1, p0, Lcom/android/settings/spa/app/appinfo/AppForceStopRepository;->context:Landroid/content/Context;

    return-void
.end method
