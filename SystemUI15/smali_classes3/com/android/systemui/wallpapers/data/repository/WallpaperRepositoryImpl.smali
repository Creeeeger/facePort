.class public final Lcom/android/systemui/wallpapers/data/repository/WallpaperRepositoryImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/wallpapers/data/repository/WallpaperRepository;


# instance fields
.field public final bgDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field public final selectedUser:Lcom/android/systemui/wallpapers/data/repository/WallpaperRepositoryImpl$special$$inlined$filter$1;

.field public final wallpaperChanged:Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;

.field public final wallpaperInfo:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final wallpaperManager:Landroid/app/WallpaperManager;

.field public final wallpaperSupportsAmbientMode:Lkotlinx/coroutines/flow/ReadonlyStateFlow;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/user/data/repository/UserRepository;Landroid/app/WallpaperManager;Landroid/content/Context;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/wallpapers/data/repository/WallpaperRepositoryImpl;->bgDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    iput-object p5, p0, Lcom/android/systemui/wallpapers/data/repository/WallpaperRepositoryImpl;->wallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {p6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p6, 0x1110152

    invoke-virtual {p2, p6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    new-instance v1, Landroid/content/IntentFilter;

    const-string p6, "android.intent.action.WALLPAPER_CHANGED"

    invoke-direct {v1, p6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    move-object v0, p3

    invoke-static/range {v0 .. v5}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->broadcastFlow$default(Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/content/IntentFilter;Landroid/os/UserHandle;ILjava/lang/String;I)Lkotlinx/coroutines/flow/Flow;

    move-result-object p3

    new-instance p6, Lcom/android/systemui/wallpapers/data/repository/WallpaperRepositoryImpl$wallpaperChanged$1;

    const/4 v0, 0x0

    invoke-direct {p6, v0}, Lcom/android/systemui/wallpapers/data/repository/WallpaperRepositoryImpl$wallpaperChanged$1;-><init>(Lkotlin/coroutines/Continuation;)V

    new-instance v1, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;

    invoke-direct {v1, p6, p3}, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlinx/coroutines/flow/Flow;)V

    check-cast p4, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;

    new-instance p3, Lcom/android/systemui/wallpapers/data/repository/WallpaperRepositoryImpl$special$$inlined$filter$1;

    iget-object p4, p4, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;->selectedUser:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-direct {p3, p4}, Lcom/android/systemui/wallpapers/data/repository/WallpaperRepositoryImpl$special$$inlined$filter$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    invoke-virtual {p5}, Landroid/app/WallpaperManager;->isWallpaperSupported()Z

    move-result p4

    if-eqz p4, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/android/systemui/wallpapers/data/repository/WallpaperRepositoryImpl$wallpaperInfo$2;->INSTANCE:Lcom/android/systemui/wallpapers/data/repository/WallpaperRepositoryImpl$wallpaperInfo$2;

    new-instance p4, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    invoke-direct {p4, v1, p3, p2}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)V

    new-instance p2, Lcom/android/systemui/wallpapers/data/repository/WallpaperRepositoryImpl$wallpaperInfo$3;

    invoke-direct {p2, p0, v0}, Lcom/android/systemui/wallpapers/data/repository/WallpaperRepositoryImpl$wallpaperInfo$3;-><init>(Lcom/android/systemui/wallpapers/data/repository/WallpaperRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    invoke-static {p4, p2}, Lkotlinx/coroutines/flow/FlowKt;->mapLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    move-result-object p2

    const/4 p3, -0x1

    invoke-static {p2, p3}, Lkotlinx/coroutines/flow/FlowKt;->buffer$default(Lkotlinx/coroutines/flow/Flow;I)Lkotlinx/coroutines/flow/Flow;

    move-result-object p2

    sget-object p3, Lkotlinx/coroutines/flow/SharingStarted;->Companion:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p3, Lkotlinx/coroutines/flow/SharingStarted$Companion;->Eagerly:Lkotlinx/coroutines/flow/StartedEagerly;

    invoke-static {p2, p1, p3, v0}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p2

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object p2

    invoke-static {p2}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p2

    :goto_1
    iput-object p2, p0, Lcom/android/systemui/wallpapers/data/repository/WallpaperRepositoryImpl;->wallpaperInfo:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance p3, Lcom/android/systemui/wallpapers/data/repository/WallpaperRepositoryImpl$special$$inlined$map$1;

    invoke-direct {p3, p2}, Lcom/android/systemui/wallpapers/data/repository/WallpaperRepositoryImpl$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    sget-object p4, Lkotlinx/coroutines/flow/SharingStarted;->Companion:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p4, Lkotlinx/coroutines/flow/SharingStarted$Companion;->Eagerly:Lkotlinx/coroutines/flow/StartedEagerly;

    iget-object p2, p2, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {p2}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/WallpaperInfo;

    const/4 p5, 0x0

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/app/WallpaperInfo;->supportsAmbientMode()Z

    move-result p2

    const/4 p6, 0x1

    if-ne p2, p6, :cond_2

    move p5, p6

    :cond_2
    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p3, p1, p4, p2}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/wallpapers/data/repository/WallpaperRepositoryImpl;->wallpaperSupportsAmbientMode:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    return-void
.end method
