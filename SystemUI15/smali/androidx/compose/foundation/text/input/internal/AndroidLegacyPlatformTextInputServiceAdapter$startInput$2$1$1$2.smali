.class public final Landroidx/compose/foundation/text/input/internal/AndroidLegacyPlatformTextInputServiceAdapter$startInput$2$1$1$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $inputMethodManager:Landroidx/compose/foundation/text/input/internal/InputMethodManager;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/text/input/internal/InputMethodManager;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/text/input/internal/AndroidLegacyPlatformTextInputServiceAdapter$startInput$2$1$1$2;->$inputMethodManager:Landroidx/compose/foundation/text/input/internal/InputMethodManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlin/Unit;

    iget-object p0, p0, Landroidx/compose/foundation/text/input/internal/AndroidLegacyPlatformTextInputServiceAdapter$startInput$2$1$1$2;->$inputMethodManager:Landroidx/compose/foundation/text/input/internal/InputMethodManager;

    check-cast p0, Landroidx/compose/foundation/text/input/internal/InputMethodManagerImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Landroidx/compose/foundation/text/input/internal/Api34StartStylusHandwriting;->INSTANCE:Landroidx/compose/foundation/text/input/internal/Api34StartStylusHandwriting;

    invoke-virtual {p0}, Landroidx/compose/foundation/text/input/internal/InputMethodManagerImpl;->getImm()Landroid/view/inputmethod/InputMethodManager;

    move-result-object p2

    iget-object p0, p0, Landroidx/compose/foundation/text/input/internal/InputMethodManagerImpl;->view:Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2, p0}, Landroid/view/inputmethod/InputMethodManager;->startStylusHandwriting(Landroid/view/View;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
