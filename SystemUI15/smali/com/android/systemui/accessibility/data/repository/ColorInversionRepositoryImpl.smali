.class public final Lcom/android/systemui/accessibility/data/repository/ColorInversionRepositoryImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/accessibility/data/repository/ColorInversionRepository;


# instance fields
.field public final bgCoroutineContext:Lkotlin/coroutines/CoroutineContext;

.field public final scope:Lkotlinx/coroutines/CoroutineScope;

.field public final secureSettings:Lcom/android/systemui/util/settings/SecureSettings;

.field public final userMap:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/accessibility/data/repository/ColorInversionRepositoryImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/accessibility/data/repository/ColorInversionRepositoryImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/util/settings/SecureSettings;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/accessibility/data/repository/ColorInversionRepositoryImpl;->bgCoroutineContext:Lkotlin/coroutines/CoroutineContext;

    iput-object p2, p0, Lcom/android/systemui/accessibility/data/repository/ColorInversionRepositoryImpl;->scope:Lkotlinx/coroutines/CoroutineScope;

    iput-object p3, p0, Lcom/android/systemui/accessibility/data/repository/ColorInversionRepositoryImpl;->secureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/accessibility/data/repository/ColorInversionRepositoryImpl;->userMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final isEnabled(Landroid/os/UserHandle;)Lkotlinx/coroutines/flow/Flow;
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/accessibility/data/repository/ColorInversionRepositoryImpl;->userMap:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    check-cast v0, Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/android/systemui/util/settings/SettingsProxyExt;->INSTANCE:Lcom/android/systemui/util/settings/SettingsProxyExt;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    const-string v4, "accessibility_display_inversion_enabled"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/accessibility/data/repository/ColorInversionRepositoryImpl;->secureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    invoke-virtual {v2, v5, v3, v4}, Lcom/android/systemui/util/settings/SettingsProxyExt;->observerFlow(Lcom/android/systemui/util/settings/UserSettingsProxy;I[Ljava/lang/String;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/accessibility/data/repository/ColorInversionRepositoryImpl$isEnabled$1$1;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/android/systemui/accessibility/data/repository/ColorInversionRepositoryImpl$isEnabled$1$1;-><init>(Lkotlin/coroutines/Continuation;)V

    new-instance v4, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;

    invoke-direct {v4, v3, v2}, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlinx/coroutines/flow/Flow;)V

    new-instance v2, Lcom/android/systemui/accessibility/data/repository/ColorInversionRepositoryImpl$isEnabled$lambda$1$$inlined$map$1;

    invoke-direct {v2, v4, p0, p1}, Lcom/android/systemui/accessibility/data/repository/ColorInversionRepositoryImpl$isEnabled$lambda$1$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/accessibility/data/repository/ColorInversionRepositoryImpl;Landroid/os/UserHandle;)V

    invoke-static {v2}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    iget-object v2, p0, Lcom/android/systemui/accessibility/data/repository/ColorInversionRepositoryImpl;->bgCoroutineContext:Lkotlin/coroutines/CoroutineContext;

    invoke-static {p1, v2}, Lkotlinx/coroutines/flow/FlowKt;->flowOn(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    sget-object v2, Lkotlinx/coroutines/flow/SharingStarted;->Companion:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object v2

    const/4 v3, 0x1

    iget-object p0, p0, Lcom/android/systemui/accessibility/data/repository/ColorInversionRepositoryImpl;->scope:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p1, p0, v2, v3}, Lkotlinx/coroutines/flow/FlowKt;->shareIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;I)Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    check-cast v2, Lkotlinx/coroutines/flow/Flow;

    return-object v2
.end method

.method public final setIsEnabled(Landroid/os/UserHandle;Lkotlin/coroutines/Continuation;Z)Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/android/systemui/accessibility/data/repository/ColorInversionRepositoryImpl$setIsEnabled$2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p3, p1, v1}, Lcom/android/systemui/accessibility/data/repository/ColorInversionRepositoryImpl$setIsEnabled$2;-><init>(Lcom/android/systemui/accessibility/data/repository/ColorInversionRepositoryImpl;ZLandroid/os/UserHandle;Lkotlin/coroutines/Continuation;)V

    iget-object p0, p0, Lcom/android/systemui/accessibility/data/repository/ColorInversionRepositoryImpl;->bgCoroutineContext:Lkotlin/coroutines/CoroutineContext;

    invoke-static {p0, v0, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
