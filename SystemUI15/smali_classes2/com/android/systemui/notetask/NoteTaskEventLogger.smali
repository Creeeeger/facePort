.class public final Lcom/android/systemui/notetask/NoteTaskEventLogger;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final uiEventLogger:Lcom/android/internal/logging/UiEventLogger;


# direct methods
.method public constructor <init>(Lcom/android/internal/logging/UiEventLogger;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/notetask/NoteTaskEventLogger;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    return-void
.end method


# virtual methods
.method public final logNoteTaskClosed(Lcom/android/systemui/notetask/NoteTaskInfo;)V
    .locals 2

    iget-object v0, p1, Lcom/android/systemui/notetask/NoteTaskInfo;->entryPoint:Lcom/android/systemui/notetask/NoteTaskEntryPoint;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/android/systemui/notetask/NoteTaskEventLogger$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    :goto_0
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :pswitch_1
    iget-boolean v0, p1, Lcom/android/systemui/notetask/NoteTaskInfo;->isKeyguardLocked:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/systemui/notetask/NoteTaskEventLogger$NoteTaskUiEvent;->NOTE_CLOSED_VIA_STYLUS_TAIL_BUTTON_LOCKED:Lcom/android/systemui/notetask/NoteTaskEventLogger$NoteTaskUiEvent;

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/android/systemui/notetask/NoteTaskEventLogger$NoteTaskUiEvent;->NOTE_CLOSED_VIA_STYLUS_TAIL_BUTTON:Lcom/android/systemui/notetask/NoteTaskEventLogger$NoteTaskUiEvent;

    :goto_1
    iget-object p0, p0, Lcom/android/systemui/notetask/NoteTaskEventLogger;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    iget v1, p1, Lcom/android/systemui/notetask/NoteTaskInfo;->uid:I

    iget-object p1, p1, Lcom/android/systemui/notetask/NoteTaskInfo;->packageName:Ljava/lang/String;

    invoke-interface {p0, v0, v1, p1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;)V

    :pswitch_2
    return-void

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public final logNoteTaskOpened(Lcom/android/systemui/notetask/NoteTaskInfo;)V
    .locals 2

    iget-object v0, p1, Lcom/android/systemui/notetask/NoteTaskInfo;->entryPoint:Lcom/android/systemui/notetask/NoteTaskEntryPoint;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/android/systemui/notetask/NoteTaskEventLogger$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    :goto_0
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :pswitch_1
    sget-object v0, Lcom/android/systemui/notetask/NoteTaskEventLogger$NoteTaskUiEvent;->NOTE_OPENED_VIA_KEYGUARD_QUICK_AFFORDANCE:Lcom/android/systemui/notetask/NoteTaskEventLogger$NoteTaskUiEvent;

    goto :goto_1

    :pswitch_2
    sget-object v0, Lcom/android/systemui/notetask/NoteTaskEventLogger$NoteTaskUiEvent;->NOTE_OPENED_VIA_SHORTCUT:Lcom/android/systemui/notetask/NoteTaskEventLogger$NoteTaskUiEvent;

    goto :goto_1

    :pswitch_3
    iget-boolean v0, p1, Lcom/android/systemui/notetask/NoteTaskInfo;->isKeyguardLocked:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/systemui/notetask/NoteTaskEventLogger$NoteTaskUiEvent;->NOTE_OPENED_VIA_STYLUS_TAIL_BUTTON_LOCKED:Lcom/android/systemui/notetask/NoteTaskEventLogger$NoteTaskUiEvent;

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/android/systemui/notetask/NoteTaskEventLogger$NoteTaskUiEvent;->NOTE_OPENED_VIA_STYLUS_TAIL_BUTTON:Lcom/android/systemui/notetask/NoteTaskEventLogger$NoteTaskUiEvent;

    :goto_1
    iget-object p0, p0, Lcom/android/systemui/notetask/NoteTaskEventLogger;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    iget v1, p1, Lcom/android/systemui/notetask/NoteTaskInfo;->uid:I

    iget-object p1, p1, Lcom/android/systemui/notetask/NoteTaskInfo;->packageName:Ljava/lang/String;

    invoke-interface {p0, v0, v1, p1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;)V

    :pswitch_4
    return-void

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method
