.class final Lcom/android/settings/spa/app/appinfo/AppDisableButton$enableButton$1;
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
.field final synthetic this$0:Lcom/android/settings/spa/app/appinfo/AppDisableButton;


# direct methods
.method public constructor <init>(Lcom/android/settings/spa/app/appinfo/AppDisableButton;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/spa/app/appinfo/AppDisableButton$enableButton$1;->this$0:Lcom/android/settings/spa/app/appinfo/AppDisableButton;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    iget-object p0, p0, Lcom/android/settings/spa/app/appinfo/AppDisableButton$enableButton$1;->this$0:Lcom/android/settings/spa/app/appinfo/AppDisableButton;

    iget-object p0, p0, Lcom/android/settings/spa/app/appinfo/AppDisableButton;->packageInfoPresenter:Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter;

    const/16 v0, 0x36b

    invoke-virtual {p0, v0}, Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter;->logAction(I)V

    sget-object v0, Lkotlinx/coroutines/Dispatchers;->IO:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    new-instance v1, Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter$enable$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter$enable$1;-><init>(Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter;Lkotlin/coroutines/Continuation;)V

    const/4 v3, 0x2

    iget-object p0, p0, Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p0, v0, v2, v1, v3}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
