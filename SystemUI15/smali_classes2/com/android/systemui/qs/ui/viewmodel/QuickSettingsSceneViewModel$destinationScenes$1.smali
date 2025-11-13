.class final synthetic Lcom/android/systemui/qs/ui/viewmodel/QuickSettingsSceneViewModel$destinationScenes$1;
.super Lkotlin/jvm/internal/AdaptedFunctionReference;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/AdaptedFunctionReference;",
        "Lkotlin/jvm/functions/Function3;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 7

    const-string v5, "destinationScenes(ZLcom/android/compose/animation/scene/SceneKey;)Ljava/util/Map;"

    const/4 v6, 0x4

    const/4 v1, 0x3

    const-class v3, Lcom/android/systemui/qs/ui/viewmodel/QuickSettingsSceneViewModel;

    const-string v4, "destinationScenes"

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/AdaptedFunctionReference;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    check-cast p2, Lcom/android/compose/animation/scene/SceneKey;

    check-cast p3, Lkotlin/coroutines/Continuation;

    iget-object p0, p0, Lkotlin/jvm/internal/AdaptedFunctionReference;->receiver:Ljava/lang/Object;

    check-cast p0, Lcom/android/systemui/qs/ui/viewmodel/QuickSettingsSceneViewModel;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2, p1}, Lcom/android/systemui/qs/ui/viewmodel/QuickSettingsSceneViewModel;->destinationScenes(Lcom/android/compose/animation/scene/SceneKey;Z)Lkotlin/collections/builders/MapBuilder;

    move-result-object p0

    return-object p0
.end method
