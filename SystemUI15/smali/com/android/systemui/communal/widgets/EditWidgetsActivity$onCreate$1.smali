.class final Lcom/android/systemui/communal/widgets/EditWidgetsActivity$onCreate$1;
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
.field final synthetic this$0:Lcom/android/systemui/communal/widgets/EditWidgetsActivity;


# direct methods
.method public constructor <init>(Lcom/android/systemui/communal/widgets/EditWidgetsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/communal/widgets/EditWidgetsActivity$onCreate$1;->this$0:Lcom/android/systemui/communal/widgets/EditWidgetsActivity;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    and-int/lit8 p2, p2, 0xb

    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    move-object p2, p1

    check-cast p2, Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto :goto_1

    :cond_1
    :goto_0
    sget-object p2, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    new-instance p2, Lcom/android/systemui/communal/widgets/EditWidgetsActivity$onCreate$1$1;

    iget-object p0, p0, Lcom/android/systemui/communal/widgets/EditWidgetsActivity$onCreate$1;->this$0:Lcom/android/systemui/communal/widgets/EditWidgetsActivity;

    invoke-direct {p2, p0}, Lcom/android/systemui/communal/widgets/EditWidgetsActivity$onCreate$1$1;-><init>(Lcom/android/systemui/communal/widgets/EditWidgetsActivity;)V

    const p0, -0x29ba0a4e

    invoke-static {p0, p1, p2}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILandroidx/compose/runtime/Composer;Lkotlin/jvm/internal/Lambda;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object p0

    const/16 p2, 0x30

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {v0, p0, p1, p2, v1}, Lcom/android/compose/theme/PlatformThemeKt;->PlatformTheme(ZLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
