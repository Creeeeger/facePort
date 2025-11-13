.class final Lcom/android/settingslib/spa/widget/scaffold/SettingsPagerKt$SettingsPager$2$1$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke"
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

.field final synthetic $page:I

.field final synthetic $pagerState:Landroidx/compose/foundation/pager/PagerState;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/foundation/pager/PagerState;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingslib/spa/widget/scaffold/SettingsPagerKt$SettingsPager$2$1$1$1;->$coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    iput-object p2, p0, Lcom/android/settingslib/spa/widget/scaffold/SettingsPagerKt$SettingsPager$2$1$1$1;->$pagerState:Landroidx/compose/foundation/pager/PagerState;

    iput p3, p0, Lcom/android/settingslib/spa/widget/scaffold/SettingsPagerKt$SettingsPager$2$1$1$1;->$page:I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/android/settingslib/spa/widget/scaffold/SettingsPagerKt$SettingsPager$2$1$1$1;->$coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v1, Lcom/android/settingslib/spa/widget/scaffold/SettingsPagerKt$SettingsPager$2$1$1$1$1;

    iget-object v2, p0, Lcom/android/settingslib/spa/widget/scaffold/SettingsPagerKt$SettingsPager$2$1$1$1;->$pagerState:Landroidx/compose/foundation/pager/PagerState;

    iget p0, p0, Lcom/android/settingslib/spa/widget/scaffold/SettingsPagerKt$SettingsPager$2$1$1$1;->$page:I

    const/4 v3, 0x0

    invoke-direct {v1, v2, p0, v3}, Lcom/android/settingslib/spa/widget/scaffold/SettingsPagerKt$SettingsPager$2$1$1$1$1;-><init>(Landroidx/compose/foundation/pager/PagerState;ILkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v3, v3, v1, p0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
