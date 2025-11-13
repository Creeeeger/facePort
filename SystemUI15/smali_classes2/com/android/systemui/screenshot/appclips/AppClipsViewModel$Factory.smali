.class public final Lcom/android/systemui/screenshot/appclips/AppClipsViewModel$Factory;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/lifecycle/ViewModelProvider$Factory;


# instance fields
.field public final mAppClipsCrossProcessHelper:Lcom/android/systemui/screenshot/appclips/AppClipsCrossProcessHelper;

.field public final mBgExecutor:Ljava/util/concurrent/Executor;

.field public final mImageExporter:Lcom/android/systemui/screenshot/ImageExporter;

.field public final mMainExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Lcom/android/systemui/screenshot/appclips/AppClipsCrossProcessHelper;Lcom/android/systemui/screenshot/ImageExporter;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/screenshot/appclips/AppClipsViewModel$Factory;->mAppClipsCrossProcessHelper:Lcom/android/systemui/screenshot/appclips/AppClipsCrossProcessHelper;

    iput-object p2, p0, Lcom/android/systemui/screenshot/appclips/AppClipsViewModel$Factory;->mImageExporter:Lcom/android/systemui/screenshot/ImageExporter;

    iput-object p3, p0, Lcom/android/systemui/screenshot/appclips/AppClipsViewModel$Factory;->mMainExecutor:Ljava/util/concurrent/Executor;

    iput-object p4, p0, Lcom/android/systemui/screenshot/appclips/AppClipsViewModel$Factory;->mBgExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;
    .locals 3

    const-class v0, Lcom/android/systemui/screenshot/appclips/AppClipsViewModel;

    if-ne p1, v0, :cond_0

    new-instance p1, Lcom/android/systemui/screenshot/appclips/AppClipsViewModel;

    iget-object v0, p0, Lcom/android/systemui/screenshot/appclips/AppClipsViewModel$Factory;->mMainExecutor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lcom/android/systemui/screenshot/appclips/AppClipsViewModel$Factory;->mBgExecutor:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lcom/android/systemui/screenshot/appclips/AppClipsViewModel$Factory;->mAppClipsCrossProcessHelper:Lcom/android/systemui/screenshot/appclips/AppClipsCrossProcessHelper;

    iget-object p0, p0, Lcom/android/systemui/screenshot/appclips/AppClipsViewModel$Factory;->mImageExporter:Lcom/android/systemui/screenshot/ImageExporter;

    invoke-direct {p1, v2, p0, v0, v1}, Lcom/android/systemui/screenshot/appclips/AppClipsViewModel;-><init>(Lcom/android/systemui/screenshot/appclips/AppClipsCrossProcessHelper;Lcom/android/systemui/screenshot/ImageExporter;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;)V

    return-object p1

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method
