.class public final Lcom/android/systemui/screenshot/appclips/AppClipsViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mAppClipsCrossProcessHelper:Lcom/android/systemui/screenshot/appclips/AppClipsCrossProcessHelper;

.field public final mBgExecutor:Ljava/util/concurrent/Executor;

.field public final mErrorLiveData:Landroidx/lifecycle/MutableLiveData;

.field public final mImageExporter:Lcom/android/systemui/screenshot/ImageExporter;

.field public final mMainExecutor:Ljava/util/concurrent/Executor;

.field public final mResultLiveData:Landroidx/lifecycle/MutableLiveData;

.field public final mScreenshotLiveData:Landroidx/lifecycle/MutableLiveData;


# direct methods
.method public constructor <init>(Lcom/android/systemui/screenshot/appclips/AppClipsCrossProcessHelper;Lcom/android/systemui/screenshot/ImageExporter;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/screenshot/appclips/AppClipsViewModel;->mAppClipsCrossProcessHelper:Lcom/android/systemui/screenshot/appclips/AppClipsCrossProcessHelper;

    iput-object p2, p0, Lcom/android/systemui/screenshot/appclips/AppClipsViewModel;->mImageExporter:Lcom/android/systemui/screenshot/ImageExporter;

    iput-object p3, p0, Lcom/android/systemui/screenshot/appclips/AppClipsViewModel;->mMainExecutor:Ljava/util/concurrent/Executor;

    iput-object p4, p0, Lcom/android/systemui/screenshot/appclips/AppClipsViewModel;->mBgExecutor:Ljava/util/concurrent/Executor;

    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/screenshot/appclips/AppClipsViewModel;->mScreenshotLiveData:Landroidx/lifecycle/MutableLiveData;

    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/screenshot/appclips/AppClipsViewModel;->mResultLiveData:Landroidx/lifecycle/MutableLiveData;

    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/screenshot/appclips/AppClipsViewModel;->mErrorLiveData:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method
