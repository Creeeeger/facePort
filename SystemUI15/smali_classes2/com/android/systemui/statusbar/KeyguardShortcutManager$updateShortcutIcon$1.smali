.class public final Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcutIcon$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $th:I

.field public final synthetic this$0:Lcom/android/systemui/statusbar/KeyguardShortcutManager;


# direct methods
.method public constructor <init>(ILcom/android/systemui/statusbar/KeyguardShortcutManager;)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcutIcon$1;->$th:I

    iput-object p2, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcutIcon$1;->this$0:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    new-instance v0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcutIcon$1$1;

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcutIcon$1;->this$0:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    iget v2, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcutIcon$1;->$th:I

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcutIcon$1$1;-><init>(Lcom/android/systemui/statusbar/KeyguardShortcutManager;I)V

    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcutIcon$1;->$th:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcutIcon$1$1;->test(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcutIcon$1;->this$0:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    iget-object v1, v0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcutIcon$1$2;

    iget p0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcutIcon$1;->$th:I

    invoke-direct {v2, v0, p0}, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcutIcon$1$2;-><init>(Lcom/android/systemui/statusbar/KeyguardShortcutManager;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
