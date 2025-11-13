.class public final Lcom/android/systemui/screenshot/ScreenshotSoundControllerImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/screenshot/ScreenshotSoundController;


# instance fields
.field public final bgDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field public final coroutineScope:Lkotlinx/coroutines/CoroutineScope;

.field public final player:Lkotlinx/coroutines/DeferredCoroutine;

.field public final soundProvider:Lcom/android/systemui/screenshot/ScreenshotSoundProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/screenshot/ScreenshotSoundControllerImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/screenshot/ScreenshotSoundControllerImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/screenshot/ScreenshotSoundProvider;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineDispatcher;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotSoundControllerImpl;->soundProvider:Lcom/android/systemui/screenshot/ScreenshotSoundProvider;

    iput-object p2, p0, Lcom/android/systemui/screenshot/ScreenshotSoundControllerImpl;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    iput-object p3, p0, Lcom/android/systemui/screenshot/ScreenshotSoundControllerImpl;->bgDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    new-instance p1, Lcom/android/systemui/screenshot/ScreenshotSoundControllerImpl$special$$inlined$async$1;

    const-string v0, "loadScreenshotSound"

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1, p0}, Lcom/android/systemui/screenshot/ScreenshotSoundControllerImpl$special$$inlined$async$1;-><init>(Ljava/lang/String;Lkotlin/coroutines/Continuation;Lcom/android/systemui/screenshot/ScreenshotSoundControllerImpl;)V

    const/4 v0, 0x2

    invoke-static {p2, p3, v1, p1, v0}, Lkotlinx/coroutines/BuildersKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/DeferredCoroutine;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotSoundControllerImpl;->player:Lkotlinx/coroutines/DeferredCoroutine;

    return-void
.end method
