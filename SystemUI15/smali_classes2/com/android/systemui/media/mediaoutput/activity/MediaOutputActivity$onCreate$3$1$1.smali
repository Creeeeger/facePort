.class final Lcom/android/systemui/media/mediaoutput/activity/MediaOutputActivity$onCreate$3$1$1;
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
.field final synthetic $isCover:Z

.field final synthetic this$0:Lcom/android/systemui/media/mediaoutput/activity/MediaOutputActivity;


# direct methods
.method public constructor <init>(ZLcom/android/systemui/media/mediaoutput/activity/MediaOutputActivity;)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/media/mediaoutput/activity/MediaOutputActivity$onCreate$3$1$1;->$isCover:Z

    iput-object p2, p0, Lcom/android/systemui/media/mediaoutput/activity/MediaOutputActivity$onCreate$3$1$1;->this$0:Lcom/android/systemui/media/mediaoutput/activity/MediaOutputActivity;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    move-object v3, p1

    check-cast v3, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p1

    and-int/lit8 p1, p1, 0xb

    const/4 p2, 0x2

    if-ne p1, p2, :cond_1

    move-object p1, v3

    check-cast p1, Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto :goto_1

    :cond_1
    :goto_0
    sget-object p1, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    new-instance p1, Lcom/android/systemui/media/mediaoutput/activity/MediaOutputActivity$onCreate$3$1$1$1;

    iget-boolean p2, p0, Lcom/android/systemui/media/mediaoutput/activity/MediaOutputActivity$onCreate$3$1$1;->$isCover:Z

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/activity/MediaOutputActivity$onCreate$3$1$1;->this$0:Lcom/android/systemui/media/mediaoutput/activity/MediaOutputActivity;

    invoke-direct {p1, p2, p0}, Lcom/android/systemui/media/mediaoutput/activity/MediaOutputActivity$onCreate$3$1$1$1;-><init>(ZLcom/android/systemui/media/mediaoutput/activity/MediaOutputActivity;)V

    const p0, -0xb1ae77a

    invoke-static {p0, v3, p1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILandroidx/compose/runtime/Composer;Lkotlin/jvm/internal/Lambda;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v2

    const/16 v4, 0x180

    const/4 v5, 0x3

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static/range {v0 .. v5}, Lcom/samsung/sesl/compose/foundation/theme/ThemeKt;->SeslTheme(ZLcom/samsung/sesl/compose/foundation/theme/SeslColorScheme;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
