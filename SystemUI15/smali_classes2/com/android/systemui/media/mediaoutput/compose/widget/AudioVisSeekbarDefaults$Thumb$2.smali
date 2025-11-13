.class final Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarDefaults$Thumb$2;
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

.field final synthetic $colors:Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarColors;

.field final synthetic $dragState:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State;"
        }
    .end annotation
.end field

.field final synthetic $enabled:Z

.field final synthetic $modifier:Landroidx/compose/ui/Modifier;

.field final synthetic $thumbSize:F

.field final synthetic $tmp1_rcvr:Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarDefaults;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarDefaults;Landroidx/compose/runtime/State;Landroidx/compose/ui/Modifier;Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarColors;ZFII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarDefaults;",
            "Landroidx/compose/runtime/State;",
            "Landroidx/compose/ui/Modifier;",
            "Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarColors;",
            "ZFII)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarDefaults$Thumb$2;->$tmp1_rcvr:Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarDefaults;

    iput-object p2, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarDefaults$Thumb$2;->$dragState:Landroidx/compose/runtime/State;

    iput-object p3, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarDefaults$Thumb$2;->$modifier:Landroidx/compose/ui/Modifier;

    iput-object p4, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarDefaults$Thumb$2;->$colors:Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarColors;

    iput-boolean p5, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarDefaults$Thumb$2;->$enabled:Z

    iput p6, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarDefaults$Thumb$2;->$thumbSize:F

    iput p7, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarDefaults$Thumb$2;->$$changed:I

    iput p8, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarDefaults$Thumb$2;->$$default:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    move-object v6, p1

    check-cast v6, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    iget-object v0, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarDefaults$Thumb$2;->$tmp1_rcvr:Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarDefaults;

    iget-object v1, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarDefaults$Thumb$2;->$dragState:Landroidx/compose/runtime/State;

    iget-object v2, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarDefaults$Thumb$2;->$modifier:Landroidx/compose/ui/Modifier;

    iget-object v3, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarDefaults$Thumb$2;->$colors:Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarColors;

    iget-boolean v4, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarDefaults$Thumb$2;->$enabled:Z

    iget v5, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarDefaults$Thumb$2;->$thumbSize:F

    iget p1, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarDefaults$Thumb$2;->$$changed:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v7

    iget v8, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarDefaults$Thumb$2;->$$default:I

    invoke-virtual/range {v0 .. v8}, Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarDefaults;->Thumb-FJfuzF0(Landroidx/compose/runtime/State;Landroidx/compose/ui/Modifier;Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarColors;ZFLandroidx/compose/runtime/Composer;II)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
