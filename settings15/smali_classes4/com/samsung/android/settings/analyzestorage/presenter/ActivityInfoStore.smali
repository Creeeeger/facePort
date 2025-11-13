.class public final Lcom/samsung/android/settings/analyzestorage/presenter/ActivityInfoStore;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static context:Landroid/content/Context;

.field public static final instanceMap:Landroid/util/SparseArray;


# instance fields
.field public final activityListenerList:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/analyzestorage/presenter/ActivityInfoStore;->instanceMap:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/ActivityInfoStore;->activityListenerList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final getActivityResultLauncher()Landroidx/activity/result/ActivityResultLauncher;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/ActivityInfoStore;->activityListenerList:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/ActivityInfoStore;->activityListenerList:Ljava/util/List;

    invoke-static {p0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v0

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/analyzestorage/presenter/ActivityInfo$ActivityInfoListener;

    invoke-interface {p0}, Lcom/samsung/android/settings/analyzestorage/presenter/ActivityInfo$ActivityInfoListener;->getActivityResultLauncher()Landroidx/activity/result/ActivityResultLauncher;

    move-result-object p0

    return-object p0
.end method

.method public final getFragmentActivity()Landroidx/fragment/app/FragmentActivity;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/ActivityInfoStore;->activityListenerList:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/ActivityInfoStore;->activityListenerList:Ljava/util/List;

    invoke-static {p0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v0

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/analyzestorage/presenter/ActivityInfo$ActivityInfoListener;

    invoke-interface {p0}, Lcom/samsung/android/settings/analyzestorage/presenter/ActivityInfo$ActivityInfoListener;->getActivity()Landroid/app/Activity;

    move-result-object p0

    check-cast p0, Landroidx/fragment/app/FragmentActivity;

    return-object p0
.end method

.method public final register(Lcom/samsung/android/settings/analyzestorage/presenter/ActivityInfo$ActivityInfoListener;)V
    .locals 2

    const-string v0, "activityListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/ActivityInfoStore;->activityListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/analyzestorage/presenter/ActivityInfo$ActivityInfoListener;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/ActivityInfoStore;->activityListenerList:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
