.class public final Lcom/android/systemui/navigationbar/bandaid/pack/CoverScreenPack$9$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/navigationbar/bandaid/pack/CoverScreenPack;


# direct methods
.method public constructor <init>(Lcom/android/systemui/navigationbar/bandaid/pack/CoverScreenPack;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/navigationbar/bandaid/pack/CoverScreenPack$9$1;->this$0:Lcom/android/systemui/navigationbar/bandaid/pack/CoverScreenPack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Lcom/android/systemui/navigationbar/bandaid/Band$Kit;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/bandaid/pack/CoverScreenPack$9$1;->this$0:Lcom/android/systemui/navigationbar/bandaid/pack/CoverScreenPack;

    iget-object v0, p1, Lcom/android/systemui/navigationbar/bandaid/Band$Kit;->event:Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType;

    check-cast v0, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnFoldStateChanged;

    iget-boolean v0, v0, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnFoldStateChanged;->folded:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/navigationbar/bandaid/pack/CoverScreenPack;->store:Lcom/android/systemui/navigationbar/store/NavBarStore;

    new-instance v0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$UpdateDefaultNavigationBarStatus;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, v2}, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$UpdateDefaultNavigationBarStatus;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->apply(Lcom/android/systemui/navigationbar/bandaid/Band$Kit;Lcom/android/systemui/navigationbar/store/NavBarStoreAction;)Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
