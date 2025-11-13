.class public final Lcom/android/systemui/controls/ui/PanelTaskViewController$stateCallback$1$onInitialized$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $options:Landroid/app/ActivityOptions;

.field public final synthetic this$0:Lcom/android/systemui/controls/ui/PanelTaskViewController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/ui/PanelTaskViewController;Landroid/app/ActivityOptions;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/ui/PanelTaskViewController$stateCallback$1$onInitialized$1;->this$0:Lcom/android/systemui/controls/ui/PanelTaskViewController;

    iput-object p2, p0, Lcom/android/systemui/controls/ui/PanelTaskViewController$stateCallback$1$onInitialized$1;->$options:Landroid/app/ActivityOptions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/controls/ui/PanelTaskViewController$stateCallback$1$onInitialized$1;->this$0:Lcom/android/systemui/controls/ui/PanelTaskViewController;

    iget-object v0, v0, Lcom/android/systemui/controls/ui/PanelTaskViewController;->activityContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0702a1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const/16 v1, 0x8

    new-array v2, v1, [F

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v1, :cond_0

    int-to-float v5, v0

    aput v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/controls/ui/PanelTaskViewController$stateCallback$1$onInitialized$1;->this$0:Lcom/android/systemui/controls/ui/PanelTaskViewController;

    iget-object v0, v0, Lcom/android/systemui/controls/ui/PanelTaskViewController;->taskView:Lcom/android/wm/shell/taskview/TaskView;

    new-instance v1, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v4, Landroid/graphics/drawable/shapes/RoundRectShape;

    const/4 v5, 0x0

    invoke-direct {v4, v2, v5, v5}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    invoke-direct {v1, v4}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/ShapeDrawable;->setTint(I)V

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/systemui/controls/ui/PanelTaskViewController$stateCallback$1$onInitialized$1;->this$0:Lcom/android/systemui/controls/ui/PanelTaskViewController;

    iget-object v0, v0, Lcom/android/systemui/controls/ui/PanelTaskViewController;->taskView:Lcom/android/wm/shell/taskview/TaskView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Landroid/view/SurfaceView;->setZOrderedOnTop(ZZ)Z

    iget-object v0, p0, Lcom/android/systemui/controls/ui/PanelTaskViewController$stateCallback$1$onInitialized$1;->this$0:Lcom/android/systemui/controls/ui/PanelTaskViewController;

    iget-object v0, v0, Lcom/android/systemui/controls/ui/PanelTaskViewController;->taskView:Lcom/android/wm/shell/taskview/TaskView;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setClipToOutline(Z)V

    iget-object v0, p0, Lcom/android/systemui/controls/ui/PanelTaskViewController$stateCallback$1$onInitialized$1;->this$0:Lcom/android/systemui/controls/ui/PanelTaskViewController;

    iget-object v1, v0, Lcom/android/systemui/controls/ui/PanelTaskViewController;->taskView:Lcom/android/wm/shell/taskview/TaskView;

    iget-object v2, v0, Lcom/android/systemui/controls/ui/PanelTaskViewController;->pendingIntent:Landroid/app/PendingIntent;

    iget-object v0, v0, Lcom/android/systemui/controls/ui/PanelTaskViewController;->fillInIntent:Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/systemui/controls/ui/PanelTaskViewController$stateCallback$1$onInitialized$1;->$options:Landroid/app/ActivityOptions;

    invoke-static {v1}, Lcom/android/systemui/util/ConvenienceExtensionsKt;->getBoundsOnScreen(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v1, v2, v0, p0, v3}, Lcom/android/wm/shell/taskview/TaskView;->startActivity(Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/app/ActivityOptions;Landroid/graphics/Rect;)V

    const-string p0, "PanelTaskViewController"

    const-string v0, "onInitialized - taskView.startActivity"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x1000

    const-string p0, "PanelTaskViewController - startActivity"

    invoke-static {v0, v1, p0}, Landroid/os/Trace;->instant(JLjava/lang/String;)V

    return-void
.end method
