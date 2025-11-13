.class public final Lcom/android/systemui/audio/soundcraft/viewbinding/actionbar/SoundCraftActionBarBinding;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final backButton:Landroid/view/View;

.field public final backIcon:Landroid/view/View;

.field public final root:Lcom/android/systemui/audio/soundcraft/view/actionbar/SoundCraftActionBarView;

.field public final title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f0a0066

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/audio/soundcraft/view/actionbar/SoundCraftActionBarView;

    iput-object v0, p0, Lcom/android/systemui/audio/soundcraft/viewbinding/actionbar/SoundCraftActionBarBinding;->root:Lcom/android/systemui/audio/soundcraft/view/actionbar/SoundCraftActionBarView;

    const v0, 0x7f0a0065

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/audio/soundcraft/viewbinding/actionbar/SoundCraftActionBarBinding;->backButton:Landroid/view/View;

    const v0, 0x7f0a0556

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/audio/soundcraft/viewbinding/actionbar/SoundCraftActionBarBinding;->backIcon:Landroid/view/View;

    const v0, 0x7f0a006d

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/viewbinding/actionbar/SoundCraftActionBarBinding;->title:Landroid/widget/TextView;

    return-void
.end method
