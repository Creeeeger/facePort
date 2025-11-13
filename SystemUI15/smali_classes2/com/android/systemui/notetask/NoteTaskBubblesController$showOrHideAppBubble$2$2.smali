.class public final Lcom/android/systemui/notetask/NoteTaskBubblesController$showOrHideAppBubble$2$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic $$this$withContext:Lkotlinx/coroutines/CoroutineScope;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Landroid/content/Intent;Landroid/os/UserHandle;Landroid/graphics/drawable/Icon;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/notetask/NoteTaskBubblesController$showOrHideAppBubble$2$2;->$$this$withContext:Lkotlinx/coroutines/CoroutineScope;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    check-cast p2, Ljava/lang/Throwable;

    if-eqz p2, :cond_0

    sget p1, Lcom/android/systemui/log/DebugLogger;->$r8$clinit:I

    iget-object p0, p0, Lcom/android/systemui/notetask/NoteTaskBubblesController$showOrHideAppBubble$2$2;->$$this$withContext:Lkotlinx/coroutines/CoroutineScope;

    sget-boolean p1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    move-result-object p0

    invoke-virtual {p0}, Lkotlin/jvm/internal/ClassReference;->getSimpleName()Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget p1, Lcom/android/systemui/log/DebugLogger;->$r8$clinit:I

    iget-object p0, p0, Lcom/android/systemui/notetask/NoteTaskBubblesController$showOrHideAppBubble$2$2;->$$this$withContext:Lkotlinx/coroutines/CoroutineScope;

    sget-boolean p1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    move-result-object p0

    invoke-virtual {p0}, Lkotlin/jvm/internal/ClassReference;->getSimpleName()Ljava/lang/String;

    :goto_0
    return-void
.end method
