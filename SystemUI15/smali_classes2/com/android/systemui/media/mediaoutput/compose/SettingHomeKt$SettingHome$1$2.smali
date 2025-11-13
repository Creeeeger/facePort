.class final Lcom/android/systemui/media/mediaoutput/compose/SettingHomeKt$SettingHome$1$2;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1;"
    }
.end annotation


# instance fields
.field final synthetic $isShowLabsMenu$delegate:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State;"
        }
    .end annotation
.end field

.field final synthetic $screen:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1;"
        }
    .end annotation
.end field

.field final synthetic $viewModel:Lcom/android/systemui/media/mediaoutput/viewmodel/SettingViewModel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/mediaoutput/viewmodel/SettingViewModel;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/State;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/media/mediaoutput/viewmodel/SettingViewModel;",
            "Lkotlin/jvm/functions/Function1;",
            "Landroidx/compose/runtime/State;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/compose/SettingHomeKt$SettingHome$1$2;->$viewModel:Lcom/android/systemui/media/mediaoutput/viewmodel/SettingViewModel;

    iput-object p2, p0, Lcom/android/systemui/media/mediaoutput/compose/SettingHomeKt$SettingHome$1$2;->$screen:Lkotlin/jvm/functions/Function1;

    iput-object p3, p0, Lcom/android/systemui/media/mediaoutput/compose/SettingHomeKt$SettingHome$1$2;->$isShowLabsMenu$delegate:Landroidx/compose/runtime/State;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    check-cast p1, Landroidx/compose/foundation/lazy/LazyListIntervalContent;

    new-instance v0, Lcom/android/systemui/media/mediaoutput/compose/SettingHomeKt$SettingHome$1$2$1;

    iget-object v1, p0, Lcom/android/systemui/media/mediaoutput/compose/SettingHomeKt$SettingHome$1$2;->$viewModel:Lcom/android/systemui/media/mediaoutput/viewmodel/SettingViewModel;

    iget-object v2, p0, Lcom/android/systemui/media/mediaoutput/compose/SettingHomeKt$SettingHome$1$2;->$screen:Lkotlin/jvm/functions/Function1;

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/media/mediaoutput/compose/SettingHomeKt$SettingHome$1$2$1;-><init>(Lcom/android/systemui/media/mediaoutput/viewmodel/SettingViewModel;Lkotlin/jvm/functions/Function1;)V

    new-instance v1, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v2, -0x7b8dd064

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v0}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    invoke-static {p1, v1}, Landroidx/compose/foundation/lazy/LazyListIntervalContent;->item$default(Landroidx/compose/foundation/lazy/LazyListIntervalContent;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    iget-object v0, p0, Lcom/android/systemui/media/mediaoutput/compose/SettingHomeKt$SettingHome$1$2;->$isShowLabsMenu$delegate:Landroidx/compose/runtime/State;

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/systemui/media/mediaoutput/compose/SettingHomeKt$SettingHome$1$2$2;

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/compose/SettingHomeKt$SettingHome$1$2;->$screen:Lkotlin/jvm/functions/Function1;

    invoke-direct {v0, p0}, Lcom/android/systemui/media/mediaoutput/compose/SettingHomeKt$SettingHome$1$2$2;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance p0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v1, 0x26a94f7

    invoke-direct {p0, v1, v3, v0}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    invoke-static {p1, p0}, Landroidx/compose/foundation/lazy/LazyListIntervalContent;->item$default(Landroidx/compose/foundation/lazy/LazyListIntervalContent;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
