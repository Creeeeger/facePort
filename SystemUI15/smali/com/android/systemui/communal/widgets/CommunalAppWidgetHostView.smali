.class public final Lcom/android/systemui/communal/widgets/CommunalAppWidgetHostView;
.super Landroid/appwidget/AppWidgetHostView;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/animation/LaunchableView;


# instance fields
.field public final cornerRadiusEnforcementOutline:Lcom/android/systemui/communal/widgets/CommunalAppWidgetHostView$cornerRadiusEnforcementOutline$1;

.field public final enforcedCornerRadius:F

.field public final enforcedRectangle:Landroid/graphics/Rect;

.field public final launchableViewDelegate:Lcom/android/systemui/animation/LaunchableViewDelegate;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/appwidget/AppWidgetHostView;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/android/systemui/animation/LaunchableViewDelegate;

    new-instance v1, Lcom/android/systemui/communal/widgets/CommunalAppWidgetHostView$launchableViewDelegate$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/communal/widgets/CommunalAppWidgetHostView$launchableViewDelegate$1;-><init>(Lcom/android/systemui/communal/widgets/CommunalAppWidgetHostView;)V

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/animation/LaunchableViewDelegate;-><init>(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    iput-object v0, p0, Lcom/android/systemui/communal/widgets/CommunalAppWidgetHostView;->launchableViewDelegate:Lcom/android/systemui/animation/LaunchableViewDelegate;

    sget-object v0, Lcom/android/systemui/communal/widgets/RoundedCornerEnforcement;->INSTANCE:Lcom/android/systemui/communal/widgets/RoundedCornerEnforcement;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v0, Landroidx/core/os/BuildCompat;->$r8$clinit:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f070209

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Lcom/android/systemui/communal/widgets/CommunalAppWidgetHostView;->enforcedCornerRadius:F

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/communal/widgets/CommunalAppWidgetHostView;->enforcedRectangle:Landroid/graphics/Rect;

    new-instance p1, Lcom/android/systemui/communal/widgets/CommunalAppWidgetHostView$cornerRadiusEnforcementOutline$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/communal/widgets/CommunalAppWidgetHostView$cornerRadiusEnforcementOutline$1;-><init>(Lcom/android/systemui/communal/widgets/CommunalAppWidgetHostView;)V

    iput-object p1, p0, Lcom/android/systemui/communal/widgets/CommunalAppWidgetHostView;->cornerRadiusEnforcementOutline:Lcom/android/systemui/communal/widgets/CommunalAppWidgetHostView$cornerRadiusEnforcementOutline$1;

    return-void
.end method

.method public static final synthetic access$setVisibility$s2086896434(Lcom/android/systemui/communal/widgets/CommunalAppWidgetHostView;I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetHostView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public final onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/appwidget/AppWidgetHostView;->onLayout(ZIIII)V

    iget p1, p0, Lcom/android/systemui/communal/widgets/CommunalAppWidgetHostView;->enforcedCornerRadius:F

    const/4 p2, 0x0

    cmpg-float p1, p1, p2

    const/4 p2, 0x0

    if-gtz p1, :cond_0

    sget-object p1, Landroid/view/ViewOutlineProvider;->BACKGROUND:Landroid/view/ViewOutlineProvider;

    invoke-virtual {p0, p1}, Landroid/appwidget/AppWidgetHostView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    invoke-virtual {p0, p2}, Landroid/appwidget/AppWidgetHostView;->setClipToOutline(Z)V

    goto/16 :goto_3

    :cond_0
    sget-object p1, Lcom/android/systemui/communal/widgets/RoundedCornerEnforcement;->INSTANCE:Lcom/android/systemui/communal/widgets/RoundedCornerEnforcement;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0, p1}, Lcom/android/systemui/communal/widgets/RoundedCornerEnforcement;->accumulateViewsWithId(Landroid/view/View;Ljava/util/List;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p3

    const/4 p4, 0x1

    if-ne p3, p4, :cond_1

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    if-lez p1, :cond_2

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lcom/android/systemui/communal/widgets/RoundedCornerEnforcement;->findUndefinedBackground(Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_2
    move-object p1, p0

    :goto_0
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p3

    const p5, 0x7f0a013f

    if-ne p3, p5, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getClipToOutline()Z

    move-result p3

    if-eqz p3, :cond_3

    goto :goto_2

    :cond_3
    iget-object p3, p0, Lcom/android/systemui/communal/widgets/CommunalAppWidgetHostView;->enforcedRectangle:Landroid/graphics/Rect;

    iput p2, p3, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p5

    iput p5, p3, Landroid/graphics/Rect;->right:I

    iput p2, p3, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p2

    iput p2, p3, Landroid/graphics/Rect;->bottom:I

    :goto_1
    if-eq p1, p0, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p5

    invoke-virtual {p3, p2, p5}, Landroid/graphics/Rect;->offset(II)V

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcom/android/systemui/communal/widgets/CommunalAppWidgetHostView;->cornerRadiusEnforcementOutline:Lcom/android/systemui/communal/widgets/CommunalAppWidgetHostView$cornerRadiusEnforcementOutline$1;

    invoke-virtual {p0, p1}, Landroid/appwidget/AppWidgetHostView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    invoke-virtual {p0, p4}, Landroid/appwidget/AppWidgetHostView;->setClipToOutline(Z)V

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->invalidateOutline()V

    goto :goto_3

    :cond_5
    :goto_2
    sget-object p1, Landroid/view/ViewOutlineProvider;->BACKGROUND:Landroid/view/ViewOutlineProvider;

    invoke-virtual {p0, p1}, Landroid/appwidget/AppWidgetHostView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    invoke-virtual {p0, p2}, Landroid/appwidget/AppWidgetHostView;->setClipToOutline(Z)V

    :goto_3
    return-void
.end method

.method public final setAppWidget(ILandroid/appwidget/AppWidgetProviderInfo;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetHostView;->setAppWidget(ILandroid/appwidget/AppWidgetProviderInfo;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1, p1, p1}, Landroid/appwidget/AppWidgetHostView;->setPadding(IIII)V

    return-void
.end method

.method public final setShouldBlockVisibilityChanges(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/communal/widgets/CommunalAppWidgetHostView;->launchableViewDelegate:Lcom/android/systemui/animation/LaunchableViewDelegate;

    invoke-virtual {p0, p1}, Lcom/android/systemui/animation/LaunchableViewDelegate;->setShouldBlockVisibilityChanges(Z)V

    return-void
.end method

.method public final setVisibility(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/communal/widgets/CommunalAppWidgetHostView;->launchableViewDelegate:Lcom/android/systemui/animation/LaunchableViewDelegate;

    invoke-virtual {p0, p1}, Lcom/android/systemui/animation/LaunchableViewDelegate;->setVisibility(I)V

    return-void
.end method
