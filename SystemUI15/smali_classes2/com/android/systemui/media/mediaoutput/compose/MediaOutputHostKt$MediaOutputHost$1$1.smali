.class final Lcom/android/systemui/media/mediaoutput/compose/MediaOutputHostKt$MediaOutputHost$1$1;
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
.field final synthetic $dismissCallback:Lcom/android/systemui/media/mediaoutput/compose/common/DismissCallback;

.field final synthetic $isCloseOnTouchOutside$delegate:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State;"
        }
    .end annotation
.end field

.field final synthetic $navController:Landroidx/navigation/NavHostController;


# direct methods
.method public constructor <init>(Landroidx/navigation/NavHostController;Lcom/android/systemui/media/mediaoutput/compose/common/DismissCallback;Landroidx/compose/runtime/State;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/navigation/NavHostController;",
            "Lcom/android/systemui/media/mediaoutput/compose/common/DismissCallback;",
            "Landroidx/compose/runtime/State;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/compose/MediaOutputHostKt$MediaOutputHost$1$1;->$navController:Landroidx/navigation/NavHostController;

    iput-object p2, p0, Lcom/android/systemui/media/mediaoutput/compose/MediaOutputHostKt$MediaOutputHost$1$1;->$dismissCallback:Lcom/android/systemui/media/mediaoutput/compose/common/DismissCallback;

    iput-object p3, p0, Lcom/android/systemui/media/mediaoutput/compose/MediaOutputHostKt$MediaOutputHost$1$1;->$isCloseOnTouchOutside$delegate:Landroidx/compose/runtime/State;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/media/mediaoutput/compose/MediaOutputHostKt$MediaOutputHost$1$1;->$isCloseOnTouchOutside$delegate:Landroidx/compose/runtime/State;

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/media/mediaoutput/compose/MediaOutputHostKt$MediaOutputHost$1$1;->$navController:Landroidx/navigation/NavHostController;

    invoke-virtual {v0}, Landroidx/navigation/NavController;->popBackStack()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/compose/MediaOutputHostKt$MediaOutputHost$1$1;->$dismissCallback:Lcom/android/systemui/media/mediaoutput/compose/common/DismissCallback;

    check-cast p0, Lcom/android/systemui/media/mediaoutput/compose/common/Feature;

    invoke-virtual {p0}, Lcom/android/systemui/media/mediaoutput/compose/common/Feature;->animateDismiss()V

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
