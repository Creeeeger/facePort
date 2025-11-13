.class public final Lcom/android/systemui/communal/widgets/SmartspaceAppWidgetHostView;
.super Landroid/appwidget/AppWidgetHostView;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/animation/LaunchableView;


# instance fields
.field public final launchableViewDelegate:Lcom/android/systemui/animation/LaunchableViewDelegate;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/appwidget/AppWidgetHostView;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcom/android/systemui/animation/LaunchableViewDelegate;

    new-instance v0, Lcom/android/systemui/communal/widgets/SmartspaceAppWidgetHostView$launchableViewDelegate$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/communal/widgets/SmartspaceAppWidgetHostView$launchableViewDelegate$1;-><init>(Lcom/android/systemui/communal/widgets/SmartspaceAppWidgetHostView;)V

    invoke-direct {p1, p0, v0}, Lcom/android/systemui/animation/LaunchableViewDelegate;-><init>(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    iput-object p1, p0, Lcom/android/systemui/communal/widgets/SmartspaceAppWidgetHostView;->launchableViewDelegate:Lcom/android/systemui/animation/LaunchableViewDelegate;

    return-void
.end method

.method public static final synthetic access$setVisibility$s2086896434(Lcom/android/systemui/communal/widgets/SmartspaceAppWidgetHostView;I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetHostView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public final getRemoteContextEnsuringCorrectCachedApkPath()Landroid/content/Context;
    .locals 0

    const/4 p0, 0x0

    return-object p0
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

    iget-object p0, p0, Lcom/android/systemui/communal/widgets/SmartspaceAppWidgetHostView;->launchableViewDelegate:Lcom/android/systemui/animation/LaunchableViewDelegate;

    invoke-virtual {p0, p1}, Lcom/android/systemui/animation/LaunchableViewDelegate;->setShouldBlockVisibilityChanges(Z)V

    return-void
.end method

.method public final setVisibility(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/communal/widgets/SmartspaceAppWidgetHostView;->launchableViewDelegate:Lcom/android/systemui/animation/LaunchableViewDelegate;

    invoke-virtual {p0, p1}, Lcom/android/systemui/animation/LaunchableViewDelegate;->setVisibility(I)V

    return-void
.end method
