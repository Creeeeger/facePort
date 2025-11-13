.class final Lcom/android/systemui/volume/panel/component/mediaoutput/ui/composable/ComposableSingletons$MediaOutputComponentKt$lambda-1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function4;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/systemui/volume/panel/component/mediaoutput/ui/composable/ComposableSingletons$MediaOutputComponentKt$lambda-1$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/volume/panel/component/mediaoutput/ui/composable/ComposableSingletons$MediaOutputComponentKt$lambda-1$1;

    invoke-direct {v0}, Lcom/android/systemui/volume/panel/component/mediaoutput/ui/composable/ComposableSingletons$MediaOutputComponentKt$lambda-1$1;-><init>()V

    sput-object v0, Lcom/android/systemui/volume/panel/component/mediaoutput/ui/composable/ComposableSingletons$MediaOutputComponentKt$lambda-1$1;->INSTANCE:Lcom/android/systemui/volume/panel/component/mediaoutput/ui/composable/ComposableSingletons$MediaOutputComponentKt$lambda-1$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Landroidx/compose/animation/AnimatedContentScope;

    check-cast p2, Lcom/android/systemui/volume/panel/component/mediaoutput/ui/viewmodel/DeviceIconViewModel;

    check-cast p3, Landroidx/compose/runtime/Composer;

    check-cast p4, Ljava/lang/Number;

    invoke-virtual {p4}, Ljava/lang/Number;->intValue()I

    sget-object p0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object p0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    sget-object p1, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxSize:Landroidx/compose/foundation/layout/FillElement;

    invoke-virtual {p0, p1}, Landroidx/compose/ui/Modifier$Companion;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    invoke-interface {p2}, Lcom/android/systemui/volume/panel/component/mediaoutput/ui/viewmodel/DeviceIconViewModel;->getBackgroundColor()Lcom/android/systemui/common/shared/model/Color;

    move-result-object p0

    invoke-static {p0, p3}, Lcom/android/systemui/common/ui/compose/ColorKt;->toColor(Lcom/android/systemui/common/shared/model/Color;Landroidx/compose/runtime/Composer;)J

    move-result-wide v0

    const/16 p0, 0xc

    int-to-float p0, p0

    sget-object p2, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    invoke-static {p0}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->RoundedCornerShape-0680j_4(F)Landroidx/compose/foundation/shape/RoundedCornerShape;

    move-result-object p0

    invoke-static {p1, v0, v1, p0}, Landroidx/compose/foundation/BackgroundKt;->background-bw27NRU(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    invoke-static {p3, p0}, Landroidx/compose/foundation/layout/SpacerKt;->Spacer(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
