.class final Lcom/android/systemui/volume/panel/component/button/ui/composable/ToggleButtonComponent$Content$1$1$2;
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
.field final synthetic $viewModel:Lcom/android/systemui/volume/panel/component/button/ui/viewmodel/ButtonViewModel;

.field final synthetic this$0:Lcom/android/systemui/volume/panel/component/button/ui/composable/ToggleButtonComponent;


# direct methods
.method public constructor <init>(Lcom/android/systemui/volume/panel/component/button/ui/composable/ToggleButtonComponent;Lcom/android/systemui/volume/panel/component/button/ui/viewmodel/ButtonViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/panel/component/button/ui/composable/ToggleButtonComponent$Content$1$1$2;->this$0:Lcom/android/systemui/volume/panel/component/button/ui/composable/ToggleButtonComponent;

    iput-object p2, p0, Lcom/android/systemui/volume/panel/component/button/ui/composable/ToggleButtonComponent$Content$1$1$2;->$viewModel:Lcom/android/systemui/volume/panel/component/button/ui/viewmodel/ButtonViewModel;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/panel/component/button/ui/composable/ToggleButtonComponent$Content$1$1$2;->this$0:Lcom/android/systemui/volume/panel/component/button/ui/composable/ToggleButtonComponent;

    iget-object v0, v0, Lcom/android/systemui/volume/panel/component/button/ui/composable/ToggleButtonComponent;->onCheckedChange:Lkotlin/jvm/functions/Function1;

    iget-object p0, p0, Lcom/android/systemui/volume/panel/component/button/ui/composable/ToggleButtonComponent$Content$1$1$2;->$viewModel:Lcom/android/systemui/volume/panel/component/button/ui/viewmodel/ButtonViewModel;

    iget-boolean p0, p0, Lcom/android/systemui/volume/panel/component/button/ui/viewmodel/ButtonViewModel;->isActive:Z

    xor-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {v0, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
