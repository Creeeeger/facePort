.class public final Lcom/android/systemui/subscreen/SubScreenManager$7;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/subscreen/SubScreenManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/subscreen/SubScreenManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/subscreen/SubScreenManager$7;->this$0:Lcom/android/systemui/subscreen/SubScreenManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDisplayAdded(I)V
    .locals 0

    return-void
.end method

.method public final onDisplayChanged(I)V
    .locals 2

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenManager$7;->this$0:Lcom/android/systemui/subscreen/SubScreenManager;

    iget-object v0, v0, Lcom/android/systemui/subscreen/SubScreenManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getState()I

    move-result p1

    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenManager$7;->this$0:Lcom/android/systemui/subscreen/SubScreenManager;

    iget v1, v0, Lcom/android/systemui/subscreen/SubScreenManager;->mMainDisplayState:I

    if-eq p1, v1, :cond_1

    iput p1, v0, Lcom/android/systemui/subscreen/SubScreenManager;->mMainDisplayState:I

    iget-boolean v0, v0, Lcom/android/systemui/subscreen/SubScreenManager;->mPendingRequestDualState:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const-string p1, "SubScreenManager"

    const-string v0, " request pending Dual state when state on"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/systemui/subscreen/SubScreenManager$7;->this$0:Lcom/android/systemui/subscreen/SubScreenManager;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/systemui/subscreen/SubScreenManager;->requestDualState(Z)V

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenManager$7;->this$0:Lcom/android/systemui/subscreen/SubScreenManager;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mPendingRequestDualState:Z

    :cond_1
    return-void
.end method

.method public final onDisplayRemoved(I)V
    .locals 0

    return-void
.end method
