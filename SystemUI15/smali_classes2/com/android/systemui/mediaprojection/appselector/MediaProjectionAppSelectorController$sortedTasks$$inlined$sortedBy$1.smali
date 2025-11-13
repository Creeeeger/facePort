.class public final Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorController$sortedTasks$$inlined$sortedBy$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorController$sortedTasks$$inlined$sortedBy$1;->this$0:Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Lcom/android/systemui/mediaprojection/appselector/data/RecentTask;

    iget-object p1, p1, Lcom/android/systemui/mediaprojection/appselector/data/RecentTask;->topActivityComponent:Landroid/content/ComponentName;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorController$sortedTasks$$inlined$sortedBy$1;->this$0:Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorController;

    iget-object v1, v1, Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorController;->callerPackageName:Ljava/lang/String;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    check-cast p2, Lcom/android/systemui/mediaprojection/appselector/data/RecentTask;

    iget-object p2, p2, Lcom/android/systemui/mediaprojection/appselector/data/RecentTask;->topActivityComponent:Landroid/content/ComponentName;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorController$sortedTasks$$inlined$sortedBy$1;->this$0:Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorController;

    iget-object p0, p0, Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorController;->callerPackageName:Ljava/lang/String;

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {p1, p0}, Lkotlin/comparisons/ComparisonsKt__ComparisonsKt;->compareValues(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p0

    return p0
.end method
