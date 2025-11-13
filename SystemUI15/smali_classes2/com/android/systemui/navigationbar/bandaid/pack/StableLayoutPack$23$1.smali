.class public final Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack$23$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final INSTANCE:Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack$23$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack$23$1;

    invoke-direct {v0}, Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack$23$1;-><init>()V

    sput-object v0, Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack$23$1;->INSTANCE:Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack$23$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lcom/android/systemui/navigationbar/bandaid/Band$Kit;

    iget-object p0, p1, Lcom/android/systemui/navigationbar/bandaid/Band$Kit;->event:Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType;

    check-cast p0, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$GetMandatoryInsets;

    iget-object p1, p1, Lcom/android/systemui/navigationbar/bandaid/Band$Kit;->manager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    check-cast p1, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;

    iget-object v0, p1, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->interactorFactory:Lcom/android/systemui/navigationbar/interactor/InteractorFactory;

    const-class v1, Lcom/android/systemui/navigationbar/interactor/GestureNavigationSettingsInteractor;

    invoke-virtual {v0, v1}, Lcom/android/systemui/navigationbar/interactor/InteractorFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/navigationbar/interactor/GestureNavigationSettingsInteractor;

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/android/systemui/navigationbar/interactor/GestureNavigationSettingsInteractor;->bottomInsets:I

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10502c7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :goto_0
    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->isGestureMode()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-boolean p1, p0, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$GetMandatoryInsets;->canMove:Z

    const/4 v1, 0x0

    if-nez p1, :cond_1

    invoke-static {v1, v1, v1, v0}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object p0

    goto :goto_2

    :cond_1
    iget p0, p0, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$GetMandatoryInsets;->rotation:I

    const/4 p1, -0x1

    if-eq p0, p1, :cond_4

    if-eqz p0, :cond_4

    const/4 p1, 0x1

    if-eq p0, p1, :cond_3

    const/4 p1, 0x2

    if-eq p0, p1, :cond_4

    const/4 p1, 0x3

    if-eq p0, p1, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object p0

    goto :goto_2

    :cond_3
    invoke-static {v1, v1, v0, v1}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object p0

    goto :goto_2

    :cond_4
    invoke-static {v1, v1, v1, v0}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object p0

    goto :goto_2

    :cond_5
    :goto_1
    const/4 p0, 0x0

    :goto_2
    return-object p0
.end method
