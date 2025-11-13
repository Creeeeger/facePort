.class public final Lcom/android/settings/accessibility/ToggleAutoclickCustomSeekbarController$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/settings/accessibility/ToggleAutoclickCustomSeekbarController;


# direct methods
.method public constructor <init>(Lcom/android/settings/accessibility/ToggleAutoclickCustomSeekbarController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/accessibility/ToggleAutoclickCustomSeekbarController$1;->this$0:Lcom/android/settings/accessibility/ToggleAutoclickCustomSeekbarController;

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/accessibility/ToggleAutoclickCustomSeekbarController$1;->this$0:Lcom/android/settings/accessibility/ToggleAutoclickCustomSeekbarController;

    invoke-static {p0, p2}, Lcom/android/settings/accessibility/ToggleAutoclickCustomSeekbarController;->-$$Nest$mseekBarProgressToDelay(Lcom/android/settings/accessibility/ToggleAutoclickCustomSeekbarController;I)I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/settings/accessibility/ToggleAutoclickCustomSeekbarController;->-$$Nest$mupdateCustomDelayValue(Lcom/android/settings/accessibility/ToggleAutoclickCustomSeekbarController;I)V

    return-void
.end method

.method public final onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public final onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method
