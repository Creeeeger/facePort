.class public final Lcom/android/systemui/notetask/quickaffordance/NoteTaskQuickAffordanceConfig;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig;


# instance fields
.field public final backgroundExecutor:Ljava/util/concurrent/Executor;

.field public final context:Landroid/content/Context;

.field public final controller:Lcom/android/systemui/notetask/NoteTaskController;

.field public final isEnabled:Z

.field public final key:Ljava/lang/String;

.field public final keyguardMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public final lazyRepository:Ldagger/Lazy;

.field public final lockScreenState$delegate:Lkotlin/Lazy;

.field public final noteTaskInfoResolver:Lcom/android/systemui/notetask/NoteTaskInfoResolver;

.field public final pickerIconResourceId:I

.field public final pickerNameResourceId:I

.field public final roleManager:Landroid/app/role/RoleManager;

.field public final stylusManager:Lcom/android/systemui/stylus/StylusManager;

.field public final userManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/notetask/NoteTaskController;Lcom/android/systemui/notetask/NoteTaskInfoResolver;Lcom/android/systemui/stylus/StylusManager;Landroid/app/role/RoleManager;Lcom/android/keyguard/KeyguardUpdateMonitor;Landroid/os/UserManager;Ldagger/Lazy;ZLjava/util/concurrent/Executor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/systemui/notetask/NoteTaskController;",
            "Lcom/android/systemui/notetask/NoteTaskInfoResolver;",
            "Lcom/android/systemui/stylus/StylusManager;",
            "Landroid/app/role/RoleManager;",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            "Landroid/os/UserManager;",
            "Ldagger/Lazy;",
            "Z",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/notetask/quickaffordance/NoteTaskQuickAffordanceConfig;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/notetask/quickaffordance/NoteTaskQuickAffordanceConfig;->controller:Lcom/android/systemui/notetask/NoteTaskController;

    iput-object p3, p0, Lcom/android/systemui/notetask/quickaffordance/NoteTaskQuickAffordanceConfig;->noteTaskInfoResolver:Lcom/android/systemui/notetask/NoteTaskInfoResolver;

    iput-object p4, p0, Lcom/android/systemui/notetask/quickaffordance/NoteTaskQuickAffordanceConfig;->stylusManager:Lcom/android/systemui/stylus/StylusManager;

    iput-object p5, p0, Lcom/android/systemui/notetask/quickaffordance/NoteTaskQuickAffordanceConfig;->roleManager:Landroid/app/role/RoleManager;

    iput-object p6, p0, Lcom/android/systemui/notetask/quickaffordance/NoteTaskQuickAffordanceConfig;->keyguardMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iput-object p7, p0, Lcom/android/systemui/notetask/quickaffordance/NoteTaskQuickAffordanceConfig;->userManager:Landroid/os/UserManager;

    iput-object p8, p0, Lcom/android/systemui/notetask/quickaffordance/NoteTaskQuickAffordanceConfig;->lazyRepository:Ldagger/Lazy;

    iput-boolean p9, p0, Lcom/android/systemui/notetask/quickaffordance/NoteTaskQuickAffordanceConfig;->isEnabled:Z

    iput-object p10, p0, Lcom/android/systemui/notetask/quickaffordance/NoteTaskQuickAffordanceConfig;->backgroundExecutor:Ljava/util/concurrent/Executor;

    const-string p1, "create_note"

    iput-object p1, p0, Lcom/android/systemui/notetask/quickaffordance/NoteTaskQuickAffordanceConfig;->key:Ljava/lang/String;

    const p1, 0x7f130d02

    iput p1, p0, Lcom/android/systemui/notetask/quickaffordance/NoteTaskQuickAffordanceConfig;->pickerNameResourceId:I

    const p1, 0x7f080a6a

    iput p1, p0, Lcom/android/systemui/notetask/quickaffordance/NoteTaskQuickAffordanceConfig;->pickerIconResourceId:I

    new-instance p1, Lcom/android/systemui/notetask/quickaffordance/NoteTaskQuickAffordanceConfig$lockScreenState$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/notetask/quickaffordance/NoteTaskQuickAffordanceConfig$lockScreenState$2;-><init>(Lcom/android/systemui/notetask/quickaffordance/NoteTaskQuickAffordanceConfig;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/notetask/quickaffordance/NoteTaskQuickAffordanceConfig;->lockScreenState$delegate:Lkotlin/Lazy;

    return-void
.end method


# virtual methods
.method public final getKey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/notetask/quickaffordance/NoteTaskQuickAffordanceConfig;->key:Ljava/lang/String;

    return-object p0
.end method

.method public final getLockScreenState()Lkotlinx/coroutines/flow/Flow;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/notetask/quickaffordance/NoteTaskQuickAffordanceConfig;->lockScreenState$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlinx/coroutines/flow/Flow;

    return-object p0
.end method

.method public final getPickerIconResourceId()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/notetask/quickaffordance/NoteTaskQuickAffordanceConfig;->pickerIconResourceId:I

    return p0
.end method

.method public final getPickerScreenState(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    sget-object p1, Lcom/android/systemui/notetask/NoteTaskEntryPoint;->QUICK_AFFORDANCE:Lcom/android/systemui/notetask/NoteTaskEntryPoint;

    iget-object v0, p0, Lcom/android/systemui/notetask/quickaffordance/NoteTaskQuickAffordanceConfig;->controller:Lcom/android/systemui/notetask/NoteTaskController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/notetask/NoteTaskController;->getUserForHandlingNotesTaking(Lcom/android/systemui/notetask/NoteTaskEntryPoint;)Landroid/os/UserHandle;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/notetask/NoteTaskInfoResolver;->Companion:Lcom/android/systemui/notetask/NoteTaskInfoResolver$Companion;

    iget-object v1, p0, Lcom/android/systemui/notetask/quickaffordance/NoteTaskQuickAffordanceConfig;->noteTaskInfoResolver:Lcom/android/systemui/notetask/NoteTaskInfoResolver;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, v0}, Lcom/android/systemui/notetask/NoteTaskInfoResolver;->resolveInfo(Lcom/android/systemui/notetask/NoteTaskEntryPoint;ZLandroid/os/UserHandle;)Lcom/android/systemui/notetask/NoteTaskInfo;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    move v2, v0

    :cond_0
    iget-boolean p1, p0, Lcom/android/systemui/notetask/quickaffordance/NoteTaskQuickAffordanceConfig;->isEnabled:Z

    if-eqz p1, :cond_1

    if-eqz v2, :cond_1

    new-instance p0, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig$PickerScreenState$Default;

    const/4 p1, 0x0

    invoke-direct {p0, p1, v0, p1}, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig$PickerScreenState$Default;-><init>(Landroid/content/Intent;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/notetask/quickaffordance/NoteTaskQuickAffordanceConfig;->context:Landroid/content/Context;

    const v0, 0x7f130d04

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/notetask/quickaffordance/NoteTaskQuickAffordanceConfig;->context:Landroid/content/Context;

    const v1, 0x7f130820

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.systemui.action.MANAGE_NOTES_ROLE_FROM_QUICK_AFFORDANCE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/notetask/quickaffordance/NoteTaskQuickAffordanceConfig;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    new-instance p0, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig$PickerScreenState$Disabled;

    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig$PickerScreenState$Disabled;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    sget-object p0, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig$PickerScreenState$UnavailableOnDevice;->INSTANCE:Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig$PickerScreenState$UnavailableOnDevice;

    :goto_0
    return-object p0
.end method

.method public final onTriggered(Lcom/android/systemui/animation/Expandable;)Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig$OnTriggeredResult;
    .locals 1

    sget-object p1, Lcom/android/systemui/notetask/NoteTaskEntryPoint;->QUICK_AFFORDANCE:Lcom/android/systemui/notetask/NoteTaskEntryPoint;

    iget-object p0, p0, Lcom/android/systemui/notetask/quickaffordance/NoteTaskQuickAffordanceConfig;->controller:Lcom/android/systemui/notetask/NoteTaskController;

    iget-boolean v0, p0, Lcom/android/systemui/notetask/NoteTaskController;->isEnabled:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/notetask/NoteTaskController;->getUserForHandlingNotesTaking(Lcom/android/systemui/notetask/NoteTaskEntryPoint;)Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/notetask/NoteTaskController;->showNoteTaskAsUser(Lcom/android/systemui/notetask/NoteTaskEntryPoint;Landroid/os/UserHandle;)V

    :goto_0
    sget-object p0, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig$OnTriggeredResult$Handled;->INSTANCE:Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig$OnTriggeredResult$Handled;

    return-object p0
.end method

.method public final pickerName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/notetask/quickaffordance/NoteTaskQuickAffordanceConfig;->context:Landroid/content/Context;

    iget p0, p0, Lcom/android/systemui/notetask/quickaffordance/NoteTaskQuickAffordanceConfig;->pickerNameResourceId:I

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
