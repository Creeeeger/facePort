.class public final Lcom/android/systemui/navigationbar/gestural/NavigationHintHandle;
.super Landroid/widget/FrameLayout;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/navigationbar/buttons/ButtonInterface;


# instance fields
.field public final darkIntensity:F

.field public hintDrawable:Lcom/android/systemui/navigationbar/gestural/GestureHintDrawable;

.field public iconResourceMapper:Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;

.field public final mContext:Landroid/content/Context;

.field public viDrawable:Lcom/android/systemui/navigationbar/gestural/GestureHintDrawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1, v0}, Lcom/android/systemui/navigationbar/gestural/NavigationHintHandle;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHintHandle;->mContext:Landroid/content/Context;

    const/high16 p1, -0x40800000    # -1.0f

    iput p1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHintHandle;->darkIntensity:F

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/navigationbar/gestural/NavigationHintHandle;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public final abortCurrentGesture()V
    .locals 0

    return-void
.end method

.method public final setCurrentRotation(IZ)V
    .locals 12

    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHintHandle;->iconResourceMapper:Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    sget-object v2, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_GESTURE_HINT:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    iget-object v3, v0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->context:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->getIconResource(Lcom/samsung/systemui/splugins/navigationbar/IconType;)Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    move-result-object v2

    if-eqz p2, :cond_0

    move v4, p1

    goto :goto_0

    :cond_0
    move v4, v1

    :goto_0
    iget-object v5, v0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->buttonDrawableProvider:Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawableProvider;

    move-object v6, v5

    check-cast v6, Lcom/android/systemui/navigationbar/NavBarButtonDrawableProvider;

    invoke-virtual {v6, v3, v2, v4}, Lcom/android/systemui/navigationbar/NavBarButtonDrawableProvider;->getGestureHintDrawable(Landroid/content/Context;Lcom/samsung/systemui/splugins/navigationbar/IconResource;I)Lcom/android/systemui/navigationbar/gestural/GestureHintDrawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHintHandle;->hintDrawable:Lcom/android/systemui/navigationbar/gestural/GestureHintDrawable;

    sget-object v2, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_GESTURE_HINT_VI:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    iget-object v3, v0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->context:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->getIconResource(Lcom/samsung/systemui/splugins/navigationbar/IconType;)Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    move-result-object v0

    if-eqz p2, :cond_1

    move v2, p1

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    check-cast v5, Lcom/android/systemui/navigationbar/NavBarButtonDrawableProvider;

    invoke-virtual {v5, v3, v0, v2}, Lcom/android/systemui/navigationbar/NavBarButtonDrawableProvider;->getGestureHintDrawable(Landroid/content/Context;Lcom/samsung/systemui/splugins/navigationbar/IconResource;I)Lcom/android/systemui/navigationbar/gestural/GestureHintDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHintHandle;->viDrawable:Lcom/android/systemui/navigationbar/gestural/GestureHintDrawable;

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHintHandle;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f070ee1

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iget-object v8, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHintHandle;->hintDrawable:Lcom/android/systemui/navigationbar/gestural/GestureHintDrawable;

    iget-object v9, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHintHandle;->viDrawable:Lcom/android/systemui/navigationbar/gestural/GestureHintDrawable;

    if-eqz v8, :cond_7

    if-eqz v9, :cond_7

    move v10, v1

    :goto_2
    const/4 v2, 0x2

    if-ge v10, v2, :cond_7

    if-eqz p2, :cond_5

    if-eqz p1, :cond_5

    if-ne p1, v2, :cond_3

    goto :goto_3

    :cond_3
    const/4 v2, 0x1

    if-ne p1, v2, :cond_4

    const/4 v11, 0x5

    invoke-virtual {v8, v10, v11}, Landroid/graphics/drawable/LayerDrawable;->setLayerGravity(II)V

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v2, v8

    move v3, v10

    move v4, v0

    move v6, v0

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    invoke-virtual {v9, v10, v11}, Landroid/graphics/drawable/LayerDrawable;->setLayerGravity(II)V

    move-object v2, v9

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    goto :goto_4

    :cond_4
    const/4 v11, 0x3

    if-ne p1, v11, :cond_6

    invoke-virtual {v8, v10, v11}, Landroid/graphics/drawable/LayerDrawable;->setLayerGravity(II)V

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v2, v8

    move v3, v10

    move v4, v0

    move v6, v0

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    invoke-virtual {v9, v10, v11}, Landroid/graphics/drawable/LayerDrawable;->setLayerGravity(II)V

    move-object v2, v9

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    goto :goto_4

    :cond_5
    :goto_3
    const/16 v11, 0x50

    invoke-virtual {v8, v10, v11}, Landroid/graphics/drawable/LayerDrawable;->setLayerGravity(II)V

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v2, v8

    move v3, v10

    move v5, v0

    move v7, v0

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    invoke-virtual {v9, v10, v11}, Landroid/graphics/drawable/LayerDrawable;->setLayerGravity(II)V

    move-object v2, v9

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    :cond_6
    :goto_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_7
    iget-object p1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHintHandle;->hintDrawable:Lcom/android/systemui/navigationbar/gestural/GestureHintDrawable;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p1

    if-nez p1, :cond_8

    new-instance p1, Landroid/view/View;

    iget-object p2, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHintHandle;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_5

    :cond_8
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    :goto_5
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHintHandle;->viDrawable:Lcom/android/systemui/navigationbar/gestural/GestureHintDrawable;

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p1, p0}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method

.method public final setDarkIntensity(F)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHintHandle;->hintDrawable:Lcom/android/systemui/navigationbar/gestural/GestureHintDrawable;

    if-eqz v0, :cond_3

    iget v1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHintHandle;->darkIntensity:F

    cmpg-float v1, v1, p1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/android/systemui/navigationbar/gestural/GestureHintDrawable;->setDarkIntensity(F)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHintHandle;->viDrawable:Lcom/android/systemui/navigationbar/gestural/GestureHintDrawable;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/android/systemui/navigationbar/gestural/GestureHintDrawable;->setDarkIntensity(F)V

    :cond_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_3
    :goto_0
    return-void
.end method

.method public final setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method
