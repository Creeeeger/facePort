.class public final synthetic Lcom/android/systemui/settings/brightness/BrightnessDialog$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic f$0:Landroid/graphics/Rect;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Landroid/graphics/Rect;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessDialog$$ExternalSyntheticLambda1;->f$0:Landroid/graphics/Rect;

    iput p2, p0, Lcom/android/systemui/settings/brightness/BrightnessDialog$$ExternalSyntheticLambda1;->f$1:I

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    iget-object p6, p0, Lcom/android/systemui/settings/brightness/BrightnessDialog$$ExternalSyntheticLambda1;->f$0:Landroid/graphics/Rect;

    iget p0, p0, Lcom/android/systemui/settings/brightness/BrightnessDialog$$ExternalSyntheticLambda1;->f$1:I

    sget p7, Lcom/android/systemui/settings/brightness/BrightnessDialog;->DIALOG_TIMEOUT_MILLIS:I

    neg-int p7, p0

    sub-int/2addr p4, p2

    add-int/2addr p4, p0

    sub-int/2addr p5, p3

    const/4 p0, 0x0

    invoke-virtual {p6, p7, p0, p4, p5}, Landroid/graphics/Rect;->set(IIII)V

    invoke-static {p6}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setSystemGestureExclusionRects(Ljava/util/List;)V

    return-void
.end method
