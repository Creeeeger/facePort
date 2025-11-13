.class final Lcom/android/systemui/media/mediaoutput/compose/MediaOutputHostKt$MediaOutputHost$1$2$5$4$1;
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

.field final synthetic $navController:Landroidx/navigation/NavHostController;


# direct methods
.method public constructor <init>(Landroidx/navigation/NavHostController;Lcom/android/systemui/media/mediaoutput/compose/common/DismissCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/compose/MediaOutputHostKt$MediaOutputHost$1$2$5$4$1;->$navController:Landroidx/navigation/NavHostController;

    iput-object p2, p0, Lcom/android/systemui/media/mediaoutput/compose/MediaOutputHostKt$MediaOutputHost$1$2$5$4$1;->$dismissCallback:Lcom/android/systemui/media/mediaoutput/compose/common/DismissCallback;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/media/mediaoutput/compose/MediaOutputHostKt$MediaOutputHost$1$2$5$4$1;->$navController:Landroidx/navigation/NavHostController;

    invoke-virtual {v0}, Landroidx/navigation/NavController;->popBackStack()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/compose/MediaOutputHostKt$MediaOutputHost$1$2$5$4$1;->$dismissCallback:Lcom/android/systemui/media/mediaoutput/compose/common/DismissCallback;

    check-cast p0, Lcom/android/systemui/media/mediaoutput/compose/common/Feature;

    iget-object v0, p0, Lcom/android/systemui/media/mediaoutput/compose/common/Feature;->dismissCallback:Lkotlin/jvm/functions/Function0;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_0
    sget-object v0, Lcom/android/systemui/media/mediaoutput/compose/common/MediaOutputState$StateInfo;->Dismissed:Lcom/android/systemui/media/mediaoutput/compose/common/MediaOutputState$StateInfo;

    invoke-virtual {p0, v0}, Lcom/android/systemui/media/mediaoutput/compose/common/Feature;->setState(Lcom/android/systemui/media/mediaoutput/compose/common/MediaOutputState$StateInfo;)V

    :cond_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
