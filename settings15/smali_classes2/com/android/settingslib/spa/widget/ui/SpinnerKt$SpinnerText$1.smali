.class final Lcom/android/settingslib/spa/widget/ui/SpinnerKt$SpinnerText$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $$changed:I

.field final synthetic $$default:I

.field final synthetic $color:J

.field final synthetic $modifier:Landroidx/compose/ui/Modifier;

.field final synthetic $option:Lcom/android/settingslib/spa/widget/ui/SpinnerOption;


# direct methods
.method public constructor <init>(Lcom/android/settingslib/spa/widget/ui/SpinnerOption;Landroidx/compose/ui/Modifier;JII)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingslib/spa/widget/ui/SpinnerKt$SpinnerText$1;->$option:Lcom/android/settingslib/spa/widget/ui/SpinnerOption;

    iput-object p2, p0, Lcom/android/settingslib/spa/widget/ui/SpinnerKt$SpinnerText$1;->$modifier:Landroidx/compose/ui/Modifier;

    iput-wide p3, p0, Lcom/android/settingslib/spa/widget/ui/SpinnerKt$SpinnerText$1;->$color:J

    iput p5, p0, Lcom/android/settingslib/spa/widget/ui/SpinnerKt$SpinnerText$1;->$$changed:I

    iput p6, p0, Lcom/android/settingslib/spa/widget/ui/SpinnerKt$SpinnerText$1;->$$default:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    move-object v4, p1

    check-cast v4, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    iget-object v0, p0, Lcom/android/settingslib/spa/widget/ui/SpinnerKt$SpinnerText$1;->$option:Lcom/android/settingslib/spa/widget/ui/SpinnerOption;

    iget-object v1, p0, Lcom/android/settingslib/spa/widget/ui/SpinnerKt$SpinnerText$1;->$modifier:Landroidx/compose/ui/Modifier;

    iget-wide v2, p0, Lcom/android/settingslib/spa/widget/ui/SpinnerKt$SpinnerText$1;->$color:J

    iget p1, p0, Lcom/android/settingslib/spa/widget/ui/SpinnerKt$SpinnerText$1;->$$changed:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v5

    iget v6, p0, Lcom/android/settingslib/spa/widget/ui/SpinnerKt$SpinnerText$1;->$$default:I

    invoke-static/range {v0 .. v6}, Lcom/android/settingslib/spa/widget/ui/SpinnerKt;->access$SpinnerText-FNF3uiM(Lcom/android/settingslib/spa/widget/ui/SpinnerOption;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/Composer;II)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
