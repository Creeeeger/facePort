.class public final Lcom/android/systemui/searcle/SearcleTipAnimHelper$HideAnimatorListener;
.super Lcom/android/systemui/searcle/SearcleTipAnimHelper$BaseAnimatorListener;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/searcle/SearcleTipAnimHelper;


# direct methods
.method public constructor <init>(Lcom/android/systemui/searcle/SearcleTipAnimHelper;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/searcle/SearcleTipAnimHelper$HideAnimatorListener;->this$0:Lcom/android/systemui/searcle/SearcleTipAnimHelper;

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/searcle/SearcleTipAnimHelper$BaseAnimatorListener;-><init>(Lcom/android/systemui/searcle/SearcleTipAnimHelper;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/searcle/SearcleTipAnimHelper$HideAnimatorListener;->this$0:Lcom/android/systemui/searcle/SearcleTipAnimHelper;

    iget-object p0, p0, Lcom/android/systemui/searcle/SearcleTipAnimHelper;->hideImmediateRunnable:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
