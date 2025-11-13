.class public final Lcom/android/systemui/notetask/NoteTaskBubblesController$NoteTaskBubblesService$onBind$1$showOrHideAppBubble$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $icon:Landroid/graphics/drawable/Icon;

.field public final synthetic $intent:Landroid/content/Intent;

.field public final synthetic $userHandle:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Landroid/content/Intent;Landroid/os/UserHandle;Landroid/graphics/drawable/Icon;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/notetask/NoteTaskBubblesController$NoteTaskBubblesService$onBind$1$showOrHideAppBubble$1;->$intent:Landroid/content/Intent;

    iput-object p2, p0, Lcom/android/systemui/notetask/NoteTaskBubblesController$NoteTaskBubblesService$onBind$1$showOrHideAppBubble$1;->$userHandle:Landroid/os/UserHandle;

    iput-object p3, p0, Lcom/android/systemui/notetask/NoteTaskBubblesController$NoteTaskBubblesService$onBind$1$showOrHideAppBubble$1;->$icon:Landroid/graphics/drawable/Icon;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    check-cast p1, Lcom/android/wm/shell/bubbles/Bubbles;

    iget-object v0, p0, Lcom/android/systemui/notetask/NoteTaskBubblesController$NoteTaskBubblesService$onBind$1$showOrHideAppBubble$1;->$intent:Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/notetask/NoteTaskBubblesController$NoteTaskBubblesService$onBind$1$showOrHideAppBubble$1;->$userHandle:Landroid/os/UserHandle;

    iget-object p0, p0, Lcom/android/systemui/notetask/NoteTaskBubblesController$NoteTaskBubblesService$onBind$1$showOrHideAppBubble$1;->$icon:Landroid/graphics/drawable/Icon;

    check-cast p1, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;

    iget-object v2, p1, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    iget-object v2, v2, Lcom/android/wm/shell/bubbles/BubbleController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v3, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$$ExternalSyntheticLambda0;

    invoke-direct {v3, p1, v0, v1, p0}, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;Landroid/content/Intent;Landroid/os/UserHandle;Landroid/graphics/drawable/Icon;)V

    check-cast v2, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {v2, v3}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
