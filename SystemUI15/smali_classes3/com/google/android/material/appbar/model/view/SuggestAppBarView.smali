.class public Lcom/google/android/material/appbar/model/view/SuggestAppBarView;
.super Lcom/google/android/material/appbar/model/view/AppBarView;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field private bottomLayout:Landroid/view/ViewGroup;

.field private final buttons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/Button;",
            ">;"
        }
    .end annotation
.end field

.field private close:Landroid/widget/ImageButton;

.field private model:Lcom/google/android/material/appbar/model/SuggestAppBarModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/material/appbar/model/SuggestAppBarModel<",
            "+",
            "Lcom/google/android/material/appbar/model/view/SuggestAppBarView;",
            ">;"
        }
    .end annotation
.end field

.field private titleView:Landroid/widget/TextView;


# direct methods
.method public static synthetic $r8$lambda$fJm3iHT4ZB7Lw1WSd03z2tJAV-s(Lcom/google/android/material/appbar/model/AppBarModel$OnClickListener;Lcom/google/android/material/appbar/model/view/SuggestAppBarView;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/material/appbar/model/view/SuggestAppBarView;->setCloseClickListener$lambda$4$lambda$3(Lcom/google/android/material/appbar/model/AppBarModel$OnClickListener;Lcom/google/android/material/appbar/model/view/SuggestAppBarView;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wsqYA_PvK0yf0H1q8MO7SXz0h5Q(Lcom/google/android/material/appbar/model/ButtonModel;Lcom/google/android/material/appbar/model/view/SuggestAppBarView;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/material/appbar/model/view/SuggestAppBarView;->generateButton$lambda$9$lambda$8(Lcom/google/android/material/appbar/model/ButtonModel;Lcom/google/android/material/appbar/model/view/SuggestAppBarView;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1, v0}, Lcom/google/android/material/appbar/model/view/SuggestAppBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/material/appbar/model/view/AppBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/appbar/model/view/SuggestAppBarView;->buttons:Ljava/util/List;

    invoke-virtual {p0}, Lcom/google/android/material/appbar/model/view/SuggestAppBarView;->inflate()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/appbar/model/view/SuggestAppBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private final addMargin()V
    .locals 4

    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07112f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v1, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p0, p0, Lcom/google/android/material/appbar/model/view/SuggestAppBarView;->bottomLayout:Landroid/view/ViewGroup;

    if-eqz p0, :cond_0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private final generateButton(Lcom/google/android/material/appbar/model/ButtonModel;I)Landroid/widget/Button;
    .locals 4

    new-instance v0, Landroid/widget/Button;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iget-object p2, p1, Lcom/google/android/material/appbar/model/ButtonModel;->text:Ljava/lang/String;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p1, Lcom/google/android/material/appbar/model/ButtonModel;->contentDescription:Ljava/lang/String;

    if-eqz p2, :cond_0

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    new-instance p2, Lcom/google/android/material/appbar/model/view/SuggestAppBarView$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {p2, p1, p0, v1}, Lcom/google/android/material/appbar/model/view/SuggestAppBarView$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Lcom/google/android/material/appbar/model/view/SuggestAppBarView;I)V

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method private static final generateButton$lambda$9$lambda$8(Lcom/google/android/material/appbar/model/ButtonModel;Lcom/google/android/material/appbar/model/view/SuggestAppBarView;Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/appbar/model/ButtonModel;->clickListener:Lcom/google/android/material/appbar/model/AppBarModel$OnClickListener;

    if-eqz p0, :cond_0

    iget-object p1, p1, Lcom/google/android/material/appbar/model/view/SuggestAppBarView;->model:Lcom/google/android/material/appbar/model/SuggestAppBarModel;

    invoke-interface {p0}, Lcom/google/android/material/appbar/model/AppBarModel$OnClickListener;->onClick()V

    :cond_0
    return-void
.end method

.method private final getAppBarSuggestTitleColor(Landroid/content/Context;)I
    .locals 5

    sget-object p0, Landroidx/appcompat/util/theme/SeslThemeResourceHelper;->Companion:Landroidx/appcompat/util/theme/SeslThemeResourceHelper$Companion;

    new-instance v0, Landroidx/appcompat/util/theme/resource/SeslThemeResourceColor$OpenThemeResourceColor;

    new-instance v1, Landroidx/appcompat/util/theme/resource/SeslThemeResourceColor$ThemeResourceColor;

    const v2, 0x7f0606c1

    const v3, 0x7f0606c2

    invoke-direct {v1, v2, v3}, Landroidx/appcompat/util/theme/resource/SeslThemeResourceColor$ThemeResourceColor;-><init>(II)V

    new-instance v3, Landroidx/appcompat/util/theme/resource/SeslThemeResourceColor$ThemeResourceColor;

    const v4, 0x7f0606c3

    invoke-direct {v3, v2, v4}, Landroidx/appcompat/util/theme/resource/SeslThemeResourceColor$ThemeResourceColor;-><init>(II)V

    invoke-direct {v0, v1, v3}, Landroidx/appcompat/util/theme/resource/SeslThemeResourceColor$OpenThemeResourceColor;-><init>(Landroidx/appcompat/util/theme/resource/SeslThemeResourceColor$ThemeResourceColor;Landroidx/appcompat/util/theme/resource/SeslThemeResourceColor$ThemeResourceColor;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v0}, Landroidx/appcompat/util/theme/SeslThemeResourceHelper$Companion;->getColorInt(Landroid/content/Context;Landroidx/appcompat/util/theme/resource/SeslThemeResourceColor$OpenThemeResourceColor;)I

    move-result p0

    return p0
.end method

.method private final getCloseDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 5

    sget-object p0, Landroidx/appcompat/util/theme/SeslThemeResourceHelper;->Companion:Landroidx/appcompat/util/theme/SeslThemeResourceHelper$Companion;

    new-instance v0, Landroidx/appcompat/util/theme/resource/SeslThemeResourceDrawable$OpenThemeResourceDrawable;

    new-instance v1, Landroidx/appcompat/util/theme/resource/SeslThemeResourceDrawable$ThemeResourceDrawable;

    const v2, 0x7f08110b

    const v3, 0x7f08110c

    invoke-direct {v1, v2, v3}, Landroidx/appcompat/util/theme/resource/SeslThemeResourceDrawable$ThemeResourceDrawable;-><init>(II)V

    new-instance v2, Landroidx/appcompat/util/theme/resource/SeslThemeResourceDrawable$ThemeResourceDrawable;

    const v3, 0x7f08110e

    const v4, 0x7f08110d

    invoke-direct {v2, v3, v4}, Landroidx/appcompat/util/theme/resource/SeslThemeResourceDrawable$ThemeResourceDrawable;-><init>(II)V

    invoke-direct {v0, v1, v2}, Landroidx/appcompat/util/theme/resource/SeslThemeResourceDrawable$OpenThemeResourceDrawable;-><init>(Landroidx/appcompat/util/theme/resource/SeslThemeResourceDrawable$ThemeResourceDrawable;Landroidx/appcompat/util/theme/resource/SeslThemeResourceDrawable$ThemeResourceDrawable;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, p1}, Landroidx/appcompat/util/theme/resource/SeslThemeResourceDrawable$OpenThemeResourceDrawable;->getDrawable(Landroid/content/Context;)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method private static final setCloseClickListener$lambda$4$lambda$3(Lcom/google/android/material/appbar/model/AppBarModel$OnClickListener;Lcom/google/android/material/appbar/model/view/SuggestAppBarView;Landroid/view/View;)V
    .locals 0

    if-eqz p0, :cond_0

    iget-object p1, p1, Lcom/google/android/material/appbar/model/view/SuggestAppBarView;->model:Lcom/google/android/material/appbar/model/SuggestAppBarModel;

    invoke-interface {p0}, Lcom/google/android/material/appbar/model/AppBarModel$OnClickListener;->onClick()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final getBottomLayout()Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/appbar/model/view/SuggestAppBarView;->bottomLayout:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public final getButtons()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/widget/Button;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/material/appbar/model/view/SuggestAppBarView;->buttons:Ljava/util/List;

    return-object p0
.end method

.method public final getClose()Landroid/widget/ImageButton;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/appbar/model/view/SuggestAppBarView;->close:Landroid/widget/ImageButton;

    return-object p0
.end method

.method public final getTitleView()Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/appbar/model/view/SuggestAppBarView;->titleView:Landroid/widget/TextView;

    return-object p0
.end method

.method public inflate()V
    .locals 3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d03dd

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
    const v1, 0x7f0a0ccf

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/google/android/material/appbar/model/view/SuggestAppBarView;->titleView:Landroid/widget/TextView;

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
    iput-object v2, p0, Lcom/google/android/material/appbar/model/view/SuggestAppBarView;->close:Landroid/widget/ImageButton;

    const v1, 0x7f0a0ccc

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/google/android/material/appbar/model/view/SuggestAppBarView;->bottomLayout:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/material/appbar/model/view/SuggestAppBarView;->updateResource(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public final setBottomLayout(Landroid/view/ViewGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/appbar/model/view/SuggestAppBarView;->bottomLayout:Landroid/view/ViewGroup;

    return-void
.end method

.method public final setButtonModules(Lcom/google/android/material/appbar/model/ButtonListModel;)V
    .locals 8

    iget-object v0, p0, Lcom/google/android/material/appbar/model/view/SuggestAppBarView;->bottomLayout:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/appbar/model/view/SuggestAppBarView;->buttons:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p1, Lcom/google/android/material/appbar/model/ButtonListModel;->buttonModels:Ljava/util/List;

    move-object v1, v0

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    if-ltz v2, :cond_5

    check-cast v3, Lcom/google/android/material/appbar/model/ButtonModel;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroidx/appcompat/util/SeslMisc;->isLightTheme(Landroid/content/Context;)Z

    move-result v5

    iget-object v6, p1, Lcom/google/android/material/appbar/model/ButtonListModel;->buttonStyle:Lcom/google/android/material/appbar/model/ButtonStyle;

    if-eqz v5, :cond_1

    iget v5, v6, Lcom/google/android/material/appbar/model/ButtonStyle;->defStyleRes:I

    goto :goto_1

    :cond_1
    iget v5, v6, Lcom/google/android/material/appbar/model/ButtonStyle;->defStyleResDark:I

    :goto_1
    invoke-direct {p0, v3, v5}, Lcom/google/android/material/appbar/model/view/SuggestAppBarView;->generateButton(Lcom/google/android/material/appbar/model/ButtonModel;I)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Button;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    if-le v6, v7, :cond_2

    const v6, 0x7f07112c

    goto :goto_2

    :cond_2
    const v6, 0x7f07112d

    :goto_2
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setMaxWidth(I)V

    if-eqz v2, :cond_3

    invoke-direct {p0}, Lcom/google/android/material/appbar/model/view/SuggestAppBarView;->addMargin()V

    :cond_3
    iget-object v2, p0, Lcom/google/android/material/appbar/model/view/SuggestAppBarView;->buttons:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/google/android/material/appbar/model/view/SuggestAppBarView;->bottomLayout:Landroid/view/ViewGroup;

    if-eqz v2, :cond_4

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_4
    move v2, v4

    goto :goto_0

    :cond_5
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwIndexOverflow()V

    const/4 p0, 0x0

    throw p0

    :cond_6
    return-void
.end method

.method public final setClose(Landroid/widget/ImageButton;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/appbar/model/view/SuggestAppBarView;->close:Landroid/widget/ImageButton;

    return-void
.end method

.method public final setCloseClickListener(Lcom/google/android/material/appbar/model/AppBarModel$OnClickListener;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/material/appbar/model/view/SuggestAppBarView;->close:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    new-instance v1, Lcom/google/android/material/appbar/model/view/SuggestAppBarView$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    invoke-direct {v1, p1, p0, v2}, Lcom/google/android/material/appbar/model/view/SuggestAppBarView$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Lcom/google/android/material/appbar/model/view/SuggestAppBarView;I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method public final setModel(Lcom/google/android/material/appbar/model/SuggestAppBarModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/material/appbar/model/SuggestAppBarModel<",
            "+",
            "Lcom/google/android/material/appbar/model/view/SuggestAppBarView;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/material/appbar/model/view/SuggestAppBarView;->model:Lcom/google/android/material/appbar/model/SuggestAppBarModel;

    return-void
.end method

.method public final setTitle(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/appbar/model/view/SuggestAppBarView;->titleView:Landroid/widget/TextView;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public final setTitleView(Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/appbar/model/view/SuggestAppBarView;->titleView:Landroid/widget/TextView;

    return-void
.end method

.method public updateResource(Landroid/content/Context;)V
    .locals 3

    invoke-static {p1}, Landroidx/appcompat/util/SeslMisc;->isLightTheme(Landroid/content/Context;)Z

    iget-object v0, p0, Lcom/google/android/material/appbar/model/view/SuggestAppBarView;->titleView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/google/android/material/appbar/model/view/SuggestAppBarView;->getAppBarSuggestTitleColor(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/appbar/model/view/SuggestAppBarView;->close:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f131146

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTooltipText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-direct {p0, p1}, Lcom/google/android/material/appbar/model/view/SuggestAppBarView;->getCloseDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method
