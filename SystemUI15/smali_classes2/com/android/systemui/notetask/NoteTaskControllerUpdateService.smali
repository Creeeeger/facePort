.class public final Lcom/android/systemui/notetask/NoteTaskControllerUpdateService;
.super Landroidx/lifecycle/LifecycleService;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final Companion:Lcom/android/systemui/notetask/NoteTaskControllerUpdateService$Companion;


# instance fields
.field public final controller:Lcom/android/systemui/notetask/NoteTaskController;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/notetask/NoteTaskControllerUpdateService$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/notetask/NoteTaskControllerUpdateService$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/notetask/NoteTaskControllerUpdateService;->Companion:Lcom/android/systemui/notetask/NoteTaskControllerUpdateService$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/notetask/NoteTaskController;)V
    .locals 0

    invoke-direct {p0}, Landroidx/lifecycle/LifecycleService;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/notetask/NoteTaskControllerUpdateService;->controller:Lcom/android/systemui/notetask/NoteTaskController;

    return-void
.end method


# virtual methods
.method public final onCreate()V
    .locals 2

    invoke-super {p0}, Landroidx/lifecycle/LifecycleService;->onCreate()V

    iget-object v0, p0, Lcom/android/systemui/notetask/NoteTaskControllerUpdateService;->controller:Lcom/android/systemui/notetask/NoteTaskController;

    invoke-virtual {p0}, Landroid/app/Service;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/notetask/NoteTaskController;->launchUpdateNoteTaskAsUser(Landroid/os/UserHandle;)V

    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    return-void
.end method
