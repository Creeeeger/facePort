.class public final synthetic Lcom/android/wm/shell/pip2/phone/PipTransitionState$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/pip2/phone/PipTransitionState;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/pip2/phone/PipTransitionState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/pip2/phone/PipTransitionState$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/pip2/phone/PipTransitionState;

    const/4 p1, 0x6

    iput p1, p0, Lcom/android/wm/shell/pip2/phone/PipTransitionState$$ExternalSyntheticLambda1;->f$1:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/wm/shell/pip2/phone/PipTransitionState$$ExternalSyntheticLambda1;->f$2:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/pip2/phone/PipTransitionState$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/pip2/phone/PipTransitionState;

    iget v1, p0, Lcom/android/wm/shell/pip2/phone/PipTransitionState$$ExternalSyntheticLambda1;->f$1:I

    iget-object p0, p0, Lcom/android/wm/shell/pip2/phone/PipTransitionState$$ExternalSyntheticLambda1;->f$2:Landroid/os/Bundle;

    invoke-virtual {v0, v1, p0}, Lcom/android/wm/shell/pip2/phone/PipTransitionState;->setState(ILandroid/os/Bundle;)V

    return-void
.end method
