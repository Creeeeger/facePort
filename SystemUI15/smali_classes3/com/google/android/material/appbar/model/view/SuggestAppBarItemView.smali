.class public Lcom/google/android/material/appbar/model/view/SuggestAppBarItemView;
.super Lcom/google/android/material/appbar/model/view/SuggestAppBarView;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field private rootView:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1, v0}, Lcom/google/android/material/appbar/model/view/SuggestAppBarItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/material/appbar/model/view/SuggestAppBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0}, Lcom/google/android/material/appbar/model/view/SuggestAppBarItemView;->inflate()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/appbar/model/view/SuggestAppBarItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private final getButtonTextColor()I
    .locals 6

    sget-object v0, Landroidx/appcompat/util/theme/SeslThemeResourceHelper;->Companion:Landroidx/appcompat/util/theme/SeslThemeResourceHelper$Companion;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    new-instance v1, Landroidx/appcompat/util/theme/resource/SeslThemeResourceColor$OpenThemeResourceColor;

    new-instance v2, Landroidx/appcompat/util/theme/resource/SeslThemeResourceColor$ThemeResourceColor;

    const v3, 0x7f0606fc

    const v4, 0x7f0606fd

    invoke-direct {v2, v3, v4}, Landroidx/appcompat/util/theme/resource/SeslThemeResourceColor$ThemeResourceColor;-><init>(II)V

    new-instance v4, Landroidx/appcompat/util/theme/resource/SeslThemeResourceColor$ThemeResourceColor;

    const v5, 0x7f0606fe

    invoke-direct {v4, v3, v5}, Landroidx/appcompat/util/theme/resource/SeslThemeResourceColor$ThemeResourceColor;-><init>(II)V

    invoke-direct {v1, v2, v4}, Landroidx/appcompat/util/theme/resource/SeslThemeResourceColor$OpenThemeResourceColor;-><init>(Landroidx/appcompat/util/theme/resource/SeslThemeResourceColor$ThemeResourceColor;Landroidx/appcompat/util/theme/resource/SeslThemeResourceColor$ThemeResourceColor;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, v1}, Landroidx/appcompat/util/theme/SeslThemeResourceHelper$Companion;->getColorInt(Landroid/content/Context;Landroidx/appcompat/util/theme/resource/SeslThemeResourceColor$OpenThemeResourceColor;)I

    move-result p0

    return p0
.end method

.method private final getSuggestButtonTextColor()I
    .locals 6

    sget-object v0, Landroidx/appcompat/util/theme/SeslThemeResourceHelper;->Companion:Landroidx/appcompat/util/theme/SeslThemeResourceHelper$Companion;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    new-instance v1, Landroidx/appcompat/util/theme/resource/SeslThemeResourceColor$OpenThemeResourceColor;

    new-instance v2, Landroidx/appcompat/util/theme/resource/SeslThemeResourceColor$ThemeResourceColor;

    const v3, 0x7f060809

    const v4, 0x7f06080a

    invoke-direct {v2, v3, v4}, Landroidx/appcompat/util/theme/resource/SeslThemeResourceColor$ThemeResourceColor;-><init>(II)V

    new-instance v4, Landroidx/appcompat/util/theme/resource/SeslThemeResourceColor$ThemeResourceColor;

    const v5, 0x7f06080b

    invoke-direct {v4, v3, v5}, Landroidx/appcompat/util/theme/resource/SeslThemeResourceColor$ThemeResourceColor;-><init>(II)V

    invoke-direct {v1, v2, v4}, Landroidx/appcompat/util/theme/resource/SeslThemeResourceColor$OpenThemeResourceColor;-><init>(Landroidx/appcompat/util/theme/resource/SeslThemeResourceColor$ThemeResourceColor;Landroidx/appcompat/util/theme/resource/SeslThemeResourceColor$ThemeResourceColor;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, v1}, Landroidx/appcompat/util/theme/SeslThemeResourceHelper$Companion;->getColorInt(Landroid/content/Context;Landroidx/appcompat/util/theme/resource/SeslThemeResourceColor$OpenThemeResourceColor;)I

    move-result p0

    return p0
.end method

.method private final updateButton(Landroid/widget/Button;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/material/appbar/model/view/SuggestAppBarItemView;->getButtonTextColor()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setTextColor(I)V

    const p0, 0x7f071130

    sget-object v0, Lcom/google/android/material/util/MaxFontScaleRatio;->MEDIUM:Lcom/google/android/material/util/MaxFontScaleRatio;

    invoke-static {p1, p0, v0}, Lcom/google/android/material/util/SeslTextViewHelperKt;->checkMaxFontScale(Landroid/widget/TextView;ILcom/google/android/material/util/MaxFontScaleRatio;)V

    return-void
.end method


# virtual methods
.method public final getRootView()Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/appbar/model/view/SuggestAppBarItemView;->rootView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public inflate()V
    .locals 4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d03df

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-nez v0, :cond_1

    return-void

    :cond_1
    const v1, 0x7f0a0b00

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    const v3, 0x7f08121c

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    iput-object v1, p0, Lcom/google/android/material/appbar/model/view/SuggestAppBarItemView;->rootView:Landroid/view/ViewGroup;

    const v1, 0x7f0a0ccf

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Lcom/google/android/material/appbar/model/view/SuggestAppBarView;->setTitleView(Landroid/widget/TextView;)V

    const v1, 0x7f0a0cce

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    if-eqz v1, :cond_2

    invoke-static {}, Landroidx/reflect/widget/SeslHoverPopupWindowReflector;->getField_TYPE_NONE()I

    move-result v2

    invoke-static {v1, v2}, Landroidx/reflect/view/SeslViewReflector;->semSetHoverPopupType(Landroid/view/View;I)V

    move-object v2, v1

    :cond_2
    invoke-virtual {p0, v2}, Lcom/google/android/material/appbar/model/view/SuggestAppBarView;->setClose(Landroid/widget/ImageButton;)V

    const v1, 0x7f0a0ccc

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {p0, v1}, Lcom/google/android/material/appbar/model/view/SuggestAppBarView;->setBottomLayout(Landroid/view/ViewGroup;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/material/appbar/model/view/SuggestAppBarItemView;->updateResource(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public final setRootView(Landroid/view/ViewGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/appbar/model/view/SuggestAppBarItemView;->rootView:Landroid/view/ViewGroup;

    return-void
.end method

.method public final updateButtons(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroid/widget/Button;",
            ">;)V"
        }
    .end annotation

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-direct {p0, v0}, Lcom/google/android/material/appbar/model/view/SuggestAppBarItemView;->updateButton(Landroid/widget/Button;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public updateResource(Landroid/content/Context;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/google/android/material/appbar/model/view/SuggestAppBarView;->updateResource(Landroid/content/Context;)V

    invoke-static {p1}, Landroidx/appcompat/util/SeslMisc;->isLightTheme(Landroid/content/Context;)Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/appbar/model/view/SuggestAppBarItemView;->rootView:Landroid/view/ViewGroup;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    if-eqz v0, :cond_1

    const v0, 0x7f060873

    goto :goto_0

    :cond_1
    const v0, 0x7f060874

    :goto_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result p1

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/material/appbar/model/view/SuggestAppBarView;->getTitleView()Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_2

    const v0, 0x7f07113e

    sget-object v1, Lcom/google/android/material/util/MaxFontScaleRatio;->SMALL:Lcom/google/android/material/util/MaxFontScaleRatio;

    invoke-static {p1, v0, v1}, Lcom/google/android/material/util/SeslTextViewHelperKt;->checkMaxFontScale(Landroid/widget/TextView;ILcom/google/android/material/util/MaxFontScaleRatio;)V

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/material/appbar/model/view/SuggestAppBarView;->getButtons()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/model/view/SuggestAppBarItemView;->updateButtons(Ljava/util/List;)V

    return-void
.end method
