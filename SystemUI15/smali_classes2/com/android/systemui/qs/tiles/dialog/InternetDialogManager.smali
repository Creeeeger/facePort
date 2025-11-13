.class public final Lcom/android/systemui/qs/tiles/dialog/InternetDialogManager;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static dialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;


# instance fields
.field public final bgDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field public coroutineScope:Lkotlinx/coroutines/internal/ContextScope;

.field public final dialogFactory:Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate$Factory;

.field public final dialogTransitionAnimator:Lcom/android/systemui/animation/DialogTransitionAnimator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/animation/DialogTransitionAnimator;Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate$Factory;Lkotlinx/coroutines/CoroutineDispatcher;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogManager;->dialogTransitionAnimator:Lcom/android/systemui/animation/DialogTransitionAnimator;

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogManager;->dialogFactory:Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate$Factory;

    iput-object p3, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogManager;->bgDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    return-void
.end method


# virtual methods
.method public final create(ZZLcom/android/systemui/animation/Expandable;)V
    .locals 3

    sget-object v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogManager;->dialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    if-eqz v0, :cond_1

    sget-boolean p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogManagerKt;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "InternetDialogFactory"

    const-string p1, "InternetDialog is showing, do not create it twice."

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogManager;->bgDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/internal/ContextScope;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogManager;->coroutineScope:Lkotlinx/coroutines/internal/ContextScope;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogManager;->dialogFactory:Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate$Factory;

    const/4 v2, 0x1

    invoke-interface {v1, v2, p1, p2, v0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate$Factory;->create(ZZZLkotlinx/coroutines/CoroutineScope;)Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->createDialog()Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    move-result-object p1

    sput-object p1, Lcom/android/systemui/qs/tiles/dialog/InternetDialogManager;->dialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    if-eqz p3, :cond_2

    new-instance p1, Lcom/android/systemui/animation/DialogCuj;

    const/16 p2, 0x3a

    const-string v0, "internet"

    invoke-direct {p1, p2, v0}, Lcom/android/systemui/animation/DialogCuj;-><init>(ILjava/lang/String;)V

    invoke-interface {p3, p1}, Lcom/android/systemui/animation/Expandable;->dialogTransitionController(Lcom/android/systemui/animation/DialogCuj;)Lcom/android/systemui/animation/DialogTransitionAnimator$Controller;

    move-result-object p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_3

    sget-object p2, Lcom/android/systemui/qs/tiles/dialog/InternetDialogManager;->dialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogManager;->dialogTransitionAnimator:Lcom/android/systemui/animation/DialogTransitionAnimator;

    invoke-virtual {p0, p2, p1, v2}, Lcom/android/systemui/animation/DialogTransitionAnimator;->show(Landroid/app/Dialog;Lcom/android/systemui/animation/DialogTransitionAnimator$Controller;Z)V

    goto :goto_1

    :cond_3
    sget-object p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogManager;->dialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    :cond_4
    :goto_1
    return-void
.end method

.method public final destroyDialog()V
    .locals 2

    sget-boolean v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogManagerKt;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "InternetDialogFactory"

    const-string v1, "destroyDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogManager;->dialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogManager;->coroutineScope:Lkotlinx/coroutines/internal/ContextScope;

    if-nez p0, :cond_1

    move-object p0, v1

    :cond_1
    invoke-static {p0, v1}, Lkotlinx/coroutines/CoroutineScopeKt;->cancel(Lkotlinx/coroutines/CoroutineScope;Ljava/util/concurrent/CancellationException;)V

    :cond_2
    sput-object v1, Lcom/android/systemui/qs/tiles/dialog/InternetDialogManager;->dialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    return-void
.end method
