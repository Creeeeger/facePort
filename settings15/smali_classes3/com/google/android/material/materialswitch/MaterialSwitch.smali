.class public Lcom/google/android/material/materialswitch/MaterialSwitch;
.super Landroidx/appcompat/widget/SwitchCompat;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final STATE_SET_WITH_ICON:[I


# instance fields
.field public currentStateChecked:[I

.field public currentStateUnchecked:[I

.field public final thumbDrawable:Landroid/graphics/drawable/Drawable;

.field public final thumbIconDrawable:Landroid/graphics/drawable/Drawable;

.field public final thumbIconTintList:Landroid/content/res/ColorStateList;

.field public final thumbTintList:Landroid/content/res/ColorStateList;

.field public final trackDecorationDrawable:Landroid/graphics/drawable/Drawable;

.field public final trackDecorationTintList:Landroid/content/res/ColorStateList;

.field public final trackDrawable:Landroid/graphics/drawable/Drawable;

.field public final trackTintList:Landroid/content/res/ColorStateList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x7f0405ea

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/google/android/material/materialswitch/MaterialSwitch;->STATE_SET_WITH_ICON:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/materialswitch/MaterialSwitch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x7f04040a

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/materialswitch/MaterialSwitch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 12

    const v0, 0x7f15080a

    invoke-static {p1, p2, p3, v0}, Lcom/google/android/material/theme/overlay/MaterialThemeOverlay;->wrap(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/SwitchCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p1, p0, Landroidx/appcompat/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    iput-object p1, p0, Lcom/google/android/material/materialswitch/MaterialSwitch;->thumbDrawable:Landroid/graphics/drawable/Drawable;

    iget-object p1, p0, Landroidx/appcompat/widget/SwitchCompat;->mThumbTintList:Landroid/content/res/ColorStateList;

    iput-object p1, p0, Lcom/google/android/material/materialswitch/MaterialSwitch;->thumbTintList:Landroid/content/res/ColorStateList;

    const/4 v6, 0x0

    iput-object v6, p0, Landroidx/appcompat/widget/SwitchCompat;->mThumbTintList:Landroid/content/res/ColorStateList;

    const/4 v7, 0x1

    iput-boolean v7, p0, Landroidx/appcompat/widget/SwitchCompat;->mHasThumbTint:Z

    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->applyThumbTint()V

    iget-object v1, p0, Landroidx/appcompat/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/google/android/material/materialswitch/MaterialSwitch;->trackDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v8, p0, Landroidx/appcompat/widget/SwitchCompat;->mTrackTintList:Landroid/content/res/ColorStateList;

    iput-object v8, p0, Lcom/google/android/material/materialswitch/MaterialSwitch;->trackTintList:Landroid/content/res/ColorStateList;

    iput-object v6, p0, Landroidx/appcompat/widget/SwitchCompat;->mTrackTintList:Landroid/content/res/ColorStateList;

    iput-boolean v7, p0, Landroidx/appcompat/widget/SwitchCompat;->mHasTrackTint:Z

    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->applyTrackTint()V

    sget-object v2, Lcom/google/android/material/R$styleable;->MaterialSwitch:[I

    const/4 v9, 0x0

    new-array v5, v9, [I

    const v4, 0x7f15080a

    move-object v1, p2

    move v3, p3

    invoke-static/range {v0 .. v5}, Lcom/google/android/material/internal/ThemeEnforcement;->obtainTintedStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroidx/appcompat/widget/TintTypedArray;

    move-result-object p2

    invoke-virtual {p2, v9}, Landroidx/appcompat/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcom/google/android/material/materialswitch/MaterialSwitch;->thumbIconDrawable:Landroid/graphics/drawable/Drawable;

    iget-object p3, p2, Landroidx/appcompat/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    const/4 v0, -0x1

    invoke-virtual {p3, v7, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    const/4 v1, 0x2

    invoke-virtual {p2, v1}, Landroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/material/materialswitch/MaterialSwitch;->thumbIconTintList:Landroid/content/res/ColorStateList;

    iget-object v3, p2, Landroidx/appcompat/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    const/4 v4, 0x3

    invoke-virtual {v3, v4, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v3, v4}, Lcom/google/android/material/internal/ViewUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v3

    const/4 v5, 0x4

    invoke-virtual {p2, v5}, Landroidx/appcompat/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/material/materialswitch/MaterialSwitch;->trackDecorationDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x5

    invoke-virtual {p2, v5}, Landroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/material/materialswitch/MaterialSwitch;->trackDecorationTintList:Landroid/content/res/ColorStateList;

    iget-object v10, p2, Landroidx/appcompat/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    const/4 v11, 0x6

    invoke-virtual {v10, v11, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-static {v0, v4}, Lcom/google/android/material/internal/ViewUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    invoke-virtual {p2}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    invoke-virtual {p0}, Lcom/google/android/material/materialswitch/MaterialSwitch;->invalidate()V

    iget-object p2, p0, Lcom/google/android/material/materialswitch/MaterialSwitch;->thumbDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Landroidx/appcompat/widget/SwitchCompat;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-static {p2, p1, v4}, Lcom/google/android/material/drawable/DrawableUtils;->createTintableMutatedDrawableIfNeeded(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/materialswitch/MaterialSwitch;->thumbDrawable:Landroid/graphics/drawable/Drawable;

    iget-object p1, p0, Lcom/google/android/material/materialswitch/MaterialSwitch;->thumbIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {p1, v2, v3}, Lcom/google/android/material/drawable/DrawableUtils;->createTintableMutatedDrawableIfNeeded(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/materialswitch/MaterialSwitch;->thumbIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/google/android/material/materialswitch/MaterialSwitch;->updateDrawableTints()V

    iget-object p1, p0, Lcom/google/android/material/materialswitch/MaterialSwitch;->thumbDrawable:Landroid/graphics/drawable/Drawable;

    iget-object p2, p0, Lcom/google/android/material/materialswitch/MaterialSwitch;->thumbIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {p1, p2, p3, p3}, Lcom/google/android/material/drawable/DrawableUtils;->compositeTwoLayeredDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object p2, p0, Landroidx/appcompat/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_0

    invoke-virtual {p2, v6}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_0
    iput-object p1, p0, Landroidx/appcompat/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_1
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->refreshDrawableState()V

    iget-object p1, p0, Lcom/google/android/material/materialswitch/MaterialSwitch;->trackDrawable:Landroid/graphics/drawable/Drawable;

    iget-object p2, p0, Landroidx/appcompat/widget/SwitchCompat;->mTrackTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-static {p1, v8, p2}, Lcom/google/android/material/drawable/DrawableUtils;->createTintableMutatedDrawableIfNeeded(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/materialswitch/MaterialSwitch;->trackDrawable:Landroid/graphics/drawable/Drawable;

    iget-object p1, p0, Lcom/google/android/material/materialswitch/MaterialSwitch;->trackDecorationDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {p1, v5, v0}, Lcom/google/android/material/drawable/DrawableUtils;->createTintableMutatedDrawableIfNeeded(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/materialswitch/MaterialSwitch;->trackDecorationDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/google/android/material/materialswitch/MaterialSwitch;->updateDrawableTints()V

    iget-object p1, p0, Lcom/google/android/material/materialswitch/MaterialSwitch;->trackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_2

    iget-object p2, p0, Lcom/google/android/material/materialswitch/MaterialSwitch;->trackDecorationDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_2

    new-instance p1, Landroid/graphics/drawable/LayerDrawable;

    new-array p2, v1, [Landroid/graphics/drawable/Drawable;

    iget-object p3, p0, Lcom/google/android/material/materialswitch/MaterialSwitch;->trackDrawable:Landroid/graphics/drawable/Drawable;

    aput-object p3, p2, v9

    iget-object p3, p0, Lcom/google/android/material/materialswitch/MaterialSwitch;->trackDecorationDrawable:Landroid/graphics/drawable/Drawable;

    aput-object p3, p2, v7

    invoke-direct {p1, p2}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/google/android/material/materialswitch/MaterialSwitch;->trackDecorationDrawable:Landroid/graphics/drawable/Drawable;

    :goto_0
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->requestLayout()V

    :cond_4
    iget-object p2, p0, Landroidx/appcompat/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_5

    invoke-virtual {p2, v6}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_5
    iput-object p1, p0, Landroidx/appcompat/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p2

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Landroidx/appcompat/widget/SwitchCompat;->mTrackOnDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Landroidx/appcompat/widget/SwitchCompat;->mTrackOffDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :cond_6
    iput-object p1, p0, Landroidx/appcompat/widget/SwitchCompat;->mTrackOnDrawable:Landroid/graphics/drawable/Drawable;

    iput-object p1, p0, Landroidx/appcompat/widget/SwitchCompat;->mTrackOffDrawable:Landroid/graphics/drawable/Drawable;

    :goto_1
    iget-object p2, p0, Landroidx/appcompat/widget/SwitchCompat;->mTrackOnDrawable:Landroid/graphics/drawable/Drawable;

    const p3, 0x101009e

    const v0, 0x10100a0

    filled-new-array {p3, v0}, [I

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    iget-object p2, p0, Landroidx/appcompat/widget/SwitchCompat;->mTrackOffDrawable:Landroid/graphics/drawable/Drawable;

    const v0, -0x10100a0

    filled-new-array {p3, v0}, [I

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_7
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->requestLayout()V

    return-void
.end method

.method public static setInterpolatedDrawableTintIfPossible(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;[I[IF)V
    .locals 1

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p2

    invoke-virtual {p1, p3, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    invoke-static {p2, p1, p4}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final invalidate()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/material/materialswitch/MaterialSwitch;->updateDrawableTints()V

    invoke-super {p0}, Landroid/widget/CompoundButton;->invalidate()V

    return-void
.end method

.method public final onCreateDrawableState(I)[I
    .locals 6

    add-int/lit8 p1, p1, 0x1

    invoke-super {p0, p1}, Landroidx/appcompat/widget/SwitchCompat;->onCreateDrawableState(I)[I

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/material/materialswitch/MaterialSwitch;->thumbIconDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/material/materialswitch/MaterialSwitch;->STATE_SET_WITH_ICON:[I

    invoke-static {p1, v0}, Landroid/widget/CompoundButton;->mergeDrawableStates([I[I)[I

    :cond_0
    array-length v0, p1

    new-array v0, v0, [I

    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_2

    aget v4, p1, v2

    const v5, 0x10100a0

    if-eq v4, v5, :cond_1

    add-int/lit8 v5, v3, 0x1

    aput v4, v0, v3

    move v3, v5

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iput-object v0, p0, Lcom/google/android/material/materialswitch/MaterialSwitch;->currentStateUnchecked:[I

    invoke-static {p1}, Lcom/google/android/material/drawable/DrawableUtils;->getCheckedState([I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/materialswitch/MaterialSwitch;->currentStateChecked:[I

    return-object p1
.end method

.method public final updateDrawableTints()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/material/materialswitch/MaterialSwitch;->thumbTintList:Landroid/content/res/ColorStateList;

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/google/android/material/materialswitch/MaterialSwitch;->thumbIconTintList:Landroid/content/res/ColorStateList;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/material/materialswitch/MaterialSwitch;->trackTintList:Landroid/content/res/ColorStateList;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/material/materialswitch/MaterialSwitch;->trackDecorationTintList:Landroid/content/res/ColorStateList;

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget v1, p0, Landroidx/appcompat/widget/SwitchCompat;->mThumbPosition:F

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/google/android/material/materialswitch/MaterialSwitch;->thumbDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/google/android/material/materialswitch/MaterialSwitch;->currentStateUnchecked:[I

    iget-object v4, p0, Lcom/google/android/material/materialswitch/MaterialSwitch;->currentStateChecked:[I

    invoke-static {v2, v0, v3, v4, v1}, Lcom/google/android/material/materialswitch/MaterialSwitch;->setInterpolatedDrawableTintIfPossible(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;[I[IF)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/material/materialswitch/MaterialSwitch;->thumbIconTintList:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/google/android/material/materialswitch/MaterialSwitch;->thumbIconDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/google/android/material/materialswitch/MaterialSwitch;->currentStateUnchecked:[I

    iget-object v4, p0, Lcom/google/android/material/materialswitch/MaterialSwitch;->currentStateChecked:[I

    invoke-static {v2, v0, v3, v4, v1}, Lcom/google/android/material/materialswitch/MaterialSwitch;->setInterpolatedDrawableTintIfPossible(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;[I[IF)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/material/materialswitch/MaterialSwitch;->trackTintList:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/google/android/material/materialswitch/MaterialSwitch;->trackDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/google/android/material/materialswitch/MaterialSwitch;->currentStateUnchecked:[I

    iget-object v4, p0, Lcom/google/android/material/materialswitch/MaterialSwitch;->currentStateChecked:[I

    invoke-static {v2, v0, v3, v4, v1}, Lcom/google/android/material/materialswitch/MaterialSwitch;->setInterpolatedDrawableTintIfPossible(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;[I[IF)V

    :cond_3
    iget-object v0, p0, Lcom/google/android/material/materialswitch/MaterialSwitch;->trackDecorationTintList:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/google/android/material/materialswitch/MaterialSwitch;->trackDecorationDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/google/android/material/materialswitch/MaterialSwitch;->currentStateUnchecked:[I

    iget-object p0, p0, Lcom/google/android/material/materialswitch/MaterialSwitch;->currentStateChecked:[I

    invoke-static {v2, v0, v3, p0, v1}, Lcom/google/android/material/materialswitch/MaterialSwitch;->setInterpolatedDrawableTintIfPossible(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;[I[IF)V

    :cond_4
    return-void
.end method
