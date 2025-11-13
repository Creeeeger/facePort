.class public final Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelExpandView$updateStatusMsgArea$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $state:Lcom/samsung/systemui/splugins/volume/VolumePanelState;

.field public final synthetic this$0:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelExpandView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelExpandView;Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelExpandView$updateStatusMsgArea$1;->this$0:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelExpandView;

    iput-object p2, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelExpandView$updateStatusMsgArea$1;->$state:Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelExpandView$updateStatusMsgArea$1;->this$0:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelExpandView;

    iget-object p1, p1, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelExpandView;->storeInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    iget-object p0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelExpandView$updateStatusMsgArea$1;->$state:Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isAllSoundOff()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_STATUS_MESSAGE_CLICKED:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_STATUS_DO_NOT_DISTURB_MESSAGE_CLICKED:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    :goto_0
    invoke-direct {v0, p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    const/4 p0, 0x1

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1}, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView$adjustTouchEventForOutsideTouch$1$$ExternalSyntheticOutline0;->m(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;ZLcom/android/systemui/volume/store/StoreInteractor;Z)V

    return-void
.end method
