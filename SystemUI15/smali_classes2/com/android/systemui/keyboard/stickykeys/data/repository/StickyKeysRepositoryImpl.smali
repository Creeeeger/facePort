.class public final Lcom/android/systemui/keyboard/stickykeys/data/repository/StickyKeysRepositoryImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/keyboard/stickykeys/data/repository/StickyKeysRepository;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final inputManager:Landroid/hardware/input/InputManager;

.field public final settingEnabled:Lkotlinx/coroutines/flow/Flow;

.field public final stickyKeys:Lkotlinx/coroutines/flow/Flow;

.field public final stickyKeysLogger:Lcom/android/systemui/keyboard/stickykeys/StickyKeysLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/keyboard/stickykeys/data/repository/StickyKeysRepositoryImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/keyboard/stickykeys/data/repository/StickyKeysRepositoryImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/hardware/input/InputManager;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/android/systemui/util/settings/repository/UserAwareSecureSettingsRepository;Lcom/android/systemui/keyboard/stickykeys/StickyKeysLogger;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/keyboard/stickykeys/data/repository/StickyKeysRepositoryImpl;->inputManager:Landroid/hardware/input/InputManager;

    iput-object p4, p0, Lcom/android/systemui/keyboard/stickykeys/data/repository/StickyKeysRepositoryImpl;->stickyKeysLogger:Lcom/android/systemui/keyboard/stickykeys/StickyKeysLogger;

    sget-object p1, Lcom/android/systemui/common/coroutine/ConflatedCallbackFlow;->INSTANCE:Lcom/android/systemui/common/coroutine/ConflatedCallbackFlow;

    new-instance p4, Lcom/android/systemui/keyboard/stickykeys/data/repository/StickyKeysRepositoryImpl$stickyKeys$1;

    const/4 v0, 0x0

    invoke-direct {p4, p0, v0}, Lcom/android/systemui/keyboard/stickykeys/data/repository/StickyKeysRepositoryImpl$stickyKeys$1;-><init>(Lcom/android/systemui/keyboard/stickykeys/data/repository/StickyKeysRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p4}, Lcom/android/systemui/utils/coroutines/flow/FlowConflatedKt;->conflatedCallbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    new-instance p4, Lcom/android/systemui/keyboard/stickykeys/data/repository/StickyKeysRepositoryImpl$special$$inlined$map$1;

    invoke-direct {p4, p1, p0}, Lcom/android/systemui/keyboard/stickykeys/data/repository/StickyKeysRepositoryImpl$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/keyboard/stickykeys/data/repository/StickyKeysRepositoryImpl;)V

    new-instance p1, Lcom/android/systemui/keyboard/stickykeys/data/repository/StickyKeysRepositoryImpl$stickyKeys$3;

    invoke-direct {p1, p0, v0}, Lcom/android/systemui/keyboard/stickykeys/data/repository/StickyKeysRepositoryImpl$stickyKeys$3;-><init>(Lcom/android/systemui/keyboard/stickykeys/data/repository/StickyKeysRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    new-instance v1, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;

    invoke-direct {v1, p4, p1}, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v1, p2}, Lkotlinx/coroutines/flow/FlowKt;->flowOn(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/keyboard/stickykeys/data/repository/StickyKeysRepositoryImpl;->stickyKeys:Lkotlinx/coroutines/flow/Flow;

    const-string p1, "accessibility_sticky_keys"

    const/4 p4, 0x0

    invoke-interface {p3, p1, p4}, Lcom/android/systemui/util/settings/repository/UserAwareSecureSettingsRepository;->boolSettingForActiveUser(Ljava/lang/String;Z)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    new-instance p3, Lcom/android/systemui/keyboard/stickykeys/data/repository/StickyKeysRepositoryImpl$settingEnabled$1;

    invoke-direct {p3, p0, v0}, Lcom/android/systemui/keyboard/stickykeys/data/repository/StickyKeysRepositoryImpl$settingEnabled$1;-><init>(Lcom/android/systemui/keyboard/stickykeys/data/repository/StickyKeysRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    new-instance p4, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;

    invoke-direct {p4, p1, p3}, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)V

    invoke-static {p4, p2}, Lkotlinx/coroutines/flow/FlowKt;->flowOn(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/keyboard/stickykeys/data/repository/StickyKeysRepositoryImpl;->settingEnabled:Lkotlinx/coroutines/flow/Flow;

    return-void
.end method
