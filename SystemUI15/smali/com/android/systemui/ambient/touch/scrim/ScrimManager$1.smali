.class public final Lcom/android/systemui/ambient/touch/scrim/ScrimManager$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/KeyguardStateController$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/ambient/touch/scrim/ScrimManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/ambient/touch/scrim/ScrimManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/ambient/touch/scrim/ScrimManager$1;->this$0:Lcom/android/systemui/ambient/touch/scrim/ScrimManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKeyguardShowingChanged()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/ambient/touch/scrim/ScrimManager$1;->this$0:Lcom/android/systemui/ambient/touch/scrim/ScrimManager;

    iget-object v0, v0, Lcom/android/systemui/ambient/touch/scrim/ScrimManager;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/systemui/ambient/touch/scrim/ScrimManager$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/systemui/ambient/touch/scrim/ScrimManager$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/ambient/touch/scrim/ScrimManager$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
