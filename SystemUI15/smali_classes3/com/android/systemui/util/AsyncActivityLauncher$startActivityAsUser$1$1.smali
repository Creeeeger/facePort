.class final Lcom/android/systemui/util/AsyncActivityLauncher$startActivityAsUser$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic $waitResult:Landroid/app/WaitResult;

.field final synthetic this$0:Lcom/android/systemui/util/AsyncActivityLauncher;


# direct methods
.method public constructor <init>(Lcom/android/systemui/util/AsyncActivityLauncher;Landroid/app/WaitResult;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/util/AsyncActivityLauncher$startActivityAsUser$1$1;->this$0:Lcom/android/systemui/util/AsyncActivityLauncher;

    iput-object p2, p0, Lcom/android/systemui/util/AsyncActivityLauncher$startActivityAsUser$1$1;->$waitResult:Landroid/app/WaitResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/util/AsyncActivityLauncher$startActivityAsUser$1$1;->this$0:Lcom/android/systemui/util/AsyncActivityLauncher;

    invoke-static {v0}, Lcom/android/systemui/util/AsyncActivityLauncher;->access$getPendingCallback$p(Lcom/android/systemui/util/AsyncActivityLauncher;)Lkotlin/jvm/functions/Function1;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/util/AsyncActivityLauncher$startActivityAsUser$1$1;->$waitResult:Landroid/app/WaitResult;

    invoke-interface {v0, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
