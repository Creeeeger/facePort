.class final Lcom/android/systemui/media/mediaoutput/compose/ComposableSingletons$MediaCardKt$lambda-8$1;
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
.field public static final INSTANCE:Lcom/android/systemui/media/mediaoutput/compose/ComposableSingletons$MediaCardKt$lambda-8$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/media/mediaoutput/compose/ComposableSingletons$MediaCardKt$lambda-8$1;

    invoke-direct {v0}, Lcom/android/systemui/media/mediaoutput/compose/ComposableSingletons$MediaCardKt$lambda-8$1;-><init>()V

    sput-object v0, Lcom/android/systemui/media/mediaoutput/compose/ComposableSingletons$MediaCardKt$lambda-8$1;->INSTANCE:Lcom/android/systemui/media/mediaoutput/compose/ComposableSingletons$MediaCardKt$lambda-8$1;

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
    .locals 8

    check-cast p1, Landroidx/compose/animation/AnimatedContentScope;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    move-object v5, p3

    check-cast v5, Landroidx/compose/runtime/Composer;

    check-cast p4, Ljava/lang/Number;

    invoke-virtual {p4}, Ljava/lang/Number;->intValue()I

    sget-object p1, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    if-eqz p0, :cond_0

    sget-object p0, Lcom/android/systemui/media/mediaoutput/icons/Icons$Action;->INSTANCE:Lcom/android/systemui/media/mediaoutput/icons/Icons$Action;

    sget-object p0, Lcom/android/systemui/media/mediaoutput/icons/action/ExpandLessKt;->ExpandLess$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/graphics/vector/ImageVector;

    :goto_0
    move-object v0, p0

    goto :goto_1

    :cond_0
    sget-object p0, Lcom/android/systemui/media/mediaoutput/icons/Icons$Action;->INSTANCE:Lcom/android/systemui/media/mediaoutput/icons/Icons$Action;

    sget-object p0, Lcom/android/systemui/media/mediaoutput/icons/action/ExpandMoreKt;->ExpandMore$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/graphics/vector/ImageVector;

    goto :goto_0

    :goto_1
    const/4 p0, 0x3

    const/4 p1, 0x0

    invoke-static {p1, p1, v5, p0}, Lcom/android/systemui/media/mediaoutput/compose/theme/ColorKt;->primaryColor(ZZLandroidx/compose/runtime/Composer;I)J

    move-result-wide v3

    const/16 v6, 0x30

    const/4 v7, 0x4

    const-string v1, ""

    const/4 v2, 0x0

    invoke-static/range {v0 .. v7}, Landroidx/compose/material3/IconKt;->Icon-ww6aTOc(Landroidx/compose/ui/graphics/vector/ImageVector;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/Composer;II)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
