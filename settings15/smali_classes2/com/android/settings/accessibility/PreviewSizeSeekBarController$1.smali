.class public final Lcom/android/settings/accessibility/PreviewSizeSeekBarController$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/settings/accessibility/PreviewSizeSeekBarController;


# direct methods
.method public constructor <init>(Lcom/android/settings/accessibility/PreviewSizeSeekBarController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/accessibility/PreviewSizeSeekBarController$1;->this$0:Lcom/android/settings/accessibility/PreviewSizeSeekBarController;

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1

    iget-object p3, p0, Lcom/android/settings/accessibility/PreviewSizeSeekBarController$1;->this$0:Lcom/android/settings/accessibility/PreviewSizeSeekBarController;

    invoke-static {p3, p2}, Lcom/android/settings/accessibility/PreviewSizeSeekBarController;->-$$Nest$msetSeekbarStateDescription(Lcom/android/settings/accessibility/PreviewSizeSeekBarController;I)V

    iget-object p2, p0, Lcom/android/settings/accessibility/PreviewSizeSeekBarController$1;->this$0:Lcom/android/settings/accessibility/PreviewSizeSeekBarController;

    invoke-static {p2}, Lcom/android/settings/accessibility/PreviewSizeSeekBarController;->-$$Nest$fgetmInteractionListener(Lcom/android/settings/accessibility/PreviewSizeSeekBarController;)Ljava/util/Optional;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/Optional;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lcom/android/settings/accessibility/PreviewSizeSeekBarController$1;->this$0:Lcom/android/settings/accessibility/PreviewSizeSeekBarController;

    invoke-static {p2}, Lcom/android/settings/accessibility/PreviewSizeSeekBarController;->-$$Nest$fgetmInteractionListener(Lcom/android/settings/accessibility/PreviewSizeSeekBarController;)Ljava/util/Optional;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/settings/accessibility/PreviewSizeSeekBarController$ProgressInteractionListener;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p3, Lcom/android/settings/accessibility/PreviewSizeSeekBarController$$ExternalSyntheticLambda1;

    const/4 v0, 0x1

    invoke-direct {p3, v0, p2}, Lcom/android/settings/accessibility/PreviewSizeSeekBarController$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, p3}, Landroid/widget/SeekBar;->post(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Lcom/android/settings/accessibility/PreviewSizeSeekBarController$1;->this$0:Lcom/android/settings/accessibility/PreviewSizeSeekBarController;

    invoke-static {p1}, Lcom/android/settings/accessibility/PreviewSizeSeekBarController;->-$$Nest$fgetmSeekByTouch(Lcom/android/settings/accessibility/PreviewSizeSeekBarController;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-interface {p2}, Lcom/android/settings/accessibility/PreviewSizeSeekBarController$ProgressInteractionListener;->onProgressChanged()V

    iget-object p0, p0, Lcom/android/settings/accessibility/PreviewSizeSeekBarController$1;->this$0:Lcom/android/settings/accessibility/PreviewSizeSeekBarController;

    invoke-static {p0}, Lcom/android/settings/accessibility/PreviewSizeSeekBarController;->-$$Nest$monProgressFinalized(Lcom/android/settings/accessibility/PreviewSizeSeekBarController;)V

    :cond_1
    return-void
.end method

.method public final onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/accessibility/PreviewSizeSeekBarController$1;->this$0:Lcom/android/settings/accessibility/PreviewSizeSeekBarController;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/settings/accessibility/PreviewSizeSeekBarController;->-$$Nest$fputmSeekByTouch(Lcom/android/settings/accessibility/PreviewSizeSeekBarController;Z)V

    return-void
.end method

.method public final onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    iget-object p1, p0, Lcom/android/settings/accessibility/PreviewSizeSeekBarController$1;->this$0:Lcom/android/settings/accessibility/PreviewSizeSeekBarController;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/settings/accessibility/PreviewSizeSeekBarController;->-$$Nest$fputmSeekByTouch(Lcom/android/settings/accessibility/PreviewSizeSeekBarController;Z)V

    iget-object p1, p0, Lcom/android/settings/accessibility/PreviewSizeSeekBarController$1;->this$0:Lcom/android/settings/accessibility/PreviewSizeSeekBarController;

    invoke-static {p1}, Lcom/android/settings/accessibility/PreviewSizeSeekBarController;->-$$Nest$fgetmInteractionListener(Lcom/android/settings/accessibility/PreviewSizeSeekBarController;)Ljava/util/Optional;

    move-result-object p1

    new-instance v0, Lcom/android/settings/accessibility/PreviewSizeSeekBarController$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/settings/accessibility/PreviewSizeSeekBarController$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object p0, p0, Lcom/android/settings/accessibility/PreviewSizeSeekBarController$1;->this$0:Lcom/android/settings/accessibility/PreviewSizeSeekBarController;

    invoke-static {p0}, Lcom/android/settings/accessibility/PreviewSizeSeekBarController;->-$$Nest$monProgressFinalized(Lcom/android/settings/accessibility/PreviewSizeSeekBarController;)V

    return-void
.end method
