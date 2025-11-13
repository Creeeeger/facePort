.class public final Lcom/android/systemui/notetask/NoteTaskBubblesController$areBubblesAvailable$2$1$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic $$this$withContext:Lkotlinx/coroutines/CoroutineScope;

.field public final synthetic $continuation:Lkotlin/coroutines/Continuation;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/notetask/NoteTaskBubblesController$areBubblesAvailable$2$1$2;->$$this$withContext:Lkotlinx/coroutines/CoroutineScope;

    iput-object p2, p0, Lcom/android/systemui/notetask/NoteTaskBubblesController$areBubblesAvailable$2$1$2;->$continuation:Lkotlin/coroutines/Continuation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Ljava/lang/Boolean;

    check-cast p2, Ljava/lang/Throwable;

    if-eqz p2, :cond_0

    sget p2, Lcom/android/systemui/log/DebugLogger;->$r8$clinit:I

    iget-object p2, p0, Lcom/android/systemui/notetask/NoteTaskBubblesController$areBubblesAvailable$2$1$2;->$$this$withContext:Lkotlinx/coroutines/CoroutineScope;

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    move-result-object p2

    invoke-virtual {p2}, Lkotlin/jvm/internal/ClassReference;->getSimpleName()Ljava/lang/String;

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/notetask/NoteTaskBubblesController$areBubblesAvailable$2$1$2;->$continuation:Lkotlin/coroutines/Continuation;

    sget p2, Lkotlin/Result;->$r8$clinit:I

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method
