.class final Lcom/android/systemui/media/controls/ui/SecColorSchemeTransition$accentSecondary$2;
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
.field final synthetic this$0:Lcom/android/systemui/media/controls/ui/SecColorSchemeTransition;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/controls/ui/SecColorSchemeTransition;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/controls/ui/SecColorSchemeTransition$accentSecondary$2;->this$0:Lcom/android/systemui/media/controls/ui/SecColorSchemeTransition;

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

    iget-object v1, p0, Lcom/android/systemui/media/controls/ui/SecColorSchemeTransition$accentSecondary$2;->this$0:Lcom/android/systemui/media/controls/ui/SecColorSchemeTransition;

    iget-object v1, v1, Lcom/android/systemui/media/controls/ui/SecColorSchemeTransition;->mediaViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    iget-object v1, v1, Lcom/android/systemui/media/SecPlayerViewHolder;->seekBar:Landroid/widget/SeekBar;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    instance-of v1, v1, Lcom/android/systemui/media/audiovisseekbar/AudioVisSeekBarProgressDrawable;

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/SecColorSchemeTransition$accentSecondary$2;->this$0:Lcom/android/systemui/media/controls/ui/SecColorSchemeTransition;

    iget-object v0, v0, Lcom/android/systemui/media/controls/ui/SecColorSchemeTransition;->mediaViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    iget-object v0, v0, Lcom/android/systemui/media/SecPlayerViewHolder;->seekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_1

    move-object v2, v0

    :cond_1
    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/media/audiovisseekbar/AudioVisSeekBarProgressDrawable;

    iget-object v0, v0, Lcom/android/systemui/media/audiovisseekbar/AudioVisSeekBarProgressDrawable;->config:Lcom/android/systemui/media/audiovisseekbar/config/AudioVisSeekBarConfig;

    iput p1, v0, Lcom/android/systemui/media/audiovisseekbar/config/AudioVisSeekBarConfig;->secondaryColor:I

    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/SecColorSchemeTransition$accentSecondary$2;->this$0:Lcom/android/systemui/media/controls/ui/SecColorSchemeTransition;

    iget-object v0, v0, Lcom/android/systemui/media/controls/ui/SecColorSchemeTransition;->mediaViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    iput p1, v0, Lcom/android/systemui/media/SecPlayerViewHolder;->progressBarSecondaryColor:I

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/media/controls/ui/SecColorSchemeTransition$accentSecondary$2;->this$0:Lcom/android/systemui/media/controls/ui/SecColorSchemeTransition;

    iget-object v1, v1, Lcom/android/systemui/media/controls/ui/SecColorSchemeTransition;->mediaViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    iget-object v1, v1, Lcom/android/systemui/media/SecPlayerViewHolder;->seekBar:Landroid/widget/SeekBar;

    if-eqz v1, :cond_3

    move-object v2, v1

    :cond_3
    invoke-virtual {v2, v0}, Landroid/widget/SeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    :goto_1
    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/SecColorSchemeTransition$accentSecondary$2;->this$0:Lcom/android/systemui/media/controls/ui/SecColorSchemeTransition;

    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/SecColorSchemeTransition;->mediaViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    iget-object p0, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->dummyProgressDrawable:Landroid/graphics/drawable/LayerDrawable;

    if-eqz p0, :cond_4

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-eqz p0, :cond_4

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, p1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_4
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
