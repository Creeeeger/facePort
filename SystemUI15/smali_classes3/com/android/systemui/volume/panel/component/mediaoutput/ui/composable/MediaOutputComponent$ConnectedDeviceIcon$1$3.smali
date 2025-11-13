.class final Lcom/android/systemui/volume/panel/component/mediaoutput/ui/composable/MediaOutputComponent$ConnectedDeviceIcon$1$3;
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
.field public static final INSTANCE:Lcom/android/systemui/volume/panel/component/mediaoutput/ui/composable/MediaOutputComponent$ConnectedDeviceIcon$1$3;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/volume/panel/component/mediaoutput/ui/composable/MediaOutputComponent$ConnectedDeviceIcon$1$3;

    invoke-direct {v0}, Lcom/android/systemui/volume/panel/component/mediaoutput/ui/composable/MediaOutputComponent$ConnectedDeviceIcon$1$3;-><init>()V

    sput-object v0, Lcom/android/systemui/volume/panel/component/mediaoutput/ui/composable/MediaOutputComponent$ConnectedDeviceIcon$1$3;->INSTANCE:Lcom/android/systemui/volume/panel/component/mediaoutput/ui/composable/MediaOutputComponent$ConnectedDeviceIcon$1$3;

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
    .locals 6

    check-cast p1, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;

    invoke-virtual {p1}, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;->getTargetState()Ljava/lang/Object;

    move-result-object p0

    instance-of p0, p0, Lcom/android/systemui/volume/panel/component/mediaoutput/ui/viewmodel/DeviceIconViewModel$IsPlaying;

    const/4 p1, 0x4

    const/16 v0, 0x190

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz p0, :cond_0

    new-instance p0, Landroidx/compose/animation/core/SnapSpec;

    const/16 v3, 0x2bc

    invoke-direct {p0, v3}, Landroidx/compose/animation/core/SnapSpec;-><init>(I)V

    invoke-static {p0, v2}, Landroidx/compose/animation/EnterExitTransitionKt;->fadeIn$default(Landroidx/compose/animation/core/DurationBasedAnimationSpec;I)Landroidx/compose/animation/EnterTransitionImpl;

    move-result-object p0

    const/16 v3, 0x12c

    invoke-static {v0, v3, v1, p1}, Landroidx/compose/animation/core/AnimationSpecKt;->tween$default(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;

    move-result-object v4

    sget-object v5, Lcom/android/systemui/volume/panel/component/mediaoutput/ui/composable/MediaOutputComponent$ConnectedDeviceIcon$1$3$1;->INSTANCE:Lcom/android/systemui/volume/panel/component/mediaoutput/ui/composable/MediaOutputComponent$ConnectedDeviceIcon$1$3$1;

    invoke-static {v5, v4}, Landroidx/compose/animation/EnterExitTransitionKt;->slideOutVertically(Lkotlin/jvm/functions/Function1;Landroidx/compose/animation/core/FiniteAnimationSpec;)Landroidx/compose/animation/ExitTransitionImpl;

    move-result-object v4

    invoke-static {v0, v3, v1, p1}, Landroidx/compose/animation/core/AnimationSpecKt;->tween$default(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;

    move-result-object p1

    invoke-static {p1, v2}, Landroidx/compose/animation/EnterExitTransitionKt;->fadeOut$default(Landroidx/compose/animation/core/DurationBasedAnimationSpec;I)Landroidx/compose/animation/ExitTransitionImpl;

    move-result-object p1

    invoke-virtual {v4, p1}, Landroidx/compose/animation/ExitTransition;->plus(Landroidx/compose/animation/ExitTransition;)Landroidx/compose/animation/ExitTransitionImpl;

    move-result-object p1

    invoke-static {p0, p1}, Landroidx/compose/animation/AnimatedContentKt;->togetherWith(Landroidx/compose/animation/EnterTransitionImpl;Landroidx/compose/animation/ExitTransitionImpl;)Landroidx/compose/animation/ContentTransform;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/16 p0, 0x384

    invoke-static {v0, p0, v1, p1}, Landroidx/compose/animation/core/AnimationSpecKt;->tween$default(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;

    move-result-object v3

    sget-object v4, Lcom/android/systemui/volume/panel/component/mediaoutput/ui/composable/MediaOutputComponent$ConnectedDeviceIcon$1$3$2;->INSTANCE:Lcom/android/systemui/volume/panel/component/mediaoutput/ui/composable/MediaOutputComponent$ConnectedDeviceIcon$1$3$2;

    invoke-static {v4, v3}, Landroidx/compose/animation/EnterExitTransitionKt;->slideInVertically(Lkotlin/jvm/functions/Function1;Landroidx/compose/animation/core/FiniteAnimationSpec;)Landroidx/compose/animation/EnterTransitionImpl;

    move-result-object v3

    invoke-static {v0, p0, v1, p1}, Landroidx/compose/animation/core/AnimationSpecKt;->tween$default(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;

    move-result-object p0

    invoke-static {p0, v2}, Landroidx/compose/animation/EnterExitTransitionKt;->fadeIn$default(Landroidx/compose/animation/core/DurationBasedAnimationSpec;I)Landroidx/compose/animation/EnterTransitionImpl;

    move-result-object p0

    invoke-virtual {v3, p0}, Landroidx/compose/animation/EnterTransition;->plus(Landroidx/compose/animation/EnterTransition;)Landroidx/compose/animation/EnterTransitionImpl;

    move-result-object p0

    const/16 v3, 0x1f4

    invoke-static {v0, v3, v1, p1}, Landroidx/compose/animation/core/AnimationSpecKt;->tween$default(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;

    move-result-object p1

    invoke-static {p1, v2}, Landroidx/compose/animation/EnterExitTransitionKt;->fadeOut$default(Landroidx/compose/animation/core/DurationBasedAnimationSpec;I)Landroidx/compose/animation/ExitTransitionImpl;

    move-result-object p1

    invoke-static {p0, p1}, Landroidx/compose/animation/AnimatedContentKt;->togetherWith(Landroidx/compose/animation/EnterTransitionImpl;Landroidx/compose/animation/ExitTransitionImpl;)Landroidx/compose/animation/ContentTransform;

    move-result-object p0

    :goto_0
    return-object p0
.end method
