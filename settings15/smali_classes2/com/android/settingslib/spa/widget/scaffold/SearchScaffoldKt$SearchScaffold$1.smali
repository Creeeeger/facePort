.class final Lcom/android/settingslib/spa/widget/scaffold/SearchScaffoldKt$SearchScaffold$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001H\u000b\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke",
        "(Landroidx/compose/runtime/Composer;I)V"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $actions:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3;"
        }
    .end annotation
.end field

.field final synthetic $isSearchMode$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState;"
        }
    .end annotation
.end field

.field final synthetic $scrollBehavior:Landroidx/compose/material3/TopAppBarScrollBehavior;

.field final synthetic $title:Ljava/lang/String;

.field final synthetic $viewModel:Lcom/android/settingslib/spa/widget/scaffold/SearchScaffoldViewModel;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lkotlin/jvm/functions/Function3;Landroidx/compose/material3/ExitUntilCollapsedScrollBehavior;Landroidx/compose/runtime/MutableState;Lcom/android/settingslib/spa/widget/scaffold/SearchScaffoldViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingslib/spa/widget/scaffold/SearchScaffoldKt$SearchScaffold$1;->$title:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/settingslib/spa/widget/scaffold/SearchScaffoldKt$SearchScaffold$1;->$actions:Lkotlin/jvm/functions/Function3;

    iput-object p3, p0, Lcom/android/settingslib/spa/widget/scaffold/SearchScaffoldKt$SearchScaffold$1;->$scrollBehavior:Landroidx/compose/material3/TopAppBarScrollBehavior;

    iput-object p4, p0, Lcom/android/settingslib/spa/widget/scaffold/SearchScaffoldKt$SearchScaffold$1;->$isSearchMode$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p5, p0, Lcom/android/settingslib/spa/widget/scaffold/SearchScaffoldKt$SearchScaffold$1;->$viewModel:Lcom/android/settingslib/spa/widget/scaffold/SearchScaffoldViewModel;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

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

    iget-object v0, p0, Lcom/android/settingslib/spa/widget/scaffold/SearchScaffoldKt$SearchScaffold$1;->$title:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settingslib/spa/widget/scaffold/SearchScaffoldKt$SearchScaffold$1;->$actions:Lkotlin/jvm/functions/Function3;

    iget-object v2, p0, Lcom/android/settingslib/spa/widget/scaffold/SearchScaffoldKt$SearchScaffold$1;->$scrollBehavior:Landroidx/compose/material3/TopAppBarScrollBehavior;

    iget-object p2, p0, Lcom/android/settingslib/spa/widget/scaffold/SearchScaffoldKt$SearchScaffold$1;->$isSearchMode$delegate:Landroidx/compose/runtime/MutableState;

    invoke-interface {p2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    move-object v7, p1

    check-cast v7, Landroidx/compose/runtime/ComposerImpl;

    const p1, 0x5f00e772

    invoke-virtual {v7, p1}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    iget-object p1, p0, Lcom/android/settingslib/spa/widget/scaffold/SearchScaffoldKt$SearchScaffold$1;->$isSearchMode$delegate:Landroidx/compose/runtime/MutableState;

    invoke-virtual {v7, p1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result p1

    iget-object p2, p0, Lcom/android/settingslib/spa/widget/scaffold/SearchScaffoldKt$SearchScaffold$1;->$isSearchMode$delegate:Landroidx/compose/runtime/MutableState;

    invoke-virtual {v7}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez p1, :cond_2

    if-ne v4, v5, :cond_3

    :cond_2
    new-instance v4, Lcom/android/settingslib/spa/widget/scaffold/SearchScaffoldKt$SearchScaffold$1$1$1;

    invoke-direct {v4, p2}, Lcom/android/settingslib/spa/widget/scaffold/SearchScaffoldKt$SearchScaffold$1$1$1;-><init>(Landroidx/compose/runtime/MutableState;)V

    invoke-virtual {v7, v4}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_3
    check-cast v4, Lkotlin/jvm/functions/Function1;

    const/4 p1, 0x0

    invoke-virtual {v7, p1}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    iget-object p2, p0, Lcom/android/settingslib/spa/widget/scaffold/SearchScaffoldKt$SearchScaffold$1;->$viewModel:Lcom/android/settingslib/spa/widget/scaffold/SearchScaffoldViewModel;

    iget-object p2, p2, Lcom/android/settingslib/spa/widget/scaffold/SearchScaffoldViewModel;->searchQuery$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {p2}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/compose/ui/text/input/TextFieldValue;

    const v6, 0x5f00e7e4

    invoke-virtual {v7, v6}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    iget-object v6, p0, Lcom/android/settingslib/spa/widget/scaffold/SearchScaffoldKt$SearchScaffold$1;->$viewModel:Lcom/android/settingslib/spa/widget/scaffold/SearchScaffoldViewModel;

    invoke-virtual {v7, v6}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v6

    iget-object p0, p0, Lcom/android/settingslib/spa/widget/scaffold/SearchScaffoldKt$SearchScaffold$1;->$viewModel:Lcom/android/settingslib/spa/widget/scaffold/SearchScaffoldViewModel;

    invoke-virtual {v7}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v8

    if-nez v6, :cond_4

    if-ne v8, v5, :cond_5

    :cond_4
    new-instance v8, Lcom/android/settingslib/spa/widget/scaffold/SearchScaffoldKt$SearchScaffold$1$2$1;

    invoke-direct {v8, p0}, Lcom/android/settingslib/spa/widget/scaffold/SearchScaffoldKt$SearchScaffold$1$2$1;-><init>(Lcom/android/settingslib/spa/widget/scaffold/SearchScaffoldViewModel;)V

    invoke-virtual {v7, v8}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_5
    move-object v6, v8

    check-cast v6, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v7, p1}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const/4 v8, 0x0

    move-object v5, p2

    invoke-static/range {v0 .. v8}, Lcom/android/settingslib/spa/widget/scaffold/SearchScaffoldKt;->access$SearchableTopAppBar(Ljava/lang/String;Lkotlin/jvm/functions/Function3;Landroidx/compose/material3/TopAppBarScrollBehavior;ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/input/TextFieldValue;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
