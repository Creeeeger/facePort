.class public final Lcom/android/systemui/notetask/NoteTaskBubblesController$showOrHideAppBubble$2$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/internal/infra/ServiceConnector$VoidJob;


# instance fields
.field public final synthetic $icon:Landroid/graphics/drawable/Icon;

.field public final synthetic $intent:Landroid/content/Intent;

.field public final synthetic $userHandle:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Landroid/content/Intent;Landroid/os/UserHandle;Landroid/graphics/drawable/Icon;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/notetask/NoteTaskBubblesController$showOrHideAppBubble$2$1;->$intent:Landroid/content/Intent;

    iput-object p2, p0, Lcom/android/systemui/notetask/NoteTaskBubblesController$showOrHideAppBubble$2$1;->$userHandle:Landroid/os/UserHandle;

    iput-object p3, p0, Lcom/android/systemui/notetask/NoteTaskBubblesController$showOrHideAppBubble$2$1;->$icon:Landroid/graphics/drawable/Icon;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final runNoResult(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lcom/android/systemui/notetask/INoteTaskBubblesService;

    iget-object v0, p0, Lcom/android/systemui/notetask/NoteTaskBubblesController$showOrHideAppBubble$2$1;->$intent:Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/notetask/NoteTaskBubblesController$showOrHideAppBubble$2$1;->$userHandle:Landroid/os/UserHandle;

    iget-object p0, p0, Lcom/android/systemui/notetask/NoteTaskBubblesController$showOrHideAppBubble$2$1;->$icon:Landroid/graphics/drawable/Icon;

    invoke-interface {p1, v0, v1, p0}, Lcom/android/systemui/notetask/INoteTaskBubblesService;->showOrHideAppBubble(Landroid/content/Intent;Landroid/os/UserHandle;Landroid/graphics/drawable/Icon;)V

    return-void
.end method
