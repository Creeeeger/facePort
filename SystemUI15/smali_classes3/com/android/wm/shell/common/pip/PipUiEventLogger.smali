.class public final Lcom/android/wm/shell/common/pip/PipUiEventLogger;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mPackageManager:Landroid/content/pm/PackageManager;

.field public mPackageName:Ljava/lang/String;

.field public mPackageUid:I

.field public final mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/wm/shell/common/pip/PipUiEventLogger$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/wm/shell/common/pip/PipUiEventLogger$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/logging/UiEventLogger;Landroid/content/pm/PackageManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/common/pip/PipUiEventLogger;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    iput-object p2, p0, Lcom/android/wm/shell/common/pip/PipUiEventLogger;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/wm/shell/common/pip/PipUiEventLogger;->mPackageUid:I

    return-void
.end method


# virtual methods
.method public final log(Lcom/android/wm/shell/common/pip/PipUiEventLogger$PipUiEventEnum;)V
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/common/pip/PipUiEventLogger;->mPackageName:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/wm/shell/common/pip/PipUiEventLogger;->mPackageUid:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/common/pip/PipUiEventLogger;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v1, p0, Lcom/android/wm/shell/common/pip/PipUiEventLogger;->mPackageUid:I

    iget-object p0, p0, Lcom/android/wm/shell/common/pip/PipUiEventLogger;->mPackageName:Ljava/lang/String;

    invoke-interface {v0, p1, v1, p0}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final setTaskInfo(Landroid/app/TaskInfo;)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object v1, p1, Landroid/app/TaskInfo;->topActivity:Landroid/content/ComponentName;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    const/4 v2, -0x1

    if-eqz v1, :cond_1

    iget-object v0, p1, Landroid/app/TaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/common/pip/PipUiEventLogger;->mPackageName:Ljava/lang/String;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget p1, p1, Landroid/app/TaskInfo;->userId:I

    :try_start_0
    iget-object v1, p0, Lcom/android/wm/shell/common/pip/PipUiEventLogger;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, p1}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget v2, p1, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iput v2, p0, Lcom/android/wm/shell/common/pip/PipUiEventLogger;->mPackageUid:I

    goto :goto_1

    :cond_1
    iput-object v0, p0, Lcom/android/wm/shell/common/pip/PipUiEventLogger;->mPackageName:Ljava/lang/String;

    iput v2, p0, Lcom/android/wm/shell/common/pip/PipUiEventLogger;->mPackageUid:I

    :goto_1
    return-void
.end method
