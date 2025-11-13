.class final Lcom/android/systemui/media/controls/ui/animation/ColorSchemeTransition$accentPrimary$2;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/media/controls/ui/animation/ColorSchemeTransition;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/controls/ui/animation/ColorSchemeTransition;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/controls/ui/animation/ColorSchemeTransition$accentPrimary$2;->this$0:Lcom/android/systemui/media/controls/ui/animation/ColorSchemeTransition;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/media/controls/ui/animation/ColorSchemeTransition$accentPrimary$2;->this$0:Lcom/android/systemui/media/controls/ui/animation/ColorSchemeTransition;

    iget-object v1, v1, Lcom/android/systemui/media/controls/ui/animation/ColorSchemeTransition;->mediaViewHolder:Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;

    iget-object v1, v1, Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;->actionPlayPause:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/animation/ColorSchemeTransition$accentPrimary$2;->this$0:Lcom/android/systemui/media/controls/ui/animation/ColorSchemeTransition;

    iget-object v0, v0, Lcom/android/systemui/media/controls/ui/animation/ColorSchemeTransition;->mediaViewHolder:Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;

    iget-object v0, v0, Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;->gutsViewHolder:Lcom/android/systemui/media/controls/ui/view/GutsViewHolder;

    invoke-virtual {v0, p1}, Lcom/android/systemui/media/controls/ui/view/GutsViewHolder;->setAccentPrimaryColor(I)V

    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/animation/ColorSchemeTransition$accentPrimary$2;->this$0:Lcom/android/systemui/media/controls/ui/animation/ColorSchemeTransition;

    iget-object v0, v0, Lcom/android/systemui/media/controls/ui/animation/ColorSchemeTransition;->multiRippleController:Lcom/android/systemui/surfaceeffects/ripple/MultiRippleController;

    iget-object v0, v0, Lcom/android/systemui/surfaceeffects/ripple/MultiRippleController;->multipleRippleView:Lcom/android/systemui/surfaceeffects/ripple/MultiRippleView;

    iget-object v0, v0, Lcom/android/systemui/surfaceeffects/ripple/MultiRippleView;->ripples:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/surfaceeffects/ripple/RippleAnimation;

    iget-object v2, v1, Lcom/android/systemui/surfaceeffects/ripple/RippleAnimation;->config:Lcom/android/systemui/surfaceeffects/ripple/RippleAnimationConfig;

    iput p1, v2, Lcom/android/systemui/surfaceeffects/ripple/RippleAnimationConfig;->color:I

    invoke-virtual {v1}, Lcom/android/systemui/surfaceeffects/ripple/RippleAnimation;->applyConfigToShader()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/animation/ColorSchemeTransition$accentPrimary$2;->this$0:Lcom/android/systemui/media/controls/ui/animation/ColorSchemeTransition;

    iget-object v0, v0, Lcom/android/systemui/media/controls/ui/animation/ColorSchemeTransition;->turbulenceNoiseController:Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseController;

    iget-object v1, v0, Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseController;->state:Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseController$Companion$AnimationState;

    sget-object v2, Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseController$Companion$AnimationState;->NOT_PLAYING:Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseController$Companion$AnimationState;

    if-ne v1, v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, v0, Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseController;->turbulenceNoiseView:Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseView;

    iget-object v0, v0, Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseView;->turbulenceNoiseShader:Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseShader;

    if-eqz v0, :cond_2

    const-string v1, "in_color"

    invoke-virtual {v0, v1, p1}, Landroid/graphics/RuntimeShader;->setColorUniform(Ljava/lang/String;I)V

    :cond_2
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/animation/ColorSchemeTransition$accentPrimary$2;->this$0:Lcom/android/systemui/media/controls/ui/animation/ColorSchemeTransition;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
