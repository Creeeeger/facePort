.class final Lcom/android/settingslib/spa/framework/compose/AnimatedNavGraphBuilderKt$animatedComposable$4;
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
        "Landroidx/compose/animation/ExitTransition;",
        "invoke",
        "(Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;)Landroidx/compose/animation/ExitTransition;",
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
.field public static final INSTANCE:Lcom/android/settingslib/spa/framework/compose/AnimatedNavGraphBuilderKt$animatedComposable$4;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settingslib/spa/framework/compose/AnimatedNavGraphBuilderKt$animatedComposable$4;

    invoke-direct {v0}, Lcom/android/settingslib/spa/framework/compose/AnimatedNavGraphBuilderKt$animatedComposable$4;-><init>()V

    sput-object v0, Lcom/android/settingslib/spa/framework/compose/AnimatedNavGraphBuilderKt$animatedComposable$4;->INSTANCE:Lcom/android/settingslib/spa/framework/compose/AnimatedNavGraphBuilderKt$animatedComposable$4;

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

    sget-object p0, Lcom/android/settingslib/spa/framework/compose/AnimatedNavGraphBuilderKt;->slideOutEffect:Landroidx/compose/animation/core/TweenSpec;

    sget-object v0, Lcom/android/settingslib/spa/framework/compose/AnimatedNavGraphBuilderKt;->offsetFunc:Lkotlin/jvm/functions/Function1;

    const/4 v1, 0x5

    invoke-virtual {p1, v1, p0, v0}, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;->slideOutOfContainer-mOhB8PU(ILandroidx/compose/animation/core/FiniteAnimationSpec;Lkotlin/jvm/functions/Function1;)Landroidx/compose/animation/ExitTransitionImpl;

    move-result-object p0

    sget-object p1, Lcom/android/settingslib/spa/framework/compose/AnimatedNavGraphBuilderKt;->fadeOutEffect:Landroidx/compose/animation/core/TweenSpec;

    const/4 v0, 0x2

    invoke-static {p1, v0}, Landroidx/compose/animation/EnterExitTransitionKt;->fadeOut$default(Landroidx/compose/animation/core/FiniteAnimationSpec;I)Landroidx/compose/animation/ExitTransitionImpl;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/compose/animation/ExitTransition;->plus(Landroidx/compose/animation/ExitTransition;)Landroidx/compose/animation/ExitTransitionImpl;

    move-result-object p0

    return-object p0
.end method
