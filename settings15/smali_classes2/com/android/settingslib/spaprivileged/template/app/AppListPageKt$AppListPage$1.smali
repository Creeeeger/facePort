.class final Lcom/android/settingslib/spaprivileged/template/app/AppListPageKt$AppListPage$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function3;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001\"\u0008\u0008\u0000\u0010\u0002*\u00020\u0003*\u00020\u0004H\u000b\u00a2\u0006\u0004\u0008\u0005\u0010\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "T",
        "Lcom/android/settingslib/spaprivileged/model/app/AppRecord;",
        "Landroidx/compose/foundation/layout/RowScope;",
        "invoke",
        "(Landroidx/compose/foundation/layout/RowScope;Landroidx/compose/runtime/Composer;I)V"
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
.field final synthetic $moreOptions:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3;"
        }
    .end annotation
.end field

.field final synthetic $noMoreOptions:Z

.field final synthetic $showSystem$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ZLandroidx/compose/runtime/MutableState;Lkotlin/jvm/functions/Function3;)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/settingslib/spaprivileged/template/app/AppListPageKt$AppListPage$1;->$noMoreOptions:Z

    iput-object p2, p0, Lcom/android/settingslib/spaprivileged/template/app/AppListPageKt$AppListPage$1;->$showSystem$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p3, p0, Lcom/android/settingslib/spaprivileged/template/app/AppListPageKt$AppListPage$1;->$moreOptions:Lkotlin/jvm/functions/Function3;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Landroidx/compose/foundation/layout/RowScope;

    check-cast p2, Landroidx/compose/runtime/Composer;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    const-string v0, "$this$SearchScaffold"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    and-int/lit8 p1, p3, 0x51

    const/16 p3, 0x10

    if-ne p1, p3, :cond_1

    move-object p1, p2

    check-cast p1, Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result p3

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto :goto_1

    :cond_1
    :goto_0
    sget-object p1, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    iget-boolean p1, p0, Lcom/android/settingslib/spaprivileged/template/app/AppListPageKt$AppListPage$1;->$noMoreOptions:Z

    if-nez p1, :cond_2

    new-instance p1, Lcom/android/settingslib/spaprivileged/template/app/AppListPageKt$AppListPage$1$1;

    iget-object p3, p0, Lcom/android/settingslib/spaprivileged/template/app/AppListPageKt$AppListPage$1;->$showSystem$delegate:Landroidx/compose/runtime/MutableState;

    iget-object p0, p0, Lcom/android/settingslib/spaprivileged/template/app/AppListPageKt$AppListPage$1;->$moreOptions:Lkotlin/jvm/functions/Function3;

    invoke-direct {p1, p3, p0}, Lcom/android/settingslib/spaprivileged/template/app/AppListPageKt$AppListPage$1$1;-><init>(Landroidx/compose/runtime/MutableState;Lkotlin/jvm/functions/Function3;)V

    const p0, 0x1d6a57e

    invoke-static {p0, p1, p2}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILkotlin/jvm/internal/Lambda;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object p0

    const/4 p1, 0x6

    invoke-static {p0, p2, p1}, Lcom/android/settingslib/spa/widget/scaffold/MoreOptionsKt;->MoreOptionsAction(Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;I)V

    :cond_2
    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
