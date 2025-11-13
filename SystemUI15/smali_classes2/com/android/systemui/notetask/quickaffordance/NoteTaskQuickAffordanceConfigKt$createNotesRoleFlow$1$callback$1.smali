.class public final Lcom/android/systemui/notetask/quickaffordance/NoteTaskQuickAffordanceConfigKt$createNotesRoleFlow$1$callback$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/app/role/OnRoleHoldersChangedListener;


# instance fields
.field public final synthetic $$this$callbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

.field public final synthetic $noteTaskController:Lcom/android/systemui/notetask/NoteTaskController;

.field public final synthetic $noteTaskInfoResolver:Lcom/android/systemui/notetask/NoteTaskInfoResolver;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/channels/ProducerScope;Lcom/android/systemui/notetask/NoteTaskInfoResolver;Lcom/android/systemui/notetask/NoteTaskController;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/channels/ProducerScope;",
            "Lcom/android/systemui/notetask/NoteTaskInfoResolver;",
            "Lcom/android/systemui/notetask/NoteTaskController;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/notetask/quickaffordance/NoteTaskQuickAffordanceConfigKt$createNotesRoleFlow$1$callback$1;->$$this$callbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    iput-object p2, p0, Lcom/android/systemui/notetask/quickaffordance/NoteTaskQuickAffordanceConfigKt$createNotesRoleFlow$1$callback$1;->$noteTaskInfoResolver:Lcom/android/systemui/notetask/NoteTaskInfoResolver;

    iput-object p3, p0, Lcom/android/systemui/notetask/quickaffordance/NoteTaskQuickAffordanceConfigKt$createNotesRoleFlow$1$callback$1;->$noteTaskController:Lcom/android/systemui/notetask/NoteTaskController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onRoleHoldersChanged(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 2

    const-string p2, "android.app.role.NOTES"

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/notetask/quickaffordance/NoteTaskQuickAffordanceConfigKt$createNotesRoleFlow$1$callback$1;->$$this$callbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    iget-object p2, p0, Lcom/android/systemui/notetask/quickaffordance/NoteTaskQuickAffordanceConfigKt$createNotesRoleFlow$1$callback$1;->$noteTaskInfoResolver:Lcom/android/systemui/notetask/NoteTaskInfoResolver;

    iget-object p0, p0, Lcom/android/systemui/notetask/quickaffordance/NoteTaskQuickAffordanceConfigKt$createNotesRoleFlow$1$callback$1;->$noteTaskController:Lcom/android/systemui/notetask/NoteTaskController;

    sget-object v0, Lcom/android/systemui/notetask/NoteTaskEntryPoint;->QUICK_AFFORDANCE:Lcom/android/systemui/notetask/NoteTaskEntryPoint;

    invoke-virtual {p0, v0}, Lcom/android/systemui/notetask/NoteTaskController;->getUserForHandlingNotesTaking(Lcom/android/systemui/notetask/NoteTaskEntryPoint;)Landroid/os/UserHandle;

    move-result-object p0

    sget-object v1, Lcom/android/systemui/notetask/NoteTaskInfoResolver;->Companion:Lcom/android/systemui/notetask/NoteTaskInfoResolver$Companion;

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1, p0}, Lcom/android/systemui/notetask/NoteTaskInfoResolver;->resolveInfo(Lcom/android/systemui/notetask/NoteTaskEntryPoint;ZLandroid/os/UserHandle;)Lcom/android/systemui/notetask/NoteTaskInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {p1, p0}, Lkotlinx/coroutines/channels/ChannelsKt;->trySendBlocking(Lkotlinx/coroutines/channels/SendChannel;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
