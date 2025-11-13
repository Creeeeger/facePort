.class final Lcom/android/systemui/util/DialogKt$maybeForceFullscreen$decorViewLayoutListener$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field final synthetic $dialogContentWithBackground:Lcom/android/systemui/animation/view/LaunchableFrameLayout;

.field final synthetic $window:Landroid/view/Window;


# direct methods
.method public constructor <init>(Landroid/view/Window;Lcom/android/systemui/animation/view/LaunchableFrameLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/util/DialogKt$maybeForceFullscreen$decorViewLayoutListener$1;->$window:Landroid/view/Window;

    iput-object p2, p0, Lcom/android/systemui/util/DialogKt$maybeForceFullscreen$decorViewLayoutListener$1;->$dialogContentWithBackground:Lcom/android/systemui/animation/view/LaunchableFrameLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    iget-object p1, p0, Lcom/android/systemui/util/DialogKt$maybeForceFullscreen$decorViewLayoutListener$1;->$window:Landroid/view/Window;

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/android/systemui/util/DialogKt$maybeForceFullscreen$decorViewLayoutListener$1;->$window:Landroid/view/Window;

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    if-eq p1, p2, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/util/DialogKt$maybeForceFullscreen$decorViewLayoutListener$1;->$dialogContentWithBackground:Lcom/android/systemui/animation/view/LaunchableFrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget-object p3, p0, Lcom/android/systemui/util/DialogKt$maybeForceFullscreen$decorViewLayoutListener$1;->$window:Landroid/view/Window;

    invoke-virtual {p3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p3

    iget p3, p3, Landroid/view/WindowManager$LayoutParams;->width:I

    iput p3, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object p3, p0, Lcom/android/systemui/util/DialogKt$maybeForceFullscreen$decorViewLayoutListener$1;->$window:Landroid/view/Window;

    invoke-virtual {p3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p3

    iget p3, p3, Landroid/view/WindowManager$LayoutParams;->height:I

    iput p3, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object p3, p0, Lcom/android/systemui/util/DialogKt$maybeForceFullscreen$decorViewLayoutListener$1;->$dialogContentWithBackground:Lcom/android/systemui/animation/view/LaunchableFrameLayout;

    invoke-virtual {p3, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p0, p0, Lcom/android/systemui/util/DialogKt$maybeForceFullscreen$decorViewLayoutListener$1;->$window:Landroid/view/Window;

    invoke-virtual {p0, p2, p2}, Landroid/view/Window;->setLayout(II)V

    :cond_1
    return-void
.end method
