.class public final Lcom/android/systemui/navigationbar/bandaid/pack/GesturePack$5$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final INSTANCE:Lcom/android/systemui/navigationbar/bandaid/pack/GesturePack$5$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/navigationbar/bandaid/pack/GesturePack$5$1;

    invoke-direct {v0}, Lcom/android/systemui/navigationbar/bandaid/pack/GesturePack$5$1;-><init>()V

    sput-object v0, Lcom/android/systemui/navigationbar/bandaid/pack/GesturePack$5$1;->INSTANCE:Lcom/android/systemui/navigationbar/bandaid/pack/GesturePack$5$1;

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

    check-cast p0, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnNavBarTransitionModeChanged;

    iget-object p1, p1, Lcom/android/systemui/navigationbar/bandaid/Band$Kit;->manager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    check-cast p1, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;

    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->isGestureMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->canShowFloatingGameTools(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    iget p0, p0, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnNavBarTransitionModeChanged;->transitionMode:I

    if-ne p0, v0, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->getSettingHelper()Lcom/android/systemui/util/SettingsHelper;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper;->setGameToolsEnabled(Z)V

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
