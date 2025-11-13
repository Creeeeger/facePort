.class public final Lcom/android/systemui/navigationbar/interactor/KeyboardButtonPositionInteractor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field private callback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

.field private final settingsHelper:Lcom/android/systemui/util/SettingsHelper;


# direct methods
.method public constructor <init>(Lcom/android/systemui/util/SettingsHelper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/navigationbar/interactor/KeyboardButtonPositionInteractor;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    return-void
.end method


# virtual methods
.method public final addCallback(Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$initInteractor$8;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/navigationbar/interactor/KeyboardButtonPositionInteractor;->callback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/navigationbar/interactor/KeyboardButtonPositionInteractor;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v1, v0}, Lcom/android/systemui/util/SettingsHelper;->unregisterCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;)V

    :cond_0
    new-instance v0, Lcom/android/systemui/navigationbar/interactor/KeyboardButtonPositionInteractor$addCallback$2;

    invoke-direct {v0, p1, p0}, Lcom/android/systemui/navigationbar/interactor/KeyboardButtonPositionInteractor$addCallback$2;-><init>(Ljava/util/function/Consumer;Lcom/android/systemui/navigationbar/interactor/KeyboardButtonPositionInteractor;)V

    iput-object v0, p0, Lcom/android/systemui/navigationbar/interactor/KeyboardButtonPositionInteractor;->callback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/interactor/KeyboardButtonPositionInteractor;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    const/4 p1, 0x1

    new-array p1, p1, [Landroid/net/Uri;

    const-string/jumbo v1, "show_keyboard_button_position"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, p1, v2

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    return-void
.end method

.method public final getSettingsHelper()Lcom/android/systemui/util/SettingsHelper;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/navigationbar/interactor/KeyboardButtonPositionInteractor;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    return-object p0
.end method
