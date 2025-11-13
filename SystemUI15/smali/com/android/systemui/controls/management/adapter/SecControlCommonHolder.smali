.class public abstract Lcom/android/systemui/controls/management/adapter/SecControlCommonHolder;
.super Lcom/android/systemui/controls/management/adapter/SecHolder;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final canUseIconPredicate:Lcom/android/systemui/controls/ui/CanUseIconPredicate;

.field public final controlsUtil:Lcom/android/systemui/controls/util/ControlsUtil;

.field public final favorite:Landroid/widget/CheckBox;

.field public final favoriteCallback:Lkotlin/jvm/functions/Function2;

.field public final icon:Landroid/widget/ImageView;

.field public final overlayCustomIcon:Landroid/widget/ImageView;

.field public final removed:Landroid/widget/TextView;

.field public final title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;IILcom/android/systemui/controls/util/ControlsUtil;Lkotlin/jvm/functions/Function2;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "II",
            "Lcom/android/systemui/controls/util/ControlsUtil;",
            "Lkotlin/jvm/functions/Function2;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/controls/management/adapter/SecHolder;-><init>(Landroid/view/View;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p4, p0, Lcom/android/systemui/controls/management/adapter/SecControlCommonHolder;->controlsUtil:Lcom/android/systemui/controls/util/ControlsUtil;

    iput-object p5, p0, Lcom/android/systemui/controls/management/adapter/SecControlCommonHolder;->favoriteCallback:Lkotlin/jvm/functions/Function2;

    iget-object p5, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v0, 0x7f0a0505

    invoke-virtual {p5, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p5

    check-cast p5, Landroid/widget/ImageView;

    iput-object p5, p0, Lcom/android/systemui/controls/management/adapter/SecControlCommonHolder;->icon:Landroid/widget/ImageView;

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f0a0d34

    invoke-virtual {v0, v1}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget-object v1, Lcom/android/systemui/controls/util/ControlsUtil;->Companion:Lcom/android/systemui/controls/util/ControlsUtil$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v1, 0x7f070f52

    const v2, 0x3f8ccccd    # 1.1f

    invoke-static {v0, v1, v2}, Lcom/android/systemui/controls/util/ControlsUtil$Companion;->updateFontSize(Landroid/widget/TextView;IF)V

    iput-object v0, p0, Lcom/android/systemui/controls/management/adapter/SecControlCommonHolder;->title:Landroid/widget/TextView;

    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v4, 0x7f0a0c0e

    invoke-virtual {v3, v4}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-static {v3, v1, v2}, Lcom/android/systemui/controls/util/ControlsUtil$Companion;->updateFontSize(Landroid/widget/TextView;IF)V

    iput-object v3, p0, Lcom/android/systemui/controls/management/adapter/SecControlCommonHolder;->removed:Landroid/widget/TextView;

    new-instance v1, Lcom/android/systemui/controls/ui/CanUseIconPredicate;

    invoke-direct {v1, p2}, Lcom/android/systemui/controls/ui/CanUseIconPredicate;-><init>(I)V

    iput-object v1, p0, Lcom/android/systemui/controls/management/adapter/SecControlCommonHolder;->canUseIconPredicate:Lcom/android/systemui/controls/ui/CanUseIconPredicate;

    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2, p3}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewStub;

    const p3, 0x7f0d00a8

    invoke-virtual {p2, p3}, Landroid/view/ViewStub;->setLayoutResource(I)V

    invoke-virtual {p2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/CheckBox;

    iput-object p2, p0, Lcom/android/systemui/controls/management/adapter/SecControlCommonHolder;->favorite:Landroid/widget/CheckBox;

    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const p3, 0x7f0a08a0

    invoke-virtual {p2, p3}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/android/systemui/controls/management/adapter/SecControlCommonHolder;->overlayCustomIcon:Landroid/widget/ImageView;

    sget-boolean p3, Lcom/android/systemui/BasicRune;->CONTROLS_SAMSUNG_STYLE_FOLD:Z

    if-eqz p3, :cond_1

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/android/systemui/controls/util/ControlsUtil;->isFoldDelta(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p3, 0x7f070241

    invoke-virtual {p0, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    invoke-static {p1, p3, p3}, Lcom/android/systemui/controls/util/ControlsUtil$Companion;->setSize(Landroid/view/View;II)V

    const p1, 0x7f070250

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-static {p5, p1, p1}, Lcom/android/systemui/controls/util/ControlsUtil$Companion;->setSize(Landroid/view/View;II)V

    if-eqz p2, :cond_0

    invoke-static {p2, p1, p1}, Lcom/android/systemui/controls/util/ControlsUtil$Companion;->setSize(Landroid/view/View;II)V

    :cond_0
    const p1, 0x7f07027c

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    const/4 p1, 0x0

    invoke-virtual {v0, p1, p0}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v3, p1, p0}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_1
    return-void
.end method

.method public static synthetic getIcon$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getOverlayCustomIcon$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getRemoved$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getTitle$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final bindData(Lcom/android/systemui/controls/management/model/SecElementWrapper;)V
    .locals 11

    invoke-virtual {p0}, Lcom/android/systemui/controls/management/adapter/SecControlCommonHolder;->resetForReuse()V

    check-cast p1, Lcom/android/systemui/controls/ControlInterface;

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/controls/SecControlInterface;

    iget-object v1, p0, Lcom/android/systemui/controls/management/adapter/SecControlCommonHolder;->title:Landroid/widget/TextView;

    invoke-interface {p1}, Lcom/android/systemui/controls/ControlInterface;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-interface {p1}, Lcom/android/systemui/controls/ControlInterface;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/controls/management/adapter/SecControlCommonHolder;->setSubtitleText(Ljava/lang/CharSequence;)V

    invoke-interface {p1}, Lcom/android/systemui/controls/ControlInterface;->getFavorite()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/controls/management/adapter/SecControlCommonHolder;->updateFavorite(Z)V

    iget-object v1, p0, Lcom/android/systemui/controls/management/adapter/SecControlCommonHolder;->removed:Landroid/widget/TextView;

    invoke-interface {p1}, Lcom/android/systemui/controls/ControlInterface;->getRemoved()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f131067

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v2, ""

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/systemui/controls/management/adapter/SecControlCommonHolder;->favorite:Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/android/systemui/controls/management/adapter/SecControlCommonHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/controls/management/adapter/SecControlCommonHolder;->setContentDescription(Landroid/widget/CheckBox;Landroid/widget/TextView;)V

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v2, Lcom/android/systemui/controls/management/adapter/SecControlCommonHolder$bindData$1;

    invoke-direct {v2, p0, p1}, Lcom/android/systemui/controls/management/adapter/SecControlCommonHolder$bindData$1;-><init>(Lcom/android/systemui/controls/management/adapter/SecControlCommonHolder;Lcom/android/systemui/controls/ControlInterface;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-interface {p1}, Lcom/android/systemui/controls/ControlInterface;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-interface {p1}, Lcom/android/systemui/controls/ControlInterface;->getDeviceType()I

    move-result v2

    sget-object v3, Lcom/android/systemui/controls/ui/RenderInfo;->Companion:Lcom/android/systemui/controls/ui/RenderInfo$Companion;

    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x0

    invoke-static {v4, v1, v2, v3}, Lcom/android/systemui/controls/ui/RenderInfo$Companion;->lookup(Landroid/content/Context;Landroid/content/ComponentName;II)Lcom/android/systemui/controls/ui/RenderInfo;

    move-result-object v1

    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v4, p0, Lcom/android/systemui/controls/management/adapter/SecControlCommonHolder;->icon:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    invoke-interface {p1}, Lcom/android/systemui/controls/ControlInterface;->getCustomIcon()Landroid/graphics/drawable/Icon;

    move-result-object v4

    iget-object v6, p0, Lcom/android/systemui/controls/management/adapter/SecControlCommonHolder;->controlsUtil:Lcom/android/systemui/controls/util/ControlsUtil;

    if-eqz v4, :cond_6

    iget-object v7, p0, Lcom/android/systemui/controls/management/adapter/SecControlCommonHolder;->canUseIconPredicate:Lcom/android/systemui/controls/ui/CanUseIconPredicate;

    invoke-virtual {v7, v4}, Lcom/android/systemui/controls/ui/CanUseIconPredicate;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_1

    :cond_1
    move-object v4, v5

    :goto_1
    if-eqz v4, :cond_6

    iget-object v7, p0, Lcom/android/systemui/controls/management/adapter/SecControlCommonHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v7, v4}, Landroid/widget/ImageView;->setImageIcon(Landroid/graphics/drawable/Icon;)V

    invoke-interface {v0}, Lcom/android/systemui/controls/SecControlInterface;->getIconWithoutPadding()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/controls/management/adapter/SecControlCommonHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v4, v3, v3, v3, v3}, Landroid/widget/ImageView;->setPadding(IIII)V

    :cond_2
    invoke-interface {v0}, Lcom/android/systemui/controls/SecControlInterface;->getIconWithoutShadowBg()Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v4, v4, 0x30

    const/16 v7, 0x10

    if-ne v4, v7, :cond_5

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x7f08071e

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    sget-boolean v7, Lcom/android/systemui/BasicRune;->CONTROLS_SAMSUNG_STYLE_FOLD:Z

    if-eqz v7, :cond_4

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/android/systemui/controls/util/ControlsUtil;->isFoldDelta(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f070250

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    instance-of v8, v4, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v8, :cond_3

    move-object v8, v4

    check-cast v8, Landroid/graphics/drawable/BitmapDrawable;

    goto :goto_2

    :cond_3
    move-object v8, v5

    :goto_2
    if-eqz v8, :cond_4

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v8}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v8

    const/4 v10, 0x1

    invoke-static {v8, v7, v7, v10}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-direct {v4, v9, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    :cond_4
    iget-object v7, p0, Lcom/android/systemui/controls/management/adapter/SecControlCommonHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v7, v4}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_5
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_3

    :cond_6
    move-object v4, v5

    :goto_3
    if-nez v4, :cond_8

    iget-object v4, p0, Lcom/android/systemui/controls/management/adapter/SecControlCommonHolder;->icon:Landroid/widget/ImageView;

    iget-object v7, v1, Lcom/android/systemui/controls/ui/RenderInfo;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-interface {p1}, Lcom/android/systemui/controls/ControlInterface;->getDeviceType()I

    move-result p1

    const/16 v7, 0x34

    if-eq p1, v7, :cond_7

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    iget v1, v1, Lcom/android/systemui/controls/ui/RenderInfo;->foreground:I

    invoke-virtual {p1, v1, v7}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {v4, p1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    :cond_7
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_8
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/graphics/drawable/LayerDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    const v1, 0x7f0a013f

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0600be

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/controls/management/adapter/SecControlCommonHolder;->updateLottieIcon(Lcom/android/systemui/controls/SecControlInterface;)V

    invoke-interface {v0}, Lcom/android/systemui/controls/SecControlInterface;->getOverlayCustomIcon()Landroid/graphics/drawable/Icon;

    move-result-object p1

    if-eqz p1, :cond_b

    iget-object v0, p0, Lcom/android/systemui/controls/management/adapter/SecControlCommonHolder;->overlayCustomIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_9

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageIcon(Landroid/graphics/drawable/Icon;)V

    :cond_9
    iget-object p1, p0, Lcom/android/systemui/controls/management/adapter/SecControlCommonHolder;->overlayCustomIcon:Landroid/widget/ImageView;

    if-nez p1, :cond_a

    goto :goto_4

    :cond_a
    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_4
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_b
    if-nez v5, :cond_d

    iget-object p0, p0, Lcom/android/systemui/controls/management/adapter/SecControlCommonHolder;->overlayCustomIcon:Landroid/widget/ImageView;

    if-nez p0, :cond_c

    goto :goto_5

    :cond_c
    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_d
    :goto_5
    return-void
.end method

.method public resetForReuse()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/controls/management/adapter/SecControlCommonHolder;->icon:Landroid/widget/ImageView;

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object p0, p0, Lcom/android/systemui/controls/management/adapter/SecControlCommonHolder;->controlsUtil:Lcom/android/systemui/controls/util/ControlsUtil;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const p0, 0x7f07024d

    invoke-virtual {v1, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    invoke-virtual {v0, p0, p0, p0, p0}, Landroid/widget/ImageView;->setPadding(IIII)V

    return-void
.end method

.method public setContentDescription(Landroid/widget/CheckBox;Landroid/widget/TextView;)V
    .locals 0

    const/4 p0, 0x2

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setImportantForAccessibility(I)V

    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/CheckBox;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setSubtitleText(Ljava/lang/CharSequence;)V
    .locals 0

    return-void
.end method

.method public final updateFavorite(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/controls/management/adapter/SecControlCommonHolder;->favorite:Landroid/widget/CheckBox;

    invoke-virtual {p0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void
.end method

.method public updateLottieIcon(Lcom/android/systemui/controls/SecControlInterface;)V
    .locals 0

    return-void
.end method
