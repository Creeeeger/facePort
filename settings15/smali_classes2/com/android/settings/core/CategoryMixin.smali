.class public final Lcom/android/settings/core/CategoryMixin;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;


# static fields
.field public static final sTileDenylist:Landroid/util/ArraySet;


# instance fields
.field public mCategoriesUpdateTaskCount:I

.field public final mCategoryListeners:Ljava/util/List;

.field public final mContext:Landroid/content/Context;

.field public mFirstOnResume:Z

.field public final mPackageReceiver:Lcom/android/settings/core/CategoryMixin$PackageReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/settings/core/CategoryMixin;->sTileDenylist:Landroid/util/ArraySet;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/settings/core/CategoryMixin$PackageReceiver;

    invoke-direct {v0, p0}, Lcom/android/settings/core/CategoryMixin$PackageReceiver;-><init>(Lcom/android/settings/core/CategoryMixin;)V

    iput-object v0, p0, Lcom/android/settings/core/CategoryMixin;->mPackageReceiver:Lcom/android/settings/core/CategoryMixin$PackageReceiver;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/core/CategoryMixin;->mCategoryListeners:Ljava/util/List;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/core/CategoryMixin;->mFirstOnResume:Z

    iput-object p1, p0, Lcom/android/settings/core/CategoryMixin;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/android/settings/dashboard/CategoryManager;->sInstance:Lcom/android/settings/dashboard/CategoryManager;

    if-eqz v0, :cond_0

    instance-of p1, p1, Lcom/android/settings/homepage/SettingsHomepageActivity;

    if-eqz p1, :cond_0

    const-string p1, "CategoryMixin"

    const-string v0, "Maybe Settings Relaunch, set mFirstOnResume false"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/settings/core/CategoryMixin;->mFirstOnResume:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public onCategoriesChanged(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/settings/core/CategoryMixin;->mCategoryListeners:Ljava/util/List;

    new-instance v0, Lcom/android/settings/core/CategoryMixin$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/android/settings/core/CategoryMixin$$ExternalSyntheticLambda0;-><init>(Ljava/util/Set;)V

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onPause()V
    .locals 1
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    iget-object v0, p0, Lcom/android/settings/core/CategoryMixin;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/core/CategoryMixin;->mPackageReceiver:Lcom/android/settings/core/CategoryMixin$PackageReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onResume()V
    .locals 3
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/core/CategoryMixin;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/core/CategoryMixin;->mPackageReceiver:Lcom/android/settings/core/CategoryMixin$PackageReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-boolean v0, p0, Lcom/android/settings/core/CategoryMixin;->mFirstOnResume:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/core/CategoryMixin;->mContext:Landroid/content/Context;

    instance-of v0, v0, Lcom/android/settings/homepage/SettingsHomepageActivity;

    if-eqz v0, :cond_0

    const-string v0, "CategoryMixin"

    const-string v2, "Skip categories update"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v1, p0, Lcom/android/settings/core/CategoryMixin;->mFirstOnResume:Z

    return-void

    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/settings/core/CategoryMixin;->updateCategories(Z)V

    return-void
.end method

.method public final updateCategories(Z)V
    .locals 2

    iget v0, p0, Lcom/android/settings/core/CategoryMixin;->mCategoriesUpdateTaskCount:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    new-instance v0, Lcom/android/settings/core/CategoryMixin$CategoriesUpdateTask;

    invoke-direct {v0, p0}, Lcom/android/settings/core/CategoryMixin$CategoriesUpdateTask;-><init>(Lcom/android/settings/core/CategoryMixin;)V

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method
