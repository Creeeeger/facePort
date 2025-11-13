.class public final Lcom/android/systemui/media/taptotransfer/MediaTttCommandLineHelper$SenderCommand;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/commandline/Command;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/media/taptotransfer/MediaTttCommandLineHelper;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/taptotransfer/MediaTttCommandLineHelper;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/media/taptotransfer/MediaTttCommandLineHelper$SenderCommand;->this$0:Lcom/android/systemui/media/taptotransfer/MediaTttCommandLineHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final execute(Ljava/io/PrintWriter;Ljava/util/List;)V
    .locals 11

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    const-string p0, "Usage: adb shell cmd statusbar media-ttt-chip-sender <deviceName> <chipState> useAppIcon=[true|false] id=<id> showUndo=[true|false]"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "Note: useAppIcon, id, and showUndo are optional additional commands."

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Lcom/android/systemui/media/taptotransfer/MediaTttCommandLineHelper$SenderArgs;

    const/4 v10, 0x0

    invoke-interface {p2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    const/4 v2, 0x1

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    const/16 v8, 0x1c

    const/4 v9, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Lcom/android/systemui/media/taptotransfer/MediaTttCommandLineHelper$SenderArgs;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object v2, v0, Lcom/android/systemui/media/taptotransfer/MediaTttCommandLineHelper$SenderArgs;->commandName:Ljava/lang/String;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {p2, v1, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p2

    check-cast p2, Ljava/lang/Iterable;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v3, "useAppIcon=false"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iput-boolean v10, v0, Lcom/android/systemui/media/taptotransfer/MediaTttCommandLineHelper$SenderArgs;->useAppIcon:Z

    goto :goto_0

    :cond_3
    const-string/jumbo v3, "showUndo=false"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iput-boolean v10, v0, Lcom/android/systemui/media/taptotransfer/MediaTttCommandLineHelper$SenderArgs;->showUndo:Z

    goto :goto_0

    :cond_4
    const/4 v3, 0x3

    invoke-virtual {v1, v10, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string v5, "id="

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/media/taptotransfer/MediaTttCommandLineHelper$SenderArgs;->id:Ljava/lang/String;

    goto :goto_0

    :cond_5
    :goto_1
    :try_start_0
    sget-object p2, Lcom/android/systemui/media/taptotransfer/sender/ChipStateSender;->Companion:Lcom/android/systemui/media/taptotransfer/sender/ChipStateSender$Companion;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/android/systemui/media/taptotransfer/sender/ChipStateSender;->valueOf(Ljava/lang/String;)Lcom/android/systemui/media/taptotransfer/sender/ChipStateSender;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/systemui/media/taptotransfer/sender/ChipStateSender;->getStateInt()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p0, p0, Lcom/android/systemui/media/taptotransfer/MediaTttCommandLineHelper$SenderCommand;->this$0:Lcom/android/systemui/media/taptotransfer/MediaTttCommandLineHelper;

    iget-object v1, p0, Lcom/android/systemui/media/taptotransfer/MediaTttCommandLineHelper;->context:Landroid/content/Context;

    const-string/jumbo v2, "statusbar"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/StatusBarManager;

    new-instance v2, Landroid/media/MediaRoute2Info$Builder;

    iget-object v3, v0, Lcom/android/systemui/media/taptotransfer/MediaTttCommandLineHelper$SenderArgs;->id:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/systemui/media/taptotransfer/MediaTttCommandLineHelper$SenderArgs;->deviceName:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/media/MediaRoute2Info$Builder;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string v3, "feature"

    invoke-virtual {v2, v3}, Landroid/media/MediaRoute2Info$Builder;->addFeature(Ljava/lang/String;)Landroid/media/MediaRoute2Info$Builder;

    move-result-object v2

    iget-boolean v3, v0, Lcom/android/systemui/media/taptotransfer/MediaTttCommandLineHelper$SenderArgs;->useAppIcon:Z

    if-eqz v3, :cond_6

    const-string v3, "com.android.systemui"

    invoke-virtual {v2, v3}, Landroid/media/MediaRoute2Info$Builder;->setClientPackageName(Ljava/lang/String;)Landroid/media/MediaRoute2Info$Builder;

    :cond_6
    const/4 v3, 0x4

    if-eq p2, v3, :cond_7

    const/4 v3, 0x5

    if-ne p2, v3, :cond_8

    :cond_7
    iget-boolean v0, v0, Lcom/android/systemui/media/taptotransfer/MediaTttCommandLineHelper$SenderArgs;->showUndo:Z

    if-eqz v0, :cond_8

    iget-object p0, p0, Lcom/android/systemui/media/taptotransfer/MediaTttCommandLineHelper;->mainExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/android/systemui/media/taptotransfer/MediaTttCommandLineHelper$SenderCommand$execute$1;

    invoke-direct {v0, p1}, Lcom/android/systemui/media/taptotransfer/MediaTttCommandLineHelper$SenderCommand$execute$1;-><init>(Ljava/lang/Integer;)V

    goto :goto_2

    :cond_8
    const/4 p0, 0x0

    move-object v0, p0

    :goto_2
    invoke-virtual {v2}, Landroid/media/MediaRoute2Info$Builder;->build()Landroid/media/MediaRoute2Info;

    move-result-object p1

    invoke-virtual {v1, p2, p1, p0, v0}, Landroid/app/StatusBarManager;->updateMediaTapToTransferSenderDisplay(ILandroid/media/MediaRoute2Info;Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V

    return-void

    :catch_0
    const-string p0, "Invalid command name "

    invoke-static {p1, p0, v2}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
