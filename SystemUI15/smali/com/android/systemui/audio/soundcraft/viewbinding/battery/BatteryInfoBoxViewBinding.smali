.class public final Lcom/android/systemui/audio/soundcraft/viewbinding/battery/BatteryInfoBoxViewBinding;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final budsBatteryInfoText:Landroid/widget/TextView;

.field public final budsBatteryView:Landroid/widget/LinearLayout;

.field public final budsIconLeft:Landroid/widget/ImageView;

.field public final budsIconRight:Landroid/widget/ImageView;

.field public final cradleBatteryInfoText:Landroid/widget/TextView;

.field public final cradleBatteryView:Landroid/widget/LinearLayout;

.field public final cradleIcon:Landroid/widget/ImageView;

.field public final root:Lcom/android/systemui/audio/soundcraft/view/battery/BatteryInfoBoxView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f0a0bcf

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/audio/soundcraft/view/battery/BatteryInfoBoxView;

    iput-object v0, p0, Lcom/android/systemui/audio/soundcraft/viewbinding/battery/BatteryInfoBoxViewBinding;->root:Lcom/android/systemui/audio/soundcraft/view/battery/BatteryInfoBoxView;

    const v0, 0x7f0a0212

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/audio/soundcraft/viewbinding/battery/BatteryInfoBoxViewBinding;->budsBatteryView:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0213

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/audio/soundcraft/viewbinding/battery/BatteryInfoBoxViewBinding;->budsIconLeft:Landroid/widget/ImageView;

    const v0, 0x7f0a0214

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/audio/soundcraft/viewbinding/battery/BatteryInfoBoxViewBinding;->budsIconRight:Landroid/widget/ImageView;

    const v0, 0x7f0a0211

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/audio/soundcraft/viewbinding/battery/BatteryInfoBoxViewBinding;->budsBatteryInfoText:Landroid/widget/TextView;

    const v0, 0x7f0a0316

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/audio/soundcraft/viewbinding/battery/BatteryInfoBoxViewBinding;->cradleBatteryView:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0317

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/audio/soundcraft/viewbinding/battery/BatteryInfoBoxViewBinding;->cradleIcon:Landroid/widget/ImageView;

    const v0, 0x7f0a0315

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/viewbinding/battery/BatteryInfoBoxViewBinding;->cradleBatteryInfoText:Landroid/widget/TextView;

    return-void
.end method
