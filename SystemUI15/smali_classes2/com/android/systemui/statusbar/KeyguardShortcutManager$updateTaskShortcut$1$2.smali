.class public final Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateTaskShortcut$1$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $th:I

.field public final synthetic this$0:Lcom/android/systemui/statusbar/KeyguardShortcutManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/KeyguardShortcutManager;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateTaskShortcut$1$2;->this$0:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    iput p2, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateTaskShortcut$1$2;->$th:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateTaskShortcut$1$2;->this$0:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    iget p0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateTaskShortcut$1$2;->$th:I

    sget-object v1, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->Companion:Lcom/android/systemui/statusbar/KeyguardShortcutManager$Companion;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->sendUpdateShortcutViewToCallback(I)V

    return-void
.end method
