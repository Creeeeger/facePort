.class final Lcom/android/systemui/media/mediaoutput/activity/MediaOutputActivity$onCreate$3;
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

.field final synthetic $isDex:Z

.field final synthetic $visibleMediaControl:Z

.field final synthetic this$0:Lcom/android/systemui/media/mediaoutput/activity/MediaOutputActivity;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/mediaoutput/activity/MediaOutputActivity;ZZZ)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/activity/MediaOutputActivity$onCreate$3;->this$0:Lcom/android/systemui/media/mediaoutput/activity/MediaOutputActivity;

    iput-boolean p2, p0, Lcom/android/systemui/media/mediaoutput/activity/MediaOutputActivity$onCreate$3;->$visibleMediaControl:Z

    iput-boolean p3, p0, Lcom/android/systemui/media/mediaoutput/activity/MediaOutputActivity$onCreate$3;->$isDex:Z

    iput-boolean p4, p0, Lcom/android/systemui/media/mediaoutput/activity/MediaOutputActivity$onCreate$3;->$isCover:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

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

    goto/16 :goto_3

    :cond_1
    :goto_0
    sget-object p2, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object p2, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalDensity:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    move-object v4, p1

    check-cast v4, Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {v4, p2}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/ui/unit/Density;

    invoke-interface {p1}, Landroidx/compose/ui/unit/Density;->getDensity()F

    move-result p2

    invoke-interface {p1}, Landroidx/compose/ui/unit/Density;->getFontScale()F

    move-result p1

    const v0, 0x3fa66666    # 1.3f

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    new-instance v0, Landroidx/compose/ui/unit/DensityImpl;

    invoke-direct {v0, p2, p1}, Landroidx/compose/ui/unit/DensityImpl;-><init>(FF)V

    new-instance p1, Lcom/android/systemui/media/mediaoutput/compose/common/Feature$Builder;

    invoke-direct {p1}, Lcom/android/systemui/media/mediaoutput/compose/common/Feature$Builder;-><init>()V

    iget-object p2, p0, Lcom/android/systemui/media/mediaoutput/activity/MediaOutputActivity$onCreate$3;->this$0:Lcom/android/systemui/media/mediaoutput/activity/MediaOutputActivity;

    invoke-virtual {p2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p2

    if-eqz p2, :cond_3

    const-string v1, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    :goto_1
    if-nez p2, :cond_4

    :cond_3
    const-string p2, ""

    :cond_4
    invoke-virtual {p1}, Lcom/android/systemui/media/mediaoutput/compose/common/Feature$Builder;->getFeature()Lcom/android/systemui/media/mediaoutput/compose/common/Feature;

    move-result-object v1

    iput-object p2, v1, Lcom/android/systemui/media/mediaoutput/compose/common/Feature;->packageName:Ljava/lang/String;

    iget-boolean p2, p0, Lcom/android/systemui/media/mediaoutput/activity/MediaOutputActivity$onCreate$3;->$visibleMediaControl:Z

    invoke-virtual {p1}, Lcom/android/systemui/media/mediaoutput/compose/common/Feature$Builder;->getFeature()Lcom/android/systemui/media/mediaoutput/compose/common/Feature;

    move-result-object v1

    iput-boolean p2, v1, Lcom/android/systemui/media/mediaoutput/compose/common/Feature;->showMediaController:Z

    iget-boolean p2, p0, Lcom/android/systemui/media/mediaoutput/activity/MediaOutputActivity$onCreate$3;->$isDex:Z

    if-eqz p2, :cond_5

    const/16 p2, 0x28

    goto :goto_2

    :cond_5
    const/16 p2, 0x14

    :goto_2
    invoke-virtual {p1}, Lcom/android/systemui/media/mediaoutput/compose/common/Feature$Builder;->getFeature()Lcom/android/systemui/media/mediaoutput/compose/common/Feature;

    move-result-object v1

    iput p2, v1, Lcom/android/systemui/media/mediaoutput/compose/common/Feature;->from:I

    invoke-virtual {p1}, Lcom/android/systemui/media/mediaoutput/compose/common/Feature$Builder;->getFeature()Lcom/android/systemui/media/mediaoutput/compose/common/Feature;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/android/systemui/media/mediaoutput/compose/common/Feature$Builder;->getFeature()Lcom/android/systemui/media/mediaoutput/compose/common/Feature;

    move-result-object p2

    const/4 v1, 0x1

    iput-boolean v1, p2, Lcom/android/systemui/media/mediaoutput/compose/common/Feature;->isFullScreen:Z

    invoke-virtual {p1}, Lcom/android/systemui/media/mediaoutput/compose/common/Feature$Builder;->getFeature()Lcom/android/systemui/media/mediaoutput/compose/common/Feature;

    move-result-object p2

    sget-object v1, Lcom/android/systemui/media/mediaoutput/compose/Screen$Phone;->INSTANCE:Lcom/android/systemui/media/mediaoutput/compose/Screen$Phone;

    iput-object v1, p2, Lcom/android/systemui/media/mediaoutput/compose/common/Feature;->defaultScreen:Lcom/android/systemui/media/mediaoutput/compose/Screen;

    invoke-virtual {p1}, Lcom/android/systemui/media/mediaoutput/compose/common/Feature$Builder;->getFeature()Lcom/android/systemui/media/mediaoutput/compose/common/Feature;

    move-result-object p1

    new-instance p2, Lcom/android/systemui/media/mediaoutput/activity/MediaOutputActivity$onCreate$3$1;

    iget-object v1, p0, Lcom/android/systemui/media/mediaoutput/activity/MediaOutputActivity$onCreate$3;->this$0:Lcom/android/systemui/media/mediaoutput/activity/MediaOutputActivity;

    iget-boolean p0, p0, Lcom/android/systemui/media/mediaoutput/activity/MediaOutputActivity$onCreate$3;->$isCover:Z

    invoke-direct {p2, v1, v0, p1, p0}, Lcom/android/systemui/media/mediaoutput/activity/MediaOutputActivity$onCreate$3$1;-><init>(Lcom/android/systemui/media/mediaoutput/activity/MediaOutputActivity;Landroidx/compose/ui/unit/Density;Lcom/android/systemui/media/mediaoutput/compose/common/Feature;Z)V

    const p0, -0x12033769

    invoke-static {p0, v4, p2}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILandroidx/compose/runtime/Composer;Lkotlin/jvm/internal/Lambda;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v3

    const/16 v5, 0xc00

    const/4 v6, 0x7

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v6}, Landroidx/compose/foundation/layout/BoxWithConstraintsKt;->BoxWithConstraints(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;ZLkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    :goto_3
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
