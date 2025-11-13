.class public final Lcom/android/systemui/navigationbar/interactor/CoverDisplayWidgetInteractor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field private callback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

.field public final displayReadyRunnable:Lcom/android/systemui/navigationbar/interactor/CoverDisplayWidgetInteractor$displayReadyRunnable$1;

.field private final settingsHelper:Lcom/android/systemui/util/SettingsHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/util/SettingsHelper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/navigationbar/interactor/CoverDisplayWidgetInteractor;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    new-instance p1, Lcom/android/systemui/navigationbar/interactor/CoverDisplayWidgetInteractor$displayReadyRunnable$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/navigationbar/interactor/CoverDisplayWidgetInteractor$displayReadyRunnable$1;-><init>(Lcom/android/systemui/navigationbar/interactor/CoverDisplayWidgetInteractor;)V

    iput-object p1, p0, Lcom/android/systemui/navigationbar/interactor/CoverDisplayWidgetInteractor;->displayReadyRunnable:Lcom/android/systemui/navigationbar/interactor/CoverDisplayWidgetInteractor$displayReadyRunnable$1;

    return-void
.end method


# virtual methods
.method public final addCallback()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/navigationbar/interactor/CoverDisplayWidgetInteractor;->callback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/navigationbar/interactor/CoverDisplayWidgetInteractor;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v1, v0}, Lcom/android/systemui/util/SettingsHelper;->unregisterCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;)V

    :cond_0
    new-instance v0, Lcom/android/systemui/navigationbar/interactor/CoverDisplayWidgetInteractor$addCallback$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/navigationbar/interactor/CoverDisplayWidgetInteractor$addCallback$2;-><init>(Lcom/android/systemui/navigationbar/interactor/CoverDisplayWidgetInteractor;)V

    iput-object v0, p0, Lcom/android/systemui/navigationbar/interactor/CoverDisplayWidgetInteractor;->callback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/interactor/CoverDisplayWidgetInteractor;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/net/Uri;

    const-string/jumbo v2, "show_navigation_for_subscreen"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    return-void
.end method

.method public final isEnabled()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/navigationbar/interactor/CoverDisplayWidgetInteractor;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->isShowNavigationForSubscreen()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/view/SemWindowManager;->isFolded()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
