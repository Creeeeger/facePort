.class public interface abstract Landroid/appwidget/AppWidgetHost$AppWidgetHostListener;
.super Ljava/lang/Object;
.source "AppWidgetHost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/appwidget/AppWidgetHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AppWidgetHostListener"
.end annotation


# virtual methods
.method public abstract blacklist onUpdateProviderInfo(Landroid/appwidget/AppWidgetProviderInfo;)V
.end method

.method public abstract blacklist onViewDataChanged(I)V
.end method

.method public abstract blacklist updateAppWidget(Landroid/widget/RemoteViews;)V
.end method

.method public blacklist updateAppWidgetDeferred(Ljava/lang/String;I)V
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    invoke-interface {v1, p1, p2}, Lcom/android/internal/appwidget/IAppWidgetService;->getAppWidgetViews(Ljava/lang/String;I)Landroid/widget/RemoteViews;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "AppWidgetHost"

    const-string/jumbo v3, "updateAppWidgetDeferred: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    invoke-interface {p0, v0}, Landroid/appwidget/AppWidgetHost$AppWidgetHostListener;->updateAppWidget(Landroid/widget/RemoteViews;)V

    return-void
.end method
