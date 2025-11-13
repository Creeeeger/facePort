.class public abstract Lcom/android/settingslib/spa/framework/compose/AnimatedNavGraphBuilderKt;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final fadeInEffect:Landroidx/compose/animation/core/TweenSpec;

.field public static final fadeOutEffect:Landroidx/compose/animation/core/TweenSpec;

.field public static final offsetFunc:Lkotlin/jvm/functions/Function1;

.field public static final slideInEffect:Landroidx/compose/animation/core/TweenSpec;

.field public static final slideOutEffect:Landroidx/compose/animation/core/TweenSpec;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    sget-object v0, Landroidx/compose/animation/core/EasingKt;->LinearOutSlowInEasing:Landroidx/compose/animation/core/CubicBezierEasing;

    new-instance v1, Landroidx/compose/animation/core/TweenSpec;

    const/16 v2, 0x12c

    const/16 v3, 0x4b

    invoke-direct {v1, v2, v3, v0}, Landroidx/compose/animation/core/TweenSpec;-><init>(IILandroidx/compose/animation/core/Easing;)V

    sput-object v1, Lcom/android/settingslib/spa/framework/compose/AnimatedNavGraphBuilderKt;->slideInEffect:Landroidx/compose/animation/core/TweenSpec;

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    invoke-static {v2, v4, v1, v5}, Landroidx/compose/animation/core/AnimationSpecKt;->tween$default(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;

    move-result-object v1

    sput-object v1, Lcom/android/settingslib/spa/framework/compose/AnimatedNavGraphBuilderKt;->slideOutEffect:Landroidx/compose/animation/core/TweenSpec;

    sget-object v1, Landroidx/compose/animation/core/EasingKt;->FastOutLinearInEasing:Landroidx/compose/animation/core/CubicBezierEasing;

    const/4 v5, 0x2

    invoke-static {v3, v4, v1, v5}, Landroidx/compose/animation/core/AnimationSpecKt;->tween$default(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;

    move-result-object v1

    sput-object v1, Lcom/android/settingslib/spa/framework/compose/AnimatedNavGraphBuilderKt;->fadeOutEffect:Landroidx/compose/animation/core/TweenSpec;

    new-instance v1, Landroidx/compose/animation/core/TweenSpec;

    invoke-direct {v1, v2, v3, v0}, Landroidx/compose/animation/core/TweenSpec;-><init>(IILandroidx/compose/animation/core/Easing;)V

    sput-object v1, Lcom/android/settingslib/spa/framework/compose/AnimatedNavGraphBuilderKt;->fadeInEffect:Landroidx/compose/animation/core/TweenSpec;

    sget-object v0, Lcom/android/settingslib/spa/framework/compose/AnimatedNavGraphBuilderKt$offsetFunc$1;->INSTANCE:Lcom/android/settingslib/spa/framework/compose/AnimatedNavGraphBuilderKt$offsetFunc$1;

    sput-object v0, Lcom/android/settingslib/spa/framework/compose/AnimatedNavGraphBuilderKt;->offsetFunc:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public static animatedComposable$default(Landroidx/navigation/NavGraphBuilder;Ljava/lang/String;Ljava/util/List;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V
    .locals 10

    sget-object v3, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "route"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "arguments"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deepLinks"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Lcom/android/settingslib/spa/framework/compose/AnimatedNavGraphBuilderKt$animatedComposable$1;->INSTANCE:Lcom/android/settingslib/spa/framework/compose/AnimatedNavGraphBuilderKt$animatedComposable$1;

    sget-object v5, Lcom/android/settingslib/spa/framework/compose/AnimatedNavGraphBuilderKt$animatedComposable$2;->INSTANCE:Lcom/android/settingslib/spa/framework/compose/AnimatedNavGraphBuilderKt$animatedComposable$2;

    sget-object v6, Lcom/android/settingslib/spa/framework/compose/AnimatedNavGraphBuilderKt$animatedComposable$3;->INSTANCE:Lcom/android/settingslib/spa/framework/compose/AnimatedNavGraphBuilderKt$animatedComposable$3;

    sget-object v7, Lcom/android/settingslib/spa/framework/compose/AnimatedNavGraphBuilderKt$animatedComposable$4;->INSTANCE:Lcom/android/settingslib/spa/framework/compose/AnimatedNavGraphBuilderKt$animatedComposable$4;

    const/16 v9, 0x80

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v8, p3

    invoke-static/range {v0 .. v9}, Landroidx/navigation/compose/NavGraphBuilderKt;->composable$default(Landroidx/navigation/NavGraphBuilder;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V

    return-void
.end method
