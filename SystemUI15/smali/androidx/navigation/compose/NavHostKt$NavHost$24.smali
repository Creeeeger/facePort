.class final Landroidx/navigation/compose/NavHostKt$NavHost$24;
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
.field public static final INSTANCE:Landroidx/navigation/compose/NavHostKt$NavHost$24;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/navigation/compose/NavHostKt$NavHost$24;

    invoke-direct {v0}, Landroidx/navigation/compose/NavHostKt$NavHost$24;-><init>()V

    sput-object v0, Landroidx/navigation/compose/NavHostKt$NavHost$24;->INSTANCE:Landroidx/navigation/compose/NavHostKt$NavHost$24;

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

    check-cast p1, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;

    const/4 p0, 0x0

    const/4 p1, 0x6

    const/16 v0, 0x2bc

    const/4 v1, 0x0

    invoke-static {v0, v1, p0, p1}, Landroidx/compose/animation/core/AnimationSpecKt;->tween$default(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;

    move-result-object p0

    const/4 p1, 0x2

    invoke-static {p0, p1}, Landroidx/compose/animation/EnterExitTransitionKt;->fadeOut$default(Landroidx/compose/animation/core/DurationBasedAnimationSpec;I)Landroidx/compose/animation/ExitTransitionImpl;

    move-result-object p0

    return-object p0
.end method
