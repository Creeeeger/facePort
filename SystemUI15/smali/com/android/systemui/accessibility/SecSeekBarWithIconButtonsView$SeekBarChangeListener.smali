.class public final Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView$SeekBarChangeListener;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/appcompat/widget/SeslSeekBar$OnSeekBarChangeListener;


# instance fields
.field public mOnSeekBarChangeListener:Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView$OnSeekBarWithIconButtonsChangeListener;

.field public final synthetic this$0:Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView;


# direct methods
.method private constructor <init>(Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView$SeekBarChangeListener;->this$0:Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView$SeekBarChangeListener;->mOnSeekBarChangeListener:Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView$OnSeekBarWithIconButtonsChangeListener;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView$SeekBarChangeListener;-><init>(Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView;)V

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroidx/appcompat/widget/SeslSeekBar;IZ)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView$SeekBarChangeListener;->this$0:Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView$SeekBarChangeListener;->mOnSeekBarChangeListener:Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView$OnSeekBarWithIconButtonsChangeListener;

    if-eqz v1, :cond_1

    iget-boolean v2, v0, Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView;->mSetProgressFromButtonFlag:Z

    if-eqz v2, :cond_0

    const/4 p3, 0x0

    iput-boolean p3, v0, Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView;->mSetProgressFromButtonFlag:Z

    check-cast v1, Lcom/android/systemui/accessibility/WindowMagnificationSettings$ZoomSeekbarChangeListener;

    const/4 p3, 0x1

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/systemui/accessibility/WindowMagnificationSettings$ZoomSeekbarChangeListener;->onProgressChanged(Landroidx/appcompat/widget/SeslSeekBar;IZ)V

    iget-object p0, p0, Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView$SeekBarChangeListener;->mOnSeekBarChangeListener:Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView$OnSeekBarWithIconButtonsChangeListener;

    check-cast p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings$ZoomSeekbarChangeListener;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroidx/appcompat/widget/SeslAbsSeekBar;->getProgress()I

    move-result p1

    int-to-float p1, p1

    iget-object p0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings$ZoomSeekbarChangeListener;->this$0:Lcom/android/systemui/accessibility/WindowMagnificationSettings;

    iget v1, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mSeekBarMagnitude:I

    int-to-float v1, v1

    div-float/2addr p1, v1

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr p1, v1

    iget-object p0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mCallback:Lcom/android/systemui/accessibility/WindowMagnificationSettingsCallback;

    check-cast p0, Lcom/android/systemui/accessibility/MagnificationSettingsController$1;

    invoke-virtual {p0, p1, p3}, Lcom/android/systemui/accessibility/MagnificationSettingsController$1;->onMagnifierScale(FZ)V

    goto :goto_0

    :cond_0
    check-cast v1, Lcom/android/systemui/accessibility/WindowMagnificationSettings$ZoomSeekbarChangeListener;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/systemui/accessibility/WindowMagnificationSettings$ZoomSeekbarChangeListener;->onProgressChanged(Landroidx/appcompat/widget/SeslSeekBar;IZ)V

    :cond_1
    :goto_0
    invoke-virtual {v0, p2}, Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView;->updateIconViewIfNeeded(I)V

    return-void
.end method

.method public final onStartTrackingTouch()V
    .locals 0

    return-void
.end method

.method public final onStopTrackingTouch(Landroidx/appcompat/widget/SeslSeekBar;)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView$SeekBarChangeListener;->mOnSeekBarChangeListener:Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView$OnSeekBarWithIconButtonsChangeListener;

    if-eqz p0, :cond_0

    check-cast p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings$ZoomSeekbarChangeListener;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroidx/appcompat/widget/SeslAbsSeekBar;->getProgress()I

    move-result p1

    int-to-float p1, p1

    iget-object p0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings$ZoomSeekbarChangeListener;->this$0:Lcom/android/systemui/accessibility/WindowMagnificationSettings;

    iget v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mSeekBarMagnitude:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    add-float/2addr p1, v0

    iget-object p0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mCallback:Lcom/android/systemui/accessibility/WindowMagnificationSettingsCallback;

    const/4 v0, 0x1

    check-cast p0, Lcom/android/systemui/accessibility/MagnificationSettingsController$1;

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/accessibility/MagnificationSettingsController$1;->onMagnifierScale(FZ)V

    :cond_0
    return-void
.end method
