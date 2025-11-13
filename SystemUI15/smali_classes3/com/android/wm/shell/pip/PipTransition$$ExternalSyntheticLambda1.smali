.class public final synthetic Lcom/android/wm/shell/pip/PipTransition$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/window/TransitionInfo;


# direct methods
.method public synthetic constructor <init>(Landroid/window/TransitionInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/pip/PipTransition$$ExternalSyntheticLambda1;->f$0:Landroid/window/TransitionInfo;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/pip/PipTransition$$ExternalSyntheticLambda1;->f$0:Landroid/window/TransitionInfo;

    check-cast p1, Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-static {p0}, Lcom/android/wm/shell/transition/Transitions;->hasDuplicatedOpenTypeChanges(Landroid/window/TransitionInfo;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->isSplitScreenActive()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->isSplitScreenVisible()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {p1}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->setSplitVisible()V

    :cond_0
    return-void
.end method
