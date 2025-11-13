.class final Lcom/android/systemui/communal/ui/compose/EnableWidgetDialogKt$DialogComposable$2;
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

.field final synthetic $onCancel:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0;"
        }
    .end annotation
.end field

.field final synthetic $onConfirm:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0;"
        }
    .end annotation
.end field

.field final synthetic $positiveButtonText:Ljava/lang/String;

.field final synthetic $title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0;",
            "Lkotlin/jvm/functions/Function0;",
            "I)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/communal/ui/compose/EnableWidgetDialogKt$DialogComposable$2;->$title:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/systemui/communal/ui/compose/EnableWidgetDialogKt$DialogComposable$2;->$positiveButtonText:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/systemui/communal/ui/compose/EnableWidgetDialogKt$DialogComposable$2;->$onConfirm:Lkotlin/jvm/functions/Function0;

    iput-object p4, p0, Lcom/android/systemui/communal/ui/compose/EnableWidgetDialogKt$DialogComposable$2;->$onCancel:Lkotlin/jvm/functions/Function0;

    iput p5, p0, Lcom/android/systemui/communal/ui/compose/EnableWidgetDialogKt$DialogComposable$2;->$$changed:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    move-object v4, p1

    check-cast v4, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    iget-object v0, p0, Lcom/android/systemui/communal/ui/compose/EnableWidgetDialogKt$DialogComposable$2;->$title:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/communal/ui/compose/EnableWidgetDialogKt$DialogComposable$2;->$positiveButtonText:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/communal/ui/compose/EnableWidgetDialogKt$DialogComposable$2;->$onConfirm:Lkotlin/jvm/functions/Function0;

    iget-object v3, p0, Lcom/android/systemui/communal/ui/compose/EnableWidgetDialogKt$DialogComposable$2;->$onCancel:Lkotlin/jvm/functions/Function0;

    iget p0, p0, Lcom/android/systemui/communal/ui/compose/EnableWidgetDialogKt$DialogComposable$2;->$$changed:I

    or-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v5

    invoke-static/range {v0 .. v5}, Lcom/android/systemui/communal/ui/compose/EnableWidgetDialogKt;->access$DialogComposable(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
