.class public final Lcom/android/systemui/controls/ui/SecControlViewHolder;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public actionIcon:Lcom/android/systemui/controls/ui/view/ControlsActionButton;

.field public animationView:Lcom/airbnb/lottie/LottieAnimationView;

.field public batteryLayout:Landroid/widget/LinearLayout;

.field public final context:Landroid/content/Context;

.field public controlsUtil:Lcom/android/systemui/controls/util/ControlsUtil;

.field public final icon:Landroid/widget/ImageView;

.field public final layout:Landroid/view/ViewGroup;

.field public layoutType:I

.field public overlayCustomIcon:Landroid/widget/ImageView;

.field public secBehavior:Lcom/android/systemui/controls/ui/SecBehavior;

.field public secControlActionCoordinator:Lcom/android/systemui/controls/ui/SecControlActionCoordinator;

.field public final status:Landroid/widget/TextView;

.field public statusIcon:Landroid/widget/ImageView;

.field public final subtitle:Landroid/widget/TextView;

.field public final title:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/controls/ui/SecControlViewHolder$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/controls/ui/SecControlViewHolder$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/controls/ui/SecControlViewHolder;->layout:Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/android/systemui/controls/ui/SecControlViewHolder;->icon:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/android/systemui/controls/ui/SecControlViewHolder;->status:Landroid/widget/TextView;

    iput-object p4, p0, Lcom/android/systemui/controls/ui/SecControlViewHolder;->title:Landroid/widget/TextView;

    iput-object p5, p0, Lcom/android/systemui/controls/ui/SecControlViewHolder;->subtitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/controls/ui/SecControlViewHolder;->context:Landroid/content/Context;

    return-void
.end method

.method public static synthetic getAnimationView$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getOverlayCustomIcon$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getStatusIcon$annotations()V
    .locals 0

    return-void
.end method

.method public static isSecBehavior(ILandroid/service/controls/templates/ControlTemplate;I)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_0

    goto :goto_1

    :cond_0
    sget-object v2, Landroid/service/controls/templates/ControlTemplate;->NO_TEMPLATE:Landroid/service/controls/templates/ControlTemplate;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    instance-of v2, p1, Landroid/service/controls/templates/ThumbnailTemplate;

    if-eqz v2, :cond_2

    :goto_0
    move v0, v1

    goto :goto_1

    :cond_2
    const/16 v2, 0x32

    if-ne p2, v2, :cond_3

    goto :goto_1

    :cond_3
    instance-of v2, p1, Landroid/service/controls/templates/ToggleTemplate;

    if-eqz v2, :cond_4

    goto :goto_0

    :cond_4
    instance-of v2, p1, Landroid/service/controls/templates/StatelessTemplate;

    if-eqz v2, :cond_5

    goto :goto_0

    :cond_5
    instance-of v2, p1, Landroid/service/controls/templates/ToggleRangeTemplate;

    if-eqz v2, :cond_6

    goto :goto_0

    :cond_6
    instance-of v1, p1, Landroid/service/controls/templates/TemperatureControlTemplate;

    if-eqz v1, :cond_7

    check-cast p1, Landroid/service/controls/templates/TemperatureControlTemplate;

    invoke-virtual {p1}, Landroid/service/controls/templates/TemperatureControlTemplate;->getTemplate()Landroid/service/controls/templates/ControlTemplate;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/android/systemui/controls/ui/SecControlViewHolder;->isSecBehavior(ILandroid/service/controls/templates/ControlTemplate;I)Z

    move-result v0

    :cond_7
    :goto_1
    return v0
.end method


# virtual methods
.method public final initClipLayerAndBaseLayer()Lkotlin/Pair;
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/controls/ui/SecControlViewHolder;->layout:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/systemui/controls/ui/SecControlViewHolder;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/controls/ui/SecControlViewHolder;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x7f080723

    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p0, p0, Lcom/android/systemui/controls/ui/SecControlViewHolder;->layout:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/RippleDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    const v0, 0x7f0a029c

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/RippleDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/ClipDrawable;

    const v1, 0x7f0a013f

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/RippleDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/GradientDrawable;

    new-instance v1, Lkotlin/Pair;

    invoke-direct {v1, v0, p0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method

.method public final initialize(Lcom/android/systemui/controls/ui/SecControlActionCoordinator;Lcom/android/systemui/controls/util/ControlsUtil;I)V
    .locals 5

    iput-object p1, p0, Lcom/android/systemui/controls/ui/SecControlViewHolder;->secControlActionCoordinator:Lcom/android/systemui/controls/ui/SecControlActionCoordinator;

    iput-object p2, p0, Lcom/android/systemui/controls/ui/SecControlViewHolder;->controlsUtil:Lcom/android/systemui/controls/util/ControlsUtil;

    const/4 p1, 0x1

    if-ne p3, p1, :cond_0

    iget-object p2, p0, Lcom/android/systemui/controls/ui/SecControlViewHolder;->layout:Landroid/view/ViewGroup;

    const v0, 0x7f0a016b

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/android/systemui/controls/ui/SecControlViewHolder;->statusIcon:Landroid/widget/ImageView;

    iget-object p2, p0, Lcom/android/systemui/controls/ui/SecControlViewHolder;->layout:Landroid/view/ViewGroup;

    const v0, 0x7f0a016d

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/android/systemui/controls/ui/SecControlViewHolder;->batteryLayout:Landroid/widget/LinearLayout;

    goto :goto_0

    :cond_0
    new-instance p2, Lcom/android/systemui/controls/ui/view/ControlsActionButton;

    iget-object v0, p0, Lcom/android/systemui/controls/ui/SecControlViewHolder;->layout:Landroid/view/ViewGroup;

    const v1, 0x7f0a09e4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-direct {p2, v0}, Lcom/android/systemui/controls/ui/view/ControlsActionButton;-><init>(Landroid/view/ViewStub;)V

    iput-object p2, p0, Lcom/android/systemui/controls/ui/SecControlViewHolder;->actionIcon:Lcom/android/systemui/controls/ui/view/ControlsActionButton;

    iget-object p2, p0, Lcom/android/systemui/controls/ui/SecControlViewHolder;->layout:Landroid/view/ViewGroup;

    const v0, 0x7f0a0c1f

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewStub;

    const v0, 0x7f0d00c0

    invoke-virtual {p2, v0}, Landroid/view/ViewStub;->setLayoutResource(I)V

    invoke-virtual {p2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/android/systemui/controls/ui/SecControlViewHolder;->statusIcon:Landroid/widget/ImageView;

    :goto_0
    iput p3, p0, Lcom/android/systemui/controls/ui/SecControlViewHolder;->layoutType:I

    iget-object p2, p0, Lcom/android/systemui/controls/ui/SecControlViewHolder;->layout:Landroid/view/ViewGroup;

    const p3, 0x7f0a08a0

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/android/systemui/controls/ui/SecControlViewHolder;->overlayCustomIcon:Landroid/widget/ImageView;

    sget-boolean p2, Lcom/android/systemui/BasicRune;->CONTROLS_SAMSUNG_STYLE_FOLD:Z

    if-eqz p2, :cond_8

    iget-object p2, p0, Lcom/android/systemui/controls/ui/SecControlViewHolder;->controlsUtil:Lcom/android/systemui/controls/util/ControlsUtil;

    if-eqz p2, :cond_8

    iget-object p2, p0, Lcom/android/systemui/controls/ui/SecControlViewHolder;->context:Landroid/content/Context;

    invoke-static {p2}, Lcom/android/systemui/controls/util/ControlsUtil;->isFoldDelta(Landroid/content/Context;)Z

    move-result p2

    if-ne p2, p1, :cond_8

    iget-object p2, p0, Lcom/android/systemui/controls/ui/SecControlViewHolder;->layout:Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f070250

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    const v0, 0x7f07027c

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iget v1, p0, Lcom/android/systemui/controls/ui/SecControlViewHolder;->layoutType:I

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    if-eq v1, p1, :cond_1

    goto :goto_1

    :cond_1
    const p1, 0x7f070245

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    const v1, 0x7f070243

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    iget-object v1, p0, Lcom/android/systemui/controls/ui/SecControlViewHolder;->statusIcon:Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    sget-object v3, Lcom/android/systemui/controls/util/ControlsUtil;->Companion:Lcom/android/systemui/controls/util/ControlsUtil$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, p1, p1}, Lcom/android/systemui/controls/util/ControlsUtil$Companion;->setSize(Landroid/view/View;II)V

    :cond_2
    iget-object p1, p0, Lcom/android/systemui/controls/ui/SecControlViewHolder;->subtitle:Landroid/widget/TextView;

    invoke-virtual {p1, v2, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_1

    :cond_3
    const p1, 0x7f07023a

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    const v1, 0x7f070274

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iget-object v1, p0, Lcom/android/systemui/controls/ui/SecControlViewHolder;->actionIcon:Lcom/android/systemui/controls/ui/view/ControlsActionButton;

    if-eqz v1, :cond_5

    iget-object v3, v1, Lcom/android/systemui/controls/ui/view/ControlsActionButton;->actionIcon:Landroid/widget/ImageView;

    if-eqz v3, :cond_4

    sget-object v4, Lcom/android/systemui/controls/util/ControlsUtil;->Companion:Lcom/android/systemui/controls/util/ControlsUtil$Companion;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, p1, p1}, Lcom/android/systemui/controls/util/ControlsUtil$Companion;->setSize(Landroid/view/View;II)V

    :cond_4
    iget-object v1, v1, Lcom/android/systemui/controls/ui/view/ControlsActionButton;->actionIconProgress:Landroid/widget/ProgressBar;

    if-eqz v1, :cond_5

    sget-object v3, Lcom/android/systemui/controls/util/ControlsUtil;->Companion:Lcom/android/systemui/controls/util/ControlsUtil$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, p1, p1}, Lcom/android/systemui/controls/util/ControlsUtil$Companion;->setSize(Landroid/view/View;II)V

    :cond_5
    iget-object p1, p0, Lcom/android/systemui/controls/ui/SecControlViewHolder;->statusIcon:Landroid/widget/ImageView;

    if-eqz p1, :cond_6

    sget-object v1, Lcom/android/systemui/controls/util/ControlsUtil;->Companion:Lcom/android/systemui/controls/util/ControlsUtil$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, p2, p2}, Lcom/android/systemui/controls/util/ControlsUtil$Companion;->setSize(Landroid/view/View;II)V

    :cond_6
    iget-object p1, p0, Lcom/android/systemui/controls/ui/SecControlViewHolder;->subtitle:Landroid/widget/TextView;

    invoke-virtual {p1, v2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    :goto_1
    sget-object p1, Lcom/android/systemui/controls/util/ControlsUtil;->Companion:Lcom/android/systemui/controls/util/ControlsUtil$Companion;

    iget-object p2, p0, Lcom/android/systemui/controls/ui/SecControlViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2, p3, p3}, Lcom/android/systemui/controls/util/ControlsUtil$Companion;->setSize(Landroid/view/View;II)V

    iget-object p1, p0, Lcom/android/systemui/controls/ui/SecControlViewHolder;->overlayCustomIcon:Landroid/widget/ImageView;

    if-eqz p1, :cond_7

    invoke-static {p1, p3, p3}, Lcom/android/systemui/controls/util/ControlsUtil$Companion;->setSize(Landroid/view/View;II)V

    :cond_7
    iget-object p1, p0, Lcom/android/systemui/controls/ui/SecControlViewHolder;->status:Landroid/widget/TextView;

    invoke-virtual {p1, v2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object p0, p0, Lcom/android/systemui/controls/ui/SecControlViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p0, v2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_8
    return-void
.end method
