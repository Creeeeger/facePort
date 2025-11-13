.class public final Lcom/android/wm/shell/controlpanel/activity/FloatingIconTipPopup$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/controlpanel/activity/FloatingIconTipPopup;

.field public final synthetic val$posX:I

.field public final synthetic val$posY:I


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/controlpanel/activity/FloatingIconTipPopup;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingIconTipPopup$1;->this$0:Lcom/android/wm/shell/controlpanel/activity/FloatingIconTipPopup;

    iput p2, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingIconTipPopup$1;->val$posX:I

    iput p3, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingIconTipPopup$1;->val$posY:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingIconTipPopup$1;->this$0:Lcom/android/wm/shell/controlpanel/activity/FloatingIconTipPopup;

    iget v0, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingIconTipPopup$1;->val$posX:I

    iget p0, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingIconTipPopup$1;->val$posY:I

    invoke-virtual {p1, v0, p0}, Lcom/android/wm/shell/controlpanel/activity/FloatingIconTipPopup;->showTipPopUp(II)V

    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method
