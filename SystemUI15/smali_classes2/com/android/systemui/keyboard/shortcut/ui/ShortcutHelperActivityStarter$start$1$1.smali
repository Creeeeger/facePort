.class public final Lcom/android/systemui/keyboard/shortcut/ui/ShortcutHelperActivityStarter$start$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/keyboard/shortcut/ui/ShortcutHelperActivityStarter;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyboard/shortcut/ui/ShortcutHelperActivityStarter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyboard/shortcut/ui/ShortcutHelperActivityStarter$start$1$1;->this$0:Lcom/android/systemui/keyboard/shortcut/ui/ShortcutHelperActivityStarter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/keyboard/shortcut/ui/ShortcutHelperActivityStarter$start$1$1;->this$0:Lcom/android/systemui/keyboard/shortcut/ui/ShortcutHelperActivityStarter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/android/systemui/keyboard/shortcut/ui/ShortcutHelperActivityStarter;->context:Landroid/content/Context;

    const-class v0, Lcom/android/systemui/keyboard/shortcut/ui/view/ShortcutHelperActivity;

    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 p2, 0x10000000

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/keyboard/shortcut/ui/ShortcutHelperActivityStarter;->startActivity:Lkotlin/jvm/functions/Function1;

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
