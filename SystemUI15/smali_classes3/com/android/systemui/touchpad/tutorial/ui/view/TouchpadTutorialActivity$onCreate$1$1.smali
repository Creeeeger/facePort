.class final Lcom/android/systemui/touchpad/tutorial/ui/view/TouchpadTutorialActivity$onCreate$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/touchpad/tutorial/ui/view/TouchpadTutorialActivity;


# direct methods
.method public constructor <init>(Lcom/android/systemui/touchpad/tutorial/ui/view/TouchpadTutorialActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/touchpad/tutorial/ui/view/TouchpadTutorialActivity$onCreate$1$1;->this$0:Lcom/android/systemui/touchpad/tutorial/ui/view/TouchpadTutorialActivity;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    and-int/lit8 p2, p2, 0xb

    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    move-object p2, p1

    check-cast p2, Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto :goto_1

    :cond_1
    :goto_0
    sget-object p2, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    iget-object p2, p0, Lcom/android/systemui/touchpad/tutorial/ui/view/TouchpadTutorialActivity$onCreate$1$1;->this$0:Lcom/android/systemui/touchpad/tutorial/ui/view/TouchpadTutorialActivity;

    iget-object p2, p2, Lcom/android/systemui/touchpad/tutorial/ui/view/TouchpadTutorialActivity;->viewModelFactory:Lcom/android/systemui/touchpad/tutorial/ui/TouchpadTutorialViewModel$Factory;

    check-cast p1, Landroidx/compose/runtime/ComposerImpl;

    const v0, 0x28c2bcf0

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    iget-object v0, p0, Lcom/android/systemui/touchpad/tutorial/ui/view/TouchpadTutorialActivity$onCreate$1$1;->this$0:Lcom/android/systemui/touchpad/tutorial/ui/view/TouchpadTutorialActivity;

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v0

    iget-object p0, p0, Lcom/android/systemui/touchpad/tutorial/ui/view/TouchpadTutorialActivity$onCreate$1$1;->this$0:Lcom/android/systemui/touchpad/tutorial/ui/view/TouchpadTutorialActivity;

    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_2

    sget-object v0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v1, v0, :cond_3

    :cond_2
    new-instance v1, Lcom/android/systemui/touchpad/tutorial/ui/view/TouchpadTutorialActivity$onCreate$1$1$1$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/touchpad/tutorial/ui/view/TouchpadTutorialActivity$onCreate$1$1$1$1;-><init>(Lcom/android/systemui/touchpad/tutorial/ui/view/TouchpadTutorialActivity;)V

    invoke-virtual {p1, v1}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_3
    check-cast v1, Lkotlin/jvm/functions/Function0;

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-static {p2, v1, p1, p0}, Lcom/android/systemui/touchpad/tutorial/ui/view/TouchpadTutorialActivityKt;->TouchpadTutorialScreen(Landroidx/lifecycle/ViewModelProvider$Factory;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
