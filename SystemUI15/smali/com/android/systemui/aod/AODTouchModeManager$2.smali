.class public final Lcom/android/systemui/aod/AODTouchModeManager$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/aod/AODTouchModeManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/aod/AODTouchModeManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/aod/AODTouchModeManager$2;->this$0:Lcom/android/systemui/aod/AODTouchModeManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDisplayAdded(I)V
    .locals 0

    return-void
.end method

.method public final onDisplayChanged(I)V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/aod/AODTouchModeManager$2;->this$0:Lcom/android/systemui/aod/AODTouchModeManager;

    iget-object v0, v0, Lcom/android/systemui/aod/AODTouchModeManager;->displayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Landroid/view/Display;->getState()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/aod/AODTouchModeManager$2;->this$0:Lcom/android/systemui/aod/AODTouchModeManager;

    iget v2, v1, Lcom/android/systemui/aod/AODTouchModeManager;->currentDisplayState:I

    if-eq v2, v0, :cond_3

    iget-object v1, v1, Lcom/android/systemui/aod/AODTouchModeManager;->logWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    const-string v3, "onDisplayChanged newDisplayState="

    const-string v4, ", currentDisplayState="

    const-string v5, ", displayId="

    invoke-static {v0, v2, v3, v4, v5}, Landroidx/compose/foundation/layout/RowColumnMeasurePolicyKt$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "AODTouchModeManager"

    invoke-virtual {v1, v2, p1}, Lcom/android/systemui/basic/util/LogWrapper;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x3

    if-eq v0, p1, :cond_0

    const/4 p1, 0x4

    if-eq v0, p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/aod/AODTouchModeManager$2;->this$0:Lcom/android/systemui/aod/AODTouchModeManager;

    iget v1, p1, Lcom/android/systemui/aod/AODTouchModeManager;->currentDisplayState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/android/systemui/aod/AODTouchModeManager;->setTouchMode(I)V

    :cond_2
    iget-object p1, p0, Lcom/android/systemui/aod/AODTouchModeManager$2;->this$0:Lcom/android/systemui/aod/AODTouchModeManager;

    const/4 v1, -0x1

    invoke-virtual {p1, v1}, Lcom/android/systemui/aod/AODTouchModeManager;->setTouchMode(I)V

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/aod/AODTouchModeManager$2;->this$0:Lcom/android/systemui/aod/AODTouchModeManager;

    iput v0, p0, Lcom/android/systemui/aod/AODTouchModeManager;->currentDisplayState:I

    :cond_3
    return-void
.end method

.method public final onDisplayRemoved(I)V
    .locals 0

    return-void
.end method
