.class public final Lcom/android/systemui/accessibility/WindowMagnificationSettings$ZoomSeekbarChangeListener;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView$OnSeekBarWithIconButtonsChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/accessibility/WindowMagnificationSettings;


# direct methods
.method private constructor <init>(Lcom/android/systemui/accessibility/WindowMagnificationSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings$ZoomSeekbarChangeListener;->this$0:Lcom/android/systemui/accessibility/WindowMagnificationSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/accessibility/WindowMagnificationSettings;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/accessibility/WindowMagnificationSettings$ZoomSeekbarChangeListener;-><init>(Lcom/android/systemui/accessibility/WindowMagnificationSettings;)V

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroidx/appcompat/widget/SeslSeekBar;IZ)V
    .locals 0

    if-eqz p3, :cond_0

    int-to-float p1, p2

    iget-object p0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings$ZoomSeekbarChangeListener;->this$0:Lcom/android/systemui/accessibility/WindowMagnificationSettings;

    iget p2, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mSeekBarMagnitude:I

    int-to-float p2, p2

    div-float/2addr p1, p2

    const/high16 p2, 0x3f800000    # 1.0f

    add-float/2addr p1, p2

    iget-object p2, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mCallback:Lcom/android/systemui/accessibility/WindowMagnificationSettingsCallback;

    const/4 p3, 0x0

    check-cast p2, Lcom/android/systemui/accessibility/MagnificationSettingsController$1;

    invoke-virtual {p2, p1, p3}, Lcom/android/systemui/accessibility/MagnificationSettingsController$1;->onMagnifierScale(FZ)V

    iget-object p2, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mZoomSeekbar:Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView;

    invoke-virtual {p2, p1}, Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView;->setSeekbarStateDescription(F)V

    iget-object p2, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mZoomSeekbar:Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView;

    iget-object p0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    float-to-int p1, p1

    mul-int/lit8 p1, p1, 0x64

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const p3, 0x7f1306eb

    invoke-virtual {p0, p3, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/widget/LinearLayout;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public final onStartTrackingTouch()V
    .locals 0

    return-void
.end method

.method public final onStopTrackingTouch(Landroidx/appcompat/widget/SeslSeekBar;)V
    .locals 0

    return-void
.end method
