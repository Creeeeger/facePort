.class public final Lcom/android/systemui/accessibility/Magnification$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/accessibility/Magnification;


# direct methods
.method public constructor <init>(Lcom/android/systemui/accessibility/Magnification;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/accessibility/Magnification$2;->this$0:Lcom/android/systemui/accessibility/Magnification;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConnectionChanged(Z)V
    .locals 3

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/accessibility/Magnification$2;->this$0:Lcom/android/systemui/accessibility/Magnification;

    iget-object p1, p0, Lcom/android/systemui/accessibility/Magnification;->mWindowMagnificationControllerSupplier:Lcom/android/systemui/accessibility/DisplayIdIndexSupplier;

    iget-object v0, p0, Lcom/android/systemui/accessibility/Magnification;->mDisplayTracker:Lcom/android/systemui/settings/DisplayTracker;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Lcom/android/systemui/accessibility/DisplayIdIndexSupplier;->mSparseArray:Landroid/util/SparseArray;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/accessibility/WindowMagnificationController;

    if-eqz p1, :cond_0

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Lcom/android/systemui/accessibility/WindowMagnificationController;->updateSysUIState(Z)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/accessibility/Magnification;->mSysUiState:Lcom/android/systemui/model/SysUiState;

    const-wide/32 v1, 0x80000

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/systemui/model/SysUiState;->setFlag(JZ)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/model/SysUiState;->commitUpdate(I)V

    :cond_1
    :goto_0
    return-void
.end method
