.class public final Lcom/android/wm/shell/draganddrop/SingleIntentAppResult;
.super Lcom/android/wm/shell/draganddrop/BaseAppResult;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mActionIcon:Landroid/graphics/drawable/Icon;

.field public final mAlwaysUseOptions:Z

.field public final mIntent:Landroid/content/Intent;

.field public final mResolveInfos:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/content/Intent;Ljava/util/List;Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$MultiInstanceBlockList;Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$MultiInstanceAllowList;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$MultiInstanceBlockList;",
            "Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$MultiInstanceAllowList;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/wm/shell/draganddrop/SingleIntentAppResult;-><init>(Landroid/content/Intent;Ljava/util/List;Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$MultiInstanceBlockList;Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$MultiInstanceAllowList;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;Ljava/util/List;Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$MultiInstanceBlockList;Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$MultiInstanceAllowList;Ljava/lang/String;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$MultiInstanceBlockList;",
            "Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$MultiInstanceAllowList;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/wm/shell/draganddrop/SingleIntentAppResult;-><init>(Landroid/content/Intent;Ljava/util/List;Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$MultiInstanceBlockList;Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$MultiInstanceAllowList;Ljava/lang/String;ZLandroid/graphics/drawable/Icon;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;Ljava/util/List;Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$MultiInstanceBlockList;Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$MultiInstanceAllowList;Ljava/lang/String;ZLandroid/graphics/drawable/Icon;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$MultiInstanceBlockList;",
            "Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$MultiInstanceAllowList;",
            "Ljava/lang/String;",
            "Z",
            "Landroid/graphics/drawable/Icon;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p3, p4, p5}, Lcom/android/wm/shell/draganddrop/BaseAppResult;-><init>(Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$MultiInstanceBlockList;Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$MultiInstanceAllowList;Ljava/lang/String;)V

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/android/wm/shell/draganddrop/SingleIntentAppResult;->mResolveInfos:Ljava/util/List;

    iput-object p1, p0, Lcom/android/wm/shell/draganddrop/SingleIntentAppResult;->mIntent:Landroid/content/Intent;

    invoke-interface {p3, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iput-boolean p6, p0, Lcom/android/wm/shell/draganddrop/SingleIntentAppResult;->mAlwaysUseOptions:Z

    iput-object p7, p0, Lcom/android/wm/shell/draganddrop/SingleIntentAppResult;->mActionIcon:Landroid/graphics/drawable/Icon;

    return-void
.end method


# virtual methods
.method public final getDragAppActivityInfo()Landroid/content/pm/ActivityInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/SingleIntentAppResult;->mResolveInfos:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/SingleIntentAppResult;->mResolveInfos:Ljava/util/List;

    const/4 v0, 0x0

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ResolveInfo;

    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    return-object p0
.end method

.method public final hasResizableResolveInfo()Z
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/SingleIntentAppResult;->mResolveInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/wm/shell/draganddrop/SingleIntentAppResult$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/draganddrop/SingleIntentAppResult$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/draganddrop/SingleIntentAppResult;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Optional;->isPresent()Z

    move-result p0

    return p0
.end method

.method public final hasResolveInfoInFullscreenOnly(Lcom/android/wm/shell/draganddrop/VisibleTasks;Z)Z
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/SingleIntentAppResult;->mResolveInfos:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1}, Lcom/android/wm/shell/draganddrop/VisibleTasks;->getFullscreenTasks()Ljava/util/List;

    move-result-object p1

    new-instance v1, Lcom/android/wm/shell/draganddrop/SingleIntentAppResult$$ExternalSyntheticLambda1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/android/wm/shell/draganddrop/SingleIntentAppResult$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/draganddrop/SingleIntentAppResult;Ljava/util/List;ZI)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public final isAlreadyRunningSingleInstanceTask(Lcom/android/wm/shell/draganddrop/VisibleTasks;Z)Z
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/SingleIntentAppResult;->mResolveInfos:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getVisibleTasks()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/android/wm/shell/draganddrop/VisibleTasks$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1}, Lcom/android/wm/shell/draganddrop/VisibleTasks$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/draganddrop/VisibleTasks;)V

    invoke-interface {v1, v2}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    new-instance p1, Lcom/android/wm/shell/draganddrop/SingleIntentAppResult$$ExternalSyntheticLambda1;

    const/4 v2, 0x1

    invoke-direct {p1, p0, v1, p2, v2}, Lcom/android/wm/shell/draganddrop/SingleIntentAppResult$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/draganddrop/SingleIntentAppResult;Ljava/util/List;ZI)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public final makeExecutableApp(Landroid/content/Context;ILcom/android/wm/shell/draganddrop/VisibleTasks;Z)Lcom/android/wm/shell/draganddrop/AppInfo;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/SingleIntentAppResult;->mResolveInfos:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p3, p2}, Lcom/android/wm/shell/draganddrop/VisibleTasks;->getTasksException(I)Ljava/util/List;

    move-result-object p2

    new-instance p3, Lcom/android/wm/shell/draganddrop/SingleIntentAppResult$$ExternalSyntheticLambda1;

    const/4 v1, 0x2

    invoke-direct {p3, p0, p2, p4, v1}, Lcom/android/wm/shell/draganddrop/SingleIntentAppResult$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/draganddrop/SingleIntentAppResult;Ljava/util/List;ZI)V

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    return-object p3

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/high16 p4, 0x18000000

    const/4 v1, 0x1

    if-le p2, v1, :cond_1

    iget-object p2, p0, Lcom/android/wm/shell/draganddrop/SingleIntentAppResult;->mIntent:Landroid/content/Intent;

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/android/wm/shell/draganddrop/DropResolverActivity;

    invoke-direct {v2, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, p4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string p1, "android.intent.extra.INTENT"

    invoke-virtual {v2, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string p2, "dropResolverActivity.extra.rlist"

    invoke-virtual {v2, p2, p1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    const-string p1, "dropResolverActivity.extra.supportsAlwaysUseOption"

    iget-boolean p0, p0, Lcom/android/wm/shell/draganddrop/SingleIntentAppResult;->mAlwaysUseOptions:Z

    invoke-virtual {v2, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    new-instance p0, Lcom/android/wm/shell/draganddrop/AppInfo;

    invoke-direct {p0, v2, p3, v1}, Lcom/android/wm/shell/draganddrop/AppInfo;-><init>(Landroid/content/Intent;Landroid/graphics/drawable/Drawable;Z)V

    return-object p0

    :cond_1
    iget-object p2, p0, Lcom/android/wm/shell/draganddrop/SingleIntentAppResult;->mIntent:Landroid/content/Intent;

    invoke-virtual {p2, p4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object p2, p0, Lcom/android/wm/shell/draganddrop/SingleIntentAppResult;->mIntent:Landroid/content/Intent;

    const/4 p3, 0x0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/content/pm/ResolveInfo;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iget-object p2, p4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p2}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/SingleIntentAppResult;->mActionIcon:Landroid/graphics/drawable/Icon;

    if-eqz p0, :cond_2

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_0

    :cond_2
    iget-object p0, p4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    :goto_0
    new-instance p1, Lcom/android/wm/shell/draganddrop/AppInfo;

    invoke-direct {p1, v0, p0, p3}, Lcom/android/wm/shell/draganddrop/AppInfo;-><init>(Landroid/content/Intent;Landroid/graphics/drawable/Drawable;Z)V

    return-object p1
.end method
