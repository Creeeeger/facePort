.class public final synthetic Lcom/android/wm/shell/transition/Transitions$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/transition/Transitions;

.field public final synthetic f$1:Landroid/os/IBinder;

.field public final synthetic f$2:I

.field public final synthetic f$3:Lcom/android/wm/shell/transition/Transitions$ActiveTransition;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/transition/Transitions;Landroid/os/IBinder;ILcom/android/wm/shell/transition/Transitions$ActiveTransition;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/transition/Transitions$$ExternalSyntheticLambda5;->f$0:Lcom/android/wm/shell/transition/Transitions;

    iput-object p2, p0, Lcom/android/wm/shell/transition/Transitions$$ExternalSyntheticLambda5;->f$1:Landroid/os/IBinder;

    iput p3, p0, Lcom/android/wm/shell/transition/Transitions$$ExternalSyntheticLambda5;->f$2:I

    iput-object p4, p0, Lcom/android/wm/shell/transition/Transitions$$ExternalSyntheticLambda5;->f$3:Lcom/android/wm/shell/transition/Transitions$ActiveTransition;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/transition/Transitions$$ExternalSyntheticLambda5;->f$0:Lcom/android/wm/shell/transition/Transitions;

    iget-object v1, p0, Lcom/android/wm/shell/transition/Transitions$$ExternalSyntheticLambda5;->f$1:Landroid/os/IBinder;

    iget v2, p0, Lcom/android/wm/shell/transition/Transitions$$ExternalSyntheticLambda5;->f$2:I

    iget-object p0, p0, Lcom/android/wm/shell/transition/Transitions$$ExternalSyntheticLambda5;->f$3:Lcom/android/wm/shell/transition/Transitions$ActiveTransition;

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/wm/shell/transition/Transitions;->finishForSync(Landroid/os/IBinder;ILcom/android/wm/shell/transition/Transitions$ActiveTransition;)V

    return-void
.end method
