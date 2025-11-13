.class final Lcom/android/systemui/util/drawable/LoopedAnimatable2DrawableWrapper$LoopedDrawableState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field private final nestedState:Landroid/graphics/drawable/Drawable$ConstantState;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable$ConstantState;)V
    .locals 0

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/util/drawable/LoopedAnimatable2DrawableWrapper$LoopedDrawableState;->nestedState:Landroid/graphics/drawable/Drawable$ConstantState;

    return-void
.end method


# virtual methods
.method public canApplyTheme()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/drawable/LoopedAnimatable2DrawableWrapper$LoopedDrawableState;->nestedState:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable$ConstantState;->canApplyTheme()Z

    move-result p0

    return p0
.end method

.method public getChangingConfigurations()I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/drawable/LoopedAnimatable2DrawableWrapper$LoopedDrawableState;->nestedState:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable$ConstantState;->getChangingConfigurations()I

    move-result p0

    return p0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    sget-object v0, Lcom/android/systemui/util/drawable/LoopedAnimatable2DrawableWrapper;->Companion:Lcom/android/systemui/util/drawable/LoopedAnimatable2DrawableWrapper$Companion;

    iget-object p0, p0, Lcom/android/systemui/util/drawable/LoopedAnimatable2DrawableWrapper$LoopedDrawableState;->nestedState:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/systemui/util/drawable/LoopedAnimatable2DrawableWrapper$Companion;->fromDrawable(Landroid/graphics/drawable/Drawable;)Lcom/android/systemui/util/drawable/LoopedAnimatable2DrawableWrapper;

    move-result-object p0

    return-object p0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 1

    sget-object v0, Lcom/android/systemui/util/drawable/LoopedAnimatable2DrawableWrapper;->Companion:Lcom/android/systemui/util/drawable/LoopedAnimatable2DrawableWrapper$Companion;

    iget-object p0, p0, Lcom/android/systemui/util/drawable/LoopedAnimatable2DrawableWrapper$LoopedDrawableState;->nestedState:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/systemui/util/drawable/LoopedAnimatable2DrawableWrapper$Companion;->fromDrawable(Landroid/graphics/drawable/Drawable;)Lcom/android/systemui/util/drawable/LoopedAnimatable2DrawableWrapper;

    move-result-object p0

    return-object p0
.end method

.method public newDrawable(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .locals 1

    sget-object v0, Lcom/android/systemui/util/drawable/LoopedAnimatable2DrawableWrapper;->Companion:Lcom/android/systemui/util/drawable/LoopedAnimatable2DrawableWrapper$Companion;

    iget-object p0, p0, Lcom/android/systemui/util/drawable/LoopedAnimatable2DrawableWrapper$LoopedDrawableState;->nestedState:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {p0, p1, p2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/systemui/util/drawable/LoopedAnimatable2DrawableWrapper$Companion;->fromDrawable(Landroid/graphics/drawable/Drawable;)Lcom/android/systemui/util/drawable/LoopedAnimatable2DrawableWrapper;

    move-result-object p0

    return-object p0
.end method
