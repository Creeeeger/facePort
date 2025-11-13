.class public final synthetic Landroid/appwidget/AppWidgetManager$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/widget/RemoteViews;

.field public final synthetic blacklist f$1:Lcom/android/internal/util/FunctionalUtils$RemoteExceptionIgnoringConsumer;

.field public final synthetic blacklist f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/widget/RemoteViews;Lcom/android/internal/util/FunctionalUtils$RemoteExceptionIgnoringConsumer;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/appwidget/AppWidgetManager$$ExternalSyntheticLambda8;->f$0:Landroid/widget/RemoteViews;

    iput-object p2, p0, Landroid/appwidget/AppWidgetManager$$ExternalSyntheticLambda8;->f$1:Lcom/android/internal/util/FunctionalUtils$RemoteExceptionIgnoringConsumer;

    iput-object p3, p0, Landroid/appwidget/AppWidgetManager$$ExternalSyntheticLambda8;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .locals 3

    iget-object v0, p0, Landroid/appwidget/AppWidgetManager$$ExternalSyntheticLambda8;->f$0:Landroid/widget/RemoteViews;

    iget-object v1, p0, Landroid/appwidget/AppWidgetManager$$ExternalSyntheticLambda8;->f$1:Lcom/android/internal/util/FunctionalUtils$RemoteExceptionIgnoringConsumer;

    iget-object v2, p0, Landroid/appwidget/AppWidgetManager$$ExternalSyntheticLambda8;->f$2:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/appwidget/AppWidgetManager;->lambda$tryAdapterConversion$4(Landroid/widget/RemoteViews;Lcom/android/internal/util/FunctionalUtils$RemoteExceptionIgnoringConsumer;Ljava/lang/String;)V

    return-void
.end method
