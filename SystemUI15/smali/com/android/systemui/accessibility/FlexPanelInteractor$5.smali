.class public final Lcom/android/systemui/accessibility/FlexPanelInteractor$5;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/shared/system/TaskStackChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/accessibility/FlexPanelInteractor;


# direct methods
.method public constructor <init>(Lcom/android/systemui/accessibility/FlexPanelInteractor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/accessibility/FlexPanelInteractor$5;->this$0:Lcom/android/systemui/accessibility/FlexPanelInteractor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTaskFocusChanged(IZ)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/accessibility/FlexPanelInteractor$5;->this$0:Lcom/android/systemui/accessibility/FlexPanelInteractor;

    iget-object p0, p0, Lcom/android/systemui/accessibility/FlexPanelInteractor;->mFlexPanelStartController:Lcom/android/wm/shell/flexpanel/FlexPanelStartController;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/flexpanel/FlexPanelStartController;->onFlexModeChanged(Z)V

    return-void
.end method

.method public final onTaskWindowingModeChanged()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/accessibility/FlexPanelInteractor$5;->this$0:Lcom/android/systemui/accessibility/FlexPanelInteractor;

    iget-object p0, p0, Lcom/android/systemui/accessibility/FlexPanelInteractor;->mFlexPanelStartController:Lcom/android/wm/shell/flexpanel/FlexPanelStartController;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/flexpanel/FlexPanelStartController;->onFlexModeChanged(Z)V

    return-void
.end method
