.class public abstract Lcom/android/systemui/media/mediaoutput/compose/ext/CompositionExtKt;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final LocalAudioPathInteraction:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

.field public static final LocalBackgroundColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

.field public static final LocalDensityScale:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

.field public static final LocalDismissCallback:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

.field public static final LocalFeature:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

.field public static final LocalMediaInteraction:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

.field public static final LocalMediaOutputState:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

.field public static final LocalRootSize:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

.field public static final LocalSecHapticFeedback:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

.field public static final LocalSnackbarHostState:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

.field public static final LocalTransitionInfo:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

.field public static final LocalViewModelProviderFactory:Landroidx/compose/runtime/StaticProvidableCompositionLocal;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lcom/android/systemui/media/mediaoutput/compose/ext/CompositionExtKt$LocalRootSize$1;->INSTANCE:Lcom/android/systemui/media/mediaoutput/compose/ext/CompositionExtKt$LocalRootSize$1;

    new-instance v1, Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-direct {v1, v0}, Landroidx/compose/runtime/StaticProvidableCompositionLocal;-><init>(Lkotlin/jvm/functions/Function0;)V

    sput-object v1, Lcom/android/systemui/media/mediaoutput/compose/ext/CompositionExtKt;->LocalRootSize:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    sget-object v0, Lcom/android/systemui/media/mediaoutput/compose/ext/CompositionExtKt$LocalMediaInteraction$1;->INSTANCE:Lcom/android/systemui/media/mediaoutput/compose/ext/CompositionExtKt$LocalMediaInteraction$1;

    new-instance v1, Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-direct {v1, v0}, Landroidx/compose/runtime/StaticProvidableCompositionLocal;-><init>(Lkotlin/jvm/functions/Function0;)V

    sput-object v1, Lcom/android/systemui/media/mediaoutput/compose/ext/CompositionExtKt;->LocalMediaInteraction:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    sget-object v0, Lcom/android/systemui/media/mediaoutput/compose/ext/CompositionExtKt$LocalAudioPathInteraction$1;->INSTANCE:Lcom/android/systemui/media/mediaoutput/compose/ext/CompositionExtKt$LocalAudioPathInteraction$1;

    new-instance v1, Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-direct {v1, v0}, Landroidx/compose/runtime/StaticProvidableCompositionLocal;-><init>(Lkotlin/jvm/functions/Function0;)V

    sput-object v1, Lcom/android/systemui/media/mediaoutput/compose/ext/CompositionExtKt;->LocalAudioPathInteraction:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    sget-object v0, Lcom/android/systemui/media/mediaoutput/compose/ext/CompositionExtKt$LocalSnackbarHostState$1;->INSTANCE:Lcom/android/systemui/media/mediaoutput/compose/ext/CompositionExtKt$LocalSnackbarHostState$1;

    new-instance v1, Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-direct {v1, v0}, Landroidx/compose/runtime/StaticProvidableCompositionLocal;-><init>(Lkotlin/jvm/functions/Function0;)V

    sput-object v1, Lcom/android/systemui/media/mediaoutput/compose/ext/CompositionExtKt;->LocalSnackbarHostState:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    sget-object v0, Lcom/android/systemui/media/mediaoutput/compose/ext/CompositionExtKt$LocalFeature$1;->INSTANCE:Lcom/android/systemui/media/mediaoutput/compose/ext/CompositionExtKt$LocalFeature$1;

    new-instance v1, Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-direct {v1, v0}, Landroidx/compose/runtime/StaticProvidableCompositionLocal;-><init>(Lkotlin/jvm/functions/Function0;)V

    sput-object v1, Lcom/android/systemui/media/mediaoutput/compose/ext/CompositionExtKt;->LocalFeature:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    sget-object v0, Lcom/android/systemui/media/mediaoutput/compose/ext/CompositionExtKt$LocalMediaOutputState$1;->INSTANCE:Lcom/android/systemui/media/mediaoutput/compose/ext/CompositionExtKt$LocalMediaOutputState$1;

    new-instance v1, Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-direct {v1, v0}, Landroidx/compose/runtime/StaticProvidableCompositionLocal;-><init>(Lkotlin/jvm/functions/Function0;)V

    sput-object v1, Lcom/android/systemui/media/mediaoutput/compose/ext/CompositionExtKt;->LocalMediaOutputState:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    sget-object v0, Lcom/android/systemui/media/mediaoutput/compose/ext/CompositionExtKt$LocalTransitionInfo$1;->INSTANCE:Lcom/android/systemui/media/mediaoutput/compose/ext/CompositionExtKt$LocalTransitionInfo$1;

    new-instance v1, Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-direct {v1, v0}, Landroidx/compose/runtime/StaticProvidableCompositionLocal;-><init>(Lkotlin/jvm/functions/Function0;)V

    sput-object v1, Lcom/android/systemui/media/mediaoutput/compose/ext/CompositionExtKt;->LocalTransitionInfo:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    sget-object v0, Lcom/android/systemui/media/mediaoutput/compose/ext/CompositionExtKt$LocalDismissCallback$1;->INSTANCE:Lcom/android/systemui/media/mediaoutput/compose/ext/CompositionExtKt$LocalDismissCallback$1;

    new-instance v1, Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-direct {v1, v0}, Landroidx/compose/runtime/StaticProvidableCompositionLocal;-><init>(Lkotlin/jvm/functions/Function0;)V

    sput-object v1, Lcom/android/systemui/media/mediaoutput/compose/ext/CompositionExtKt;->LocalDismissCallback:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    sget-object v0, Lcom/android/systemui/media/mediaoutput/compose/ext/CompositionExtKt$LocalViewModelProviderFactory$1;->INSTANCE:Lcom/android/systemui/media/mediaoutput/compose/ext/CompositionExtKt$LocalViewModelProviderFactory$1;

    new-instance v1, Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-direct {v1, v0}, Landroidx/compose/runtime/StaticProvidableCompositionLocal;-><init>(Lkotlin/jvm/functions/Function0;)V

    sput-object v1, Lcom/android/systemui/media/mediaoutput/compose/ext/CompositionExtKt;->LocalViewModelProviderFactory:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    sget-object v0, Lcom/android/systemui/media/mediaoutput/compose/ext/CompositionExtKt$LocalSecHapticFeedback$1;->INSTANCE:Lcom/android/systemui/media/mediaoutput/compose/ext/CompositionExtKt$LocalSecHapticFeedback$1;

    new-instance v1, Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-direct {v1, v0}, Landroidx/compose/runtime/StaticProvidableCompositionLocal;-><init>(Lkotlin/jvm/functions/Function0;)V

    sput-object v1, Lcom/android/systemui/media/mediaoutput/compose/ext/CompositionExtKt;->LocalSecHapticFeedback:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    sget-object v0, Lcom/android/systemui/media/mediaoutput/compose/ext/CompositionExtKt$LocalBackgroundColor$1;->INSTANCE:Lcom/android/systemui/media/mediaoutput/compose/ext/CompositionExtKt$LocalBackgroundColor$1;

    new-instance v1, Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-direct {v1, v0}, Landroidx/compose/runtime/StaticProvidableCompositionLocal;-><init>(Lkotlin/jvm/functions/Function0;)V

    sput-object v1, Lcom/android/systemui/media/mediaoutput/compose/ext/CompositionExtKt;->LocalBackgroundColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    sget-object v0, Lcom/android/systemui/media/mediaoutput/compose/ext/CompositionExtKt$LocalDensityScale$1;->INSTANCE:Lcom/android/systemui/media/mediaoutput/compose/ext/CompositionExtKt$LocalDensityScale$1;

    new-instance v1, Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-direct {v1, v0}, Landroidx/compose/runtime/StaticProvidableCompositionLocal;-><init>(Lkotlin/jvm/functions/Function0;)V

    sput-object v1, Lcom/android/systemui/media/mediaoutput/compose/ext/CompositionExtKt;->LocalDensityScale:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    return-void
.end method
