.class public final Lcom/android/systemui/keyboard/backlight/ui/KeyboardBacklightDialogCoordinator;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final applicationScope:Lkotlinx/coroutines/CoroutineScope;

.field public final createDialog:Lkotlin/jvm/functions/Function2;

.field public dialog:Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog;

.field public final viewModel:Lcom/android/systemui/keyboard/backlight/ui/viewmodel/BacklightDialogViewModel;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Landroid/content/Context;Lcom/android/systemui/keyboard/backlight/ui/viewmodel/BacklightDialogViewModel;)V
    .locals 1

    new-instance v0, Lcom/android/systemui/keyboard/backlight/ui/KeyboardBacklightDialogCoordinatorKt$defaultCreateDialog$1;

    invoke-direct {v0, p2}, Lcom/android/systemui/keyboard/backlight/ui/KeyboardBacklightDialogCoordinatorKt$defaultCreateDialog$1;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, p3, v0}, Lcom/android/systemui/keyboard/backlight/ui/KeyboardBacklightDialogCoordinator;-><init>(Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/keyboard/backlight/ui/viewmodel/BacklightDialogViewModel;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/keyboard/backlight/ui/viewmodel/BacklightDialogViewModel;Lkotlin/jvm/functions/Function2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lcom/android/systemui/keyboard/backlight/ui/viewmodel/BacklightDialogViewModel;",
            "Lkotlin/jvm/functions/Function2;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/keyboard/backlight/ui/KeyboardBacklightDialogCoordinator;->applicationScope:Lkotlinx/coroutines/CoroutineScope;

    iput-object p2, p0, Lcom/android/systemui/keyboard/backlight/ui/KeyboardBacklightDialogCoordinator;->viewModel:Lcom/android/systemui/keyboard/backlight/ui/viewmodel/BacklightDialogViewModel;

    iput-object p3, p0, Lcom/android/systemui/keyboard/backlight/ui/KeyboardBacklightDialogCoordinator;->createDialog:Lkotlin/jvm/functions/Function2;

    return-void
.end method


# virtual methods
.method public final startListening()V
    .locals 3

    new-instance v0, Lcom/android/systemui/keyboard/backlight/ui/KeyboardBacklightDialogCoordinator$startListening$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/keyboard/backlight/ui/KeyboardBacklightDialogCoordinator$startListening$1;-><init>(Lcom/android/systemui/keyboard/backlight/ui/KeyboardBacklightDialogCoordinator;Lkotlin/coroutines/Continuation;)V

    const/4 v2, 0x3

    iget-object p0, p0, Lcom/android/systemui/keyboard/backlight/ui/KeyboardBacklightDialogCoordinator;->applicationScope:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p0, v1, v1, v0, v2}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method
