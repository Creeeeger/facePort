.class public final Lcom/android/systemui/navigationbar/buttons/ContextualButton;
.super Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mGroup:Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup;

.field public final mIconResId:I

.field public final mIconType:Lcom/samsung/systemui/splugins/navigationbar/IconType;

.field public final mLightContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(ILandroid/content/Context;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;-><init>(I)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/systemui/navigationbar/buttons/ContextualButton;->mIconType:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    iput-object p2, p0, Lcom/android/systemui/navigationbar/buttons/ContextualButton;->mLightContext:Landroid/content/Context;

    iput p3, p0, Lcom/android/systemui/navigationbar/buttons/ContextualButton;->mIconResId:I

    return-void
.end method

.method public constructor <init>(ILandroid/content/Context;Lcom/samsung/systemui/splugins/navigationbar/IconType;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;-><init>(I)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/systemui/navigationbar/buttons/ContextualButton;->mIconResId:I

    iput-object p2, p0, Lcom/android/systemui/navigationbar/buttons/ContextualButton;->mLightContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/systemui/navigationbar/buttons/ContextualButton;->mIconType:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    const/4 p1, 0x4

    invoke-super {p0, p1}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public final setVisibility(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->mImageDrawable:Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;

    if-eqz p1, :cond_1

    if-eqz p0, :cond_1

    iget-object p1, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;->mState:Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable$ShadowDrawableState;

    iget-boolean p1, p1, Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable$ShadowDrawableState;->mSupportsAnimation:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;->mAnimatedDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->clearAnimationCallbacks()V

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;->mAnimatedDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->reset()V

    :cond_1
    return-void
.end method
