.class public final Lcom/android/systemui/audio/soundcraft/viewbinding/audioeffect/AudioEffectHeaderViewBinding;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final icon:Landroid/widget/ImageView;

.field public final root:Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectHeaderView;

.field public final title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f0a0bcd

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectHeaderView;

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/viewbinding/audioeffect/AudioEffectHeaderViewBinding;->root:Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectHeaderView;

    const v0, 0x7f0a03f7

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/audio/soundcraft/viewbinding/audioeffect/AudioEffectHeaderViewBinding;->icon:Landroid/widget/ImageView;

    const v0, 0x7f0a03f8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/viewbinding/audioeffect/AudioEffectHeaderViewBinding;->title:Landroid/widget/TextView;

    return-void
.end method
