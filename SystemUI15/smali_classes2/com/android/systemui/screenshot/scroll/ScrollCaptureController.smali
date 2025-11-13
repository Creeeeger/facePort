.class public final Lcom/android/systemui/screenshot/scroll/ScrollCaptureController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mBgExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/android/systemui/screenshot/scroll/ScrollCaptureClient;Lcom/android/systemui/screenshot/scroll/ImageTileSet;Lcom/android/internal/logging/UiEventLogger;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/screenshot/scroll/ScrollCaptureController;->mBgExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public getTargetTopSizeRatio()F
    .locals 0

    const p0, 0x3ecccccd    # 0.4f

    return p0
.end method
