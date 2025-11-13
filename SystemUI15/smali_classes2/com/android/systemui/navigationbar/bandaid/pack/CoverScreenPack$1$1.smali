.class public final Lcom/android/systemui/navigationbar/bandaid/pack/CoverScreenPack$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/navigationbar/bandaid/pack/CoverScreenPack;


# direct methods
.method public constructor <init>(Lcom/android/systemui/navigationbar/bandaid/pack/CoverScreenPack;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/navigationbar/bandaid/pack/CoverScreenPack$1$1;->this$0:Lcom/android/systemui/navigationbar/bandaid/pack/CoverScreenPack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lcom/android/systemui/navigationbar/bandaid/Band$Kit;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/bandaid/pack/CoverScreenPack$1$1;->this$0:Lcom/android/systemui/navigationbar/bandaid/pack/CoverScreenPack;

    iget-object v0, p1, Lcom/android/systemui/navigationbar/bandaid/Band$Kit;->event:Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType;

    check-cast v0, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnNavBarLargeCoverScreenVisibilityChanged;

    iget-object v1, p1, Lcom/android/systemui/navigationbar/bandaid/Band$Kit;->manager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    check-cast v1, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;

    invoke-virtual {v1}, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->isLargeCoverScreenSyncEnabled()Z

    move-result v1

    if-nez v1, :cond_2

    iget-boolean v1, v0, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnNavBarLargeCoverScreenVisibilityChanged;->imeShown:Z

    if-nez v1, :cond_1

    iget-boolean v0, v0, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnNavBarLargeCoverScreenVisibilityChanged;->coverTask:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    invoke-static {p0, p1, v0}, Lcom/android/systemui/navigationbar/bandaid/pack/CoverScreenPack;->access$updateLargeCoverNavBarVisibility(Lcom/android/systemui/navigationbar/bandaid/pack/CoverScreenPack;Lcom/android/systemui/navigationbar/bandaid/Band$Kit;I)V

    :cond_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
