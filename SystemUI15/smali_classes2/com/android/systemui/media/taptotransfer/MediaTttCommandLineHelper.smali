.class public final Lcom/android/systemui/media/taptotransfer/MediaTttCommandLineHelper;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/CoreStartable;


# instance fields
.field public final commandRegistry:Lcom/android/systemui/statusbar/commandline/CommandRegistry;

.field public final context:Landroid/content/Context;

.field public final mainExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/commandline/CommandRegistry;Landroid/content/Context;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/taptotransfer/MediaTttCommandLineHelper;->commandRegistry:Lcom/android/systemui/statusbar/commandline/CommandRegistry;

    iput-object p2, p0, Lcom/android/systemui/media/taptotransfer/MediaTttCommandLineHelper;->context:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/systemui/media/taptotransfer/MediaTttCommandLineHelper;->mainExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final start()V
    .locals 3

    new-instance v0, Lcom/android/systemui/media/taptotransfer/MediaTttCommandLineHelper$start$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/media/taptotransfer/MediaTttCommandLineHelper$start$1;-><init>(Lcom/android/systemui/media/taptotransfer/MediaTttCommandLineHelper;)V

    iget-object v1, p0, Lcom/android/systemui/media/taptotransfer/MediaTttCommandLineHelper;->commandRegistry:Lcom/android/systemui/statusbar/commandline/CommandRegistry;

    const-string v2, "media-ttt-chip-sender"

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/statusbar/commandline/CommandRegistry;->registerCommand(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    new-instance v0, Lcom/android/systemui/media/taptotransfer/MediaTttCommandLineHelper$start$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/media/taptotransfer/MediaTttCommandLineHelper$start$2;-><init>(Lcom/android/systemui/media/taptotransfer/MediaTttCommandLineHelper;)V

    const-string p0, "media-ttt-chip-receiver"

    invoke-virtual {v1, p0, v0}, Lcom/android/systemui/statusbar/commandline/CommandRegistry;->registerCommand(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method
