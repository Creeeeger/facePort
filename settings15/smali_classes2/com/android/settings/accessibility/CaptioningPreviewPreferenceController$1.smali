.class public final Lcom/android/settings/accessibility/CaptioningPreviewPreferenceController$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/settings/accessibility/CaptioningPreviewPreferenceController;

.field public final synthetic val$previewViewport:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/android/settings/accessibility/CaptioningPreviewPreferenceController;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/accessibility/CaptioningPreviewPreferenceController$1;->this$0:Lcom/android/settings/accessibility/CaptioningPreviewPreferenceController;

    iput-object p2, p0, Lcom/android/settings/accessibility/CaptioningPreviewPreferenceController$1;->val$previewViewport:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    sub-int/2addr p8, p6

    sub-int/2addr p4, p2

    if-eq p8, p4, :cond_0

    iget-object p1, p0, Lcom/android/settings/accessibility/CaptioningPreviewPreferenceController$1;->val$previewViewport:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object p1, p0, Lcom/android/settings/accessibility/CaptioningPreviewPreferenceController$1;->this$0:Lcom/android/settings/accessibility/CaptioningPreviewPreferenceController;

    invoke-static {p1}, Lcom/android/settings/accessibility/CaptioningPreviewPreferenceController;->-$$Nest$fgetmHandler(Lcom/android/settings/accessibility/CaptioningPreviewPreferenceController;)Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/android/settings/accessibility/CaptioningPreviewPreferenceController$1$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/settings/accessibility/CaptioningPreviewPreferenceController$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/accessibility/CaptioningPreviewPreferenceController$1;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
