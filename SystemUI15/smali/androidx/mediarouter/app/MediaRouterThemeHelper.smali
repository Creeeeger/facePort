.class public final Landroidx/mediarouter/app/MediaRouterThemeHelper;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createThemedDialogContext(Landroid/content/Context;IZ)Landroid/content/Context;
    .locals 0

    if-nez p1, :cond_1

    if-nez p2, :cond_0

    const p1, 0x7f0401ea

    goto :goto_0

    :cond_0
    const p1, 0x7f040037

    :goto_0
    invoke-static {p1, p0}, Landroidx/mediarouter/app/MediaRouterThemeHelper;->getThemeResource(ILandroid/content/Context;)I

    move-result p1

    :cond_1
    new-instance p2, Landroid/view/ContextThemeWrapper;

    invoke-direct {p2, p0, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    const p0, 0x7f040468

    invoke-static {p0, p2}, Landroidx/mediarouter/app/MediaRouterThemeHelper;->getThemeResource(ILandroid/content/Context;)I

    move-result p0

    if-eqz p0, :cond_2

    new-instance p0, Landroid/view/ContextThemeWrapper;

    invoke-static {p2}, Landroidx/mediarouter/app/MediaRouterThemeHelper;->getRouterThemeId(Landroid/content/Context;)I

    move-result p1

    invoke-direct {p0, p2, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    move-object p2, p0

    :cond_2
    return-object p2
.end method

.method public static createThemedDialogStyle(Landroid/content/Context;)I
    .locals 1

    const v0, 0x7f040468

    invoke-static {v0, p0}, Landroidx/mediarouter/app/MediaRouterThemeHelper;->getThemeResource(ILandroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Landroidx/mediarouter/app/MediaRouterThemeHelper;->getRouterThemeId(Landroid/content/Context;)I

    move-result v0

    :cond_0
    return v0
.end method

.method public static getControllerColor(ILandroid/content/Context;)I
    .locals 4

    const v0, 0x7f040159

    invoke-static {p1, p0, v0}, Landroidx/mediarouter/app/MediaRouterThemeHelper;->getThemeColor(Landroid/content/Context;II)I

    move-result p0

    const/4 p1, -0x1

    invoke-static {p1, p0}, Landroidx/core/graphics/ColorUtils;->calculateContrast(II)D

    move-result-wide v0

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    cmpl-double p0, v0, v2

    if-ltz p0, :cond_0

    return p1

    :cond_0
    const/high16 p0, -0x22000000

    return p0
.end method

.method public static getDisabledAlpha(Landroid/content/Context;)F
    .locals 3

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    const v1, 0x1010033

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result p0

    goto :goto_0

    :cond_0
    const/high16 p0, 0x3f000000    # 0.5f

    :goto_0
    return p0
.end method

.method public static getIconByAttrId(ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 2

    filled-new-array {p0}, [I

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {p1}, Landroidx/mediarouter/app/MediaRouterThemeHelper;->isLightTheme(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f06048b

    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :cond_0
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0
.end method

.method public static getRouterThemeId(Landroid/content/Context;)I
    .locals 3

    invoke-static {p0}, Landroidx/mediarouter/app/MediaRouterThemeHelper;->isLightTheme(Landroid/content/Context;)Z

    move-result v0

    const/high16 v1, -0x22000000

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-static {v2, p0}, Landroidx/mediarouter/app/MediaRouterThemeHelper;->getControllerColor(ILandroid/content/Context;)I

    move-result p0

    if-ne p0, v1, :cond_0

    const p0, 0x7f1405eb

    goto :goto_0

    :cond_0
    const p0, 0x7f1405ec

    goto :goto_0

    :cond_1
    invoke-static {v2, p0}, Landroidx/mediarouter/app/MediaRouterThemeHelper;->getControllerColor(ILandroid/content/Context;)I

    move-result p0

    if-ne p0, v1, :cond_2

    const p0, 0x7f1405ed

    goto :goto_0

    :cond_2
    const p0, 0x7f1405ea

    :goto_0
    return p0
.end method

.method public static getThemeColor(Landroid/content/Context;II)I
    .locals 2

    if-eqz p1, :cond_0

    filled-new-array {p2}, [I

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v0, :cond_0

    return v0

    :cond_0
    new-instance p1, Landroid/util/TypedValue;

    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p2, p1, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget p2, p1, Landroid/util/TypedValue;->resourceId:I

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    iget p1, p1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    return p0

    :cond_1
    iget p0, p1, Landroid/util/TypedValue;->data:I

    return p0
.end method

.method public static getThemeResource(ILandroid/content/Context;)I
    .locals 2

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p1, p0, v0, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    iget p0, v0, Landroid/util/TypedValue;->resourceId:I

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isLightTheme(Landroid/content/Context;)Z
    .locals 3

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    const v1, 0x7f040354

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    iget p0, v0, Landroid/util/TypedValue;->data:I

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public static setIndeterminateProgressBarColor(Landroid/content/Context;Landroid/widget/ProgressBar;)V
    .locals 1

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->isIndeterminate()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Landroidx/mediarouter/app/MediaRouterThemeHelper;->isLightTheme(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f060483

    goto :goto_0

    :cond_1
    const v0, 0x7f060482

    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, p0, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method
