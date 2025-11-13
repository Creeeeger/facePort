.class public final Lcom/android/systemui/media/controls/ui/drawable/IlluminationDrawable$animateBackground$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic $finalHighlight:I

.field public final synthetic $initialBackground:I

.field public final synthetic $initialHighlight:I

.field public final synthetic this$0:Lcom/android/systemui/media/controls/ui/drawable/IlluminationDrawable;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/controls/ui/drawable/IlluminationDrawable;III)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/controls/ui/drawable/IlluminationDrawable$animateBackground$1$1;->this$0:Lcom/android/systemui/media/controls/ui/drawable/IlluminationDrawable;

    iput p2, p0, Lcom/android/systemui/media/controls/ui/drawable/IlluminationDrawable$animateBackground$1$1;->$initialBackground:I

    iput p3, p0, Lcom/android/systemui/media/controls/ui/drawable/IlluminationDrawable$animateBackground$1$1;->$initialHighlight:I

    iput p4, p0, Lcom/android/systemui/media/controls/ui/drawable/IlluminationDrawable$animateBackground$1$1;->$finalHighlight:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/drawable/IlluminationDrawable$animateBackground$1$1;->this$0:Lcom/android/systemui/media/controls/ui/drawable/IlluminationDrawable;

    invoke-static {v0}, Lcom/android/systemui/media/controls/ui/drawable/IlluminationDrawable;->access$getPaint$p(Lcom/android/systemui/media/controls/ui/drawable/IlluminationDrawable;)Landroid/graphics/Paint;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/media/controls/ui/drawable/IlluminationDrawable$animateBackground$1$1;->$initialBackground:I

    iget-object v2, p0, Lcom/android/systemui/media/controls/ui/drawable/IlluminationDrawable$animateBackground$1$1;->this$0:Lcom/android/systemui/media/controls/ui/drawable/IlluminationDrawable;

    invoke-static {v2}, Lcom/android/systemui/media/controls/ui/drawable/IlluminationDrawable;->access$getBackgroundColor$p(Lcom/android/systemui/media/controls/ui/drawable/IlluminationDrawable;)I

    move-result v2

    invoke-static {v1, v2, p1}, Lcom/android/internal/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/drawable/IlluminationDrawable$animateBackground$1$1;->this$0:Lcom/android/systemui/media/controls/ui/drawable/IlluminationDrawable;

    iget v1, p0, Lcom/android/systemui/media/controls/ui/drawable/IlluminationDrawable$animateBackground$1$1;->$initialHighlight:I

    iget v2, p0, Lcom/android/systemui/media/controls/ui/drawable/IlluminationDrawable$animateBackground$1$1;->$finalHighlight:I

    invoke-static {v1, v2, p1}, Lcom/android/internal/graphics/ColorUtils;->blendARGB(IIF)I

    move-result p1

    invoke-static {v0, p1}, Lcom/android/systemui/media/controls/ui/drawable/IlluminationDrawable;->access$setHighlightColor$p(Lcom/android/systemui/media/controls/ui/drawable/IlluminationDrawable;I)V

    iget-object p1, p0, Lcom/android/systemui/media/controls/ui/drawable/IlluminationDrawable$animateBackground$1$1;->this$0:Lcom/android/systemui/media/controls/ui/drawable/IlluminationDrawable;

    invoke-static {p1}, Lcom/android/systemui/media/controls/ui/drawable/IlluminationDrawable;->access$getLightSources$p(Lcom/android/systemui/media/controls/ui/drawable/IlluminationDrawable;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/drawable/IlluminationDrawable$animateBackground$1$1;->this$0:Lcom/android/systemui/media/controls/ui/drawable/IlluminationDrawable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/media/controls/ui/drawable/LightSourceDrawable;

    invoke-static {v0}, Lcom/android/systemui/media/controls/ui/drawable/IlluminationDrawable;->access$getHighlightColor$p(Lcom/android/systemui/media/controls/ui/drawable/IlluminationDrawable;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/media/controls/ui/drawable/LightSourceDrawable;->setHighlightColor(I)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/drawable/IlluminationDrawable$animateBackground$1$1;->this$0:Lcom/android/systemui/media/controls/ui/drawable/IlluminationDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
