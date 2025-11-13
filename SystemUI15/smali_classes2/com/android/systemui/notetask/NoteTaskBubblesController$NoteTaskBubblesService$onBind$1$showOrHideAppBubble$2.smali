.class public final Lcom/android/systemui/notetask/NoteTaskBubblesController$NoteTaskBubblesService$onBind$1$showOrHideAppBubble$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/notetask/NoteTaskBubblesController$NoteTaskBubblesService$onBind$1;


# direct methods
.method public constructor <init>(Lcom/android/systemui/notetask/NoteTaskBubblesController$NoteTaskBubblesService$onBind$1;Landroid/content/Intent;Lcom/android/systemui/notetask/NoteTaskBubblesController$NoteTaskBubblesService;Landroid/graphics/drawable/Icon;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/notetask/NoteTaskBubblesController$NoteTaskBubblesService$onBind$1$showOrHideAppBubble$2;->this$0:Lcom/android/systemui/notetask/NoteTaskBubblesController$NoteTaskBubblesService$onBind$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    sget v0, Lcom/android/systemui/log/DebugLogger;->$r8$clinit:I

    iget-object p0, p0, Lcom/android/systemui/notetask/NoteTaskBubblesController$NoteTaskBubblesService$onBind$1$showOrHideAppBubble$2;->this$0:Lcom/android/systemui/notetask/NoteTaskBubblesController$NoteTaskBubblesService$onBind$1;

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    move-result-object p0

    invoke-virtual {p0}, Lkotlin/jvm/internal/ClassReference;->getSimpleName()Ljava/lang/String;

    return-void
.end method
