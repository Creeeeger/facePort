.class public final Lcom/android/systemui/volume/view/expand/VolumePanelExpandView$onFinishInflate$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/volume/view/expand/VolumePanelExpandView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/volume/view/expand/VolumePanelExpandView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView$onFinishInflate$2;->this$0:Lcom/android/systemui/volume/view/expand/VolumePanelExpandView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView$onFinishInflate$2;->this$0:Lcom/android/systemui/volume/view/expand/VolumePanelExpandView;

    iget-object p0, p0, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView;->storeInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    new-instance p1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_CAPTION_CHANGED:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-direct {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p1, v0, p0, v1}, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView$adjustTouchEventForOutsideTouch$1$$ExternalSyntheticOutline0;->m(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;ZLcom/android/systemui/volume/store/StoreInteractor;Z)V

    return-void
.end method
