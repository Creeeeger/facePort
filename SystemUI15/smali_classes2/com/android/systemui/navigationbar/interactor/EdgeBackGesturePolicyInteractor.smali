.class public final Lcom/android/systemui/navigationbar/interactor/EdgeBackGesturePolicyInteractor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field private callback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

.field private final settingsHelper:Lcom/android/systemui/util/SettingsHelper;


# direct methods
.method public constructor <init>(Lcom/android/systemui/util/SettingsHelper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/navigationbar/interactor/EdgeBackGesturePolicyInteractor;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    return-void
.end method


# virtual methods
.method public final addCallback(Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$initInteractor$4;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/navigationbar/interactor/EdgeBackGesturePolicyInteractor;->callback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/navigationbar/interactor/EdgeBackGesturePolicyInteractor;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v1, v0}, Lcom/android/systemui/util/SettingsHelper;->unregisterCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/navigationbar/interactor/EdgeBackGesturePolicyInteractor;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper;->setEdgeBackDisableByPolicy(Z)V

    new-instance v2, Lcom/android/systemui/navigationbar/interactor/EdgeBackGesturePolicyInteractor$addCallback$2$1;

    invoke-direct {v2, p1, p0}, Lcom/android/systemui/navigationbar/interactor/EdgeBackGesturePolicyInteractor$addCallback$2$1;-><init>(Ljava/util/function/Consumer;Lcom/android/systemui/navigationbar/interactor/EdgeBackGesturePolicyInteractor;)V

    iput-object v2, p0, Lcom/android/systemui/navigationbar/interactor/EdgeBackGesturePolicyInteractor;->callback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    const/4 p0, 0x1

    new-array p0, p0, [Landroid/net/Uri;

    const-string p1, "navigation_bar_gesture_disabled_by_policy"

    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    aput-object p1, p0, v1

    invoke-virtual {v0, v2, p0}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    return-void
.end method

.method public final getSettingsHelper()Lcom/android/systemui/util/SettingsHelper;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/navigationbar/interactor/EdgeBackGesturePolicyInteractor;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    return-object p0
.end method
