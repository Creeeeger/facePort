.class public final Lcom/android/systemui/shade/ShadeControllerImpl$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/shade/ShadeControllerImpl;

.field public final synthetic val$executable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shade/ShadeControllerImpl;Ljava/lang/Runnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/shade/ShadeControllerImpl$1;->this$0:Lcom/android/systemui/shade/ShadeControllerImpl;

    iput-object p2, p0, Lcom/android/systemui/shade/ShadeControllerImpl$1;->val$executable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/shade/ShadeControllerImpl$1;->this$0:Lcom/android/systemui/shade/ShadeControllerImpl;

    iget-object v0, v0, Lcom/android/systemui/shade/ShadeControllerImpl;->mNotificationShadeWindowViewController:Lcom/android/systemui/shade/NotificationShadeWindowViewController;

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mView:Lcom/android/systemui/shade/NotificationShadeWindowView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->isVisibleToUser()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/shade/ShadeControllerImpl$1;->this$0:Lcom/android/systemui/shade/ShadeControllerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/shade/ShadeControllerImpl;->getNpvc()Lcom/android/systemui/shade/NotificationPanelViewController;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mView:Lcom/android/systemui/shade/NotificationPanelView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v0, p0, Lcom/android/systemui/shade/ShadeControllerImpl$1;->this$0:Lcom/android/systemui/shade/ShadeControllerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/shade/ShadeControllerImpl;->getNpvc()Lcom/android/systemui/shade/NotificationPanelViewController;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/shade/ShadeControllerImpl$1;->val$executable:Ljava/lang/Runnable;

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mView:Lcom/android/systemui/shade/NotificationPanelView;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
