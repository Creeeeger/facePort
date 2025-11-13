.class public final Lcom/android/systemui/notetask/NoteTaskBubblesController$NoteTaskBubblesService$onBind$1;
.super Lcom/android/systemui/notetask/INoteTaskBubblesService$Stub;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/notetask/NoteTaskBubblesController$NoteTaskBubblesService;


# direct methods
.method public constructor <init>(Lcom/android/systemui/notetask/NoteTaskBubblesController$NoteTaskBubblesService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/notetask/NoteTaskBubblesController$NoteTaskBubblesService$onBind$1;->this$0:Lcom/android/systemui/notetask/NoteTaskBubblesController$NoteTaskBubblesService;

    invoke-direct {p0}, Lcom/android/systemui/notetask/INoteTaskBubblesService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final areBubblesAvailable()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/notetask/NoteTaskBubblesController$NoteTaskBubblesService$onBind$1;->this$0:Lcom/android/systemui/notetask/NoteTaskBubblesController$NoteTaskBubblesService;

    iget-object p0, p0, Lcom/android/systemui/notetask/NoteTaskBubblesController$NoteTaskBubblesService;->mOptionalBubbles:Ljava/util/Optional;

    invoke-virtual {p0}, Ljava/util/Optional;->isPresent()Z

    move-result p0

    return p0
.end method

.method public final showOrHideAppBubble(Landroid/content/Intent;Landroid/os/UserHandle;Landroid/graphics/drawable/Icon;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/notetask/NoteTaskBubblesController$NoteTaskBubblesService$onBind$1;->this$0:Lcom/android/systemui/notetask/NoteTaskBubblesController$NoteTaskBubblesService;

    iget-object v0, v0, Lcom/android/systemui/notetask/NoteTaskBubblesController$NoteTaskBubblesService;->mOptionalBubbles:Ljava/util/Optional;

    new-instance v1, Lcom/android/systemui/notetask/NoteTaskBubblesController$NoteTaskBubblesService$onBind$1$showOrHideAppBubble$1;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/systemui/notetask/NoteTaskBubblesController$NoteTaskBubblesService$onBind$1$showOrHideAppBubble$1;-><init>(Landroid/content/Intent;Landroid/os/UserHandle;Landroid/graphics/drawable/Icon;)V

    new-instance p2, Lcom/android/systemui/notetask/NoteTaskBubblesController$NoteTaskBubblesService$onBind$1$showOrHideAppBubble$2;

    iget-object v2, p0, Lcom/android/systemui/notetask/NoteTaskBubblesController$NoteTaskBubblesService$onBind$1;->this$0:Lcom/android/systemui/notetask/NoteTaskBubblesController$NoteTaskBubblesService;

    invoke-direct {p2, p0, p1, v2, p3}, Lcom/android/systemui/notetask/NoteTaskBubblesController$NoteTaskBubblesService$onBind$1$showOrHideAppBubble$2;-><init>(Lcom/android/systemui/notetask/NoteTaskBubblesController$NoteTaskBubblesService$onBind$1;Landroid/content/Intent;Lcom/android/systemui/notetask/NoteTaskBubblesController$NoteTaskBubblesService;Landroid/graphics/drawable/Icon;)V

    invoke-virtual {v0, v1, p2}, Ljava/util/Optional;->ifPresentOrElse(Ljava/util/function/Consumer;Ljava/lang/Runnable;)V

    return-void
.end method
