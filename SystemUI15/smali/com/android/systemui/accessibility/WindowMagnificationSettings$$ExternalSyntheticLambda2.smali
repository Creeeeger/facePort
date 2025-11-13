.class public final synthetic Lcom/android/systemui/accessibility/WindowMagnificationSettings$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/accessibility/WindowMagnificationSettings;

.field public final synthetic f$1:F

.field public final synthetic f$2:F


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/accessibility/WindowMagnificationSettings;FF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/accessibility/WindowMagnificationSettings;

    iput p2, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings$$ExternalSyntheticLambda2;->f$1:F

    iput p3, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings$$ExternalSyntheticLambda2;->f$2:F

    return-void
.end method


# virtual methods
.method public final doFrame(J)V
    .locals 2

    iget-object p1, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/accessibility/WindowMagnificationSettings;

    iget p2, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings$$ExternalSyntheticLambda2;->f$1:F

    iget p0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings$$ExternalSyntheticLambda2;->f$2:F

    iget-object v0, p1, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v1, v1

    add-float/2addr v1, p2

    float-to-int p2, v1

    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget p2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float p2, p2

    add-float/2addr p2, p0

    float-to-int p0, p2

    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {p1}, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->updateButtonViewLayoutIfNeeded()V

    return-void
.end method
