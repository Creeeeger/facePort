.class final synthetic Lcom/android/systemui/controls/management/SecControlsProviderSelectorActivity$onCreate$9;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function1;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 7

    const-string v5, "launchFavoritingActivity(Landroid/content/ComponentName;)V"

    const/4 v6, 0x0

    const/4 v1, 0x1

    const-class v3, Lcom/android/systemui/controls/management/SecControlsProviderSelectorActivity;

    const-string v4, "launchFavoritingActivity"

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Landroid/content/ComponentName;

    iget-object p0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    check-cast p0, Lcom/android/systemui/controls/management/SecControlsProviderSelectorActivity;

    iget-object v0, p0, Lcom/android/systemui/controls/management/SecControlsProviderSelectorActivity;->executor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/systemui/controls/management/SecControlsProviderSelectorActivity$launchFavoritingActivity$1;

    invoke-direct {v1, p1, p0}, Lcom/android/systemui/controls/management/SecControlsProviderSelectorActivity$launchFavoritingActivity$1;-><init>(Landroid/content/ComponentName;Lcom/android/systemui/controls/management/SecControlsProviderSelectorActivity;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
