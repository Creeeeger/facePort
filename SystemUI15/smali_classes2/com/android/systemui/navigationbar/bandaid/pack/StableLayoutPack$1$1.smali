.class public final Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic $needReinflate:Lkotlin/jvm/internal/Ref$BooleanRef;


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/Ref$BooleanRef;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack$1$1;->$needReinflate:Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Lcom/android/systemui/navigationbar/bandaid/Band$Kit;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack$1$1;->$needReinflate:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object v0, p1, Lcom/android/systemui/navigationbar/bandaid/Band$Kit;->event:Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType;

    check-cast v0, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnNavBarConfigChanged;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    iget-object p1, p1, Lcom/android/systemui/navigationbar/bandaid/Band$Kit;->states:Lcom/android/systemui/navigationbar/model/NavBarStates;

    iget-boolean v1, p1, Lcom/android/systemui/navigationbar/model/NavBarStates;->canMove:Z

    iget-boolean v2, v0, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnNavBarConfigChanged;->canMove:Z

    if-ne v1, v2, :cond_0

    iget-boolean v1, p1, Lcom/android/systemui/navigationbar/model/NavBarStates;->supportPhoneLayoutProvider:Z

    iget-boolean v2, v0, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnNavBarConfigChanged;->supportPhoneLayoutProvider:Z

    if-ne v1, v2, :cond_0

    iget v1, p1, Lcom/android/systemui/navigationbar/model/NavBarStates;->navigationMode:I

    iget v0, v0, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnNavBarConfigChanged;->navigationMode:I

    if-ne v1, v0, :cond_0

    iget-boolean p1, p1, Lcom/android/systemui/navigationbar/model/NavBarStates;->displayChanged:Z

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    :cond_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
