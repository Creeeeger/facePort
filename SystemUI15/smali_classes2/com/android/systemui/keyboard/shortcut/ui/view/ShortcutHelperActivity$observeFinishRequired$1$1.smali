.class public final Lcom/android/systemui/keyboard/shortcut/ui/view/ShortcutHelperActivity$observeFinishRequired$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/keyboard/shortcut/ui/view/ShortcutHelperActivity;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyboard/shortcut/ui/view/ShortcutHelperActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyboard/shortcut/ui/view/ShortcutHelperActivity$observeFinishRequired$1$1;->this$0:Lcom/android/systemui/keyboard/shortcut/ui/view/ShortcutHelperActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/keyboard/shortcut/ui/view/ShortcutHelperActivity$observeFinishRequired$1$1;->this$0:Lcom/android/systemui/keyboard/shortcut/ui/view/ShortcutHelperActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
