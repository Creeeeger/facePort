.class public final Lcom/android/wm/shell/common/pip/PipAppOpsListener$mAppOpsChangedListener$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/app/AppOpsManager$OnOpChangedListener;


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/common/pip/PipAppOpsListener;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/common/pip/PipAppOpsListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/common/pip/PipAppOpsListener$mAppOpsChangedListener$1;->this$0:Lcom/android/wm/shell/common/pip/PipAppOpsListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onOpChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    :try_start_0
    iget-object p1, p0, Lcom/android/wm/shell/common/pip/PipAppOpsListener$mAppOpsChangedListener$1;->this$0:Lcom/android/wm/shell/common/pip/PipAppOpsListener;

    iget-object p1, p1, Lcom/android/wm/shell/common/pip/PipAppOpsListener;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/wm/shell/common/pip/PipUtils;->getTopPipActivity(Landroid/content/Context;)Landroid/util/Pair;

    move-result-object p1

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/content/ComponentName;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    iget-object v1, p0, Lcom/android/wm/shell/common/pip/PipAppOpsListener$mAppOpsChangedListener$1;->this$0:Lcom/android/wm/shell/common/pip/PipAppOpsListener;

    iget-object v1, v1, Lcom/android/wm/shell/common/pip/PipAppOpsListener;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2, p1}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/wm/shell/common/pip/PipAppOpsListener$mAppOpsChangedListener$1;->this$0:Lcom/android/wm/shell/common/pip/PipAppOpsListener;

    iget-object v0, v0, Lcom/android/wm/shell/common/pip/PipAppOpsListener;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v1, 0x43

    invoke-virtual {v0, v1, p1, p2}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/wm/shell/common/pip/PipAppOpsListener$mAppOpsChangedListener$1;->this$0:Lcom/android/wm/shell/common/pip/PipAppOpsListener;

    iget-object p2, p1, Lcom/android/wm/shell/common/pip/PipAppOpsListener;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v0, Lcom/android/wm/shell/common/pip/PipAppOpsListener$mAppOpsChangedListener$1$1;

    invoke-direct {v0, p1}, Lcom/android/wm/shell/common/pip/PipAppOpsListener$mAppOpsChangedListener$1$1;-><init>(Lcom/android/wm/shell/common/pip/PipAppOpsListener;)V

    check-cast p2, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {p2, v0}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object p0, p0, Lcom/android/wm/shell/common/pip/PipAppOpsListener$mAppOpsChangedListener$1;->this$0:Lcom/android/wm/shell/common/pip/PipAppOpsListener;

    iget-object p1, p0, Lcom/android/wm/shell/common/pip/PipAppOpsListener;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget-object p0, p0, Lcom/android/wm/shell/common/pip/PipAppOpsListener;->mAppOpsChangedListener:Lcom/android/wm/shell/common/pip/PipAppOpsListener$mAppOpsChangedListener$1;

    invoke-virtual {p1, p0}, Landroid/app/AppOpsManager;->stopWatchingMode(Landroid/app/AppOpsManager$OnOpChangedListener;)V

    :cond_1
    :goto_0
    return-void
.end method
