.class final Lcom/android/settingslib/spa/widget/ui/SpinnerKt$Spinner$2$3;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function3;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u000b\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "Landroidx/compose/foundation/layout/RowScope;",
        "invoke",
        "(Landroidx/compose/foundation/layout/RowScope;Landroidx/compose/runtime/Composer;I)V"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $expanded$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState;"
        }
    .end annotation
.end field

.field final synthetic $options:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settingslib/spa/widget/ui/SpinnerOption;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $selectedId:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/Integer;Landroidx/compose/runtime/MutableState;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingslib/spa/widget/ui/SpinnerKt$Spinner$2$3;->$options:Ljava/util/List;

    iput-object p2, p0, Lcom/android/settingslib/spa/widget/ui/SpinnerKt$Spinner$2$3;->$selectedId:Ljava/lang/Integer;

    iput-object p3, p0, Lcom/android/settingslib/spa/widget/ui/SpinnerKt$Spinner$2$3;->$expanded$delegate:Landroidx/compose/runtime/MutableState;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    check-cast p1, Landroidx/compose/foundation/layout/RowScope;

    check-cast p2, Landroidx/compose/runtime/Composer;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    const-string v0, "$this$Button"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    and-int/lit8 p1, p3, 0x51

    const/16 p3, 0x10

    if-ne p1, p3, :cond_1

    move-object p1, p2

    check-cast p1, Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result p3

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto :goto_3

    :cond_1
    :goto_0
    sget-object p1, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    iget-object p1, p0, Lcom/android/settingslib/spa/widget/ui/SpinnerKt$Spinner$2$3;->$options:Ljava/util/List;

    check-cast p1, Ljava/lang/Iterable;

    iget-object p3, p0, Lcom/android/settingslib/spa/widget/ui/SpinnerKt$Spinner$2$3;->$selectedId:Ljava/lang/Integer;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/settingslib/spa/widget/ui/SpinnerOption;

    iget v1, v1, Lcom/android/settingslib/spa/widget/ui/SpinnerOption;->id:I

    if-nez p3, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v1, v2, :cond_2

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    :goto_2
    check-cast v0, Lcom/android/settingslib/spa/widget/ui/SpinnerOption;

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    move-object v4, p2

    invoke-static/range {v0 .. v6}, Lcom/android/settingslib/spa/widget/ui/SpinnerKt;->access$SpinnerText-FNF3uiM(Lcom/android/settingslib/spa/widget/ui/SpinnerOption;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/Composer;II)V

    iget-object p0, p0, Lcom/android/settingslib/spa/widget/ui/SpinnerKt$Spinner$2$3;->$expanded$delegate:Landroidx/compose/runtime/MutableState;

    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    const/4 p1, 0x0

    invoke-static {p0, p2, p1}, Lcom/android/settingslib/spa/widget/ui/SpinnerKt;->ExpandIcon(ZLandroidx/compose/runtime/Composer;I)V

    sget-object p0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    :goto_3
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
