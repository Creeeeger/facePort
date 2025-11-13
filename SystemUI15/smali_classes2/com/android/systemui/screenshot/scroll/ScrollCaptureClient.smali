.class public final Lcom/android/systemui/screenshot/scroll/ScrollCaptureClient;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field static final MATCH_ANY_TASK:I = -0x1


# instance fields
.field public final mBgExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Landroid/view/IWindowManager;Ljava/util/concurrent/Executor;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p3}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p1

    const-string p3, "context must be associated with a Display!"

    invoke-static {p1, p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/systemui/screenshot/scroll/ScrollCaptureClient;->mBgExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method
