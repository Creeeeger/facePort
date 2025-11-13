.class public final Lcom/android/systemui/navigationbar/interactor/OneHandModeInteractor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field private callback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

.field private final settingsHelper:Lcom/android/systemui/util/SettingsHelper;


# direct methods
.method public constructor <init>(Lcom/android/systemui/util/SettingsHelper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/navigationbar/interactor/OneHandModeInteractor;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    return-void
.end method


# virtual methods
.method public final addCallback(Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$initInteractor$14;)V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/navigationbar/interactor/OneHandModeInteractor;->callback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/navigationbar/interactor/OneHandModeInteractor;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v1, v0}, Lcom/android/systemui/util/SettingsHelper;->unregisterCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;)V

    :cond_0
    new-instance v0, Lcom/android/systemui/navigationbar/interactor/OneHandModeInteractor$addCallback$2;

    invoke-direct {v0, p1, p0}, Lcom/android/systemui/navigationbar/interactor/OneHandModeInteractor$addCallback$2;-><init>(Ljava/util/function/Consumer;Lcom/android/systemui/navigationbar/interactor/OneHandModeInteractor;)V

    iput-object v0, p0, Lcom/android/systemui/navigationbar/interactor/OneHandModeInteractor;->callback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    iget-object v1, p0, Lcom/android/systemui/navigationbar/interactor/OneHandModeInteractor;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/net/Uri;

    const-string v3, "any_screen_running"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "reduce_screen_running_info"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-virtual {v1, v0, v2}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    iget-object p0, p0, Lcom/android/systemui/navigationbar/interactor/OneHandModeInteractor;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->getOneHandModeRunningInfo()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$initInteractor$14;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public final getSettingsHelper()Lcom/android/systemui/util/SettingsHelper;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/navigationbar/interactor/OneHandModeInteractor;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    return-object p0
.end method
