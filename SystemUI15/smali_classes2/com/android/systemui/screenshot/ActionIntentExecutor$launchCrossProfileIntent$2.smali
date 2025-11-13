.class public final Lcom/android/systemui/screenshot/ActionIntentExecutor$launchCrossProfileIntent$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/internal/infra/ServiceConnector$VoidJob;


# instance fields
.field public final synthetic $bundle:Landroid/os/Bundle;

.field public final synthetic $completion:Lkotlinx/coroutines/CompletableDeferred;

.field public final synthetic $intent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Intent;Landroid/os/Bundle;Lkotlinx/coroutines/CompletableDeferred;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Landroid/os/Bundle;",
            "Lkotlinx/coroutines/CompletableDeferred;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/screenshot/ActionIntentExecutor$launchCrossProfileIntent$2;->$intent:Landroid/content/Intent;

    iput-object p2, p0, Lcom/android/systemui/screenshot/ActionIntentExecutor$launchCrossProfileIntent$2;->$bundle:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/android/systemui/screenshot/ActionIntentExecutor$launchCrossProfileIntent$2;->$completion:Lkotlinx/coroutines/CompletableDeferred;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final runNoResult(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lcom/android/systemui/screenshot/ICrossProfileService;

    iget-object v0, p0, Lcom/android/systemui/screenshot/ActionIntentExecutor$launchCrossProfileIntent$2;->$intent:Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/screenshot/ActionIntentExecutor$launchCrossProfileIntent$2;->$bundle:Landroid/os/Bundle;

    invoke-interface {p1, v0, v1}, Lcom/android/systemui/screenshot/ICrossProfileService;->launchIntent(Landroid/content/Intent;Landroid/os/Bundle;)V

    iget-object p0, p0, Lcom/android/systemui/screenshot/ActionIntentExecutor$launchCrossProfileIntent$2;->$completion:Lkotlinx/coroutines/CompletableDeferred;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    check-cast p0, Lkotlinx/coroutines/CompletableDeferredImpl;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/JobSupport;->makeCompleting$external__kotlinx_coroutines__linux_glibc_common__kotlinx_coroutines_host(Ljava/lang/Object;)Z

    return-void
.end method
