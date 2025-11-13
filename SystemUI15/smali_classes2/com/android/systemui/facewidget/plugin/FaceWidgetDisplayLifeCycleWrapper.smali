.class public final Lcom/android/systemui/facewidget/plugin/FaceWidgetDisplayLifeCycleWrapper;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/plugins/keyguardstatusview/PluginDisplayLifeCycle;


# instance fields
.field public final mDisplayLifecycle:Lcom/android/systemui/keyguard/DisplayLifecycle;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/DisplayLifecycle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetDisplayLifeCycleWrapper;->mDisplayLifecycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

    return-void
.end method


# virtual methods
.method public final getDisplayMetrics()Landroid/util/DisplayMetrics;
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetDisplayLifeCycleWrapper;->mDisplayLifecycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/DisplayLifecycle;->getDisplay(I)Landroid/view/Display;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/DisplayLifecycle;->addDisplay(I)V

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mDisplayMetricsHash:Landroid/util/SparseArray;

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/DisplayMetrics;

    if-nez p0, :cond_1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "DisplayLifecycle"

    const-string v1, "getDisplayMetrics(%d) is null, return empty Point"

    invoke-static {v0, v1, p0}, Lcom/android/systemui/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p0, Landroid/util/DisplayMetrics;

    invoke-direct {p0}, Landroid/util/DisplayMetrics;-><init>()V

    :cond_1
    return-object p0
.end method

.method public final getRealSize()Landroid/graphics/Point;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetDisplayLifeCycleWrapper;->mDisplayLifecycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/DisplayLifecycle;->getRealSize()Landroid/graphics/Point;

    move-result-object p0

    return-object p0
.end method

.method public final isFolderOpened()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetDisplayLifeCycleWrapper;->mDisplayLifecycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

    iget-boolean p0, p0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mIsFolderOpened:Z

    return p0
.end method
