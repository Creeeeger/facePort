.class public final Lcom/android/systemui/audio/soundcraft/viewbinding/audioeffect/AudioEffectToggleItemViewBinding;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final name:Landroid/widget/TextView;

.field public final root:Landroid/widget/LinearLayout;

.field public final switch:Landroidx/appcompat/widget/SwitchCompat;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f0a0551

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/audio/soundcraft/viewbinding/audioeffect/AudioEffectToggleItemViewBinding;->root:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0550

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/audio/soundcraft/viewbinding/audioeffect/AudioEffectToggleItemViewBinding;->name:Landroid/widget/TextView;

    const v0, 0x7f0a0553

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/SwitchCompat;

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/viewbinding/audioeffect/AudioEffectToggleItemViewBinding;->switch:Landroidx/appcompat/widget/SwitchCompat;

    return-void
.end method
