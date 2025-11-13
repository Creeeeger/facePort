.class final Lcom/android/systemui/screenshot/DefaultScreenshotActionsProvider$3$2;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/screenshot/DefaultScreenshotActionsProvider;


# direct methods
.method public constructor <init>(Lcom/android/systemui/screenshot/DefaultScreenshotActionsProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/screenshot/DefaultScreenshotActionsProvider$3$2;->this$0:Lcom/android/systemui/screenshot/DefaultScreenshotActionsProvider;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Lcom/android/systemui/screenshot/ScreenshotSavedResult;

    iget-object p0, p0, Lcom/android/systemui/screenshot/DefaultScreenshotActionsProvider$3$2;->this$0:Lcom/android/systemui/screenshot/DefaultScreenshotActionsProvider;

    iget-object v0, p0, Lcom/android/systemui/screenshot/DefaultScreenshotActionsProvider;->actionExecutor:Lcom/android/systemui/screenshot/ActionExecutor;

    sget-object v1, Lcom/android/systemui/screenshot/ActionIntentCreator;->INSTANCE:Lcom/android/systemui/screenshot/ActionIntentCreator;

    iget-object v2, p1, Lcom/android/systemui/screenshot/ScreenshotSavedResult;->uri:Landroid/net/Uri;

    iget-object p0, p0, Lcom/android/systemui/screenshot/DefaultScreenshotActionsProvider;->context:Landroid/content/Context;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, v2}, Lcom/android/systemui/screenshot/ActionIntentCreator;->createEdit(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p0

    iget-object p1, p1, Lcom/android/systemui/screenshot/ScreenshotSavedResult;->user:Landroid/os/UserHandle;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, p1, v1}, Lcom/android/systemui/screenshot/ActionExecutor;->startSharedTransition(Landroid/content/Intent;Landroid/os/UserHandle;Z)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
