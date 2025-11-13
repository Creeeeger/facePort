.class public final Lcom/android/systemui/navigationbar/interactor/ButtonToHideKeyboardInteractor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field private callback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

.field private final settingsHelper:Lcom/android/systemui/util/SettingsHelper;


# direct methods
.method public constructor <init>(Lcom/android/systemui/util/SettingsHelper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/navigationbar/interactor/ButtonToHideKeyboardInteractor;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    return-void
.end method


# virtual methods
.method public final addCallback(Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$initInteractor$3;)V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/navigationbar/interactor/ButtonToHideKeyboardInteractor;->callback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/navigationbar/interactor/ButtonToHideKeyboardInteractor;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v1, v0}, Lcom/android/systemui/util/SettingsHelper;->unregisterCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;)V

    :cond_0
    new-instance v0, Lcom/android/systemui/navigationbar/interactor/ButtonToHideKeyboardInteractor$addCallback$2;

    invoke-direct {v0, p1, p0}, Lcom/android/systemui/navigationbar/interactor/ButtonToHideKeyboardInteractor$addCallback$2;-><init>(Ljava/util/function/Consumer;Lcom/android/systemui/navigationbar/interactor/ButtonToHideKeyboardInteractor;)V

    iput-object v0, p0, Lcom/android/systemui/navigationbar/interactor/ButtonToHideKeyboardInteractor;->callback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    iget-object p1, p0, Lcom/android/systemui/navigationbar/interactor/ButtonToHideKeyboardInteractor;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    const/4 v1, 0x1

    new-array v2, v1, [Landroid/net/Uri;

    const-string v3, "navigation_bar_button_to_hide_keyboard"

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p1, v0, v2}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    iget-object p1, p0, Lcom/android/systemui/navigationbar/interactor/ButtonToHideKeyboardInteractor;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/interactor/ButtonToHideKeyboardInteractor;->callback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    new-array v0, v1, [Landroid/net/Uri;

    const-string/jumbo v1, "show_keyboard_button"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-virtual {p1, p0, v0}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    return-void
.end method

.method public final isEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/navigationbar/interactor/ButtonToHideKeyboardInteractor;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isNavigationBarHideKeyboardButtonEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_MULTI_MODAL_ICON:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/navigationbar/interactor/ButtonToHideKeyboardInteractor;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->isShowMultiModalButton()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
