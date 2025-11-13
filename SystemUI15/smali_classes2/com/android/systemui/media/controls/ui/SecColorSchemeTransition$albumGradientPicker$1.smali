.class final Lcom/android/systemui/media/controls/ui/SecColorSchemeTransition$albumGradientPicker$1;
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
.field final synthetic $inner:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1;"
        }
    .end annotation
.end field

.field final synthetic $targetAlpha:F

.field final synthetic this$0:Lcom/android/systemui/media/controls/ui/SecColorSchemeTransition;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/controls/ui/SecColorSchemeTransition;Lkotlin/jvm/functions/Function1;F)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/media/controls/ui/SecColorSchemeTransition;",
            "Lkotlin/jvm/functions/Function1;",
            "F)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/media/controls/ui/SecColorSchemeTransition$albumGradientPicker$1;->this$0:Lcom/android/systemui/media/controls/ui/SecColorSchemeTransition;

    iput-object p2, p0, Lcom/android/systemui/media/controls/ui/SecColorSchemeTransition$albumGradientPicker$1;->$inner:Lkotlin/jvm/functions/Function1;

    iput p3, p0, Lcom/android/systemui/media/controls/ui/SecColorSchemeTransition$albumGradientPicker$1;->$targetAlpha:F

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    check-cast p1, Lcom/android/systemui/monet/ColorScheme;

    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/SecColorSchemeTransition$albumGradientPicker$1;->this$0:Lcom/android/systemui/media/controls/ui/SecColorSchemeTransition;

    iget-boolean v0, v0, Lcom/android/systemui/media/controls/ui/SecColorSchemeTransition;->isGradientEnabled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/SecColorSchemeTransition$albumGradientPicker$1;->$inner:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    const/4 v0, 0x3

    new-array v0, v0, [F

    invoke-static {p1, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    const/4 v1, 0x2

    aget v2, v0, v1

    const v3, 0x3e4ccccd    # 0.2f

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_0

    goto :goto_0

    :cond_0
    aput v3, v0, v1

    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result p1

    :goto_0
    iget p0, p0, Lcom/android/systemui/media/controls/ui/SecColorSchemeTransition$albumGradientPicker$1;->$targetAlpha:F

    invoke-static {p1, p0}, Lcom/android/systemui/util/ColorUtilKt;->getColorWithAlpha(IF)I

    move-result p0

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
