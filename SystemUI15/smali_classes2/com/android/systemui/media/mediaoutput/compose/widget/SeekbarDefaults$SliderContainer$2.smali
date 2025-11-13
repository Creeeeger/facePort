.class final Lcom/android/systemui/media/mediaoutput/compose/widget/SeekbarDefaults$SliderContainer$2;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2;"
    }
.end annotation


# instance fields
.field final synthetic $$changed:I

.field final synthetic $$default:I

.field final synthetic $content:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3;"
        }
    .end annotation
.end field

.field final synthetic $dragState:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState;"
        }
    .end annotation
.end field

.field final synthetic $labsViewModel:Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel;

.field final synthetic $modifier:Landroidx/compose/ui/Modifier;

.field final synthetic $onValueChange:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1;"
        }
    .end annotation
.end field

.field final synthetic $sliderState:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State;"
        }
    .end annotation
.end field

.field final synthetic $tmp0_rcvr:Lcom/android/systemui/media/mediaoutput/compose/widget/SeekbarDefaults;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/mediaoutput/compose/widget/SeekbarDefaults;Landroidx/compose/runtime/State;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/MutableState;Lkotlin/jvm/functions/Function1;Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel;Lkotlin/jvm/functions/Function3;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/media/mediaoutput/compose/widget/SeekbarDefaults;",
            "Landroidx/compose/runtime/State;",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/runtime/MutableState;",
            "Lkotlin/jvm/functions/Function1;",
            "Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel;",
            "Lkotlin/jvm/functions/Function3;",
            "II)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/SeekbarDefaults$SliderContainer$2;->$tmp0_rcvr:Lcom/android/systemui/media/mediaoutput/compose/widget/SeekbarDefaults;

    iput-object p2, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/SeekbarDefaults$SliderContainer$2;->$sliderState:Landroidx/compose/runtime/State;

    iput-object p3, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/SeekbarDefaults$SliderContainer$2;->$modifier:Landroidx/compose/ui/Modifier;

    iput-object p4, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/SeekbarDefaults$SliderContainer$2;->$dragState:Landroidx/compose/runtime/MutableState;

    iput-object p5, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/SeekbarDefaults$SliderContainer$2;->$onValueChange:Lkotlin/jvm/functions/Function1;

    iput-object p6, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/SeekbarDefaults$SliderContainer$2;->$labsViewModel:Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel;

    iput-object p7, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/SeekbarDefaults$SliderContainer$2;->$content:Lkotlin/jvm/functions/Function3;

    iput p8, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/SeekbarDefaults$SliderContainer$2;->$$changed:I

    iput p9, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/SeekbarDefaults$SliderContainer$2;->$$default:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    move-object v7, p1

    check-cast v7, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    iget-object v0, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/SeekbarDefaults$SliderContainer$2;->$tmp0_rcvr:Lcom/android/systemui/media/mediaoutput/compose/widget/SeekbarDefaults;

    iget-object v1, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/SeekbarDefaults$SliderContainer$2;->$sliderState:Landroidx/compose/runtime/State;

    iget-object v2, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/SeekbarDefaults$SliderContainer$2;->$modifier:Landroidx/compose/ui/Modifier;

    iget-object v3, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/SeekbarDefaults$SliderContainer$2;->$dragState:Landroidx/compose/runtime/MutableState;

    iget-object v4, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/SeekbarDefaults$SliderContainer$2;->$onValueChange:Lkotlin/jvm/functions/Function1;

    iget-object v5, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/SeekbarDefaults$SliderContainer$2;->$labsViewModel:Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel;

    iget-object v6, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/SeekbarDefaults$SliderContainer$2;->$content:Lkotlin/jvm/functions/Function3;

    iget p1, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/SeekbarDefaults$SliderContainer$2;->$$changed:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v8

    iget v9, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/SeekbarDefaults$SliderContainer$2;->$$default:I

    invoke-virtual/range {v0 .. v9}, Lcom/android/systemui/media/mediaoutput/compose/widget/SeekbarDefaults;->SliderContainer(Landroidx/compose/runtime/State;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/MutableState;Lkotlin/jvm/functions/Function1;Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
