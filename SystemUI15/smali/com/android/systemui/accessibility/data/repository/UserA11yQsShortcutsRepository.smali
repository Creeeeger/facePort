.class public final Lcom/android/systemui/accessibility/data/repository/UserA11yQsShortcutsRepository;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final secureSettings:Lcom/android/systemui/util/settings/SecureSettings;

.field public final targets:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

.field public final userId:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/accessibility/data/repository/UserA11yQsShortcutsRepository$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/accessibility/data/repository/UserA11yQsShortcutsRepository$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ILcom/android/systemui/util/settings/SecureSettings;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineDispatcher;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/accessibility/data/repository/UserA11yQsShortcutsRepository;->userId:I

    iput-object p2, p0, Lcom/android/systemui/accessibility/data/repository/UserA11yQsShortcutsRepository;->secureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    sget-object v0, Lcom/android/systemui/util/settings/SettingsProxyExt;->INSTANCE:Lcom/android/systemui/util/settings/SettingsProxyExt;

    const-string v1, "accessibility_qs_targets"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, p1, v1}, Lcom/android/systemui/util/settings/SettingsProxyExt;->observerFlow(Lcom/android/systemui/util/settings/UserSettingsProxy;I[Ljava/lang/String;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    new-instance p2, Lcom/android/systemui/accessibility/data/repository/UserA11yQsShortcutsRepository$targets$1;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Lcom/android/systemui/accessibility/data/repository/UserA11yQsShortcutsRepository$targets$1;-><init>(Lkotlin/coroutines/Continuation;)V

    new-instance v0, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;

    invoke-direct {v0, p2, p1}, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlinx/coroutines/flow/Flow;)V

    new-instance p1, Lcom/android/systemui/accessibility/data/repository/UserA11yQsShortcutsRepository$special$$inlined$map$1;

    invoke-direct {p1, v0, p0}, Lcom/android/systemui/accessibility/data/repository/UserA11yQsShortcutsRepository$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/accessibility/data/repository/UserA11yQsShortcutsRepository;)V

    invoke-static {p1, p4}, Lkotlinx/coroutines/flow/FlowKt;->flowOn(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    sget-object p1, Lkotlinx/coroutines/flow/SharingStarted;->Companion:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    const/4 p2, 0x3

    invoke-static {p1, p2}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p0, p3, p1, p2}, Lkotlinx/coroutines/flow/FlowKt;->shareIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;I)Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    return-void
.end method
