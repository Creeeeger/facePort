.class final Lcom/android/systemui/screenshot/DefaultScreenshotActionsProvider$2$2;
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

    iput-object p1, p0, Lcom/android/systemui/screenshot/DefaultScreenshotActionsProvider$2$2;->this$0:Lcom/android/systemui/screenshot/DefaultScreenshotActionsProvider;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Lcom/android/systemui/screenshot/ScreenshotSavedResult;

    iget-object p0, p0, Lcom/android/systemui/screenshot/DefaultScreenshotActionsProvider$2$2;->this$0:Lcom/android/systemui/screenshot/DefaultScreenshotActionsProvider;

    iget-object p0, p0, Lcom/android/systemui/screenshot/DefaultScreenshotActionsProvider;->actionExecutor:Lcom/android/systemui/screenshot/ActionExecutor;

    sget-object v0, Lcom/android/systemui/screenshot/ActionIntentCreator;->INSTANCE:Lcom/android/systemui/screenshot/ActionIntentCreator;

    iget-object v1, p1, Lcom/android/systemui/screenshot/ScreenshotSavedResult;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Lcom/android/systemui/screenshot/ScreenshotSavedResult;->subject:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/android/systemui/screenshot/ActionIntentCreator;->createShare(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object p1, p1, Lcom/android/systemui/screenshot/ScreenshotSavedResult;->user:Landroid/os/UserHandle;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/systemui/screenshot/ActionExecutor;->startSharedTransition(Landroid/content/Intent;Landroid/os/UserHandle;Z)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
