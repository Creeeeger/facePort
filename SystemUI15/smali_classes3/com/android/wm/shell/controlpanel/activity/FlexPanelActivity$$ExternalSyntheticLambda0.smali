.class public final synthetic Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

.field public final synthetic f$1:Landroid/view/View;

.field public final synthetic f$2:Landroid/view/DragEvent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;Landroid/view/View;Landroid/view/DragEvent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    iput-object p2, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$$ExternalSyntheticLambda0;->f$1:Landroid/view/View;

    iput-object p3, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$$ExternalSyntheticLambda0;->f$2:Landroid/view/DragEvent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    iget-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$$ExternalSyntheticLambda0;->f$1:Landroid/view/View;

    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$$ExternalSyntheticLambda0;->f$2:Landroid/view/DragEvent;

    sget v2, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mEditPanelItemSize:I

    invoke-virtual {v0, v1, p0}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z

    return-void
.end method
