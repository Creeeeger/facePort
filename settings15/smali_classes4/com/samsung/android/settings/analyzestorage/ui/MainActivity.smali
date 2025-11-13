.class public final Lcom/samsung/android/settings/analyzestorage/ui/MainActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/samsung/android/settings/analyzestorage/ui/manager/LayoutWidthManager$OnWidthChangedListener;
.implements Lcom/samsung/android/settings/analyzestorage/presenter/observer/IContentObserver;
.implements Lcom/samsung/android/settings/analyzestorage/presenter/ActivityInfo$ActivityInfoListener;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004B\u0007\u00a2\u0006\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/samsung/android/settings/analyzestorage/ui/MainActivity;",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "Lcom/samsung/android/settings/analyzestorage/ui/manager/LayoutWidthManager$OnWidthChangedListener;",
        "Lcom/samsung/android/settings/analyzestorage/presenter/observer/IContentObserver;",
        "Lcom/samsung/android/settings/analyzestorage/presenter/ActivityInfo$ActivityInfoListener;",
        "<init>",
        "()V",
        "applications__sources__apps__SecSettings__android_common__SecSettings-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final activityResult:Landroidx/activity/result/ActivityResultRegistry$2;

.field public appBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

.field public final backPressCallBack:Lcom/samsung/android/settings/analyzestorage/ui/MainActivity$backPressCallBack$1;

.field public final controller$delegate:Lkotlin/Lazy;

.field public final handler:Landroid/os/Handler;

.field public instanceId:I

.field public isRecreated:Z

.field public layoutState:I

.field public final layoutWidthManager$delegate:Lkotlin/Lazy;

.field public offsetChangedListener:Lcom/samsung/android/settings/analyzestorage/ui/MainActivity$initAppBar$3;

.field public overView:Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/OverView;

.field public final pageInfo:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;

.field public prevOffset:I

.field public recommendCardView:Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/RecommendCardView;

.field public final subListArray:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    new-instance v0, Lcom/samsung/android/settings/analyzestorage/ui/MainActivity$controller$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/analyzestorage/ui/MainActivity$controller$2;-><init>(Lcom/samsung/android/settings/analyzestorage/ui/MainActivity;)V

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/analyzestorage/ui/MainActivity;->controller$delegate:Lkotlin/Lazy;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/analyzestorage/ui/MainActivity;->handler:Landroid/os/Handler;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/analyzestorage/ui/MainActivity;->subListArray:Landroid/util/SparseArray;

    sget-object v0, Lcom/samsung/android/settings/analyzestorage/ui/MainActivity$layoutWidthManager$2;->INSTANCE:Lcom/samsung/android/settings/analyzestorage/ui/MainActivity$layoutWidthManager$2;

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/analyzestorage/ui/MainActivity;->layoutWidthManager$delegate:Lkotlin/Lazy;

    new-instance v0, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;

    sget-object v1, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;->ANALYZE_STORAGE_HOME:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;-><init>(Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;)V

    iput-object v0, p0, Lcom/samsung/android/settings/analyzestorage/ui/MainActivity;->pageInfo:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;

    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>(I)V

    new-instance v1, Lcom/samsung/android/settings/analyzestorage/ui/MainActivity$activityResult$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/analyzestorage/ui/MainActivity$activityResult$1;-><init>(Lcom/samsung/android/settings/analyzestorage/ui/MainActivity;)V

    invoke-virtual {p0, v0, v1}, Landroidx/activity/ComponentActivity;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    check-cast v0, Landroidx/activity/result/ActivityResultRegistry$2;

    iput-object v0, p0, Lcom/samsung/android/settings/analyzestorage/ui/MainActivity;->activityResult:Landroidx/activity/result/ActivityResultRegistry$2;

    new-instance v0, Lcom/samsung/android/settings/analyzestorage/ui/MainActivity$backPressCallBack$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/analyzestorage/ui/MainActivity$backPressCallBack$1;-><init>(Lcom/samsung/android/settings/analyzestorage/ui/MainActivity;)V

    iput-object v0, p0, Lcom/samsung/android/settings/analyzestorage/ui/MainActivity;->backPressCallBack:Lcom/samsung/android/settings/analyzestorage/ui/MainActivity$backPressCallBack$1;

    return-void
.end method


# virtual methods
.method public final getActivity()Landroid/app/Activity;
    .locals 0

    return-object p0
.end method

.method public final getActivityResultLauncher()Landroidx/activity/result/ActivityResultLauncher;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/ui/MainActivity;->activityResult:Landroidx/activity/result/ActivityResultRegistry$2;

    return-object p0
.end method

.method public final getController()Lcom/samsung/android/settings/analyzestorage/presenter/controllers/HomeController;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/ui/MainActivity;->controller$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/HomeController;

    return-object p0
.end method

.method public final getLayoutWidthManager()Lcom/samsung/android/settings/analyzestorage/ui/manager/LayoutWidthManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/ui/MainActivity;->layoutWidthManager$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/analyzestorage/ui/manager/LayoutWidthManager;

    return-object p0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    const-string/jumbo v0, "newConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/analyzestorage/ui/MainActivity;->getLayoutWidthManager()Lcom/samsung/android/settings/analyzestorage/ui/manager/LayoutWidthManager;

    move-result-object v0

    iget p1, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/settings/analyzestorage/ui/manager/LayoutWidthManager;->setContentWidthDp(IZ)V

    const p1, 0x7f0a0425

    invoke-virtual {p0, p1}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    move-result-object p0

    const-string/jumbo p1, "requireViewById(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/samsung/android/settings/analyzestorage/ui/utils/UiUtils;->setFlexibleSpacing(Landroid/view/View;)V

    return-void
.end method

.method public final onContentChanged()V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/ui/MainActivity;->subListArray:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AnalyzeStorageSubList;

    instance-of v4, v3, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AsSubAppList;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/settings/analyzestorage/ui/MainActivity;->handler:Landroid/os/Handler;

    new-instance v5, Lcom/samsung/android/settings/analyzestorage/ui/MainActivity$onContentChanged$1$1;

    check-cast v3, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AsSubAppList;

    invoke-direct {v5, v3}, Lcom/samsung/android/settings/analyzestorage/ui/MainActivity$onContentChanged$1$1;-><init>(Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AsSubAppList;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 12

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "MainActivity_onCreate"

    invoke-static {v2}, Lcom/samsung/android/settings/Trace;->beginSection(Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    sget-object v2, Lcom/samsung/android/settings/analyzestorage/presenter/ActivityInfoStore;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "getApplicationContext(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v2, Lcom/samsung/android/settings/analyzestorage/presenter/ActivityInfoStore;->context:Landroid/content/Context;

    sget-object v3, Lcom/samsung/android/settings/analyzestorage/presenter/managers/KnoxManager;->Companion:Lcom/samsung/android/settings/analyzestorage/presenter/managers/KnoxManager$Companion;

    sget-object v4, Lcom/samsung/android/settings/analyzestorage/presenter/managers/KnoxManager;->instance:Lcom/samsung/android/settings/analyzestorage/presenter/managers/KnoxManager;

    if-nez v4, :cond_1

    monitor-enter v3

    :try_start_0
    sget-object v4, Lcom/samsung/android/settings/analyzestorage/presenter/managers/KnoxManager;->instance:Lcom/samsung/android/settings/analyzestorage/presenter/managers/KnoxManager;

    if-nez v4, :cond_0

    new-instance v4, Lcom/samsung/android/settings/analyzestorage/presenter/managers/KnoxManager;

    invoke-direct {v4, v2}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/KnoxManager;-><init>(Landroid/content/Context;)V

    sput-object v4, Lcom/samsung/android/settings/analyzestorage/presenter/managers/KnoxManager;->instance:Lcom/samsung/android/settings/analyzestorage/presenter/managers/KnoxManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v3

    goto :goto_2

    :goto_1
    monitor-exit v3

    throw p0

    :cond_1
    :goto_2
    iget-boolean v3, v4, Lcom/samsung/android/settings/analyzestorage/presenter/managers/KnoxManager;->isKnoxMode:Z

    sput-boolean v3, Lcom/samsung/android/settings/analyzestorage/presenter/feature/Features$Knox;->isKnox:Z

    if-eqz v3, :cond_4

    sget-object v3, Lcom/samsung/android/settings/analyzestorage/presenter/managers/KnoxManager;->knoxInfoLocker:Ljava/util/concurrent/locks/Lock;

    check-cast v3, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    sget-object v5, Lcom/samsung/android/settings/analyzestorage/presenter/managers/KnoxManager;->knoxInfoBundle:Landroid/os/Bundle;

    const-string v6, "isBlockExternalSD"

    if-nez v5, :cond_2

    iget-object v4, v4, Lcom/samsung/android/settings/analyzestorage/presenter/managers/KnoxManager;->context:Landroid/content/Context;

    invoke-static {v4, v6}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxInfoForApp(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    sput-object v4, Lcom/samsung/android/settings/analyzestorage/presenter/managers/KnoxManager;->knoxInfoBundle:Landroid/os/Bundle;

    :cond_2
    sget-object v4, Lcom/samsung/android/settings/analyzestorage/presenter/managers/KnoxManager;->knoxInfoBundle:Landroid/os/Bundle;

    if-eqz v4, :cond_3

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "true"

    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    xor-int/2addr v4, v1

    goto :goto_3

    :cond_3
    move v4, v1

    :goto_3
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_4

    :cond_4
    move v4, v1

    :goto_4
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "isSupportExternalStorage() ] "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "KnoxManager"

    invoke-static {v5, v3}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sput-boolean v4, Lcom/samsung/android/settings/analyzestorage/presenter/feature/Features$Knox;->isSupportExternalStorage:Z

    const-string/jumbo v3, "ro.build.type"

    invoke-static {v3}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "eng"

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v3

    if-nez v3, :cond_5

    const-string/jumbo v3, "ro.build.type"

    invoke-static {v3}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "eng"

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    :cond_5
    invoke-static {}, Landroid/os/SemSystemProperties;->getSalesCode()Ljava/lang/String;

    move-result-object v3

    const-string v4, "PAP"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    const-string v4, "FOP"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    const-string v4, "LDU"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_5

    :cond_6
    move v3, v0

    goto :goto_6

    :cond_7
    :goto_5
    move v3, v1

    :goto_6
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v4, "shopdemo"

    invoke-static {v2, v4, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_8

    move v2, v1

    goto :goto_7

    :cond_8
    move v2, v0

    :goto_7
    if-nez v3, :cond_a

    if-eqz v2, :cond_9

    goto :goto_8

    :cond_9
    move v2, v0

    goto :goto_9

    :cond_a
    :goto_8
    move v2, v1

    :goto_9
    sput-boolean v2, Lcom/samsung/android/settings/analyzestorage/presenter/feature/Features$Knox;->isRetailMode:Z

    new-instance v2, Lcom/samsung/android/settings/analyzestorage/presenter/managers/UserInfoCheckerImpl;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    sput-object v2, Lcom/samsung/android/settings/analyzestorage/presenter/managers/UserInfoManager;->sUserInfoChecker:Lcom/samsung/android/settings/analyzestorage/presenter/managers/UserInfoCheckerImpl;

    if-eqz p1, :cond_b

    move p1, v1

    goto :goto_a

    :cond_b
    move p1, v0

    :goto_a
    iput-boolean p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/MainActivity;->isRecreated:Z

    sget-object p1, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->extensionToMediaFileTypeMap:Ljava/util/HashMap;

    sget p1, Lcom/samsung/android/settings/analyzestorage/data/constant/FileType;->M4A:I

    const-string v2, "M4A"

    const-string v3, "audio/mp4"

    invoke-static {p1, v2, v3}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    sget p1, Lcom/samsung/android/settings/analyzestorage/data/constant/FileType;->AMR:I

    const-string v2, "audio/amr"

    const-string v4, "AMR"

    invoke-static {p1, v4, v2}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    sget p1, Lcom/samsung/android/settings/analyzestorage/data/constant/FileType;->AWB:I

    const-string v2, "audio/amr-wb"

    const-string v4, "AWB"

    invoke-static {p1, v4, v2}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    sget p1, Lcom/samsung/android/settings/analyzestorage/data/constant/FileType;->_3GA:I

    const-string v2, "3GA"

    const-string v4, "audio/3gpp"

    invoke-static {p1, v2, v4}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    const-string p1, "application/vnd.android.package-archive"

    const-string v2, "APK"

    const/16 v5, 0x190

    invoke-static {v5, v2, p1}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    sget p1, Lcom/samsung/android/settings/analyzestorage/data/constant/FileType;->VCF:I

    const-string/jumbo v2, "text/x-vcard"

    const-string v5, "VCF"

    invoke-static {p1, v5, v2}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    sget p1, Lcom/samsung/android/settings/analyzestorage/data/constant/FileType;->EML:I

    const-string v2, "message/rfc822"

    const-string v5, "EML"

    invoke-static {p1, v5, v2}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    sget p1, Lcom/samsung/android/settings/analyzestorage/data/constant/FileType;->JPG:I

    const-string v2, "JPG"

    const-string v5, "image/jpeg"

    invoke-static {p1, v2, v5}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    const-string p1, "JPEG"

    const/16 v2, 0xa

    invoke-static {v2, p1, v5}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    sget p1, Lcom/samsung/android/settings/analyzestorage/data/constant/FileType;->MY5:I

    const-string v2, "image/vnd.tmo.my5"

    const-string v5, "MY5"

    invoke-static {p1, v5, v2}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    sget p1, Lcom/samsung/android/settings/analyzestorage/data/constant/FileType;->GIF:I

    const-string v2, "image/gif"

    const-string v5, "GIF"

    invoke-static {p1, v5, v2}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    sget p1, Lcom/samsung/android/settings/analyzestorage/data/constant/FileType;->PNG:I

    const-string v2, "image/png"

    const-string v5, "PNG"

    invoke-static {p1, v5, v2}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    sget p1, Lcom/samsung/android/settings/analyzestorage/data/constant/FileType;->XBMP:I

    const-string v2, "image/x-ms-bmp"

    const-string v5, "BMP"

    invoke-static {p1, v5, v2}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    sget p1, Lcom/samsung/android/settings/analyzestorage/data/constant/FileType;->BMP:I

    const-string v2, "image/bmp"

    invoke-static {p1, v5, v2}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    sget p1, Lcom/samsung/android/settings/analyzestorage/data/constant/FileType;->WBMP:I

    const-string v2, "image/vnd.wap.wbmp"

    const-string v5, "WBMP"

    invoke-static {p1, v5, v2}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    sget p1, Lcom/samsung/android/settings/analyzestorage/data/constant/FileType;->WEBP:I

    const-string v2, "image/webp"

    const-string v5, "WEBP"

    invoke-static {p1, v5, v2}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    sget p1, Lcom/samsung/android/settings/analyzestorage/data/constant/FileType;->HEIC:I

    const-string v2, "HEIC"

    const-string v5, "image/heif"

    invoke-static {p1, v2, v5}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    const-string v2, "HEIF"

    invoke-static {p1, v2, v5}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    sget p1, Lcom/samsung/android/settings/analyzestorage/data/constant/FileType;->HTML:I

    const-string v2, "HTML"

    const-string/jumbo v5, "text/html"

    invoke-static {p1, v2, v5}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    const-string p1, "HTM"

    sget v2, Lcom/samsung/android/settings/analyzestorage/data/constant/FileType;->HTM:I

    invoke-static {v2, p1, v5}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    const-string p1, "XHTML"

    sget v2, Lcom/samsung/android/settings/analyzestorage/data/constant/FileType;->XHTML:I

    invoke-static {v2, p1, v5}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    sget p1, Lcom/samsung/android/settings/analyzestorage/data/constant/FileType;->XML:I

    const-string v2, "application/xhtml+xml"

    const-string v5, "XML"

    invoke-static {p1, v5, v2}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    sget p1, Lcom/samsung/android/settings/analyzestorage/data/constant/FileType;->WGT:I

    const-string v2, "application/vnd.samsung.widget"

    const-string v5, "WGT"

    invoke-static {p1, v5, v2}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    sget p1, Lcom/samsung/android/settings/analyzestorage/data/constant/FileType;->HWP:I

    const-string v2, "application/x-hwp"

    const-string v5, "HWP"

    invoke-static {p1, v5, v2}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    sget p1, Lcom/samsung/android/settings/analyzestorage/data/constant/FileType;->HWPX:I

    const-string v2, "application/vnd.hancom.hwpx"

    const-string v5, "HWPX"

    invoke-static {p1, v5, v2}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    sget p1, Lcom/samsung/android/settings/analyzestorage/data/constant/FileType;->HWT:I

    const-string v2, "HWT"

    const-string v5, "application/haansofthwt"

    invoke-static {p1, v2, v5}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    const-string p1, "HWTX"

    sget v2, Lcom/samsung/android/settings/analyzestorage/data/constant/FileType;->HWTX:I

    invoke-static {v2, p1, v5}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    const-string p1, "OWPML"

    sget v2, Lcom/samsung/android/settings/analyzestorage/data/constant/FileType;->OWPML:I

    invoke-static {v2, p1, v5}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    sget p1, Lcom/samsung/android/settings/analyzestorage/data/constant/FileType;->HWDT:I

    const-string v2, "application/hancomhwdt"

    const-string v5, "HWDT"

    invoke-static {p1, v5, v2}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    sget p1, Lcom/samsung/android/settings/analyzestorage/data/constant/FileType;->MEMO:I

    const-string v2, "application/memo"

    const-string v5, "MEMO"

    invoke-static {p1, v5, v2}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    const-string p1, "MP3"

    const-string v2, "audio/mpeg"

    const/16 v5, 0x64

    invoke-static {v5, p1, v2}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    sget p1, Lcom/samsung/android/settings/analyzestorage/data/constant/FileType;->WAV:I

    const-string v5, "audio/x-wav"

    const-string v6, "WAV"

    invoke-static {p1, v6, v5}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    sget p1, Lcom/samsung/android/settings/analyzestorage/data/constant/FileType;->WMA:I

    const-string v5, "audio/x-ms-wma"

    const-string v6, "WMA"

    invoke-static {p1, v6, v5}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    sget p1, Lcom/samsung/android/settings/analyzestorage/data/constant/FileType;->OGG:I

    const-string v5, "audio/ogg"

    const-string v6, "OGG"

    invoke-static {p1, v6, v5}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    sget p1, Lcom/samsung/android/settings/analyzestorage/data/constant/FileType;->OGA:I

    const-string v5, "application/ogg"

    const-string v6, "OGA"

    invoke-static {p1, v6, v5}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    sget p1, Lcom/samsung/android/settings/analyzestorage/data/constant/FileType;->AAC:I

    const-string v5, "audio/aac"

    const-string v6, "AAC"

    invoke-static {p1, v6, v5}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    sget p1, Lcom/samsung/android/settings/analyzestorage/data/constant/FileType;->FLAC:I

    const-string v5, "audio/flac"

    const-string v6, "FLAC"

    invoke-static {p1, v6, v5}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    const-string p1, "MP4_A"

    sget v5, Lcom/samsung/android/settings/analyzestorage/data/constant/FileType;->MP4_A:I

    invoke-static {v5, p1, v3}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    const-string p1, "MP4A"

    sget v5, Lcom/samsung/android/settings/analyzestorage/data/constant/FileType;->MP4_AUDIO:I

    invoke-static {v5, p1, v3}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    const-string p1, "MPGA"

    sget v3, Lcom/samsung/android/settings/analyzestorage/data/constant/FileType;->MPGA:I

    invoke-static {v3, p1, v2}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    const-string p1, "3GP_A"

    sget v2, Lcom/samsung/android/settings/analyzestorage/data/constant/FileType;->_3GP_AUDIO:I

    invoke-static {v2, p1, v4}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    sget p1, Lcom/samsung/android/settings/analyzestorage/data/constant/FileType;->_3G2_AUDIO:I

    const-string v2, "audio/3gpp2"

    const-string v3, "3G2_A"

    invoke-static {p1, v3, v2}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    sget p1, Lcom/samsung/android/settings/analyzestorage/data/constant/FileType;->ASF_AUDIO:I

    const-string v2, "audio/x-ms-asf"

    const-string v3, "ASF_A"

    invoke-static {p1, v3, v2}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    const-string p1, "3GPP_A"

    sget v2, Lcom/samsung/android/settings/analyzestorage/data/constant/FileType;->_3GPP_AUDIO:I

    invoke-static {v2, p1, v4}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    const-string p1, "MID"

    const-string v2, "audio/midi"

    const/16 v3, 0x96

    invoke-static {v3, p1, v2}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    sget p1, Lcom/samsung/android/settings/analyzestorage/data/constant/FileType;->MID_A:I

    const-string v3, "audio/mid"

    const-string v4, "MID_A"

    invoke-static {p1, v4, v3}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    const-string p1, "MIDI"

    sget v3, Lcom/samsung/android/settings/analyzestorage/data/constant/FileType;->MIDI:I

    invoke-static {v3, p1, v2}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    const-string p1, "RTX"

    sget v3, Lcom/samsung/android/settings/analyzestorage/data/constant/FileType;->RTX:I

    invoke-static {v3, p1, v2}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    const-string p1, "OTA"

    sget v3, Lcom/samsung/android/settings/analyzestorage/data/constant/FileType;->OTA:I

    invoke-static {v3, p1, v2}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    const-string p1, "XMF"

    sget v3, Lcom/samsung/android/settings/analyzestorage/data/constant/FileType;->XMF:I

    invoke-static {v3, p1, v2}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    const-string p1, "MXMF"

    sget v3, Lcom/samsung/android/settings/analyzestorage/data/constant/FileType;->MXMF:I

    invoke-static {v3, p1, v2}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    const-string p1, "RTTTL"

    sget v3, Lcom/samsung/android/settings/analyzestorage/data/constant/FileType;->RTL:I

    invoke-static {v3, p1, v2}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    sget p1, Lcom/samsung/android/settings/analyzestorage/data/constant/FileType;->SMF:I

    const-string v2, "SMF"

    const-string v3, "audio/sp-midi"

    invoke-static {p1, v2, v3}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    const-string p1, "SPMID"

    sget v2, Lcom/samsung/android/settings/analyzestorage/data/constant/FileType;->SPMID:I

    invoke-static {v2, p1, v3}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    sget p1, Lcom/samsung/android/settings/analyzestorage/data/constant/FileType;->IMY:I

    const-string v2, "audio/imelody"

    const-string v3, "IMY"

    invoke-static {p1, v3, v2}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    sget p1, Lcom/samsung/android/settings/analyzestorage/data/constant/FileType;->MKA:I

    const-string v2, "audio/x-matroska"

    const-string v3, "MKA"

    invoke-static {p1, v3, v2}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    sget p1, Lcom/samsung/android/settings/analyzestorage/data/constant/FileType;->PYA:I

    const-string v2, "audio/vnd.ms-playready.media.pya"

    const-string v3, "PYA"

    invoke-static {p1, v3, v2}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    sget p1, Lcom/samsung/android/settings/analyzestorage/data/constant/FileType;->QCP:I

    const-string v2, "audio/qcelp"

    const-string v3, "QCP"

    invoke-static {p1, v3, v2}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    sget p1, Lcom/samsung/android/settings/analyzestorage/data/constant/FileType;->PDF:I

    const-string v2, "application/pdf"

    const-string v3, "PDF"

    invoke-static {p1, v3, v2}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    sget p1, Lcom/samsung/android/settings/analyzestorage/data/constant/FileType;->PPS:I

    const-string v2, "PPS"

    const-string v3, "application/vnd.ms-powerpoint"

    invoke-static {p1, v2, v3}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    sget p1, Lcom/samsung/android/settings/analyzestorage/data/constant/FileType;->PPT:I

    const-string v2, "PPT"

    invoke-static {p1, v2, v3}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    sget v2, Lcom/samsung/android/settings/analyzestorage/data/constant/FileType;->PPTX:I

    const-string v4, "application/vnd.openxmlformats-officedocument.presentationml.presentation"

    const-string v5, "PPTX"

    invoke-static {v2, v5, v4}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    sget v2, Lcom/samsung/android/settings/analyzestorage/data/constant/FileType;->PPTM:I

    const-string v4, "application/vnd.ms-powerpoint.presentation.macroEnabled.12"

    const-string v5, "PPTM"

    invoke-static {v2, v5, v4}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    const-string v2, "POT"

    sget v4, Lcom/samsung/android/settings/analyzestorage/data/constant/FileType;->POT:I

    invoke-static {v4, v2, v3}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    sget v2, Lcom/samsung/android/settings/analyzestorage/data/constant/FileType;->POTX:I

    const-string v3, "application/vnd.openxmlformats-officedocument.presentationml.template"

    const-string v4, "POTX"

    invoke-static {v2, v4, v3}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    sget v2, Lcom/samsung/android/settings/analyzestorage/data/constant/FileType;->PPSX:I

    const-string v3, "application/vnd.openxmlformats-officedocument.presentationml.slideshow"

    const-string v4, "PPSX"

    invoke-static {v2, v4, v3}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    const-string v2, "application/vnd.google-apps.presentation"

    const-string v3, ""

    invoke-static {p1, v3, v2}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    sget p1, Lcom/samsung/android/settings/analyzestorage/data/constant/FileType;->VCS:I

    const-string/jumbo v2, "text/x-vCalendar"

    const-string v4, "VCS"

    invoke-static {p1, v4, v2}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    sget p1, Lcom/samsung/android/settings/analyzestorage/data/constant/FileType;->ICS:I

    const-string/jumbo v2, "text/calendar"

    const-string v4, "ICS"

    invoke-static {p1, v4, v2}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    sget p1, Lcom/samsung/android/settings/analyzestorage/data/constant/FileType;->SCC_SCRAP:I

    const-string v2, "application/vnd.samsung.scc.pinall"

    const-string v4, "SCC"

    invoke-static {p1, v4, v2}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    sget p1, Lcom/samsung/android/settings/analyzestorage/data/constant/FileType;->SNB:I

    const-string v2, "application/snb"

    const-string v5, "SNB"

    invoke-static {p1, v5, v2}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    const-string p1, "application/spd"

    const-string v2, "SPD"

    const/16 v5, 0x12c

    invoke-static {v5, v2, p1}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    sget p1, Lcom/samsung/android/settings/analyzestorage/data/constant/FileType;->SCC:I

    const-string v2, "application/vnd.samsung.scc.storyalbum"

    invoke-static {p1, v4, v2}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    const-string p1, "SFF"

    sget v4, Lcom/samsung/android/settings/analyzestorage/data/constant/FileType;->SFF:I

    invoke-static {v4, p1, v2}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    sget p1, Lcom/samsung/android/settings/analyzestorage/data/constant/FileType;->SSF:I

    const-string v2, "application/ssf"

    const-string v4, "SSF"

    invoke-static {p1, v4, v2}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    sget p1, Lcom/samsung/android/settings/analyzestorage/data/constant/FileType;->VTS:I

    const-string/jumbo v2, "text/x-vtodo"

    const-string v4, "VTS"

    invoke-static {p1, v4, v2}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    sget p1, Lcom/samsung/android/settings/analyzestorage/data/constant/FileType;->ASC:I

    const-string v2, "ASC"

    const-string/jumbo v4, "text/plain"

    invoke-static {p1, v2, v4}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    const-string p1, "TXT"

    sget v2, Lcom/samsung/android/settings/analyzestorage/data/constant/FileType;->TXT:I

    invoke-static {v2, p1, v4}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    sget p1, Lcom/samsung/android/settings/analyzestorage/data/constant/FileType;->EPUB:I

    const-string v2, "application/epub+zip"

    const-string v5, "EPUB"

    invoke-static {p1, v5, v2}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    sget p1, Lcom/samsung/android/settings/analyzestorage/data/constant/FileType;->ACSM:I

    const-string v2, "application/vnd.adobe.adept+xml"

    const-string v5, "ACSM"

    invoke-static {p1, v5, v2}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    sget p1, Lcom/samsung/android/settings/analyzestorage/data/constant/FileType;->MOBI:I

    const-string v2, "application/mobi"

    const-string v5, "MOBI"

    invoke-static {p1, v5, v2}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    sget p1, Lcom/samsung/android/settings/analyzestorage/data/constant/FileType;->CHM:I

    const-string v2, "application/vnd.ms-htmlhelp"

    const-string v5, "CHM"

    invoke-static {p1, v5, v2}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    sget p1, Lcom/samsung/android/settings/analyzestorage/data/constant/FileType;->MPEG:I

    const-string v2, "MPEG"

    const-string/jumbo v5, "video/mpeg"

    invoke-static {p1, v2, v5}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    const-string p1, "MPG"

    sget v2, Lcom/samsung/android/settings/analyzestorage/data/constant/FileType;->MPG:I

    invoke-static {v2, p1, v5}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    const-string p1, "MP4"

    const-string/jumbo v2, "video/mp4"

    const/16 v5, 0xc8

    invoke-static {v5, p1, v2}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    const-string p1, "M4V"

    sget v5, Lcom/samsung/android/settings/analyzestorage/data/constant/FileType;->M4V:I

    invoke-static {v5, p1, v2}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    sget p1, Lcom/samsung/android/settings/analyzestorage/data/constant/FileType;->_3GP:I

    const-string v2, "3GP"

    const-string/jumbo v5, "video/3gpp"

    invoke-static {p1, v2, v5}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    const-string p1, "3GPP"

    sget v2, Lcom/samsung/android/settings/analyzestorage/data/constant/FileType;->_3GPP:I

    invoke-static {v2, p1, v5}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    sget p1, Lcom/samsung/android/settings/analyzestorage/data/constant/FileType;->_3G2:I

    const-string v2, "3G2"

    const-string/jumbo v5, "video/3gpp2"

    invoke-static {p1, v2, v5}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    const-string p1, "3GPP2"

    sget v2, Lcom/samsung/android/settings/analyzestorage/data/constant/FileType;->_3GPP2:I

    invoke-static {v2, p1, v5}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    sget p1, Lcom/samsung/android/settings/analyzestorage/data/constant/FileType;->WMV:I

    const-string/jumbo v2, "video/x-ms-wmv"

    const-string v5, "WMV"

    invoke-static {p1, v5, v2}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    sget p1, Lcom/samsung/android/settings/analyzestorage/data/constant/FileType;->ASF:I

    const-string/jumbo v2, "video/x-ms-asf"

    const-string v5, "ASF"

    invoke-static {p1, v5, v2}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    sget p1, Lcom/samsung/android/settings/analyzestorage/data/constant/FileType;->AVI:I

    const-string/jumbo v2, "video/avi"

    const-string v5, "AVI"

    invoke-static {p1, v5, v2}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    sget p1, Lcom/samsung/android/settings/analyzestorage/data/constant/FileType;->DIVX:I

    const-string/jumbo v2, "video/divx"

    const-string v5, "DIVX"

    invoke-static {p1, v5, v2}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    sget p1, Lcom/samsung/android/settings/analyzestorage/data/constant/FileType;->FLV:I

    const-string/jumbo v2, "video/flv"

    const-string v5, "FLV"

    invoke-static {p1, v5, v2}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    sget p1, Lcom/samsung/android/settings/analyzestorage/data/constant/FileType;->MKV:I

    const-string/jumbo v2, "video/x-matroska"

    const-string v5, "MKV"

    invoke-static {p1, v5, v2}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    sget p1, Lcom/samsung/android/settings/analyzestorage/data/constant/FileType;->SDP:I

    const-string v2, "application/sdp"

    const-string v5, "SDP"

    invoke-static {p1, v5, v2}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    sget p1, Lcom/samsung/android/settings/analyzestorage/data/constant/FileType;->TS:I

    const-string v2, "TS"

    const-string/jumbo v5, "video/mp2ts"

    invoke-static {p1, v2, v5}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    sget p1, Lcom/samsung/android/settings/analyzestorage/data/constant/FileType;->PYV:I

    const-string/jumbo v2, "video/vnd.ms-playready.media.pyv"

    const-string v6, "PYV"

    invoke-static {p1, v6, v2}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    sget p1, Lcom/samsung/android/settings/analyzestorage/data/constant/FileType;->MOV:I

    const-string/jumbo v2, "video/quicktime"

    const-string v6, "MOV"

    invoke-static {p1, v6, v2}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    sget p1, Lcom/samsung/android/settings/analyzestorage/data/constant/FileType;->SKM:I

    const-string/jumbo v2, "video/skm"

    const-string v6, "SKM"

    invoke-static {p1, v6, v2}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    sget p1, Lcom/samsung/android/settings/analyzestorage/data/constant/FileType;->K3G:I

    const-string/jumbo v2, "video/k3g"

    const-string v6, "K3G"

    invoke-static {p1, v6, v2}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    sget p1, Lcom/samsung/android/settings/analyzestorage/data/constant/FileType;->AK3G:I

    const-string/jumbo v2, "video/ak3g"

    const-string v6, "AK3G"

    invoke-static {p1, v6, v2}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    sget p1, Lcom/samsung/android/settings/analyzestorage/data/constant/FileType;->WEBM:I

    const-string/jumbo v2, "video/webm"

    const-string v6, "WEBM"

    invoke-static {p1, v6, v2}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    const-string p1, "MTS"

    sget v2, Lcom/samsung/android/settings/analyzestorage/data/constant/FileType;->MTS:I

    invoke-static {v2, p1, v5}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    const-string p1, "M2TS"

    sget v2, Lcom/samsung/android/settings/analyzestorage/data/constant/FileType;->M2TS:I

    invoke-static {v2, p1, v5}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    const-string p1, "M2T"

    sget v2, Lcom/samsung/android/settings/analyzestorage/data/constant/FileType;->M2T:I

    invoke-static {v2, p1, v5}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    const-string p1, "TRP"

    sget v2, Lcom/samsung/android/settings/analyzestorage/data/constant/FileType;->TRP:I

    invoke-static {v2, p1, v5}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    const-string p1, "TP"

    sget v2, Lcom/samsung/android/settings/analyzestorage/data/constant/FileType;->TP:I

    invoke-static {v2, p1, v5}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    sget p1, Lcom/samsung/android/settings/analyzestorage/data/constant/FileType;->VNT:I

    const-string/jumbo v2, "text/x-vnote"

    const-string v5, "VNT"

    invoke-static {p1, v5, v2}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    sget p1, Lcom/samsung/android/settings/analyzestorage/data/constant/FileType;->RTF:I

    const-string v2, "application/rtf"

    const-string v5, "RTF"

    invoke-static {p1, v5, v2}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    sget p1, Lcom/samsung/android/settings/analyzestorage/data/constant/FileType;->DOC:I

    const-string v2, "DOC"

    const-string v5, "application/msword"

    invoke-static {p1, v2, v5}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    sget v2, Lcom/samsung/android/settings/analyzestorage/data/constant/FileType;->DOCX:I

    const-string v6, "application/vnd.openxmlformats-officedocument.wordprocessingml.document"

    const-string v7, "DOCX"

    invoke-static {v2, v7, v6}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    sget v2, Lcom/samsung/android/settings/analyzestorage/data/constant/FileType;->DOCM:I

    const-string v6, "application/vnd.ms-word.document.macroEnabled.12"

    const-string v7, "DOCM"

    invoke-static {v2, v7, v6}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    const-string v2, "DOT"

    sget v6, Lcom/samsung/android/settings/analyzestorage/data/constant/FileType;->DOT:I

    invoke-static {v6, v2, v5}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    sget v2, Lcom/samsung/android/settings/analyzestorage/data/constant/FileType;->DOTX:I

    const-string v5, "application/vnd.openxmlformats-officedocument.wordprocessingml.template"

    const-string v6, "DOTX"

    invoke-static {v2, v6, v5}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    const-string v2, "application/vnd.google-apps.document"

    invoke-static {p1, v3, v2}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    sget p1, Lcom/samsung/android/settings/analyzestorage/data/constant/FileType;->CSV:I

    const-string/jumbo v2, "text/comma-separated-values"

    const-string v5, "CSV"

    invoke-static {p1, v5, v2}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    sget p1, Lcom/samsung/android/settings/analyzestorage/data/constant/FileType;->XLS:I

    const-string v2, "application/vnd.ms-excel"

    const-string v5, "XLS"

    invoke-static {p1, v5, v2}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    sget v2, Lcom/samsung/android/settings/analyzestorage/data/constant/FileType;->XLSX:I

    const-string v5, "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet"

    const-string v6, "XLSX"

    invoke-static {v2, v6, v5}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    sget v2, Lcom/samsung/android/settings/analyzestorage/data/constant/FileType;->XLT:I

    const-string v5, "application/vnd.ms-excel"

    const-string v6, "XLT"

    invoke-static {v2, v6, v5}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    sget v2, Lcom/samsung/android/settings/analyzestorage/data/constant/FileType;->XLTX:I

    const-string v5, "application/vnd.openxmlformats-officedocument.spreadsheetml.template"

    const-string v6, "XLTX"

    invoke-static {v2, v6, v5}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    sget v2, Lcom/samsung/android/settings/analyzestorage/data/constant/FileType;->XLSM:I

    const-string v5, "application/vnd.ms-excel.sheet.macroEnabled.12"

    const-string v6, "XLSM"

    invoke-static {v2, v6, v5}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    const-string v2, "application/vnd.google-apps.spreadsheet"

    invoke-static {p1, v3, v2}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    const-string p1, "application/zip"

    const-string v2, "ZIP"

    const/16 v5, 0x19a

    invoke-static {v5, v2, p1}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    sget p1, Lcom/samsung/android/settings/analyzestorage/data/constant/FileType;->RAR:I

    const-string v2, "application/x-rar-compressed"

    const-string v5, "RAR"

    invoke-static {p1, v5, v2}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    sget p1, Lcom/samsung/android/settings/analyzestorage/data/constant/FileType;->SEVEN_Z:I

    const-string v2, "application/x-7z-compressed"

    const-string v5, "7Z"

    invoke-static {p1, v5, v2}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    sget p1, Lcom/samsung/android/settings/analyzestorage/data/constant/FileType;->SDOC:I

    const-string v2, "application/sdoc"

    const-string v5, "SDOC"

    invoke-static {p1, v5, v2}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    sget p1, Lcom/samsung/android/settings/analyzestorage/data/constant/FileType;->SDOCX:I

    const-string v2, "application/sdoc"

    const-string v5, "SDOCX"

    invoke-static {p1, v5, v2}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    sget p1, Lcom/samsung/android/settings/analyzestorage/data/constant/FileType;->ENC:I

    const-string v2, "application/enc"

    const-string v5, "ENC"

    invoke-static {p1, v5, v2}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    sget p1, Lcom/samsung/android/settings/analyzestorage/data/constant/FileType;->LOC:I

    const-string v2, "application/loc"

    const-string v5, "LOC"

    invoke-static {p1, v5, v2}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    const-string p1, "audio/x-mpegurl"

    const-string v2, "M3U"

    const/16 v5, 0xb4

    invoke-static {v5, v2, p1}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    sget p1, Lcom/samsung/android/settings/analyzestorage/data/constant/FileType;->PLS:I

    const-string v2, "audio/x-scpls"

    const-string v5, "PLS"

    invoke-static {p1, v5, v2}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    sget p1, Lcom/samsung/android/settings/analyzestorage/data/constant/FileType;->WPL:I

    const-string v2, "application/vnd.ms-wpl"

    const-string v5, "WPL"

    invoke-static {p1, v5, v2}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    const-string p1, "application/x-shockwave-flash"

    const-string v2, "SWF"

    const/16 v5, 0x1f4

    invoke-static {v5, v2, p1}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    sget p1, Lcom/samsung/android/settings/analyzestorage/data/constant/FileType;->SVG:I

    const-string v2, "image/svg+xml"

    const-string v5, "SVG"

    invoke-static {p1, v5, v2}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    const-string p1, "application/vnd.oma.drm.content"

    const-string v2, "DCF"

    const/16 v5, 0x1a4

    invoke-static {v5, v2, p1}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    sget p1, Lcom/samsung/android/settings/analyzestorage/data/constant/FileType;->ODF:I

    const-string v2, "application/vnd.oma.drm.content"

    const-string v5, "ODF"

    invoke-static {p1, v5, v2}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    sget p1, Lcom/samsung/android/settings/analyzestorage/data/constant/FileType;->SM4:I

    const-string/jumbo v2, "video/vnd.sdrm-media.sm4"

    const-string v5, "SM4"

    invoke-static {p1, v5, v2}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    sget p1, Lcom/samsung/android/settings/analyzestorage/data/constant/FileType;->JAD:I

    const-string/jumbo v2, "text/vnd.sun.j2me.app-descriptor"

    const-string v5, "JAD"

    invoke-static {p1, v5, v2}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    sget p1, Lcom/samsung/android/settings/analyzestorage/data/constant/FileType;->JAR:I

    const-string v2, "application/java-archive"

    const-string v5, "JAR"

    invoke-static {p1, v5, v2}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    sget p1, Lcom/samsung/android/settings/analyzestorage/data/constant/FileType;->SASF:I

    const-string v2, "application/x-sasf"

    const-string v5, "SASF"

    invoke-static {p1, v5, v2}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    sget p1, Lcom/samsung/android/settings/analyzestorage/data/constant/FileType;->SOL:I

    const-string v2, "application/com.sec.kidspiano"

    const-string v5, "SOL"

    invoke-static {p1, v5, v2}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    sget p1, Lcom/samsung/android/settings/analyzestorage/data/constant/FileType;->ODS:I

    const-string v2, "application/vnd.oasis.opendocument.spreadsheet"

    const-string v5, "ODS"

    invoke-static {p1, v5, v2}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    const-string p1, "application/x-pkcs12"

    const-string v2, "P12"

    const/16 v5, 0x1ae

    invoke-static {v5, v2, p1}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    sget p1, Lcom/samsung/android/settings/analyzestorage/data/constant/FileType;->PFX:I

    const-string v2, "application/x-pkcs12"

    const-string v5, "PFX"

    invoke-static {p1, v5, v2}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    sget p1, Lcom/samsung/android/settings/analyzestorage/data/constant/FileType;->CRT:I

    const-string v2, "application/x-x509-ca-cert"

    const-string v5, "CRT"

    invoke-static {p1, v5, v2}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    sget p1, Lcom/samsung/android/settings/analyzestorage/data/constant/FileType;->DER:I

    const-string v2, "application/x-x509-ca-cert"

    const-string v5, "DER"

    invoke-static {p1, v5, v2}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    sget p1, Lcom/samsung/android/settings/analyzestorage/data/constant/FileType;->PEM:I

    const-string v2, "application/x-pem-file"

    const-string v5, "PEM"

    invoke-static {p1, v5, v2}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    sget p1, Lcom/samsung/android/settings/analyzestorage/data/constant/FileType;->CER:I

    const-string v2, "application/pkix-cert"

    const-string v5, "CER"

    invoke-static {p1, v5, v2}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    const-string p1, "application/octet-stream"

    invoke-static {v0, v3, p1}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    sget v2, Lcom/samsung/android/settings/analyzestorage/data/constant/FileType;->PAGES:I

    const-string v3, "application/x-iwork-pages-sffpages"

    const-string v5, "PAGES"

    invoke-static {v2, v5, v3}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    sget v2, Lcom/samsung/android/settings/analyzestorage/data/constant/FileType;->KEY:I

    const-string v3, "application/x-iwork-keynote-sffkey"

    const-string v5, "KEY"

    invoke-static {v2, v5, v3}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    sget v2, Lcom/samsung/android/settings/analyzestorage/data/constant/FileType;->NUMBERS:I

    const-string v3, "application/x-iwork-numbers-sffnumbers"

    const-string v5, "NUMBERS"

    invoke-static {v2, v5, v3}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    const-string v2, "LA"

    sget v3, Lcom/samsung/android/settings/analyzestorage/data/constant/FileType;->LA:I

    invoke-static {v3, v2, p1}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    sget v2, Lcom/samsung/android/settings/analyzestorage/data/constant/FileType;->GPX:I

    const-string v3, "application/gpx+xml"

    const-string v5, "GPX"

    invoke-static {v2, v5, v3}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    sget v2, Lcom/samsung/android/settings/analyzestorage/data/constant/FileType;->SHOW:I

    const-string v3, "application/hshow"

    const-string v5, "SHOW"

    invoke-static {v2, v5, v3}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    sget v2, Lcom/samsung/android/settings/analyzestorage/data/constant/FileType;->XLSB:I

    const-string v3, "application/vnd.ms-excel.sheet.binary.macroenabled.12"

    const-string v5, "XLSB"

    invoke-static {v2, v5, v3}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    sget v2, Lcom/samsung/android/settings/analyzestorage/data/constant/FileType;->XLTM:I

    const-string v3, "application/vnd.ms-excel.template.macroenabled.12"

    const-string v5, "XLTM"

    invoke-static {v2, v5, v3}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    sget v2, Lcom/samsung/android/settings/analyzestorage/data/constant/FileType;->CELL:I

    const-string v3, "application/haansoftcell"

    const-string v5, "CELL"

    invoke-static {v2, v5, v3}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    sget v2, Lcom/samsung/android/settings/analyzestorage/data/constant/FileType;->HCDT:I

    const-string v3, "application/haansofthcdt"

    const-string v5, "HCDT"

    invoke-static {v2, v5, v3}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    sget v2, Lcom/samsung/android/settings/analyzestorage/data/constant/FileType;->PRN:I

    const-string/jumbo v3, "text/space-separated-values"

    const-string v5, "PRN"

    invoke-static {v2, v5, v3}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    sget v2, Lcom/samsung/android/settings/analyzestorage/data/constant/FileType;->TSV:I

    const-string/jumbo v3, "text/tab-separated-values"

    const-string v5, "TSV"

    invoke-static {v2, v5, v3}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    sget v2, Lcom/samsung/android/settings/analyzestorage/data/constant/FileType;->RAF:I

    const-string v3, "image/x-fuji-raf"

    const-string v5, "RAF"

    invoke-static {v2, v5, v3}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    sget v2, Lcom/samsung/android/settings/analyzestorage/data/constant/FileType;->ORF:I

    const-string v3, "image/x-olympus-orf"

    const-string v5, "ORF"

    invoke-static {v2, v5, v3}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    sget v2, Lcom/samsung/android/settings/analyzestorage/data/constant/FileType;->ERF:I

    const-string v3, "image/x-raw-epson"

    const-string v5, "ERF"

    invoke-static {v2, v5, v3}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    sget v2, Lcom/samsung/android/settings/analyzestorage/data/constant/FileType;->FFF:I

    const-string v3, "image/x-fff"

    const-string v5, "FFF"

    invoke-static {v2, v5, v3}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    sget v2, Lcom/samsung/android/settings/analyzestorage/data/constant/FileType;->CRW:I

    const-string v3, "image/x-canon-crw"

    const-string v5, "CRW"

    invoke-static {v2, v5, v3}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    sget v2, Lcom/samsung/android/settings/analyzestorage/data/constant/FileType;->CR2:I

    const-string v3, "image/x-canon-cr2"

    const-string v5, "CR2"

    invoke-static {v2, v5, v3}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    sget v2, Lcom/samsung/android/settings/analyzestorage/data/constant/FileType;->CR3:I

    const-string v3, "image/x-canon-cr3"

    const-string v5, "CR3"

    invoke-static {v2, v5, v3}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    sget v2, Lcom/samsung/android/settings/analyzestorage/data/constant/FileType;->DNG:I

    const-string v3, "image/x-adobe-dng"

    const-string v5, "DNG"

    invoke-static {v2, v5, v3}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    sget v2, Lcom/samsung/android/settings/analyzestorage/data/constant/FileType;->MEF:I

    const-string v3, "image/x-mef"

    const-string v5, "MEF"

    invoke-static {v2, v5, v3}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    sget v2, Lcom/samsung/android/settings/analyzestorage/data/constant/FileType;->MOS:I

    const-string v3, "image/x-raw-leaf"

    const-string v5, "MOS"

    invoke-static {v2, v5, v3}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    sget v2, Lcom/samsung/android/settings/analyzestorage/data/constant/FileType;->PXN:I

    const-string v3, "image/x-pxn"

    const-string v5, "PXN"

    invoke-static {v2, v5, v3}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    sget v2, Lcom/samsung/android/settings/analyzestorage/data/constant/FileType;->SRW:I

    const-string v3, "image/x-samsung-srw"

    const-string v5, "SRW"

    invoke-static {v2, v5, v3}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    sget v2, Lcom/samsung/android/settings/analyzestorage/data/constant/FileType;->PTX:I

    const-string v3, "image/x-ptx"

    const-string v5, "PTX"

    invoke-static {v2, v5, v3}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    sget v2, Lcom/samsung/android/settings/analyzestorage/data/constant/FileType;->PEF:I

    const-string v3, "image/x-pef"

    const-string v5, "PEF"

    invoke-static {v2, v5, v3}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    sget v2, Lcom/samsung/android/settings/analyzestorage/data/constant/FileType;->RW2:I

    const-string v3, "image/x-panasonic-rw2"

    const-string v5, "RW2"

    invoke-static {v2, v5, v3}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    sget v2, Lcom/samsung/android/settings/analyzestorage/data/constant/FileType;->BAY:I

    const-string v3, "image/x-bay"

    const-string v5, "BAY"

    invoke-static {v2, v5, v3}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    sget v2, Lcom/samsung/android/settings/analyzestorage/data/constant/FileType;->TIF:I

    const-string v3, "image/tiff"

    const-string v5, "TIF"

    invoke-static {v2, v5, v3}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    sget v2, Lcom/samsung/android/settings/analyzestorage/data/constant/FileType;->K25:I

    const-string v3, "image/x-k25"

    const-string v5, "K25"

    invoke-static {v2, v5, v3}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    sget v2, Lcom/samsung/android/settings/analyzestorage/data/constant/FileType;->KDC:I

    const-string v3, "image/x-kdc"

    const-string v5, "KDC"

    invoke-static {v2, v5, v3}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    sget v2, Lcom/samsung/android/settings/analyzestorage/data/constant/FileType;->DCS:I

    const-string v3, "image/x-dcs"

    const-string v5, "DCS"

    invoke-static {v2, v5, v3}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    sget v2, Lcom/samsung/android/settings/analyzestorage/data/constant/FileType;->DCR:I

    const-string v3, "image/x-dcr"

    const-string v5, "DCR"

    invoke-static {v2, v5, v3}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    sget v2, Lcom/samsung/android/settings/analyzestorage/data/constant/FileType;->DRF:I

    const-string v3, "image/x-drf"

    const-string v5, "DRF"

    invoke-static {v2, v5, v3}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    sget v2, Lcom/samsung/android/settings/analyzestorage/data/constant/FileType;->ARW:I

    const-string v3, "image/x-sony-arw"

    const-string v5, "ARW"

    invoke-static {v2, v5, v3}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    sget v2, Lcom/samsung/android/settings/analyzestorage/data/constant/FileType;->SRF:I

    const-string v3, "image/x-sony-srf"

    const-string v5, "SRF"

    invoke-static {v2, v5, v3}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    sget v2, Lcom/samsung/android/settings/analyzestorage/data/constant/FileType;->SR2:I

    const-string v3, "image/x-sony-sr2"

    const-string v5, "SR2"

    invoke-static {v2, v5, v3}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    sget v2, Lcom/samsung/android/settings/analyzestorage/data/constant/FileType;->CAP:I

    const-string v3, "image/x-cap"

    const-string v5, "CAP"

    invoke-static {v2, v5, v3}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    sget v2, Lcom/samsung/android/settings/analyzestorage/data/constant/FileType;->IIQ:I

    const-string v3, "image/x-iiq"

    const-string v5, "IIQ"

    invoke-static {v2, v5, v3}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    sget v2, Lcom/samsung/android/settings/analyzestorage/data/constant/FileType;->MRW:I

    const-string v3, "image/x-minolta-mrw"

    const-string v5, "MRW"

    invoke-static {v2, v5, v3}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    sget v2, Lcom/samsung/android/settings/analyzestorage/data/constant/FileType;->X3F:I

    const-string v3, "image/x-sigma-x3f"

    const-string v5, "X3F"

    invoke-static {v2, v5, v3}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    sget v2, Lcom/samsung/android/settings/analyzestorage/data/constant/FileType;->R3D:I

    const-string v3, "image/x-r3d"

    const-string v5, "R3D"

    invoke-static {v2, v5, v3}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    sget v2, Lcom/samsung/android/settings/analyzestorage/data/constant/FileType;->NEF:I

    const-string v3, "image/x-nikon-nef"

    const-string v5, "NEF"

    invoke-static {v2, v5, v3}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    sget v2, Lcom/samsung/android/settings/analyzestorage/data/constant/FileType;->NRW:I

    const-string v3, "image/x-nrw"

    const-string v5, "NRW"

    invoke-static {v2, v5, v3}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    sget v2, Lcom/samsung/android/settings/analyzestorage/data/constant/FileType;->PASSBOOK:I

    const-string v3, "application/vnd.apple.pkpass"

    const-string v5, "PKPASS"

    invoke-static {v2, v5, v3}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    sget v2, Lcom/samsung/android/settings/analyzestorage/data/constant/FileType;->TORRENT:I

    const-string v3, "application/x-bittorrent"

    const-string v5, "TORRENT"

    invoke-static {v2, v5, v3}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    sget v2, Lcom/samsung/android/settings/analyzestorage/data/constant/FileType;->PNK:I

    const-string v3, "application/pnk"

    const-string v5, "PNK"

    invoke-static {v2, v5, v3}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    sget v2, Lcom/samsung/android/settings/analyzestorage/data/constant/FileType;->XDW:I

    const-string v3, "application/vnd.fujixerox.docuworks"

    const-string v5, "XDW"

    invoke-static {v2, v5, v3}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    sget v2, Lcom/samsung/android/settings/analyzestorage/data/constant/FileType;->DWG:I

    const-string v3, "application/acad"

    const-string v5, "DWG"

    invoke-static {v2, v5, v3}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    const-string v2, "XMIND"

    sget v3, Lcom/samsung/android/settings/analyzestorage/data/constant/FileType;->XMIND:I

    invoke-static {v3, v2, v4}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    sget v2, Lcom/samsung/android/settings/analyzestorage/data/constant/FileType;->JSON:I

    const-string v3, "application/json"

    const-string v4, "JSON"

    invoke-static {v2, v4, v3}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    sget v2, Lcom/samsung/android/settings/analyzestorage/data/constant/FileType;->GLTF:I

    const-string/jumbo v3, "model/gltf+json"

    const-string v4, "GLTF"

    invoke-static {v2, v4, v3}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    const-string v2, "EMC"

    sget v3, Lcom/samsung/android/settings/analyzestorage/data/constant/FileType;->EMC:I

    invoke-static {v3, v2, p1}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->addFileType(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageVolumeManager;->updateStorageMountState(Landroid/content/Context;)V

    const-string p1, "controller_onCreate"

    invoke-static {p1}, Lcom/samsung/android/settings/Trace;->beginSection(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/analyzestorage/ui/MainActivity;->getController()Lcom/samsung/android/settings/analyzestorage/presenter/controllers/HomeController;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "curPageInfo"

    iget-object v3, p0, Lcom/samsung/android/settings/analyzestorage/ui/MainActivity;->pageInfo:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v3, p1, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;->mPageInfo:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;

    new-instance v2, Lcom/samsung/android/settings/analyzestorage/external/injection/ControllerFactory;

    iget-object v3, p1, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "null cannot be cast to non-null type android.app.Application"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/app/Application;

    iget v4, p1, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;->mInstanceId:I

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/settings/analyzestorage/external/injection/ControllerFactory;-><init>(Landroid/app/Application;I)V

    const-string/jumbo v3, "owner"

    iget-object v4, p1, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/HomeController;->owner:Landroidx/lifecycle/ViewModelStoreOwner;

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v4}, Landroidx/lifecycle/ViewModelStoreOwner;->getViewModelStore()Landroidx/lifecycle/ViewModelStore;

    move-result-object v3

    instance-of v5, v4, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    if-eqz v5, :cond_c

    move-object v6, v4

    check-cast v6, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    invoke-interface {v6}, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;->getDefaultViewModelCreationExtras()Landroidx/lifecycle/viewmodel/CreationExtras;

    move-result-object v6

    goto :goto_b

    :cond_c
    sget-object v6, Landroidx/lifecycle/viewmodel/CreationExtras$Empty;->INSTANCE:Landroidx/lifecycle/viewmodel/CreationExtras$Empty;

    :goto_b
    const-string/jumbo v7, "store"

    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "defaultCreationExtras"

    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v9, Landroidx/lifecycle/viewmodel/ViewModelProviderImpl;

    invoke-direct {v9, v3, v2, v6}, Landroidx/lifecycle/viewmodel/ViewModelProviderImpl;-><init>(Landroidx/lifecycle/ViewModelStore;Landroidx/lifecycle/ViewModelProvider$Factory;Landroidx/lifecycle/viewmodel/CreationExtras;)V

    const-class v3, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController;

    invoke-static {v3}, Lkotlin/jvm/JvmClassMappingKt;->getKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    invoke-interface {v3}, Lkotlin/reflect/KClass;->getQualifiedName()Ljava/lang/String;

    move-result-object v6

    const-string v10, "Local and anonymous classes can not be ViewModels"

    if-eqz v6, :cond_2d

    const-string v11, "androidx.lifecycle.ViewModelProvider.DefaultKey:"

    invoke-virtual {v11, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v3, v6}, Landroidx/lifecycle/viewmodel/ViewModelProviderImpl;->getViewModel$lifecycle_viewmodel_release(Lkotlin/reflect/KClass;Ljava/lang/String;)Landroidx/lifecycle/ViewModel;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController;

    iput-object v3, p1, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/HomeController;->overViewController:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController;

    iget-object v6, p1, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;->mPageInfo:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;

    invoke-virtual {v3, v6}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController;->onCreate(Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;)V

    invoke-interface {v4}, Landroidx/lifecycle/ViewModelStoreOwner;->getViewModelStore()Landroidx/lifecycle/ViewModelStore;

    move-result-object v3

    if-eqz v5, :cond_d

    check-cast v4, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    invoke-interface {v4}, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;->getDefaultViewModelCreationExtras()Landroidx/lifecycle/viewmodel/CreationExtras;

    move-result-object v4

    goto :goto_c

    :cond_d
    sget-object v4, Landroidx/lifecycle/viewmodel/CreationExtras$Empty;->INSTANCE:Landroidx/lifecycle/viewmodel/CreationExtras$Empty;

    :goto_c
    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Landroidx/lifecycle/viewmodel/ViewModelProviderImpl;

    invoke-direct {v5, v3, v2, v4}, Landroidx/lifecycle/viewmodel/ViewModelProviderImpl;-><init>(Landroidx/lifecycle/ViewModelStore;Landroidx/lifecycle/ViewModelProvider$Factory;Landroidx/lifecycle/viewmodel/CreationExtras;)V

    const-class v2, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController;

    invoke-static {v2}, Lkotlin/jvm/JvmClassMappingKt;->getKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    invoke-interface {v2}, Lkotlin/reflect/KClass;->getQualifiedName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2c

    invoke-virtual {v11, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Landroidx/lifecycle/viewmodel/ViewModelProviderImpl;->getViewModel$lifecycle_viewmodel_release(Lkotlin/reflect/KClass;Ljava/lang/String;)Landroidx/lifecycle/ViewModel;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController;

    iput-object v2, p1, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/HomeController;->recommendCardController:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController;

    sget-object v2, Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastReceiveCenter$InstanceHolder;->INSTANCE:Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastReceiveCenter;

    iget-object v3, p1, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/HomeController;->application:Landroid/app/Application;

    invoke-virtual {v3}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_1
    iget-object v4, v2, Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastReceiveCenter;->mStorageBroadcastHandler:Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/StorageBroadcastHandler;

    iput-object v2, v4, Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/StorageBroadcastHandler;->mNotifyBroadcastListener:Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastHandler$NotifyBroadcastListener;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    const-string v6, "android.os.storage.action.VOLUME_STATE_CHANGED"

    invoke-virtual {v5, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    const-string v6, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v5, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v6, "file"

    invoke-virtual {v5, v6}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastReceiveCenter$$ExternalSyntheticLambda3;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastReceiveCenter$$ExternalSyntheticLambda1;

    const/4 v6, 0x2

    invoke-direct {v5, v6, v2, v3}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastReceiveCenter$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_d

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "init() ] IllegalArgumentException:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BroadcastReceiveCenter"

    invoke-static {v3, v2}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_d
    iget-object v2, p1, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/HomeController;->listObserver:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/FileListObserver;

    iput-object p1, v2, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/FileListObserver;->mContentObserver:Lcom/samsung/android/settings/analyzestorage/presenter/observer/IContentObserver;

    iget-object p1, v2, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/FileListObserver;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_e

    iget-object p1, v2, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/FileListObserver;->mControllerWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/PageControllerInterface;

    check-cast p1, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;

    iget-object p1, p1, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;->mPageInfo:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;

    invoke-virtual {p1}, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;->getPath()Ljava/lang/String;

    move-result-object p1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "addObserver() ] Encoded path = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->getEncodedMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "FileListObserver"

    invoke-static {v4, v3}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v2, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/FileListObserver;->mObserverHandler:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/FileListObserver$1;

    invoke-virtual {v2, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    int-to-long v3, v0

    invoke-virtual {v2, p1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_e
    invoke-virtual {p0}, Lcom/samsung/android/settings/analyzestorage/ui/MainActivity;->getController()Lcom/samsung/android/settings/analyzestorage/presenter/controllers/HomeController;

    move-result-object p1

    iget-object p1, p1, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/HomeController;->overViewController:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController;

    const/4 v2, 0x0

    if-eqz p1, :cond_2b

    invoke-virtual {p1, v0, v0}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController;->updateUsageInfo(ZZ)V

    sget-object p1, Lcom/samsung/android/settings/analyzestorage/presenter/ActivityInfoStore;->context:Landroid/content/Context;

    iget p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/MainActivity;->instanceId:I

    invoke-static {p1}, Lcom/samsung/android/settings/analyzestorage/presenter/ActivityInfoStore$Companion;->getInstance(I)Lcom/samsung/android/settings/analyzestorage/presenter/ActivityInfoStore;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/analyzestorage/presenter/ActivityInfoStore;->register(Lcom/samsung/android/settings/analyzestorage/presenter/ActivityInfo$ActivityInfoListener;)V

    invoke-static {}, Lcom/samsung/android/settings/Trace;->endSection()V

    const p1, 0x7f0d0063

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    const p1, 0x7f0a106c

    invoke-virtual {p0, p1}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    const-string/jumbo v3, "requireViewById(...)"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    const v4, 0x7f0a0102

    invoke-virtual {p0, v4}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/android/material/appbar/AppBarLayout;

    iput-object v4, p0, Lcom/samsung/android/settings/analyzestorage/ui/MainActivity;->appBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    const p1, 0x7f1403e6

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v4, "getString(...)"

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v4

    if-eqz v4, :cond_f

    invoke-virtual {v4, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    invoke-virtual {v4}, Landroidx/appcompat/app/ActionBar;->setHomeButtonEnabled()V

    invoke-virtual {v4, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    invoke-virtual {v4, p1}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v4, v2}, Landroidx/appcompat/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_f
    const v4, 0x7f0a038f

    invoke-virtual {p0, v4}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    invoke-virtual {v4, p1}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setTitle(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/MainActivity;->offsetChangedListener:Lcom/samsung/android/settings/analyzestorage/ui/MainActivity$initAppBar$3;

    if-eqz p1, :cond_10

    iget-object v3, p0, Lcom/samsung/android/settings/analyzestorage/ui/MainActivity;->appBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz v3, :cond_10

    iget-object v3, v3, Lcom/google/android/material/appbar/AppBarLayout;->listeners:Ljava/util/List;

    if-eqz v3, :cond_10

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_10
    new-instance p1, Lcom/samsung/android/settings/analyzestorage/ui/MainActivity$initAppBar$3;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/analyzestorage/ui/MainActivity$initAppBar$3;-><init>(Lcom/samsung/android/settings/analyzestorage/ui/MainActivity;)V

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/MainActivity;->offsetChangedListener:Lcom/samsung/android/settings/analyzestorage/ui/MainActivity$initAppBar$3;

    iget-object v3, p0, Lcom/samsung/android/settings/analyzestorage/ui/MainActivity;->appBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz v3, :cond_11

    invoke-virtual {v3, p1}, Lcom/google/android/material/appbar/AppBarLayout;->addOnOffsetChangedListener(Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;)V

    :cond_11
    invoke-static {p0}, Lcom/samsung/android/settings/analyzestorage/ui/utils/UiUtils;->initStatusBar(Landroid/app/Activity;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/analyzestorage/ui/MainActivity;->getLayoutWidthManager()Lcom/samsung/android/settings/analyzestorage/ui/manager/LayoutWidthManager;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-virtual {p1, v3, v0}, Lcom/samsung/android/settings/analyzestorage/ui/manager/LayoutWidthManager;->setContentWidthDp(IZ)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/analyzestorage/ui/MainActivity;->getLayoutWidthManager()Lcom/samsung/android/settings/analyzestorage/ui/manager/LayoutWidthManager;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, p1, Lcom/samsung/android/settings/analyzestorage/ui/manager/LayoutWidthManager;->listenerList:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    iget-object p1, p1, Lcom/samsung/android/settings/analyzestorage/ui/manager/LayoutWidthManager;->listenerList:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_12
    invoke-virtual {p0}, Lcom/samsung/android/settings/analyzestorage/ui/MainActivity;->getLayoutWidthManager()Lcom/samsung/android/settings/analyzestorage/ui/manager/LayoutWidthManager;

    move-result-object p1

    iget p1, p1, Lcom/samsung/android/settings/analyzestorage/ui/manager/LayoutWidthManager;->contentWidthDp:I

    const/16 v3, 0x24d

    if-lt p1, v3, :cond_13

    move p1, v1

    goto :goto_e

    :cond_13
    move p1, v0

    :goto_e
    iput p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/MainActivity;->layoutState:I

    sget-boolean p1, Lcom/samsung/android/settings/analyzestorage/presenter/feature/SepFeatures$FloatingFeature;->SUPPORT_TRASH:Z

    if-eqz p1, :cond_14

    sget-object p1, Lcom/samsung/android/settings/analyzestorage/presenter/managers/TrashManager;->isLoadCompleted:Landroidx/lifecycle/MutableLiveData;

    new-instance v3, Lcom/samsung/android/settings/analyzestorage/ui/MainActivity$initAppTrashObserver$1;

    invoke-direct {v3, p0, v0}, Lcom/samsung/android/settings/analyzestorage/ui/MainActivity$initAppTrashObserver$1;-><init>(Lcom/samsung/android/settings/analyzestorage/ui/MainActivity;I)V

    invoke-virtual {p1, p0, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    :cond_14
    iget-boolean p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/MainActivity;->isRecreated:Z

    if-eqz p1, :cond_17

    sget-object p1, Lcom/samsung/android/settings/analyzestorage/presenter/clipboard/Clipboard$ClipboardHolder;->instance:Lcom/samsung/android/settings/analyzestorage/presenter/clipboard/Clipboard;

    iget v3, p0, Lcom/samsung/android/settings/analyzestorage/ui/MainActivity;->instanceId:I

    iget-object v4, p1, Lcom/samsung/android/settings/analyzestorage/presenter/clipboard/Clipboard;->recommendAppList:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    if-nez v3, :cond_15

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :cond_15
    sput-object v3, Lcom/samsung/android/settings/analyzestorage/presenter/managers/AsRecommendCardInfoManager;->appList:Ljava/util/ArrayList;

    iget v3, p0, Lcom/samsung/android/settings/analyzestorage/ui/MainActivity;->instanceId:I

    iget-object p1, p1, Lcom/samsung/android/settings/analyzestorage/presenter/clipboard/Clipboard;->recommendCloudList:Landroid/util/SparseArray;

    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    if-nez p1, :cond_16

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :cond_16
    sput-object p1, Lcom/samsung/android/settings/analyzestorage/presenter/managers/AsRecommendCardInfoManager;->cloudList:Ljava/util/ArrayList;

    :cond_17
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v3, "domainType"

    const/4 v4, -0x1

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    new-instance v3, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/OverView;

    const v4, 0x7f0a0b05

    invoke-virtual {p0, v4}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    move-result-object v4

    const-string/jumbo v5, "requireViewById(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/analyzestorage/ui/MainActivity;->getController()Lcom/samsung/android/settings/analyzestorage/presenter/controllers/HomeController;

    move-result-object v6

    iget-object v6, v6, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/HomeController;->overViewController:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController;

    if-eqz v6, :cond_2a

    invoke-direct {v3, v4, p0, v6, p1}, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/OverView;-><init>(Landroid/view/View;Landroidx/fragment/app/FragmentActivity;Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController;I)V

    iget v4, p0, Lcom/samsung/android/settings/analyzestorage/ui/MainActivity;->layoutState:I

    iput v4, v3, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/OverView;->layoutState:I

    const-string v4, "OverView_initLayout"

    invoke-static {v4}, Lcom/samsung/android/settings/Trace;->beginSection(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController;->checkSupportedStorageList()V

    iget-object v4, v6, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController;->mQuotaStorageList:Landroidx/lifecycle/MutableLiveData;

    const-string v7, "getSupportedStorageList(...)"

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v4, v3, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/OverView;->supportedStorageList:Landroidx/lifecycle/MutableLiveData;

    sget-object v4, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;->ANALYZE_STORAGE_HOME:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

    invoke-virtual {v4}, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;->getScreenIdForSA()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iget-object v7, v3, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/OverView;->supportedStorageList:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v7}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    if-eqz v7, :cond_18

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    goto :goto_f

    :cond_18
    move-object v7, v2

    :goto_f
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x226f

    invoke-static {v4, v8, v7}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IILjava/lang/String;)V

    invoke-virtual {v3}, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/OverView;->initIndicator()V

    iget-object v4, v3, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/OverView;->supportedStorageList:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v4}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    if-eqz v4, :cond_19

    invoke-virtual {v3}, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/OverView;->getIndicatorAdapter()Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/AsIndicatorAdapter;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v4, v7, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/AsIndicatorAdapter;->supportedList:Ljava/util/List;

    iget-object v7, v3, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/OverView;->indicator:Landroid/widget/GridView;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v7, v4}, Landroid/widget/GridView;->setNumColumns(I)V

    iget-object v4, v3, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/OverView;->indicator:Landroid/widget/GridView;

    invoke-virtual {v3}, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/OverView;->getIndicatorAdapter()Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/AsIndicatorAdapter;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_19
    iget-object v4, v3, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/OverView;->supportedStorageList:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v4}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    if-eqz v4, :cond_1a

    new-instance v7, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter;

    invoke-direct {v7, p0, v4, v6}, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter;-><init>(Landroidx/fragment/app/FragmentActivity;Ljava/util/List;Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController;)V

    iget v4, v3, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/OverView;->layoutState:I

    invoke-virtual {v7, v4}, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter;->setLayoutState(I)V

    iput-object v7, v3, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/OverView;->adapter:Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter;

    :cond_1a
    iget-object v4, v3, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/OverView;->adapter:Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter;

    iget-object v6, v3, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/OverView;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v6, v4}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    instance-of v7, v4, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v7, :cond_1b

    check-cast v4, Landroidx/recyclerview/widget/RecyclerView;

    goto :goto_10

    :cond_1b
    move-object v4, v2

    :goto_10
    if-nez v4, :cond_1c

    goto :goto_11

    :cond_1c
    invoke-virtual {v4, v0}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    :goto_11
    sget-object v4, Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageOperationManager$StorageOperationManagerHolder;->INSTANCE:Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageOperationManager;

    iget-object v4, v4, Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageOperationManager;->mUpdateListenerSet:Ljava/util/HashSet;

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    if-lez p1, :cond_1d

    goto :goto_12

    :cond_1d
    move p1, v0

    :goto_12
    iget-object v4, v3, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/OverView;->supportedStorageList:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v4}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    if-eqz v4, :cond_1e

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    goto :goto_13

    :cond_1e
    move p1, v0

    :goto_13
    if-lez p1, :cond_1f

    invoke-virtual {v6, p1, v0}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    invoke-virtual {v3}, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/OverView;->getIndicatorAdapter()Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/AsIndicatorAdapter;

    move-result-object v4

    iput p1, v4, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/AsIndicatorAdapter;->currentIndex:I

    invoke-virtual {v3}, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/OverView;->getIndicatorAdapter()Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/AsIndicatorAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_1f
    iget-object p1, v3, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/OverView;->pageChangeCallback:Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/OverView$pageChangeCallback$1;

    invoke-virtual {v6, p1}, Landroidx/viewpager2/widget/ViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    iget-object p1, v3, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/OverView;->supportedStorageList:Landroidx/lifecycle/MutableLiveData;

    new-instance v4, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/OverView$observeSupportedStorageList$1;

    invoke-direct {v4, v3}, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/OverView$observeSupportedStorageList$1;-><init>(Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/OverView;)V

    invoke-virtual {p1, p0, v4}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    invoke-static {}, Lcom/samsung/android/settings/Trace;->endSection()V

    iput-object v3, p0, Lcom/samsung/android/settings/analyzestorage/ui/MainActivity;->overView:Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/OverView;

    new-instance p1, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/RecommendCardView;

    const v3, 0x7f0a0c4e

    invoke-virtual {p0, v3}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, v3, p0}, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/RecommendCardView;-><init>(Landroid/view/View;Landroidx/fragment/app/FragmentActivity;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/analyzestorage/ui/MainActivity;->getController()Lcom/samsung/android/settings/analyzestorage/presenter/controllers/HomeController;

    move-result-object v3

    iget-object v3, v3, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/HomeController;->recommendCardController:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController;

    if-eqz v3, :cond_29

    iput-object v3, p1, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/RecommendCardView;->controller:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController;

    iget v2, p0, Lcom/samsung/android/settings/analyzestorage/ui/MainActivity;->layoutState:I

    iput v2, p1, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/RecommendCardView;->layoutState:I

    iget-boolean v2, p0, Lcom/samsung/android/settings/analyzestorage/ui/MainActivity;->isRecreated:Z

    const-string v3, "RecommendCardView_initLayout"

    invoke-static {v3}, Lcom/samsung/android/settings/Trace;->beginSection(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/RecommendCardView;->updateLoadingLayout(Z)V

    iget-object v3, p1, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/RecommendCardView;->controller:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController;

    if-eqz v3, :cond_20

    iget-object v3, v3, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController;->isLoading:Landroidx/lifecycle/MutableLiveData;

    if-eqz v3, :cond_20

    new-instance v4, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/RecommendCardView$observeLoadingState$1;

    invoke-direct {v4, p1, v0}, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/RecommendCardView$observeLoadingState$1;-><init>(Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/RecommendCardView;I)V

    invoke-virtual {v3, p0, v4}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    :cond_20
    iget-object v3, p1, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/RecommendCardView;->controller:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController;

    if-eqz v3, :cond_21

    iget-object v3, v3, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController;->recommendCardState:Landroidx/lifecycle/MutableLiveData;

    if-eqz v3, :cond_21

    new-instance v4, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/RecommendCardView$observeLoadingState$1;

    invoke-direct {v4, p1, v1}, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/RecommendCardView$observeLoadingState$1;-><init>(Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/RecommendCardView;I)V

    invoke-virtual {v3, p0, v4}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    :cond_21
    iget-object v3, p1, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/RecommendCardView;->controller:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController;

    if-eqz v3, :cond_22

    iput-object p1, v3, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController;->chooseAccountListener:Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/RecommendCardView;

    :cond_22
    if-nez v2, :cond_23

    if-eqz v3, :cond_23

    invoke-virtual {v3}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController;->updateSupportedRecommendCardList()V

    :cond_23
    invoke-static {}, Lcom/samsung/android/settings/Trace;->endSection()V

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/MainActivity;->recommendCardView:Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/RecommendCardView;

    invoke-static {}, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AsSubListFactory;->values()[Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AsSubListFactory;

    move-result-object p1

    array-length v2, p1

    move v3, v0

    :goto_14
    if-ge v3, v2, :cond_25

    aget-object v4, p1, v3

    invoke-virtual {v4}, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AsSubListFactory;->isFileType()Z

    move-result v6

    const-string v7, "getBaseContext(...)"

    if-eqz v6, :cond_24

    new-instance v6, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AsSubFileList;

    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AsSubListFactory;->getSaType()I

    move-result v7

    invoke-direct {v6, v8, p0, v7}, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AnalyzeStorageSubList;-><init>(Landroid/content/Context;Landroidx/lifecycle/LifecycleOwner;I)V

    const-string v7, "AsSubFileList"

    iput-object v7, v6, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AnalyzeStorageSubList;->logTag:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/settings/analyzestorage/ui/MainActivity;->getController()Lcom/samsung/android/settings/analyzestorage/presenter/controllers/HomeController;

    move-result-object v7

    invoke-virtual {v4}, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AsSubListFactory;->getSaType()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/HomeController;->getController(I)Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/SubFileListController;

    iput-object v8, v6, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AnalyzeStorageSubList;->controller:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;

    goto :goto_15

    :cond_24
    new-instance v6, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AsSubAppList;

    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AsSubListFactory;->getSaType()I

    move-result v7

    invoke-direct {v6, v8, p0, v7}, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AnalyzeStorageSubList;-><init>(Landroid/content/Context;Landroidx/lifecycle/LifecycleOwner;I)V

    const-string v7, "AsSubAppList"

    iput-object v7, v6, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AnalyzeStorageSubList;->logTag:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/settings/analyzestorage/ui/MainActivity;->getController()Lcom/samsung/android/settings/analyzestorage/presenter/controllers/HomeController;

    move-result-object v7

    invoke-virtual {v4}, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AsSubListFactory;->getSaType()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/HomeController;->getController(I)Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AppListController;

    iput-object v8, v6, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AnalyzeStorageSubList;->controller:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;

    :goto_15
    iget-object v7, v7, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;->mListener:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/EventListener;

    new-instance v8, Lcom/samsung/android/settings/analyzestorage/ui/exception/ExceptionHandler;

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    iput-object v8, v7, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/EventListener;->mExceptionListener:Lcom/samsung/android/settings/analyzestorage/presenter/exception/ExceptionListener;

    iget-object v7, p0, Lcom/samsung/android/settings/analyzestorage/ui/MainActivity;->subListArray:Landroid/util/SparseArray;

    invoke-virtual {v4}, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AsSubListFactory;->getSaType()I

    move-result v4

    invoke-virtual {v7, v4, v6}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    add-int/2addr v3, v1

    goto :goto_14

    :cond_25
    invoke-virtual {p0}, Lcom/samsung/android/settings/analyzestorage/ui/MainActivity;->getController()Lcom/samsung/android/settings/analyzestorage/presenter/controllers/HomeController;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p1, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/HomeController;->subFileListController:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_26

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/SubFileListController;

    iget-object v3, v3, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/SubFileListController;->mListItemTotalSizeData:Landroidx/lifecycle/MutableLiveData;

    new-instance v4, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/HomeController$observeSubLists$1$1;

    invoke-direct {v4, p1, v0}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/HomeController$observeSubLists$1$1;-><init>(Lcom/samsung/android/settings/analyzestorage/presenter/controllers/HomeController;I)V

    invoke-virtual {v3, p0, v4}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    goto :goto_16

    :cond_26
    iget-object v2, p1, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/HomeController;->appListController:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_27

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AppListController;

    iget-object v3, v3, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AppListController;->mAppListTotalSizeData:Landroidx/lifecycle/MutableLiveData;

    new-instance v4, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/HomeController$observeSubLists$1$1;

    invoke-direct {v4, p1, v1}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/HomeController$observeSubLists$1$1;-><init>(Lcom/samsung/android/settings/analyzestorage/presenter/controllers/HomeController;I)V

    invoke-virtual {v3, p0, v4}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    goto :goto_17

    :cond_27
    invoke-virtual {p0}, Lcom/samsung/android/settings/analyzestorage/ui/MainActivity;->getController()Lcom/samsung/android/settings/analyzestorage/presenter/controllers/HomeController;

    move-result-object p1

    iget-object p1, p1, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/HomeController;->mThirdBigSpace:Landroidx/lifecycle/MutableLiveData;

    new-instance v2, Lcom/samsung/android/settings/analyzestorage/ui/MainActivity$initAppTrashObserver$1;

    invoke-direct {v2, p0, v1}, Lcom/samsung/android/settings/analyzestorage/ui/MainActivity$initAppTrashObserver$1;-><init>(Lcom/samsung/android/settings/analyzestorage/ui/MainActivity;I)V

    invoke-virtual {p1, p0, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    iget-object p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/MainActivity;->subListArray:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v2

    :goto_18
    if-ge v0, v2, :cond_28

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AnalyzeStorageSubList;

    iget-object v4, p0, Lcom/samsung/android/settings/analyzestorage/ui/MainActivity;->handler:Landroid/os/Handler;

    new-instance v6, Lcom/samsung/android/settings/analyzestorage/ui/MainActivity$initLayout$4$1;

    invoke-direct {v6, v3, p0}, Lcom/samsung/android/settings/analyzestorage/ui/MainActivity$initLayout$4$1;-><init>(Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AnalyzeStorageSubList;Lcom/samsung/android/settings/analyzestorage/ui/MainActivity;)V

    invoke-virtual {v4, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    add-int/2addr v0, v1

    goto :goto_18

    :cond_28
    const p1, 0x7f0a0425

    invoke-virtual {p0, p1}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/samsung/android/settings/analyzestorage/ui/utils/UiUtils;->setFlexibleSpacing(Landroid/view/View;)V

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/ui/MainActivity;->backPressCallBack:Lcom/samsung/android/settings/analyzestorage/ui/MainActivity$backPressCallBack$1;

    invoke-virtual {p1, p0, v0}, Landroidx/activity/OnBackPressedDispatcher;->addCallback(Landroidx/lifecycle/LifecycleOwner;Landroidx/activity/OnBackPressedCallback;)V

    invoke-static {}, Lcom/samsung/android/settings/Trace;->endSection()V

    return-void

    :cond_29
    const-string/jumbo p0, "recommendCardController"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_2a
    const-string/jumbo p0, "overViewController"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_2b
    const-string/jumbo p0, "overViewController"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_2c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final onDestroy()V
    .locals 6

    invoke-virtual {p0}, Lcom/samsung/android/settings/analyzestorage/ui/MainActivity;->getLayoutWidthManager()Lcom/samsung/android/settings/analyzestorage/ui/manager/LayoutWidthManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Lcom/samsung/android/settings/analyzestorage/ui/manager/LayoutWidthManager;->listenerList:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/analyzestorage/ui/MainActivity;->getLayoutWidthManager()Lcom/samsung/android/settings/analyzestorage/ui/manager/LayoutWidthManager;

    move-result-object v0

    iget-object v1, v0, Lcom/samsung/android/settings/analyzestorage/ui/manager/LayoutWidthManager;->listenerList:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/samsung/android/settings/analyzestorage/ui/manager/LayoutWidthManager;->listenerList:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/ui/MainActivity;->overView:Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/OverView;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v2, v0, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/OverView;->indicator:Landroid/widget/GridView;

    invoke-virtual {v2, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v2, v0, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/OverView;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v2, v1}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v2, v2, Landroidx/viewpager2/widget/ViewPager2;->mExternalPageChangeCallbacks:Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;

    iget-object v2, v2, Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;->mCallbacks:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    iget-object v3, v0, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/OverView;->pageChangeCallback:Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/OverView$pageChangeCallback$1;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageOperationManager$StorageOperationManagerHolder;->INSTANCE:Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageOperationManager;

    iget-object v2, v2, Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageOperationManager;->mUpdateListenerSet:Ljava/util/HashSet;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/ui/MainActivity;->recommendCardView:Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/RecommendCardView;

    if-eqz v0, :cond_4

    iget-object v2, v0, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/RecommendCardView;->delayLoadingJob:Lkotlinx/coroutines/Job;

    if-eqz v2, :cond_2

    invoke-interface {v2, v1}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_2
    iput-object v1, v0, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/RecommendCardView;->delayLoadingJob:Lkotlinx/coroutines/Job;

    iget-object v2, v0, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/RecommendCardView;->indicator:Landroid/widget/GridView;

    invoke-virtual {v2, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v2, v0, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/RecommendCardView;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v2, v1}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v2, v2, Landroidx/viewpager2/widget/ViewPager2;->mExternalPageChangeCallbacks:Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;

    iget-object v2, v2, Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;->mCallbacks:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    iget-object v3, v0, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/RecommendCardView;->pageChangeCallback:Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/RecommendCardView$pageChangeCallback$1;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v2, v0, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/RecommendCardView;->controller:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController;

    if-eqz v2, :cond_3

    iput-object v1, v2, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController;->chooseAccountListener:Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/RecommendCardView;

    :cond_3
    sget-object v2, Lcom/samsung/android/settings/analyzestorage/presenter/managers/AsRecommendCardInfoManager;->Companion:Lcom/samsung/android/settings/analyzestorage/presenter/managers/AsRecommendCardInfoManager$Companion;

    iget-object v0, v0, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/RecommendCardView;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "getBaseContext(...)"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/AsRecommendCardInfoManager$Companion;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/analyzestorage/presenter/managers/AsRecommendCardInfoManager;

    sput-object v1, Lcom/samsung/android/settings/analyzestorage/presenter/managers/AsRecommendCardInfoManager;->cloudList:Ljava/util/ArrayList;

    sput-object v1, Lcom/samsung/android/settings/analyzestorage/presenter/managers/AsRecommendCardInfoManager;->appList:Ljava/util/ArrayList;

    :cond_4
    iput-object v1, p0, Lcom/samsung/android/settings/analyzestorage/ui/MainActivity;->overView:Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/OverView;

    iput-object v1, p0, Lcom/samsung/android/settings/analyzestorage/ui/MainActivity;->recommendCardView:Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/RecommendCardView;

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/ui/MainActivity;->subListArray:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_6

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->keyAt(I)I

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AnalyzeStorageSubList;

    iget-object v5, v4, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AnalyzeStorageSubList;->delayJob:Lkotlinx/coroutines/Job;

    if-eqz v5, :cond_5

    invoke-interface {v5, v1}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_5
    iput-object v1, v4, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AnalyzeStorageSubList;->delayJob:Lkotlinx/coroutines/Job;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/ui/MainActivity;->subListArray:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    invoke-static {}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/UserInfoManager;->getMyUserId()I

    move-result v0

    invoke-static {p0, v0}, Lcom/samsung/android/settings/analyzestorage/presenter/utils/preference/PreferenceUtils;->resetPrevMpGenerationForAnalyzeStorage(Landroid/content/Context;I)V

    sget-object v0, Lcom/samsung/android/settings/analyzestorage/presenter/ActivityInfoStore;->context:Landroid/content/Context;

    iget v0, p0, Lcom/samsung/android/settings/analyzestorage/ui/MainActivity;->instanceId:I

    invoke-static {v0}, Lcom/samsung/android/settings/analyzestorage/presenter/ActivityInfoStore$Companion;->getInstance(I)Lcom/samsung/android/settings/analyzestorage/presenter/ActivityInfoStore;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/android/settings/analyzestorage/presenter/ActivityInfoStore;->activityListenerList:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/ui/MainActivity;->appBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz v0, :cond_7

    iget-object v2, p0, Lcom/samsung/android/settings/analyzestorage/ui/MainActivity;->offsetChangedListener:Lcom/samsung/android/settings/analyzestorage/ui/MainActivity$initAppBar$3;

    iget-object v0, v0, Lcom/google/android/material/appbar/AppBarLayout;->listeners:Ljava/util/List;

    if-eqz v0, :cond_7

    if-eqz v2, :cond_7

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_7
    iput-object v1, p0, Lcom/samsung/android/settings/analyzestorage/ui/MainActivity;->offsetChangedListener:Lcom/samsung/android/settings/analyzestorage/ui/MainActivity$initAppBar$3;

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_3

    sget-object p1, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;->ANALYZE_STORAGE_HOME:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

    invoke-virtual {p1}, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;->getScreenIdForSA()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x2276

    invoke-static {p1, v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getCallingActivity()Landroid/content/ComponentName;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "from_shortcut"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "calling_package"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "callingPackageName is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " - isFromShortcut is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MainActivity"

    invoke-static {v3, v2}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    const-string v2, "com.samsung.android.lool"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    const-string p1, "com.samsung.android.sm.ACTION_DASHBOARD"

    invoke-virtual {p0, p1, v2}, Lcom/samsung/android/settings/analyzestorage/ui/MainActivity;->startActivity(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string p1, "com.sec.android.app.myfiles"

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    const-string/jumbo v0, "samsung.myfiles.intent.action.LAUNCH_MY_FILES"

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/settings/analyzestorage/ui/MainActivity;->startActivity(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/activity/OnBackPressedDispatcher;->onBackPressed()V

    :goto_1
    const/4 p0, 0x1

    goto :goto_2

    :cond_3
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    :goto_2
    return p0
.end method

.method public final onResume()V
    .locals 5

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/ui/MainActivity;->subListArray:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->keyAt(I)I

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AnalyzeStorageSubList;

    invoke-virtual {v4}, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AnalyzeStorageSubList;->onResume()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/analyzestorage/ui/MainActivity;->getController()Lcom/samsung/android/settings/analyzestorage/presenter/controllers/HomeController;

    move-result-object p0

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/HomeController;->listObserver:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/FileListObserver;

    iput-boolean v2, v0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/FileListObserver;->mIsPaused:Z

    iget-boolean v1, v0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/FileListObserver;->mNeedRefresh:Z

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/FileListObserver;->mControllerWeakReference:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/FileListObserver;->mContentObserver:Lcom/samsung/android/settings/analyzestorage/presenter/observer/IContentObserver;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/samsung/android/settings/analyzestorage/presenter/observer/IContentObserver;->onContentChanged()V

    goto :goto_1

    :cond_1
    iget-object v0, v0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/FileListObserver;->mControllerWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/PageControllerInterface;

    invoke-interface {v0, v3}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/PageControllerInterface;->refresh(Z)V

    :cond_2
    :goto_1
    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/HomeController;->subFileListController:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/SubFileListController;

    iget-boolean v1, v0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/SubFileListController;->mNeedUpdate:Z

    if-nez v1, :cond_3

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/SubFileListController;->refresh(Z)V

    :cond_3
    iput-boolean v3, v0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/SubFileListController;->mNeedUpdate:Z

    goto :goto_2

    :cond_4
    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    const-string/jumbo v0, "outState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    sget-object p1, Lcom/samsung/android/settings/analyzestorage/presenter/clipboard/Clipboard$ClipboardHolder;->instance:Lcom/samsung/android/settings/analyzestorage/presenter/clipboard/Clipboard;

    sget-object v0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/AsRecommendCardInfoManager;->Companion:Lcom/samsung/android/settings/analyzestorage/presenter/managers/AsRecommendCardInfoManager$Companion;

    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "getBaseContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/AsRecommendCardInfoManager$Companion;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/analyzestorage/presenter/managers/AsRecommendCardInfoManager;

    iget v0, p0, Lcom/samsung/android/settings/analyzestorage/ui/MainActivity;->instanceId:I

    sget-object v1, Lcom/samsung/android/settings/analyzestorage/presenter/managers/AsRecommendCardInfoManager;->appList:Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/samsung/android/settings/analyzestorage/presenter/clipboard/Clipboard;->recommendAppList:Landroid/util/SparseArray;

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget p0, p0, Lcom/samsung/android/settings/analyzestorage/ui/MainActivity;->instanceId:I

    sget-object v0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/AsRecommendCardInfoManager;->cloudList:Ljava/util/ArrayList;

    iget-object p1, p1, Lcom/samsung/android/settings/analyzestorage/presenter/clipboard/Clipboard;->recommendCloudList:Landroid/util/SparseArray;

    invoke-virtual {p1, p0, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public final onStop()V
    .locals 2

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/analyzestorage/ui/MainActivity;->getController()Lcom/samsung/android/settings/analyzestorage/presenter/controllers/HomeController;

    move-result-object p0

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/HomeController;->listObserver:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/FileListObserver;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/FileListObserver;->mIsPaused:Z

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/FileListObserver;->mNeedRefresh:Z

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/HomeController;->overViewController:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController;

    if-eqz p0, :cond_0

    sget-object p0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/application/AppDataManager;->applicationInfo:Ljava/util/List;

    check-cast p0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    sget-object p0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/application/AppDataManager;->appsDataMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    return-void

    :cond_0
    const-string/jumbo p0, "overViewController"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final onWidthChanged()V
    .locals 5

    invoke-virtual {p0}, Lcom/samsung/android/settings/analyzestorage/ui/MainActivity;->getLayoutWidthManager()Lcom/samsung/android/settings/analyzestorage/ui/manager/LayoutWidthManager;

    move-result-object v0

    iget v0, v0, Lcom/samsung/android/settings/analyzestorage/ui/manager/LayoutWidthManager;->contentWidthDp:I

    const/16 v1, 0x24d

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lt v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget v1, p0, Lcom/samsung/android/settings/analyzestorage/ui/MainActivity;->layoutState:I

    if-eq v1, v0, :cond_5

    iput v0, p0, Lcom/samsung/android/settings/analyzestorage/ui/MainActivity;->layoutState:I

    iget-object v1, p0, Lcom/samsung/android/settings/analyzestorage/ui/MainActivity;->overView:Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/OverView;

    if-eqz v1, :cond_1

    iput v0, v1, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/OverView;->layoutState:I

    iget-object v4, v1, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/OverView;->adapter:Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter;

    if-eqz v4, :cond_1

    invoke-virtual {v4, v0}, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter;->setLayoutState(I)V

    invoke-virtual {v1}, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/OverView;->getIndicatorAdapter()Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/AsIndicatorAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/AsIndicatorAdapter;->getCurrentSupportedType()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter;->updateLayout(Ljava/lang/Integer;)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/ui/MainActivity;->recommendCardView:Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/RecommendCardView;

    if-eqz v0, :cond_5

    iget p0, p0, Lcom/samsung/android/settings/analyzestorage/ui/MainActivity;->layoutState:I

    iput p0, v0, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/RecommendCardView;->layoutState:I

    iget-object v1, v0, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/RecommendCardView;->adapter:Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter;

    if-eqz v1, :cond_3

    if-ne p0, v3, :cond_2

    move v2, v3

    :cond_2
    iput-boolean v2, v1, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter;->isLandScape:Z

    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/RecommendCardView;->getRecommendCardIndicatorAdapter()Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/AsIndicatorAdapter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/AsIndicatorAdapter;->getCurrentSupportedType()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter;->updateLayout(Ljava/lang/Integer;)V

    :cond_4
    invoke-virtual {v0}, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/RecommendCardView;->getRecommendCardIndicatorAdapter()Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/AsIndicatorAdapter;

    move-result-object p0

    iget p0, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/AsIndicatorAdapter;->currentIndex:I

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/RecommendCardView;->updateHeightCard(I)V

    :cond_5
    return-void
.end method

.method public final startActivity(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const p1, 0x10008000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "startActivity() - Fail to start activity "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MainActivity"

    invoke-static {p1, p0}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
