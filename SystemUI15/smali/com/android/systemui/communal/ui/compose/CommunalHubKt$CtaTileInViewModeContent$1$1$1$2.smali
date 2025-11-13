.class final synthetic Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CtaTileInViewModeContent$1$1$1$2;
.super Lkotlin/jvm/internal/AdaptedFunctionReference;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/AdaptedFunctionReference;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 7

    const-string v5, "onOpenWidgetEditor(Ljava/lang/String;Z)V"

    const/4 v6, 0x0

    const/4 v1, 0x0

    const-class v3, Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;

    const-string v4, "onOpenWidgetEditor"

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/AdaptedFunctionReference;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget-object p0, p0, Lkotlin/jvm/internal/AdaptedFunctionReference;->receiver:Ljava/lang/Object;

    check-cast p0, Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-static {p0, v0, v1, v2}, Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;->onOpenWidgetEditor$default(Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;Ljava/lang/String;ZI)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
