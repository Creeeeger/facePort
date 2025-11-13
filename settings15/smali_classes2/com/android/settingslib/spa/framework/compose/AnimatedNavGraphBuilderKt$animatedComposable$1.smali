.class final Lcom/android/settingslib/spa/framework/compose/AnimatedNavGraphBuilderKt$animatedComposable$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0005\u001a\u0004\u0018\u00010\u0002*\u0008\u0012\u0004\u0012\u00020\u00010\u0000H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;",
        "Landroidx/navigation/NavBackStackEntry;",
        "Landroidx/compose/animation/EnterTransition;",
        "invoke",
        "(Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;)Landroidx/compose/animation/EnterTransition;",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/settingslib/spa/framework/compose/AnimatedNavGraphBuilderKt$animatedComposable$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settingslib/spa/framework/compose/AnimatedNavGraphBuilderKt$animatedComposable$1;

    invoke-direct {v0}, Lcom/android/settingslib/spa/framework/compose/AnimatedNavGraphBuilderKt$animatedComposable$1;-><init>()V

    sput-object v0, Lcom/android/settingslib/spa/framework/compose/AnimatedNavGraphBuilderKt$animatedComposable$1;->INSTANCE:Lcom/android/settingslib/spa/framework/compose/AnimatedNavGraphBuilderKt$animatedComposable$1;

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

    const-string p0, "$this$composable"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;->getInitialState()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/navigation/NavBackStackEntry;

    iget-object p0, p0, Landroidx/navigation/NavBackStackEntry;->destination:Landroidx/navigation/NavDestination;

    iget-object p0, p0, Landroidx/navigation/NavDestination;->route:Ljava/lang/String;

    const-string v0, "NULL"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    sget-object p0, Lcom/android/settingslib/spa/framework/compose/AnimatedNavGraphBuilderKt;->slideInEffect:Landroidx/compose/animation/core/TweenSpec;

    sget-object v0, Lcom/android/settingslib/spa/framework/compose/AnimatedNavGraphBuilderKt;->offsetFunc:Lkotlin/jvm/functions/Function1;

    const/4 v1, 0x4

    invoke-virtual {p1, v1, p0, v0}, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;->slideIntoContainer-mOhB8PU(ILandroidx/compose/animation/core/FiniteAnimationSpec;Lkotlin/jvm/functions/Function1;)Landroidx/compose/animation/EnterTransitionImpl;

    move-result-object p0

    sget-object p1, Lcom/android/settingslib/spa/framework/compose/AnimatedNavGraphBuilderKt;->fadeInEffect:Landroidx/compose/animation/core/TweenSpec;

    const/4 v0, 0x2

    invoke-static {p1, v0}, Landroidx/compose/animation/EnterExitTransitionKt;->fadeIn$default(Landroidx/compose/animation/core/FiniteAnimationSpec;I)Landroidx/compose/animation/EnterTransitionImpl;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/compose/animation/EnterTransition;->plus(Landroidx/compose/animation/EnterTransition;)Landroidx/compose/animation/EnterTransitionImpl;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method
