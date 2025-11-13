.class public final Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateTaskShortcut$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $taskName:Ljava/lang/String;

.field public final synthetic $th:I

.field public final synthetic this$0:Lcom/android/systemui/statusbar/KeyguardShortcutManager;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/android/systemui/statusbar/KeyguardShortcutManager;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateTaskShortcut$1;->$taskName:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateTaskShortcut$1;->this$0:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    iput p3, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateTaskShortcut$1;->$th:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    :try_start_0
    new-instance v0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateTaskShortcut$1$1;

    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateTaskShortcut$1;->$th:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateTaskShortcut$1;->this$0:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateTaskShortcut$1;->$taskName:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateTaskShortcut$1$1;-><init>(ILcom/android/systemui/statusbar/KeyguardShortcutManager;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateTaskShortcut$1;->$taskName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateTaskShortcut$1$1;->test(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateTaskShortcut$1;->this$0:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    iget-object v1, v0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateTaskShortcut$1$2;

    iget v3, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateTaskShortcut$1;->$th:I

    invoke-direct {v2, v0, v3}, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateTaskShortcut$1$2;-><init>(Lcom/android/systemui/statusbar/KeyguardShortcutManager;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateTaskShortcut$1;->this$0:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    iget-object v1, v0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateTaskShortcut$1$3;

    iget v3, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateTaskShortcut$1;->$th:I

    invoke-direct {v2, v0, v3}, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateTaskShortcut$1$3;-><init>(Lcom/android/systemui/statusbar/KeyguardShortcutManager;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateTaskShortcut$1;->this$0:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    invoke-static {p0}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->access$getSettingsHelper$p(Lcom/android/systemui/statusbar/KeyguardShortcutManager;)Lcom/android/systemui/util/SettingsHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->resetShortcutValue()V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "getPositionCorrectionRatio exception = "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "KeyguardShortcutManager"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method
