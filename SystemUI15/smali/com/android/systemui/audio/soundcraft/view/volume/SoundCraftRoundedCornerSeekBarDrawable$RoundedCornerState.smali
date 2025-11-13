.class public final Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftRoundedCornerSeekBarDrawable$RoundedCornerState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final wrappedState:Landroid/graphics/drawable/Drawable$ConstantState;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable$ConstantState;)V
    .locals 0

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftRoundedCornerSeekBarDrawable$RoundedCornerState;->wrappedState:Landroid/graphics/drawable/Drawable$ConstantState;

    return-void
.end method


# virtual methods
.method public final canApplyTheme()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final getChangingConfigurations()I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftRoundedCornerSeekBarDrawable$RoundedCornerState;->wrappedState:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable$ConstantState;->getChangingConfigurations()I

    move-result p0

    return p0
.end method

.method public final newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftRoundedCornerSeekBarDrawable$RoundedCornerState;->newDrawable(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public final newDrawable(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftRoundedCornerSeekBarDrawable$RoundedCornerState;->wrappedState:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {p0, p1, p2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/DrawableWrapper;

    new-instance p1, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftRoundedCornerSeekBarDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableWrapper;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftRoundedCornerSeekBarDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    return-object p1
.end method
