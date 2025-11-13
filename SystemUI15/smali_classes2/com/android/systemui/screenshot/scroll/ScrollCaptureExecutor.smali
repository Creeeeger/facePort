.class public final Lcom/android/systemui/screenshot/scroll/ScrollCaptureExecutor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mainExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/screenshot/scroll/ScrollCaptureExecutor$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/screenshot/scroll/ScrollCaptureExecutor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/ActivityManager;Lcom/android/systemui/screenshot/scroll/ScrollCaptureClient;Lcom/android/systemui/screenshot/scroll/ScrollCaptureController;Lcom/android/systemui/screenshot/scroll/LongScreenshotData;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p5, p0, Lcom/android/systemui/screenshot/scroll/ScrollCaptureExecutor;->mainExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {p1}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    return-void
.end method
