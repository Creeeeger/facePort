.class public final Lcom/android/settings/spa/app/appinfo/CloneAppButtonsPresenter;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final appCreateButton:Lcom/android/settings/spa/app/appinfo/AppCreateButton;

.field public final appForceStopButton:Lcom/android/settings/spa/app/appinfo/FakeAppForceStopButton;

.field public final appLaunchButton:Lcom/android/settings/spa/app/appinfo/FakeAppLaunchButton;

.field public final packageInfoPresenter:Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter;


# direct methods
.method public constructor <init>(Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter;)V
    .locals 1

    const-string v0, "packageInfoPresenter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/spa/app/appinfo/CloneAppButtonsPresenter;->packageInfoPresenter:Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter;

    new-instance v0, Lcom/android/settings/spa/app/appinfo/FakeAppLaunchButton;

    invoke-direct {v0, p1}, Lcom/android/settings/spa/app/appinfo/FakeAppLaunchButton;-><init>(Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter;)V

    iput-object v0, p0, Lcom/android/settings/spa/app/appinfo/CloneAppButtonsPresenter;->appLaunchButton:Lcom/android/settings/spa/app/appinfo/FakeAppLaunchButton;

    new-instance v0, Lcom/android/settings/spa/app/appinfo/AppCreateButton;

    invoke-direct {v0, p1}, Lcom/android/settings/spa/app/appinfo/AppCreateButton;-><init>(Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter;)V

    iput-object v0, p0, Lcom/android/settings/spa/app/appinfo/CloneAppButtonsPresenter;->appCreateButton:Lcom/android/settings/spa/app/appinfo/AppCreateButton;

    new-instance v0, Lcom/android/settings/spa/app/appinfo/FakeAppForceStopButton;

    invoke-direct {v0, p1}, Lcom/android/settings/spa/app/appinfo/FakeAppForceStopButton;-><init>(Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter;)V

    iput-object v0, p0, Lcom/android/settings/spa/app/appinfo/CloneAppButtonsPresenter;->appForceStopButton:Lcom/android/settings/spa/app/appinfo/FakeAppForceStopButton;

    return-void
.end method
