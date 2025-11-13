.class public final Lcom/android/systemui/keyboard/backlight/ui/KeyboardBacklightDialogCoordinator$startListening$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/keyboard/backlight/ui/KeyboardBacklightDialogCoordinator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyboard/backlight/ui/KeyboardBacklightDialogCoordinator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyboard/backlight/ui/KeyboardBacklightDialogCoordinator$startListening$1$1;->this$0:Lcom/android/systemui/keyboard/backlight/ui/KeyboardBacklightDialogCoordinator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lcom/android/systemui/keyboard/backlight/ui/viewmodel/BacklightDialogContentViewModel;

    iget-object p0, p0, Lcom/android/systemui/keyboard/backlight/ui/KeyboardBacklightDialogCoordinator$startListening$1$1;->this$0:Lcom/android/systemui/keyboard/backlight/ui/KeyboardBacklightDialogCoordinator;

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/android/systemui/keyboard/backlight/ui/KeyboardBacklightDialogCoordinator;->dialog:Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog;

    iget v0, p1, Lcom/android/systemui/keyboard/backlight/ui/viewmodel/BacklightDialogContentViewModel;->maxValue:I

    iget p1, p1, Lcom/android/systemui/keyboard/backlight/ui/viewmodel/BacklightDialogContentViewModel;->currentValue:I

    if-nez p2, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget-object v0, p0, Lcom/android/systemui/keyboard/backlight/ui/KeyboardBacklightDialogCoordinator;->createDialog:Lkotlin/jvm/functions/Function2;

    invoke-interface {v0, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog;

    iput-object p1, p0, Lcom/android/systemui/keyboard/backlight/ui/KeyboardBacklightDialogCoordinator;->dialog:Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog;

    goto :goto_0

    :cond_0
    sget v1, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog;->BACKLIGHT_ICON_ID:I

    const/4 v1, 0x0

    invoke-virtual {p2, p1, v0, v1}, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog;->updateState(IIZ)V

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/keyboard/backlight/ui/KeyboardBacklightDialogCoordinator;->dialog:Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/keyboard/backlight/ui/KeyboardBacklightDialogCoordinator;->dialog:Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_2
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/systemui/keyboard/backlight/ui/KeyboardBacklightDialogCoordinator;->dialog:Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog;

    :cond_3
    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
