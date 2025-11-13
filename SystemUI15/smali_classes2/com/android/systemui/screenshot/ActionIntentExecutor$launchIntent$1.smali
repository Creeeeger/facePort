.class final Lcom/android/systemui/screenshot/ActionIntentExecutor$launchIntent$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field Z$0:Z

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lcom/android/systemui/screenshot/ActionIntentExecutor;


# direct methods
.method public constructor <init>(Lcom/android/systemui/screenshot/ActionIntentExecutor;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/screenshot/ActionIntentExecutor;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/screenshot/ActionIntentExecutor$launchIntent$1;->this$0:Lcom/android/systemui/screenshot/ActionIntentExecutor;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iput-object p1, p0, Lcom/android/systemui/screenshot/ActionIntentExecutor$launchIntent$1;->result:Ljava/lang/Object;

    iget p1, p0, Lcom/android/systemui/screenshot/ActionIntentExecutor$launchIntent$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/android/systemui/screenshot/ActionIntentExecutor$launchIntent$1;->label:I

    iget-object v0, p0, Lcom/android/systemui/screenshot/ActionIntentExecutor$launchIntent$1;->this$0:Lcom/android/systemui/screenshot/ActionIntentExecutor;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v6, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/screenshot/ActionIntentExecutor;->launchIntent(Landroid/content/Intent;Landroid/os/UserHandle;ZLandroid/app/ActivityOptions;Landroid/app/ExitTransitionCoordinator;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
