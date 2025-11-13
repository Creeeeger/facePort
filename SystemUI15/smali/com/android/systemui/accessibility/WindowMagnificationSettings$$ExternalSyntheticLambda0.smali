.class public final synthetic Lcom/android/systemui/accessibility/WindowMagnificationSettings$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/accessibility/WindowMagnificationSettings;

.field public final synthetic f$1:Landroid/graphics/Rect;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/accessibility/WindowMagnificationSettings;Landroid/graphics/Rect;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/accessibility/WindowMagnificationSettings;

    iput-object p2, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings$$ExternalSyntheticLambda0;->f$1:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/accessibility/WindowMagnificationSettings;

    iget-object p0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings$$ExternalSyntheticLambda0;->f$1:Landroid/graphics/Rect;

    iget-object v1, v0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p0

    iget-object v2, v0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mSettingView:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v2

    sub-int/2addr p0, v2

    div-int/lit8 p0, p0, 0x2

    iput p0, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object p0, v0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mSettingView:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object p0

    if-eqz p0, :cond_0

    iget-object p0, v0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, v0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mSettingView:Landroid/widget/LinearLayout;

    iget-object v0, v0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p0, v1, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method
