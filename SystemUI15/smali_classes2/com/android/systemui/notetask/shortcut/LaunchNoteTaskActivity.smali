.class public final Lcom/android/systemui/notetask/shortcut/LaunchNoteTaskActivity;
.super Landroidx/activity/ComponentActivity;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final Companion:Lcom/android/systemui/notetask/shortcut/LaunchNoteTaskActivity$Companion;


# instance fields
.field public final controller:Lcom/android/systemui/notetask/NoteTaskController;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/notetask/shortcut/LaunchNoteTaskActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/notetask/shortcut/LaunchNoteTaskActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/notetask/shortcut/LaunchNoteTaskActivity;->Companion:Lcom/android/systemui/notetask/shortcut/LaunchNoteTaskActivity$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/notetask/NoteTaskController;)V
    .locals 0

    invoke-direct {p0}, Landroidx/activity/ComponentActivity;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/notetask/shortcut/LaunchNoteTaskActivity;->controller:Lcom/android/systemui/notetask/NoteTaskController;

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/android/systemui/notetask/NoteTaskEntryPoint;->WIDGET_PICKER_SHORTCUT_IN_MULTI_WINDOW_MODE:Lcom/android/systemui/notetask/NoteTaskEntryPoint;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/android/systemui/notetask/NoteTaskEntryPoint;->WIDGET_PICKER_SHORTCUT:Lcom/android/systemui/notetask/NoteTaskEntryPoint;

    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/notetask/shortcut/LaunchNoteTaskActivity;->controller:Lcom/android/systemui/notetask/NoteTaskController;

    invoke-virtual {v1, p1, v0}, Lcom/android/systemui/notetask/NoteTaskController;->showNoteTaskAsUser(Lcom/android/systemui/notetask/NoteTaskEntryPoint;Landroid/os/UserHandle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
