.class public final Lcom/android/wm/shell/draganddrop/SmartTip$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/draganddrop/SmartTip;

.field public final synthetic val$direction:I

.field public final synthetic val$isExpanded:Z

.field public final synthetic val$posX:I

.field public final synthetic val$posY:I


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/draganddrop/SmartTip;IIZI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/wm/shell/draganddrop/SmartTip$1;->this$0:Lcom/android/wm/shell/draganddrop/SmartTip;

    iput p2, p0, Lcom/android/wm/shell/draganddrop/SmartTip$1;->val$posX:I

    iput p3, p0, Lcom/android/wm/shell/draganddrop/SmartTip$1;->val$posY:I

    iput-boolean p4, p0, Lcom/android/wm/shell/draganddrop/SmartTip$1;->val$isExpanded:Z

    iput p5, p0, Lcom/android/wm/shell/draganddrop/SmartTip$1;->val$direction:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lcom/android/wm/shell/draganddrop/SmartTip$1;->this$0:Lcom/android/wm/shell/draganddrop/SmartTip;

    iget v0, p0, Lcom/android/wm/shell/draganddrop/SmartTip$1;->val$posX:I

    iget v1, p0, Lcom/android/wm/shell/draganddrop/SmartTip$1;->val$posY:I

    iget-boolean v2, p0, Lcom/android/wm/shell/draganddrop/SmartTip$1;->val$isExpanded:Z

    iget p0, p0, Lcom/android/wm/shell/draganddrop/SmartTip$1;->val$direction:I

    invoke-virtual {p1, v0, v1, p0, v2}, Lcom/android/wm/shell/draganddrop/SmartTip;->showTipPopup(IIIZ)V

    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method
