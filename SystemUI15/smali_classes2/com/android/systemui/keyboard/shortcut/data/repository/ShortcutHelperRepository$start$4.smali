.class public final Lcom/android/systemui/keyboard/shortcut/data/repository/ShortcutHelperRepository$start$4;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/keyboard/shortcut/data/repository/ShortcutHelperRepository;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyboard/shortcut/data/repository/ShortcutHelperRepository;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyboard/shortcut/data/repository/ShortcutHelperRepository$start$4;->this$0:Lcom/android/systemui/keyboard/shortcut/data/repository/ShortcutHelperRepository;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final dismissKeyboardShortcutsMenu()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/keyboard/shortcut/data/repository/ShortcutHelperRepository$start$4;->this$0:Lcom/android/systemui/keyboard/shortcut/data/repository/ShortcutHelperRepository;

    iget-object p0, p0, Lcom/android/systemui/keyboard/shortcut/data/repository/ShortcutHelperRepository;->state:Lkotlinx/coroutines/flow/StateFlowImpl;

    sget-object v0, Lcom/android/systemui/keyboard/shortcut/shared/model/ShortcutHelperState$Inactive;->INSTANCE:Lcom/android/systemui/keyboard/shortcut/shared/model/ShortcutHelperState$Inactive;

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final toggleKeyboardShortcutsMenu(I)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/keyboard/shortcut/data/repository/ShortcutHelperRepository$start$4;->this$0:Lcom/android/systemui/keyboard/shortcut/data/repository/ShortcutHelperRepository;

    iget-object p0, p0, Lcom/android/systemui/keyboard/shortcut/data/repository/ShortcutHelperRepository;->state:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {p0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/systemui/keyboard/shortcut/shared/model/ShortcutHelperState$Inactive;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/systemui/keyboard/shortcut/shared/model/ShortcutHelperState$Active;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/systemui/keyboard/shortcut/shared/model/ShortcutHelperState$Active;-><init>(Ljava/lang/Integer;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/systemui/keyboard/shortcut/shared/model/ShortcutHelperState$Inactive;->INSTANCE:Lcom/android/systemui/keyboard/shortcut/shared/model/ShortcutHelperState$Inactive;

    :goto_0
    invoke-virtual {p0, v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->setValue(Ljava/lang/Object;)V

    return-void
.end method
