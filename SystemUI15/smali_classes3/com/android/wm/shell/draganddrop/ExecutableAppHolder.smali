.class public final Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mAppResultFactory:Lcom/android/wm/shell/draganddrop/AppResultFactory;

.field public final mCallbacks:Ljava/util/List;

.field public final mCallingPackageBlockList:Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$PolicyExceptionList;

.field public mCallingPackageName:Ljava/lang/String;

.field public mCallingUserId:I

.field public final mContext:Landroid/content/Context;

.field public mExecutableApp:Lcom/android/wm/shell/draganddrop/AppInfo;

.field public final mExecutableAppMap:Ljava/util/Map;

.field public mIsMimeType:Z

.field public final mMultiInstanceAllowList:Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$MultiInstanceAllowList;

.field public final mMultiInstanceBlockList:Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$MultiInstanceBlockList;

.field public mResult:Lcom/android/wm/shell/draganddrop/AppResult;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->mExecutableAppMap:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->mCallbacks:Ljava/util/List;

    iput-object p1, p0, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    new-instance v0, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$MultiInstanceBlockList;

    invoke-direct {v0, p1}, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$MultiInstanceBlockList;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->mMultiInstanceBlockList:Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$MultiInstanceBlockList;

    new-instance v1, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$MultiInstanceAllowList;

    invoke-direct {v1, p1}, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$MultiInstanceAllowList;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->mMultiInstanceAllowList:Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$MultiInstanceAllowList;

    new-instance v2, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$PolicyExceptionList;

    const v3, 0x7f030056

    const/4 v4, 0x0

    invoke-direct {v2, p1, v3, v4}, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$PolicyExceptionList;-><init>(Landroid/content/Context;IZ)V

    iput-object v2, p0, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->mCallingPackageBlockList:Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$PolicyExceptionList;

    new-instance v2, Lcom/android/wm/shell/draganddrop/AppResultFactory;

    invoke-direct {v2, p1, v0, v1}, Lcom/android/wm/shell/draganddrop/AppResultFactory;-><init>(Landroid/content/Context;Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$MultiInstanceBlockList;Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$MultiInstanceAllowList;)V

    iput-object v2, p0, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->mAppResultFactory:Lcom/android/wm/shell/draganddrop/AppResultFactory;

    return-void
.end method
