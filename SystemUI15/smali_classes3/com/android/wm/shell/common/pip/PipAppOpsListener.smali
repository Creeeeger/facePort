.class public final Lcom/android/wm/shell/common/pip/PipAppOpsListener;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mAppOpsChangedListener:Lcom/android/wm/shell/common/pip/PipAppOpsListener$mAppOpsChangedListener$1;

.field public final mAppOpsManager:Landroid/app/AppOpsManager;

.field public final mCallback:Lcom/android/wm/shell/common/pip/PipAppOpsListener$Callback;

.field public final mContext:Landroid/content/Context;

.field public final mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/common/pip/PipAppOpsListener$Callback;Lcom/android/wm/shell/common/ShellExecutor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/common/pip/PipAppOpsListener;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/wm/shell/common/pip/PipAppOpsListener;->mCallback:Lcom/android/wm/shell/common/pip/PipAppOpsListener$Callback;

    iput-object p3, p0, Lcom/android/wm/shell/common/pip/PipAppOpsListener;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    const-string p2, "appops"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AppOpsManager;

    iput-object p1, p0, Lcom/android/wm/shell/common/pip/PipAppOpsListener;->mAppOpsManager:Landroid/app/AppOpsManager;

    new-instance p1, Lcom/android/wm/shell/common/pip/PipAppOpsListener$mAppOpsChangedListener$1;

    invoke-direct {p1, p0}, Lcom/android/wm/shell/common/pip/PipAppOpsListener$mAppOpsChangedListener$1;-><init>(Lcom/android/wm/shell/common/pip/PipAppOpsListener;)V

    iput-object p1, p0, Lcom/android/wm/shell/common/pip/PipAppOpsListener;->mAppOpsChangedListener:Lcom/android/wm/shell/common/pip/PipAppOpsListener$mAppOpsChangedListener$1;

    return-void
.end method
