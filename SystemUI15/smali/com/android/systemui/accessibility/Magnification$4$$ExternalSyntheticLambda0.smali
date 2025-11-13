.class public final synthetic Lcom/android/systemui/accessibility/Magnification$4$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/accessibility/Magnification$4;

.field public final synthetic f$1:I

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/accessibility/Magnification$4;I)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/systemui/accessibility/Magnification$4$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/accessibility/Magnification$4$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/accessibility/Magnification$4;

    iput p2, p0, Lcom/android/systemui/accessibility/Magnification$4$$ExternalSyntheticLambda0;->f$1:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/accessibility/Magnification$4$$ExternalSyntheticLambda0;->f$2:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/accessibility/Magnification$4;IZI)V
    .locals 0

    iput p4, p0, Lcom/android/systemui/accessibility/Magnification$4$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/accessibility/Magnification$4$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/accessibility/Magnification$4;

    iput p2, p0, Lcom/android/systemui/accessibility/Magnification$4$$ExternalSyntheticLambda0;->f$1:I

    iput-boolean p3, p0, Lcom/android/systemui/accessibility/Magnification$4$$ExternalSyntheticLambda0;->f$2:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget v0, p0, Lcom/android/systemui/accessibility/Magnification$4$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/systemui/accessibility/Magnification$4$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/accessibility/Magnification$4;

    iget v1, p0, Lcom/android/systemui/accessibility/Magnification$4$$ExternalSyntheticLambda0;->f$1:I

    iget-boolean p0, p0, Lcom/android/systemui/accessibility/Magnification$4$$ExternalSyntheticLambda0;->f$2:Z

    iget-object v0, v0, Lcom/android/systemui/accessibility/Magnification$4;->this$0:Lcom/android/systemui/accessibility/Magnification;

    iget-object v0, v0, Lcom/android/systemui/accessibility/Magnification;->mWindowMagnificationControllerSupplier:Lcom/android/systemui/accessibility/DisplayIdIndexSupplier;

    invoke-virtual {v0, v1}, Lcom/android/systemui/accessibility/DisplayIdIndexSupplier;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/accessibility/WindowMagnificationController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/accessibility/WindowMagnificationController;->isActivated()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p0}, Lcom/android/systemui/accessibility/WindowMagnificationController;->setEditMagnifierSizeMode(Z)V

    :cond_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/accessibility/Magnification$4$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/accessibility/Magnification$4;

    iget v1, p0, Lcom/android/systemui/accessibility/Magnification$4$$ExternalSyntheticLambda0;->f$1:I

    iget-boolean p0, p0, Lcom/android/systemui/accessibility/Magnification$4$$ExternalSyntheticLambda0;->f$2:Z

    iget-object v0, v0, Lcom/android/systemui/accessibility/Magnification$4;->this$0:Lcom/android/systemui/accessibility/Magnification;

    iget-object v0, v0, Lcom/android/systemui/accessibility/Magnification;->mWindowMagnificationControllerSupplier:Lcom/android/systemui/accessibility/DisplayIdIndexSupplier;

    invoke-virtual {v0, v1}, Lcom/android/systemui/accessibility/DisplayIdIndexSupplier;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/accessibility/WindowMagnificationController;

    if-eqz v0, :cond_1

    iput-boolean p0, v0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mAllowDiagonalScrolling:Z

    :cond_1
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/accessibility/Magnification$4$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/accessibility/Magnification$4;

    iget v1, p0, Lcom/android/systemui/accessibility/Magnification$4$$ExternalSyntheticLambda0;->f$1:I

    iget-boolean p0, p0, Lcom/android/systemui/accessibility/Magnification$4$$ExternalSyntheticLambda0;->f$2:Z

    iget-object v0, v0, Lcom/android/systemui/accessibility/Magnification$4;->this$0:Lcom/android/systemui/accessibility/Magnification;

    iget-object v2, v0, Lcom/android/systemui/accessibility/Magnification;->mWindowMagnificationControllerSupplier:Lcom/android/systemui/accessibility/DisplayIdIndexSupplier;

    invoke-virtual {v2, v1}, Lcom/android/systemui/accessibility/DisplayIdIndexSupplier;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/accessibility/WindowMagnificationController;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/android/systemui/accessibility/WindowMagnificationController;->isActivated()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Lcom/android/systemui/accessibility/WindowMagnificationController;->isActivated()Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    iget-object v4, v1, Lcom/android/systemui/accessibility/WindowMagnificationController;->mDragView:Landroid/widget/ImageView;

    if-eqz p0, :cond_3

    const v5, 0x7f0809d6

    goto :goto_0

    :cond_3
    const v5, 0x7f0809d5

    :goto_0
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    if-eqz p0, :cond_4

    iget-object v1, v1, Lcom/android/systemui/accessibility/WindowMagnificationController;->mDragView:Landroid/widget/ImageView;

    const/16 v4, 0x80

    invoke-virtual {v1, v4, v3}, Landroid/widget/ImageView;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    :cond_4
    :goto_1
    iget-object v0, v0, Lcom/android/systemui/accessibility/Magnification;->mA11yLogger:Lcom/android/systemui/accessibility/AccessibilityLogger;

    if-eqz p0, :cond_6

    sget-object p0, Lcom/android/systemui/accessibility/AccessibilityLogger$MagnificationSettingsEvent;->MAGNIFICATION_SETTINGS_PANEL_OPENED:Lcom/android/systemui/accessibility/AccessibilityLogger$MagnificationSettingsEvent;

    if-eqz v2, :cond_5

    const/4 v1, 0x2

    goto :goto_2

    :cond_5
    const/4 v1, 0x1

    :goto_2
    iget-object v0, v0, Lcom/android/systemui/accessibility/AccessibilityLogger;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    const/4 v2, 0x0

    invoke-interface {v0, p0, v2, v3, v1}, Lcom/android/internal/logging/UiEventLogger;->logWithPosition(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;I)V

    goto :goto_3

    :cond_6
    sget-object p0, Lcom/android/systemui/accessibility/AccessibilityLogger$MagnificationSettingsEvent;->MAGNIFICATION_SETTINGS_PANEL_CLOSED:Lcom/android/systemui/accessibility/AccessibilityLogger$MagnificationSettingsEvent;

    iget-object v0, v0, Lcom/android/systemui/accessibility/AccessibilityLogger;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    invoke-interface {v0, p0}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    :cond_7
    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
