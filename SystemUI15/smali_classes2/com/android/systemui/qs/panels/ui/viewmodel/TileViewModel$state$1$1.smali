.class final Lcom/android/systemui/qs/panels/ui/viewmodel/TileViewModel$state$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation


# instance fields
.field final synthetic $callback:Lcom/android/systemui/plugins/qs/QSTile$Callback;

.field final synthetic this$0:Lcom/android/systemui/qs/panels/ui/viewmodel/TileViewModel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/panels/ui/viewmodel/TileViewModel;Lcom/android/systemui/plugins/qs/QSTile$Callback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/panels/ui/viewmodel/TileViewModel$state$1$1;->this$0:Lcom/android/systemui/qs/panels/ui/viewmodel/TileViewModel;

    iput-object p2, p0, Lcom/android/systemui/qs/panels/ui/viewmodel/TileViewModel$state$1$1;->$callback:Lcom/android/systemui/plugins/qs/QSTile$Callback;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/panels/ui/viewmodel/TileViewModel$state$1$1;->this$0:Lcom/android/systemui/qs/panels/ui/viewmodel/TileViewModel;

    iget-object v0, v0, Lcom/android/systemui/qs/panels/ui/viewmodel/TileViewModel;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    iget-object p0, p0, Lcom/android/systemui/qs/panels/ui/viewmodel/TileViewModel$state$1$1;->$callback:Lcom/android/systemui/plugins/qs/QSTile$Callback;

    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/qs/QSTile;->removeCallback(Lcom/android/systemui/plugins/qs/QSTile$Callback;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
