.class public final Lcom/android/systemui/navigationbar/NavBarHelper$4;
.super Landroid/view/IRotationWatcher$Stub;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/navigationbar/NavBarHelper;


# direct methods
.method public constructor <init>(Lcom/android/systemui/navigationbar/NavBarHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/navigationbar/NavBarHelper$4;->this$0:Lcom/android/systemui/navigationbar/NavBarHelper;

    invoke-direct {p0}, Landroid/view/IRotationWatcher$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final onRotationChanged(I)V
    .locals 2

    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_AOSP_BUG_FIX:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavBarHelper$4;->this$0:Lcom/android/systemui/navigationbar/NavBarHelper;

    iput p1, v0, Lcom/android/systemui/navigationbar/NavBarHelper;->mRotationWatcherRotation:I

    iget-object p1, v0, Lcom/android/systemui/navigationbar/NavBarHelper;->mHandler:Landroid/os/Handler;

    iget-object v0, v0, Lcom/android/systemui/navigationbar/NavBarHelper;->dispatchRotation:Lcom/android/systemui/navigationbar/NavBarHelper$3;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavBarHelper$4;->this$0:Lcom/android/systemui/navigationbar/NavBarHelper;

    iget-object v0, p1, Lcom/android/systemui/navigationbar/NavBarHelper;->mHandler:Landroid/os/Handler;

    iget-object p1, p1, Lcom/android/systemui/navigationbar/NavBarHelper;->dispatchRotation:Lcom/android/systemui/navigationbar/NavBarHelper$3;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavBarHelper$4;->this$0:Lcom/android/systemui/navigationbar/NavBarHelper;

    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavBarHelper;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavBarHelper;->dispatchRotation:Lcom/android/systemui/navigationbar/NavBarHelper$3;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavBarHelper$4;->this$0:Lcom/android/systemui/navigationbar/NavBarHelper;

    iget-object v0, v0, Lcom/android/systemui/navigationbar/NavBarHelper;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/navigationbar/NavBarHelper$4$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/navigationbar/NavBarHelper$4$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/navigationbar/NavBarHelper$4;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method
