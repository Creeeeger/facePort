.class public final Lcom/android/systemui/keyboard/shortcut/ui/ShortcutHelperActivityStarter;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/CoreStartable;


# instance fields
.field public final applicationScope:Lkotlinx/coroutines/CoroutineScope;

.field public final context:Landroid/content/Context;

.field public final startActivity:Lkotlin/jvm/functions/Function1;

.field public final viewModel:Lcom/android/systemui/keyboard/shortcut/ui/viewmodel/ShortcutHelperViewModel;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/keyboard/shortcut/ui/viewmodel/ShortcutHelperViewModel;)V
    .locals 1

    new-instance v0, Lcom/android/systemui/keyboard/shortcut/ui/ShortcutHelperActivityStarter$1;

    invoke-direct {v0, p1}, Lcom/android/systemui/keyboard/shortcut/ui/ShortcutHelperActivityStarter$1;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/keyboard/shortcut/ui/ShortcutHelperActivityStarter;-><init>(Landroid/content/Context;Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/keyboard/shortcut/ui/viewmodel/ShortcutHelperViewModel;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/keyboard/shortcut/ui/viewmodel/ShortcutHelperViewModel;Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lcom/android/systemui/keyboard/shortcut/ui/viewmodel/ShortcutHelperViewModel;",
            "Lkotlin/jvm/functions/Function1;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/keyboard/shortcut/ui/ShortcutHelperActivityStarter;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/keyboard/shortcut/ui/ShortcutHelperActivityStarter;->applicationScope:Lkotlinx/coroutines/CoroutineScope;

    iput-object p3, p0, Lcom/android/systemui/keyboard/shortcut/ui/ShortcutHelperActivityStarter;->viewModel:Lcom/android/systemui/keyboard/shortcut/ui/viewmodel/ShortcutHelperViewModel;

    iput-object p4, p0, Lcom/android/systemui/keyboard/shortcut/ui/ShortcutHelperActivityStarter;->startActivity:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final start()V
    .locals 3

    new-instance v0, Lcom/android/systemui/keyboard/shortcut/ui/ShortcutHelperActivityStarter$start$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/keyboard/shortcut/ui/ShortcutHelperActivityStarter$start$1;-><init>(Lcom/android/systemui/keyboard/shortcut/ui/ShortcutHelperActivityStarter;Lkotlin/coroutines/Continuation;)V

    const/4 v2, 0x3

    iget-object p0, p0, Lcom/android/systemui/keyboard/shortcut/ui/ShortcutHelperActivityStarter;->applicationScope:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p0, v1, v1, v0, v2}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method
