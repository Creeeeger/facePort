.class final Lcom/android/settingslib/spa/widget/scaffold/SettingsPagerKt$SettingsPager$2$1;
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
.field final synthetic $coroutineScope:Lkotlinx/coroutines/CoroutineScope;

.field final synthetic $pagerState:Landroidx/compose/foundation/pager/PagerState;

.field final synthetic $titles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Landroidx/compose/foundation/pager/DefaultPagerState;Lkotlinx/coroutines/internal/ContextScope;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingslib/spa/widget/scaffold/SettingsPagerKt$SettingsPager$2$1;->$titles:Ljava/util/List;

    iput-object p2, p0, Lcom/android/settingslib/spa/widget/scaffold/SettingsPagerKt$SettingsPager$2$1;->$pagerState:Landroidx/compose/foundation/pager/PagerState;

    iput-object p3, p0, Lcom/android/settingslib/spa/widget/scaffold/SettingsPagerKt$SettingsPager$2$1;->$coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    const/4 v0, 0x1

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    and-int/lit8 p2, p2, 0xb

    const/4 v1, 0x2

    if-ne p2, v1, :cond_1

    move-object p2, p1

    check-cast p2, Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto :goto_3

    :cond_1
    :goto_0
    sget-object p2, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    iget-object p2, p0, Lcom/android/settingslib/spa/widget/scaffold/SettingsPagerKt$SettingsPager$2$1;->$titles:Ljava/util/List;

    check-cast p2, Ljava/lang/Iterable;

    iget-object v7, p0, Lcom/android/settingslib/spa/widget/scaffold/SettingsPagerKt$SettingsPager$2$1;->$pagerState:Landroidx/compose/foundation/pager/PagerState;

    iget-object p0, p0, Lcom/android/settingslib/spa/widget/scaffold/SettingsPagerKt$SettingsPager$2$1;->$coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v8, 0x0

    move v1, v8

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v9, v1, 0x1

    if-ltz v1, :cond_3

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v7}, Landroidx/compose/foundation/pager/PagerState;->getCurrentPage()I

    move-result v3

    if-ne v3, v1, :cond_2

    move v3, v0

    goto :goto_2

    :cond_2
    move v3, v8

    :goto_2
    iget-object v4, v7, Landroidx/compose/foundation/pager/PagerState;->scrollPosition:Landroidx/compose/foundation/pager/PagerScrollPosition;

    invoke-virtual {v4}, Landroidx/compose/foundation/pager/PagerScrollPosition;->getCurrentPageOffsetFraction()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    new-instance v5, Lcom/android/settingslib/spa/widget/scaffold/SettingsPagerKt$SettingsPager$2$1$1$1;

    invoke-direct {v5, p0, v7, v1}, Lcom/android/settingslib/spa/widget/scaffold/SettingsPagerKt$SettingsPager$2$1$1$1;-><init>(Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/foundation/pager/PagerState;I)V

    const/4 v6, 0x0

    move-object v1, v2

    move v2, v3

    move v3, v4

    move-object v4, v5

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Lcom/android/settingslib/spa/widget/scaffold/SettingsTabKt;->SettingsTab(Ljava/lang/String;ZFLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    move v1, v9

    goto :goto_1

    :cond_3
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwIndexOverflow()V

    const/4 p0, 0x0

    throw p0

    :cond_4
    sget-object p0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    :goto_3
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
