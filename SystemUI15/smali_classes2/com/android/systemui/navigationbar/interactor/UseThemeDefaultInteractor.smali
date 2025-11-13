.class public final Lcom/android/systemui/navigationbar/interactor/UseThemeDefaultInteractor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field private callback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

.field private final settingsHelper:Lcom/android/systemui/util/SettingsHelper;


# direct methods
.method public constructor <init>(Lcom/android/systemui/util/SettingsHelper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/navigationbar/interactor/UseThemeDefaultInteractor;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    return-void
.end method


# virtual methods
.method public final addCallback(Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$initInteractor$12;)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/navigationbar/interactor/UseThemeDefaultInteractor;->callback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/navigationbar/interactor/UseThemeDefaultInteractor;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v1, v0}, Lcom/android/systemui/util/SettingsHelper;->unregisterCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;)V

    :cond_0
    new-instance v0, Lcom/android/systemui/navigationbar/interactor/UseThemeDefaultInteractor$addCallback$2;

    invoke-direct {v0, p1}, Lcom/android/systemui/navigationbar/interactor/UseThemeDefaultInteractor$addCallback$2;-><init>(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/android/systemui/navigationbar/interactor/UseThemeDefaultInteractor;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/net/Uri;

    const-string v2, "navigationbar_use_theme_default"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p1, v0, v1}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    iput-object v0, p0, Lcom/android/systemui/navigationbar/interactor/UseThemeDefaultInteractor;->callback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    return-void
.end method
