.class public final Lcom/android/systemui/keyboard/shortcut/data/repository/ShortcutHelperRepository;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/CoreStartable;


# instance fields
.field public final broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field public final commandQueue:Lcom/android/systemui/statusbar/CommandQueue;

.field public final state:Lkotlinx/coroutines/flow/StateFlowImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/CommandQueue;Lcom/android/systemui/broadcast/BroadcastDispatcher;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/keyboard/shortcut/data/repository/ShortcutHelperRepository;->commandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    iput-object p2, p0, Lcom/android/systemui/keyboard/shortcut/data/repository/ShortcutHelperRepository;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    sget-object p1, Lcom/android/systemui/keyboard/shortcut/shared/model/ShortcutHelperState$Inactive;->INSTANCE:Lcom/android/systemui/keyboard/shortcut/shared/model/ShortcutHelperState$Inactive;

    invoke-static {p1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/keyboard/shortcut/data/repository/ShortcutHelperRepository;->state:Lkotlinx/coroutines/flow/StateFlowImpl;

    return-void
.end method


# virtual methods
.method public final registerBroadcastReceiver(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V
    .locals 8

    new-instance v1, Lcom/android/systemui/keyboard/shortcut/data/repository/ShortcutHelperRepository$registerBroadcastReceiver$1;

    invoke-direct {v1, p2}, Lcom/android/systemui/keyboard/shortcut/data/repository/ShortcutHelperRepository$registerBroadcastReceiver$1;-><init>(Lkotlin/jvm/functions/Function0;)V

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2, p1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x3

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/android/systemui/keyboard/shortcut/data/repository/ShortcutHelperRepository;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    const/4 v3, 0x0

    const/16 v7, 0x24

    invoke-static/range {v0 .. v7}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver$default(Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;ILjava/lang/String;I)V

    return-void
.end method

.method public final start()V
    .locals 2

    new-instance v0, Lcom/android/systemui/keyboard/shortcut/data/repository/ShortcutHelperRepository$start$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/keyboard/shortcut/data/repository/ShortcutHelperRepository$start$1;-><init>(Lcom/android/systemui/keyboard/shortcut/data/repository/ShortcutHelperRepository;)V

    const-string v1, "com.android.intent.action.SHOW_KEYBOARD_SHORTCUTS"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/keyboard/shortcut/data/repository/ShortcutHelperRepository;->registerBroadcastReceiver(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    new-instance v0, Lcom/android/systemui/keyboard/shortcut/data/repository/ShortcutHelperRepository$start$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/keyboard/shortcut/data/repository/ShortcutHelperRepository$start$2;-><init>(Lcom/android/systemui/keyboard/shortcut/data/repository/ShortcutHelperRepository;)V

    const-string v1, "com.android.intent.action.DISMISS_KEYBOARD_SHORTCUTS"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/keyboard/shortcut/data/repository/ShortcutHelperRepository;->registerBroadcastReceiver(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    new-instance v0, Lcom/android/systemui/keyboard/shortcut/data/repository/ShortcutHelperRepository$start$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/keyboard/shortcut/data/repository/ShortcutHelperRepository$start$3;-><init>(Lcom/android/systemui/keyboard/shortcut/data/repository/ShortcutHelperRepository;)V

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/keyboard/shortcut/data/repository/ShortcutHelperRepository;->registerBroadcastReceiver(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    new-instance v0, Lcom/android/systemui/keyboard/shortcut/data/repository/ShortcutHelperRepository$start$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/keyboard/shortcut/data/repository/ShortcutHelperRepository$start$4;-><init>(Lcom/android/systemui/keyboard/shortcut/data/repository/ShortcutHelperRepository;)V

    iget-object p0, p0, Lcom/android/systemui/keyboard/shortcut/data/repository/ShortcutHelperRepository;->commandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/CommandQueue;->addCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    return-void
.end method
