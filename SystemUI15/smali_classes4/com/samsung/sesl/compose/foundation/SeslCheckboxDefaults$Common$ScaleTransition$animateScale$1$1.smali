.class final Lcom/samsung/sesl/compose/foundation/SeslCheckboxDefaults$Common$ScaleTransition$animateScale$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/samsung/sesl/compose/foundation/SeslCheckboxDefaults$Common$ScaleTransition$animateScale$1$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/sesl/compose/foundation/SeslCheckboxDefaults$Common$ScaleTransition$animateScale$1$1;

    invoke-direct {v0}, Lcom/samsung/sesl/compose/foundation/SeslCheckboxDefaults$Common$ScaleTransition$animateScale$1$1;-><init>()V

    sput-object v0, Lcom/samsung/sesl/compose/foundation/SeslCheckboxDefaults$Common$ScaleTransition$animateScale$1$1;->INSTANCE:Lcom/samsung/sesl/compose/foundation/SeslCheckboxDefaults$Common$ScaleTransition$animateScale$1$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;

    const/16 p0, 0x11b

    iput p0, p1, Landroidx/compose/animation/core/KeyframesSpecBaseConfig;->durationMillis:I

    const/high16 p0, 0x3f800000    # 1.0f

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;->at(ILjava/lang/Object;)Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity;

    const v0, 0x3f4ccccd    # 0.8f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/16 v1, 0x85

    invoke-virtual {p1, v1, v0}, Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;->at(ILjava/lang/Object;)Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity;

    move-result-object v0

    sget-object v1, Lcom/samsung/sesl/compose/foundation/SeslCheckboxDefaults$Common$ScaleTransition;->easing:Landroidx/compose/animation/core/CubicBezierEasing;

    iput-object v1, v0, Landroidx/compose/animation/core/KeyframeBaseEntity;->easing:Landroidx/compose/animation/core/Easing;

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    iget v0, p1, Landroidx/compose/animation/core/KeyframesSpecBaseConfig;->durationMillis:I

    invoke-virtual {p1, v0, p0}, Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;->at(ILjava/lang/Object;)Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity;

    move-result-object p0

    sget-object p1, Lcom/samsung/sesl/compose/foundation/SeslCheckboxDefaults$Common$ScaleTransition;->easingReverse:Landroidx/compose/animation/core/CubicBezierEasing;

    iput-object p1, p0, Landroidx/compose/animation/core/KeyframeBaseEntity;->easing:Landroidx/compose/animation/core/Easing;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
