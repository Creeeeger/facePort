.class final Lcom/android/systemui/media/mediaoutput/compose/widget/TextExtKt$TextExt$3;
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

.field final synthetic $maxLines:I

.field final synthetic $modifier:Landroidx/compose/ui/Modifier;

.field final synthetic $overflow:I

.field final synthetic $style:Landroidx/compose/ui/text/TextStyle;

.field final synthetic $text:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;Landroidx/compose/ui/Modifier;IILandroidx/compose/ui/text/TextStyle;II)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/TextExtKt$TextExt$3;->$text:Ljava/lang/CharSequence;

    iput-object p2, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/TextExtKt$TextExt$3;->$modifier:Landroidx/compose/ui/Modifier;

    iput p3, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/TextExtKt$TextExt$3;->$overflow:I

    iput p4, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/TextExtKt$TextExt$3;->$maxLines:I

    iput-object p5, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/TextExtKt$TextExt$3;->$style:Landroidx/compose/ui/text/TextStyle;

    iput p6, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/TextExtKt$TextExt$3;->$$changed:I

    iput p7, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/TextExtKt$TextExt$3;->$$default:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    move-object v5, p1

    check-cast v5, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    iget-object v0, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/TextExtKt$TextExt$3;->$text:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/TextExtKt$TextExt$3;->$modifier:Landroidx/compose/ui/Modifier;

    iget v2, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/TextExtKt$TextExt$3;->$overflow:I

    iget v3, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/TextExtKt$TextExt$3;->$maxLines:I

    iget-object v4, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/TextExtKt$TextExt$3;->$style:Landroidx/compose/ui/text/TextStyle;

    iget p1, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/TextExtKt$TextExt$3;->$$changed:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v6

    iget v7, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/TextExtKt$TextExt$3;->$$default:I

    invoke-static/range {v0 .. v7}, Lcom/android/systemui/media/mediaoutput/compose/widget/TextExtKt;->TextExt-JKOsDoc(Ljava/lang/CharSequence;Landroidx/compose/ui/Modifier;IILandroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;II)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
