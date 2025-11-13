.class public final Lcom/android/systemui/navigationbar/interactor/GestureNavigationSettingsInteractor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public bottomInsets:I

.field public bottomSensitivityCallback:Ljava/util/function/Consumer;

.field public buttonForcedVisible:Z

.field public final context:Landroid/content/Context;

.field public forcedVisibleCallback:Ljava/util/function/Consumer;

.field public final observer:Lcom/android/internal/policy/GestureNavigationSettingsObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/navigationbar/interactor/GestureNavigationSettingsInteractor;->context:Landroid/content/Context;

    new-instance v0, Lcom/android/internal/policy/GestureNavigationSettingsObserver;

    invoke-virtual {p1}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/navigationbar/interactor/GestureNavigationSettingsInteractor$observer$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/navigationbar/interactor/GestureNavigationSettingsInteractor$observer$1;-><init>(Lcom/android/systemui/navigationbar/interactor/GestureNavigationSettingsInteractor;)V

    invoke-direct {v0, v1, p2, p1, v2}, Lcom/android/internal/policy/GestureNavigationSettingsObserver;-><init>(Landroid/os/Handler;Landroid/os/Handler;Landroid/content/Context;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/systemui/navigationbar/interactor/GestureNavigationSettingsInteractor;->observer:Lcom/android/internal/policy/GestureNavigationSettingsObserver;

    invoke-virtual {v0}, Lcom/android/internal/policy/GestureNavigationSettingsObserver;->areNavigationButtonForcedVisible()Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/systemui/navigationbar/interactor/GestureNavigationSettingsInteractor;->buttonForcedVisible:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/GestureNavigationSettingsObserver;->getBottomSensitivity(Landroid/content/res/Resources;)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/navigationbar/interactor/GestureNavigationSettingsInteractor;->bottomInsets:I

    return-void
.end method


# virtual methods
.method public final onNavigationSettingsChanged()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/navigationbar/interactor/GestureNavigationSettingsInteractor;->observer:Lcom/android/internal/policy/GestureNavigationSettingsObserver;

    invoke-virtual {v0}, Lcom/android/internal/policy/GestureNavigationSettingsObserver;->areNavigationButtonForcedVisible()Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/interactor/GestureNavigationSettingsInteractor;->buttonForcedVisible:Z

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onNavigationSettingsChanged buttonForcedVisible "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GestureNavigationSettingsInteractor"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v0, p0, Lcom/android/systemui/navigationbar/interactor/GestureNavigationSettingsInteractor;->buttonForcedVisible:Z

    iget-object v1, p0, Lcom/android/systemui/navigationbar/interactor/GestureNavigationSettingsInteractor;->forcedVisibleCallback:Ljava/util/function/Consumer;

    if-eqz v1, :cond_0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/navigationbar/interactor/GestureNavigationSettingsInteractor;->observer:Lcom/android/internal/policy/GestureNavigationSettingsObserver;

    iget-object v1, p0, Lcom/android/systemui/navigationbar/interactor/GestureNavigationSettingsInteractor;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/GestureNavigationSettingsObserver;->getBottomSensitivity(Landroid/content/res/Resources;)I

    move-result v0

    iget v1, p0, Lcom/android/systemui/navigationbar/interactor/GestureNavigationSettingsInteractor;->bottomInsets:I

    if-eq v1, v0, :cond_1

    iput v0, p0, Lcom/android/systemui/navigationbar/interactor/GestureNavigationSettingsInteractor;->bottomInsets:I

    iget-object p0, p0, Lcom/android/systemui/navigationbar/interactor/GestureNavigationSettingsInteractor;->bottomSensitivityCallback:Ljava/util/function/Consumer;

    if-eqz p0, :cond_1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
