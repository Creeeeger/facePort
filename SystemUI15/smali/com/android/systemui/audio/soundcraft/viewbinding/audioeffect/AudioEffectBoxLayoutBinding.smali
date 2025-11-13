.class public final Lcom/android/systemui/audio/soundcraft/viewbinding/audioeffect/AudioEffectBoxLayoutBinding;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final box:Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectBoxView;

.field public final detailJumpButton:Landroid/widget/TextView;

.field public final effectItemList:Landroid/widget/LinearLayout;

.field public final fallbackText:Landroid/widget/TextView;

.field public final header:Lcom/android/systemui/audio/soundcraft/viewbinding/audioeffect/AudioEffectHeaderViewBinding;

.field public final root:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f0a0bcc

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/audio/soundcraft/viewbinding/audioeffect/AudioEffectBoxLayoutBinding;->root:Landroid/view/View;

    const v1, 0x7f0a0bcb

    invoke-virtual {p1, v1}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectBoxView;

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/viewbinding/audioeffect/AudioEffectBoxLayoutBinding;->box:Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectBoxView;

    new-instance p1, Lcom/android/systemui/audio/soundcraft/viewbinding/audioeffect/AudioEffectHeaderViewBinding;

    invoke-direct {p1, v0}, Lcom/android/systemui/audio/soundcraft/viewbinding/audioeffect/AudioEffectHeaderViewBinding;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/viewbinding/audioeffect/AudioEffectBoxLayoutBinding;->header:Lcom/android/systemui/audio/soundcraft/viewbinding/audioeffect/AudioEffectHeaderViewBinding;

    const p1, 0x7f0a0bce

    invoke-virtual {v0, p1}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/viewbinding/audioeffect/AudioEffectBoxLayoutBinding;->effectItemList:Landroid/widget/LinearLayout;

    const p1, 0x7f0a0bd8

    invoke-virtual {v0, p1}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/viewbinding/audioeffect/AudioEffectBoxLayoutBinding;->fallbackText:Landroid/widget/TextView;

    const p1, 0x7f0a0bd0

    invoke-virtual {v0, p1}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/viewbinding/audioeffect/AudioEffectBoxLayoutBinding;->detailJumpButton:Landroid/widget/TextView;

    return-void
.end method
