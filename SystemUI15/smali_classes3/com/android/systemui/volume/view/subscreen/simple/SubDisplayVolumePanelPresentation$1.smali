.class public final Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation$1;
.super Landroid/view/View$AccessibilityDelegate;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation;


# direct methods
.method public constructor <init>(Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation$1;->this$0:Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public final onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation$1;->this$0:Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation;

    iget-object v0, v0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation;->mStoreInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    new-instance v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    sget-object v2, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_SEND_ACCESSIBILITY_EVENT:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-direct {v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    const/4 v2, 0x1

    invoke-static {v1, v2, v0, v2}, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView$adjustTouchEventForOutsideTouch$1$$ExternalSyntheticOutline0;->m(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;ZLcom/android/systemui/volume/store/StoreInteractor;Z)V

    invoke-super {p0, p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p0

    return p0
.end method
