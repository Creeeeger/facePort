.class public final Lcom/android/systemui/accessibility/fontscaling/FontScalingDialogDelegate$onCreate$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/common/ui/view/SeekBarWithIconButtonsView$OnSeekBarWithIconButtonsChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/accessibility/fontscaling/FontScalingDialogDelegate;


# direct methods
.method public constructor <init>(Lcom/android/systemui/accessibility/fontscaling/FontScalingDialogDelegate;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialogDelegate$onCreate$1;->this$0:Lcom/android/systemui/accessibility/fontscaling/FontScalingDialogDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialogDelegate$onCreate$1;->this$0:Lcom/android/systemui/accessibility/fontscaling/FontScalingDialogDelegate;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Landroid/content/res/Configuration;

    iget-object p3, p0, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialogDelegate;->configuration:Landroid/content/res/Configuration;

    invoke-direct {p1, p3}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iget-object p3, p0, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialogDelegate;->strEntryValues:[Ljava/lang/String;

    aget-object p2, p3, p2

    invoke-static {p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p2

    iput p2, p1, Landroid/content/res/Configuration;->fontScale:F

    iget-object p2, p0, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialogDelegate;->context:Landroid/content/Context;

    invoke-virtual {p2, p1}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p2

    iget-object p3, p0, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialogDelegate;->context:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    iget-object p0, p0, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialogDelegate;->title:Landroid/widget/TextView;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070338

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    const/4 p2, 0x0

    invoke-virtual {p0, p2, p1}, Landroid/widget/TextView;->setTextSize(IF)V

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

.method public final onUserInteractionFinalized(Landroid/widget/SeekBar;I)V
    .locals 2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    iget-object p2, p0, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialogDelegate$onCreate$1;->this$0:Lcom/android/systemui/accessibility/fontscaling/FontScalingDialogDelegate;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    iget-object p0, p0, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialogDelegate$onCreate$1;->this$0:Lcom/android/systemui/accessibility/fontscaling/FontScalingDialogDelegate;

    iget-wide v0, p0, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialogDelegate;->CHANGE_BY_BUTTON_DELAY_MS:J

    invoke-static {p2, p1, v0, v1}, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialogDelegate;->access$changeFontSize(Lcom/android/systemui/accessibility/fontscaling/FontScalingDialogDelegate;IJ)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialogDelegate$onCreate$1;->this$0:Lcom/android/systemui/accessibility/fontscaling/FontScalingDialogDelegate;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    iget-object p0, p0, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialogDelegate$onCreate$1;->this$0:Lcom/android/systemui/accessibility/fontscaling/FontScalingDialogDelegate;

    iget-wide v0, p0, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialogDelegate;->CHANGE_BY_SEEKBAR_DELAY_MS:J

    invoke-static {p2, p1, v0, v1}, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialogDelegate;->access$changeFontSize(Lcom/android/systemui/accessibility/fontscaling/FontScalingDialogDelegate;IJ)V

    :goto_0
    return-void
.end method
