.class public final Lcom/android/settings/spa/app/appinfo/AppButtonsPresenter;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final appArchiveButton:Lcom/android/settings/spa/app/appinfo/AppArchiveButton;

.field public final appClearButton:Lcom/android/settings/spa/app/appinfo/AppClearButton;

.field public final appDisableButton:Lcom/android/settings/spa/app/appinfo/AppDisableButton;

.field public final appForceStopButton:Lcom/android/settings/spa/app/appinfo/AppForceStopButton;

.field public final appInstallButton:Lcom/android/settings/spa/app/appinfo/AppInstallButton;

.field public final appLaunchButton:Lcom/android/settings/spa/app/appinfo/AppLaunchButton;

.field public final appRestoreButton:Lcom/android/settings/spa/app/appinfo/AppRestoreButton;

.field public final appUninstallButton:Lcom/android/settings/spa/app/appinfo/AppUninstallButton;

.field public final featureFlags:Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;

.field public final packageInfoPresenter:Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter;


# direct methods
.method public constructor <init>(Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter;Lkotlinx/coroutines/flow/MutableStateFlow;Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;)V
    .locals 1

    const-string v0, "packageInfoPresenter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "isHibernationSwitchEnabledStateFlow"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featureFlags"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/spa/app/appinfo/AppButtonsPresenter;->packageInfoPresenter:Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter;

    iput-object p3, p0, Lcom/android/settings/spa/app/appinfo/AppButtonsPresenter;->featureFlags:Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;

    new-instance p3, Lcom/android/settings/spa/app/appinfo/AppLaunchButton;

    invoke-direct {p3, p1}, Lcom/android/settings/spa/app/appinfo/AppLaunchButton;-><init>(Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter;)V

    iput-object p3, p0, Lcom/android/settings/spa/app/appinfo/AppButtonsPresenter;->appLaunchButton:Lcom/android/settings/spa/app/appinfo/AppLaunchButton;

    new-instance p3, Lcom/android/settings/spa/app/appinfo/AppInstallButton;

    invoke-direct {p3, p1}, Lcom/android/settings/spa/app/appinfo/AppInstallButton;-><init>(Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter;)V

    iput-object p3, p0, Lcom/android/settings/spa/app/appinfo/AppButtonsPresenter;->appInstallButton:Lcom/android/settings/spa/app/appinfo/AppInstallButton;

    new-instance p3, Lcom/android/settings/spa/app/appinfo/AppDisableButton;

    invoke-direct {p3, p1}, Lcom/android/settings/spa/app/appinfo/AppDisableButton;-><init>(Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter;)V

    iput-object p3, p0, Lcom/android/settings/spa/app/appinfo/AppButtonsPresenter;->appDisableButton:Lcom/android/settings/spa/app/appinfo/AppDisableButton;

    new-instance p3, Lcom/android/settings/spa/app/appinfo/AppUninstallButton;

    invoke-direct {p3, p1}, Lcom/android/settings/spa/app/appinfo/AppUninstallButton;-><init>(Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter;)V

    iput-object p3, p0, Lcom/android/settings/spa/app/appinfo/AppButtonsPresenter;->appUninstallButton:Lcom/android/settings/spa/app/appinfo/AppUninstallButton;

    new-instance p3, Lcom/android/settings/spa/app/appinfo/AppClearButton;

    invoke-direct {p3, p1}, Lcom/android/settings/spa/app/appinfo/AppClearButton;-><init>(Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter;)V

    iput-object p3, p0, Lcom/android/settings/spa/app/appinfo/AppButtonsPresenter;->appClearButton:Lcom/android/settings/spa/app/appinfo/AppClearButton;

    new-instance p3, Lcom/android/settings/spa/app/appinfo/AppForceStopButton;

    invoke-direct {p3, p1}, Lcom/android/settings/spa/app/appinfo/AppForceStopButton;-><init>(Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter;)V

    iput-object p3, p0, Lcom/android/settings/spa/app/appinfo/AppButtonsPresenter;->appForceStopButton:Lcom/android/settings/spa/app/appinfo/AppForceStopButton;

    new-instance p3, Lcom/android/settings/spa/app/appinfo/AppArchiveButton;

    invoke-direct {p3, p1, p2}, Lcom/android/settings/spa/app/appinfo/AppArchiveButton;-><init>(Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter;Lkotlinx/coroutines/flow/MutableStateFlow;)V

    iput-object p3, p0, Lcom/android/settings/spa/app/appinfo/AppButtonsPresenter;->appArchiveButton:Lcom/android/settings/spa/app/appinfo/AppArchiveButton;

    new-instance p2, Lcom/android/settings/spa/app/appinfo/AppRestoreButton;

    invoke-direct {p2, p1}, Lcom/android/settings/spa/app/appinfo/AppRestoreButton;-><init>(Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter;)V

    iput-object p2, p0, Lcom/android/settings/spa/app/appinfo/AppButtonsPresenter;->appRestoreButton:Lcom/android/settings/spa/app/appinfo/AppRestoreButton;

    return-void
.end method
