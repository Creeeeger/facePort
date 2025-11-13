.class public final synthetic Lcom/android/wm/shell/pip2/phone/PipTransition$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/SurfaceControl$TransactionCommittedListener;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/pip2/phone/PipTransition;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/pip2/phone/PipTransition;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/pip2/phone/PipTransition$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/pip2/phone/PipTransition;

    return-void
.end method


# virtual methods
.method public final onTransactionCommitted()V
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/pip2/phone/PipTransition$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/pip2/phone/PipTransition;

    invoke-virtual {p0}, Lcom/android/wm/shell/pip2/phone/PipTransition;->onClientDrawAtTransitionEnd()V

    return-void
.end method
