.class public final Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectHeaderView$bind$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic $viewBinding:Lcom/android/systemui/audio/soundcraft/viewbinding/audioeffect/AudioEffectHeaderViewBinding;


# direct methods
.method public constructor <init>(Lcom/android/systemui/audio/soundcraft/viewbinding/audioeffect/AudioEffectHeaderViewBinding;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectHeaderView$bind$2;->$viewBinding:Lcom/android/systemui/audio/soundcraft/viewbinding/audioeffect/AudioEffectHeaderViewBinding;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Landroid/graphics/drawable/Drawable;

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectHeaderView$bind$2;->$viewBinding:Lcom/android/systemui/audio/soundcraft/viewbinding/audioeffect/AudioEffectHeaderViewBinding;

    iget-object v0, p0, Lcom/android/systemui/audio/soundcraft/viewbinding/audioeffect/AudioEffectHeaderViewBinding;->icon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/viewbinding/audioeffect/AudioEffectHeaderViewBinding;->icon:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
