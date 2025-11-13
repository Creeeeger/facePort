.class public final synthetic Lcom/android/systemui/accessibility/WindowMagnificationController$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/accessibility/WindowMagnificationController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/accessibility/WindowMagnificationController;I)V
    .locals 0

    iput p2, p0, Lcom/android/systemui/accessibility/WindowMagnificationController$$ExternalSyntheticLambda4;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/accessibility/WindowMagnificationController$$ExternalSyntheticLambda4;->f$0:Lcom/android/systemui/accessibility/WindowMagnificationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    iget p1, p0, Lcom/android/systemui/accessibility/WindowMagnificationController$$ExternalSyntheticLambda4;->$r8$classId:I

    iget-object p0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController$$ExternalSyntheticLambda4;->f$0:Lcom/android/systemui/accessibility/WindowMagnificationController;

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMirrorViewRunnable:Lcom/android/systemui/accessibility/WindowMagnificationController$1;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMirrorViewRunnable:Lcom/android/systemui/accessibility/WindowMagnificationController$1;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void

    :pswitch_0
    iget-object p1, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMirrorView:Landroid/view/View;

    new-instance p2, Lcom/android/systemui/accessibility/WindowMagnificationController$$ExternalSyntheticLambda0;

    const/4 p3, 0x6

    invoke-direct {p2, p0, p3}, Lcom/android/systemui/accessibility/WindowMagnificationController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/accessibility/WindowMagnificationController;I)V

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
