.class Lcom/android/systemui/bixby2/controller/ScreenController$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/android/systemui/bixby2/controller/ScreenController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/bixby2/controller/ScreenController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/bixby2/controller/ScreenController$1;->this$0:Lcom/android/systemui/bixby2/controller/ScreenController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    move-object/from16 v0, p0

    const-wide/16 v1, 0x5dc

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    iget-object v1, v0, Lcom/android/systemui/bixby2/controller/ScreenController$1;->this$0:Lcom/android/systemui/bixby2/controller/ScreenController;

    invoke-static {v1}, Lcom/android/systemui/bixby2/controller/ScreenController;->-$$Nest$fgetmInstrumentation(Lcom/android/systemui/bixby2/controller/ScreenController;)Landroid/app/Instrumentation;

    move-result-object v1

    new-instance v15, Landroid/view/KeyEvent;

    const/4 v14, 0x0

    const/16 v16, 0x1

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, -0x1

    const/4 v12, 0x0

    const/16 v13, 0x48

    move-object v2, v15

    move-object v0, v15

    move/from16 v15, v16

    invoke-direct/range {v2 .. v15}, Landroid/view/KeyEvent;-><init>(JJIIIIIIIII)V

    invoke-virtual {v1, v0}, Landroid/app/Instrumentation;->sendKeySync(Landroid/view/KeyEvent;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/bixby2/controller/ScreenController$1;->this$0:Lcom/android/systemui/bixby2/controller/ScreenController;

    invoke-static {v0}, Lcom/android/systemui/bixby2/controller/ScreenController;->-$$Nest$fgetmInstrumentation(Lcom/android/systemui/bixby2/controller/ScreenController;)Landroid/app/Instrumentation;

    move-result-object v0

    new-instance v15, Landroid/view/KeyEvent;

    const/4 v13, 0x0

    const/4 v14, 0x1

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/16 v12, 0x48

    move-object v1, v15

    invoke-direct/range {v1 .. v14}, Landroid/view/KeyEvent;-><init>(JJIIIIIIIII)V

    invoke-virtual {v0, v15}, Landroid/app/Instrumentation;->sendKeySync(Landroid/view/KeyEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
