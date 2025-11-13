.class public final synthetic Lcom/android/wm/shell/pip2/phone/PipTransitionState$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(IILandroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/wm/shell/pip2/phone/PipTransitionState$$ExternalSyntheticLambda0;->f$0:I

    iput p2, p0, Lcom/android/wm/shell/pip2/phone/PipTransitionState$$ExternalSyntheticLambda0;->f$1:I

    iput-object p3, p0, Lcom/android/wm/shell/pip2/phone/PipTransitionState$$ExternalSyntheticLambda0;->f$2:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lcom/android/wm/shell/pip2/phone/PipTransitionState$$ExternalSyntheticLambda0;->f$0:I

    iget v1, p0, Lcom/android/wm/shell/pip2/phone/PipTransitionState$$ExternalSyntheticLambda0;->f$1:I

    iget-object p0, p0, Lcom/android/wm/shell/pip2/phone/PipTransitionState$$ExternalSyntheticLambda0;->f$2:Landroid/os/Bundle;

    check-cast p1, Lcom/android/wm/shell/pip2/phone/PipTransitionState$PipTransitionStateChangedListener;

    invoke-interface {p1, v0, v1, p0}, Lcom/android/wm/shell/pip2/phone/PipTransitionState$PipTransitionStateChangedListener;->onPipTransitionStateChanged(IILandroid/os/Bundle;)V

    return-void
.end method
