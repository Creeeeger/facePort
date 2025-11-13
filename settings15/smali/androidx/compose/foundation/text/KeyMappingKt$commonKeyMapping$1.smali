.class public final Landroidx/compose/foundation/text/KeyMappingKt$commonKeyMapping$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/compose/foundation/text/KeyMapping;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic $shortcutModifier:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Landroidx/compose/foundation/text/KeyMappingKt$commonKeyMapping$1;->$r8$classId:I

    iput-object p2, p0, Landroidx/compose/foundation/text/KeyMappingKt$commonKeyMapping$1;->$shortcutModifier:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final map-ZmokQxo(Landroid/view/KeyEvent;)Landroidx/compose/foundation/text/KeyCommand;
    .locals 8

    iget-object v0, p0, Landroidx/compose/foundation/text/KeyMappingKt$commonKeyMapping$1;->$shortcutModifier:Ljava/lang/Object;

    sget-object v1, Landroidx/compose/foundation/text/KeyCommand;->DELETE_PREV_CHAR:Landroidx/compose/foundation/text/KeyCommand;

    const/4 v2, 0x0

    iget p0, p0, Landroidx/compose/foundation/text/KeyMappingKt$commonKeyMapping$1;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p0

    invoke-static {p0}, Landroidx/compose/ui/input/key/Key_androidKt;->Key(I)J

    move-result-wide v3

    sget-wide v5, Landroidx/compose/foundation/text/MappedKeys;->DirectionLeft:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object v1, Landroidx/compose/foundation/text/KeyCommand;->SELECT_LEFT_WORD:Landroidx/compose/foundation/text/KeyCommand;

    goto/16 :goto_0

    :cond_0
    sget-wide v5, Landroidx/compose/foundation/text/MappedKeys;->DirectionRight:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object v1, Landroidx/compose/foundation/text/KeyCommand;->SELECT_RIGHT_WORD:Landroidx/compose/foundation/text/KeyCommand;

    goto/16 :goto_0

    :cond_1
    sget-wide v5, Landroidx/compose/foundation/text/MappedKeys;->DirectionUp:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object v1, Landroidx/compose/foundation/text/KeyCommand;->SELECT_PREV_PARAGRAPH:Landroidx/compose/foundation/text/KeyCommand;

    goto/16 :goto_0

    :cond_2
    sget-wide v5, Landroidx/compose/foundation/text/MappedKeys;->DirectionDown:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    move-result p0

    if-eqz p0, :cond_3

    sget-object v1, Landroidx/compose/foundation/text/KeyCommand;->SELECT_NEXT_PARAGRAPH:Landroidx/compose/foundation/text/KeyCommand;

    goto/16 :goto_0

    :cond_3
    move-object v1, v2

    goto/16 :goto_0

    :cond_4
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result p0

    if-eqz p0, :cond_c

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p0

    invoke-static {p0}, Landroidx/compose/ui/input/key/Key_androidKt;->Key(I)J

    move-result-wide v3

    sget-wide v5, Landroidx/compose/foundation/text/MappedKeys;->DirectionLeft:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    move-result p0

    if-eqz p0, :cond_5

    sget-object v1, Landroidx/compose/foundation/text/KeyCommand;->LEFT_WORD:Landroidx/compose/foundation/text/KeyCommand;

    goto/16 :goto_0

    :cond_5
    sget-wide v5, Landroidx/compose/foundation/text/MappedKeys;->DirectionRight:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    move-result p0

    if-eqz p0, :cond_6

    sget-object v1, Landroidx/compose/foundation/text/KeyCommand;->RIGHT_WORD:Landroidx/compose/foundation/text/KeyCommand;

    goto/16 :goto_0

    :cond_6
    sget-wide v5, Landroidx/compose/foundation/text/MappedKeys;->DirectionUp:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    move-result p0

    if-eqz p0, :cond_7

    sget-object v1, Landroidx/compose/foundation/text/KeyCommand;->PREV_PARAGRAPH:Landroidx/compose/foundation/text/KeyCommand;

    goto/16 :goto_0

    :cond_7
    sget-wide v5, Landroidx/compose/foundation/text/MappedKeys;->DirectionDown:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    move-result p0

    if-eqz p0, :cond_8

    sget-object v1, Landroidx/compose/foundation/text/KeyCommand;->NEXT_PARAGRAPH:Landroidx/compose/foundation/text/KeyCommand;

    goto/16 :goto_0

    :cond_8
    sget-wide v5, Landroidx/compose/foundation/text/MappedKeys;->H:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    move-result p0

    if-eqz p0, :cond_9

    goto/16 :goto_0

    :cond_9
    sget-wide v5, Landroidx/compose/foundation/text/MappedKeys;->Delete:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    move-result p0

    if-eqz p0, :cond_a

    sget-object v1, Landroidx/compose/foundation/text/KeyCommand;->DELETE_NEXT_WORD:Landroidx/compose/foundation/text/KeyCommand;

    goto :goto_0

    :cond_a
    sget-wide v5, Landroidx/compose/foundation/text/MappedKeys;->Backspace:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    move-result p0

    if-eqz p0, :cond_b

    sget-object v1, Landroidx/compose/foundation/text/KeyCommand;->DELETE_PREV_WORD:Landroidx/compose/foundation/text/KeyCommand;

    goto :goto_0

    :cond_b
    sget-wide v5, Landroidx/compose/foundation/text/MappedKeys;->Backslash:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    move-result p0

    if-eqz p0, :cond_3

    sget-object v1, Landroidx/compose/foundation/text/KeyCommand;->DESELECT:Landroidx/compose/foundation/text/KeyCommand;

    goto :goto_0

    :cond_c
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result p0

    if-eqz p0, :cond_e

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p0

    invoke-static {p0}, Landroidx/compose/ui/input/key/Key_androidKt;->Key(I)J

    move-result-wide v3

    sget-wide v5, Landroidx/compose/foundation/text/MappedKeys;->MoveHome:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    move-result p0

    if-eqz p0, :cond_d

    sget-object v1, Landroidx/compose/foundation/text/KeyCommand;->SELECT_LINE_LEFT:Landroidx/compose/foundation/text/KeyCommand;

    goto :goto_0

    :cond_d
    sget-wide v5, Landroidx/compose/foundation/text/MappedKeys;->MoveEnd:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    move-result p0

    if-eqz p0, :cond_3

    sget-object v1, Landroidx/compose/foundation/text/KeyCommand;->SELECT_LINE_RIGHT:Landroidx/compose/foundation/text/KeyCommand;

    goto :goto_0

    :cond_e
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p0

    invoke-static {p0}, Landroidx/compose/ui/input/key/Key_androidKt;->Key(I)J

    move-result-wide v3

    sget-wide v5, Landroidx/compose/foundation/text/MappedKeys;->Backspace:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    move-result p0

    if-eqz p0, :cond_f

    sget-object v1, Landroidx/compose/foundation/text/KeyCommand;->DELETE_FROM_LINE_START:Landroidx/compose/foundation/text/KeyCommand;

    goto :goto_0

    :cond_f
    sget-wide v5, Landroidx/compose/foundation/text/MappedKeys;->Delete:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    move-result p0

    if-eqz p0, :cond_3

    sget-object v1, Landroidx/compose/foundation/text/KeyCommand;->DELETE_TO_LINE_END:Landroidx/compose/foundation/text/KeyCommand;

    :goto_0
    if-nez v1, :cond_10

    check-cast v0, Landroidx/compose/foundation/text/KeyMapping;

    invoke-interface {v0, p1}, Landroidx/compose/foundation/text/KeyMapping;->map-ZmokQxo(Landroid/view/KeyEvent;)Landroidx/compose/foundation/text/KeyCommand;

    move-result-object v1

    :cond_10
    return-object v1

    :pswitch_0
    new-instance p0, Landroidx/compose/ui/input/key/KeyEvent;

    invoke-direct {p0, p1}, Landroidx/compose/ui/input/key/KeyEvent;-><init>(Landroid/view/KeyEvent;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    sget-object v3, Landroidx/compose/foundation/text/KeyCommand;->REDO:Landroidx/compose/foundation/text/KeyCommand;

    if-eqz p0, :cond_12

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result p0

    if-eqz p0, :cond_12

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p0

    invoke-static {p0}, Landroidx/compose/ui/input/key/Key_androidKt;->Key(I)J

    move-result-wide p0

    sget v0, Landroidx/compose/foundation/text/MappedKeys;->$r8$clinit:I

    sget-wide v0, Landroidx/compose/foundation/text/MappedKeys;->Z:J

    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    move-result p0

    if-eqz p0, :cond_11

    :goto_1
    move-object v1, v3

    goto/16 :goto_7

    :cond_11
    :goto_2
    move-object v1, v2

    goto/16 :goto_7

    :cond_12
    new-instance p0, Landroidx/compose/ui/input/key/KeyEvent;

    invoke-direct {p0, p1}, Landroidx/compose/ui/input/key/KeyEvent;-><init>(Landroid/view/KeyEvent;)V

    invoke-interface {v0, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    sget-object v0, Landroidx/compose/foundation/text/KeyCommand;->CUT:Landroidx/compose/foundation/text/KeyCommand;

    sget-object v4, Landroidx/compose/foundation/text/KeyCommand;->COPY:Landroidx/compose/foundation/text/KeyCommand;

    sget-object v5, Landroidx/compose/foundation/text/KeyCommand;->PASTE:Landroidx/compose/foundation/text/KeyCommand;

    if-eqz p0, :cond_19

    invoke-static {p1}, Landroidx/compose/ui/input/key/KeyEvent_androidKt;->getKey-ZmokQxo(Landroid/view/KeyEvent;)J

    move-result-wide p0

    sget v1, Landroidx/compose/foundation/text/MappedKeys;->$r8$clinit:I

    sget-wide v6, Landroidx/compose/foundation/text/MappedKeys;->C:J

    invoke-static {p0, p1, v6, v7}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    move-result v1

    if-eqz v1, :cond_13

    const/4 v1, 0x1

    goto :goto_3

    :cond_13
    sget-wide v6, Landroidx/compose/foundation/text/MappedKeys;->Insert:J

    invoke-static {p0, p1, v6, v7}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    move-result v1

    :goto_3
    if-eqz v1, :cond_14

    :goto_4
    move-object v1, v4

    goto/16 :goto_7

    :cond_14
    sget-wide v6, Landroidx/compose/foundation/text/MappedKeys;->V:J

    invoke-static {p0, p1, v6, v7}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    move-result v1

    if-eqz v1, :cond_15

    :goto_5
    move-object v1, v5

    goto/16 :goto_7

    :cond_15
    sget-wide v4, Landroidx/compose/foundation/text/MappedKeys;->X:J

    invoke-static {p0, p1, v4, v5}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    move-result v1

    if-eqz v1, :cond_16

    :goto_6
    move-object v1, v0

    goto/16 :goto_7

    :cond_16
    sget-wide v0, Landroidx/compose/foundation/text/MappedKeys;->A:J

    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    move-result v0

    if-eqz v0, :cond_17

    sget-object v1, Landroidx/compose/foundation/text/KeyCommand;->SELECT_ALL:Landroidx/compose/foundation/text/KeyCommand;

    goto/16 :goto_7

    :cond_17
    sget-wide v0, Landroidx/compose/foundation/text/MappedKeys;->Y:J

    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    move-result v0

    if-eqz v0, :cond_18

    goto :goto_1

    :cond_18
    sget-wide v0, Landroidx/compose/foundation/text/MappedKeys;->Z:J

    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    move-result p0

    if-eqz p0, :cond_11

    sget-object v1, Landroidx/compose/foundation/text/KeyCommand;->UNDO:Landroidx/compose/foundation/text/KeyCommand;

    goto/16 :goto_7

    :cond_19
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result p0

    if-eqz p0, :cond_1a

    goto :goto_2

    :cond_1a
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result p0

    if-eqz p0, :cond_23

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p0

    invoke-static {p0}, Landroidx/compose/ui/input/key/Key_androidKt;->Key(I)J

    move-result-wide p0

    sget v0, Landroidx/compose/foundation/text/MappedKeys;->$r8$clinit:I

    sget-wide v0, Landroidx/compose/foundation/text/MappedKeys;->DirectionLeft:J

    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    move-result v0

    if-eqz v0, :cond_1b

    sget-object v1, Landroidx/compose/foundation/text/KeyCommand;->SELECT_LEFT_CHAR:Landroidx/compose/foundation/text/KeyCommand;

    goto/16 :goto_7

    :cond_1b
    sget-wide v0, Landroidx/compose/foundation/text/MappedKeys;->DirectionRight:J

    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    move-result v0

    if-eqz v0, :cond_1c

    sget-object v1, Landroidx/compose/foundation/text/KeyCommand;->SELECT_RIGHT_CHAR:Landroidx/compose/foundation/text/KeyCommand;

    goto/16 :goto_7

    :cond_1c
    sget-wide v0, Landroidx/compose/foundation/text/MappedKeys;->DirectionUp:J

    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    move-result v0

    if-eqz v0, :cond_1d

    sget-object v1, Landroidx/compose/foundation/text/KeyCommand;->SELECT_UP:Landroidx/compose/foundation/text/KeyCommand;

    goto/16 :goto_7

    :cond_1d
    sget-wide v0, Landroidx/compose/foundation/text/MappedKeys;->DirectionDown:J

    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    move-result v0

    if-eqz v0, :cond_1e

    sget-object v1, Landroidx/compose/foundation/text/KeyCommand;->SELECT_DOWN:Landroidx/compose/foundation/text/KeyCommand;

    goto/16 :goto_7

    :cond_1e
    sget-wide v0, Landroidx/compose/foundation/text/MappedKeys;->PageUp:J

    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    move-result v0

    if-eqz v0, :cond_1f

    sget-object v1, Landroidx/compose/foundation/text/KeyCommand;->SELECT_PAGE_UP:Landroidx/compose/foundation/text/KeyCommand;

    goto/16 :goto_7

    :cond_1f
    sget-wide v0, Landroidx/compose/foundation/text/MappedKeys;->PageDown:J

    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    move-result v0

    if-eqz v0, :cond_20

    sget-object v1, Landroidx/compose/foundation/text/KeyCommand;->SELECT_PAGE_DOWN:Landroidx/compose/foundation/text/KeyCommand;

    goto/16 :goto_7

    :cond_20
    sget-wide v0, Landroidx/compose/foundation/text/MappedKeys;->MoveHome:J

    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    move-result v0

    if-eqz v0, :cond_21

    sget-object v1, Landroidx/compose/foundation/text/KeyCommand;->SELECT_LINE_START:Landroidx/compose/foundation/text/KeyCommand;

    goto/16 :goto_7

    :cond_21
    sget-wide v0, Landroidx/compose/foundation/text/MappedKeys;->MoveEnd:J

    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    move-result v0

    if-eqz v0, :cond_22

    sget-object v1, Landroidx/compose/foundation/text/KeyCommand;->SELECT_LINE_END:Landroidx/compose/foundation/text/KeyCommand;

    goto/16 :goto_7

    :cond_22
    sget-wide v0, Landroidx/compose/foundation/text/MappedKeys;->Insert:J

    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    move-result p0

    if-eqz p0, :cond_11

    goto/16 :goto_5

    :cond_23
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p0

    invoke-static {p0}, Landroidx/compose/ui/input/key/Key_androidKt;->Key(I)J

    move-result-wide p0

    sget v3, Landroidx/compose/foundation/text/MappedKeys;->$r8$clinit:I

    sget-wide v6, Landroidx/compose/foundation/text/MappedKeys;->DirectionLeft:J

    invoke-static {p0, p1, v6, v7}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    move-result v3

    if-eqz v3, :cond_24

    sget-object v1, Landroidx/compose/foundation/text/KeyCommand;->LEFT_CHAR:Landroidx/compose/foundation/text/KeyCommand;

    goto/16 :goto_7

    :cond_24
    sget-wide v6, Landroidx/compose/foundation/text/MappedKeys;->DirectionRight:J

    invoke-static {p0, p1, v6, v7}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    move-result v3

    if-eqz v3, :cond_25

    sget-object v1, Landroidx/compose/foundation/text/KeyCommand;->RIGHT_CHAR:Landroidx/compose/foundation/text/KeyCommand;

    goto/16 :goto_7

    :cond_25
    sget-wide v6, Landroidx/compose/foundation/text/MappedKeys;->DirectionUp:J

    invoke-static {p0, p1, v6, v7}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    move-result v3

    if-eqz v3, :cond_26

    sget-object v1, Landroidx/compose/foundation/text/KeyCommand;->UP:Landroidx/compose/foundation/text/KeyCommand;

    goto/16 :goto_7

    :cond_26
    sget-wide v6, Landroidx/compose/foundation/text/MappedKeys;->DirectionDown:J

    invoke-static {p0, p1, v6, v7}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    move-result v3

    if-eqz v3, :cond_27

    sget-object v1, Landroidx/compose/foundation/text/KeyCommand;->DOWN:Landroidx/compose/foundation/text/KeyCommand;

    goto/16 :goto_7

    :cond_27
    sget-wide v6, Landroidx/compose/foundation/text/MappedKeys;->PageUp:J

    invoke-static {p0, p1, v6, v7}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    move-result v3

    if-eqz v3, :cond_28

    sget-object v1, Landroidx/compose/foundation/text/KeyCommand;->PAGE_UP:Landroidx/compose/foundation/text/KeyCommand;

    goto/16 :goto_7

    :cond_28
    sget-wide v6, Landroidx/compose/foundation/text/MappedKeys;->PageDown:J

    invoke-static {p0, p1, v6, v7}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    move-result v3

    if-eqz v3, :cond_29

    sget-object v1, Landroidx/compose/foundation/text/KeyCommand;->PAGE_DOWN:Landroidx/compose/foundation/text/KeyCommand;

    goto :goto_7

    :cond_29
    sget-wide v6, Landroidx/compose/foundation/text/MappedKeys;->MoveHome:J

    invoke-static {p0, p1, v6, v7}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    move-result v3

    if-eqz v3, :cond_2a

    sget-object v1, Landroidx/compose/foundation/text/KeyCommand;->LINE_START:Landroidx/compose/foundation/text/KeyCommand;

    goto :goto_7

    :cond_2a
    sget-wide v6, Landroidx/compose/foundation/text/MappedKeys;->MoveEnd:J

    invoke-static {p0, p1, v6, v7}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    move-result v3

    if-eqz v3, :cond_2b

    sget-object v1, Landroidx/compose/foundation/text/KeyCommand;->LINE_END:Landroidx/compose/foundation/text/KeyCommand;

    goto :goto_7

    :cond_2b
    sget-wide v6, Landroidx/compose/foundation/text/MappedKeys;->Enter:J

    invoke-static {p0, p1, v6, v7}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    move-result v3

    if-eqz v3, :cond_2c

    sget-object v1, Landroidx/compose/foundation/text/KeyCommand;->NEW_LINE:Landroidx/compose/foundation/text/KeyCommand;

    goto :goto_7

    :cond_2c
    sget-wide v6, Landroidx/compose/foundation/text/MappedKeys;->Backspace:J

    invoke-static {p0, p1, v6, v7}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    move-result v3

    if-eqz v3, :cond_2d

    goto :goto_7

    :cond_2d
    sget-wide v6, Landroidx/compose/foundation/text/MappedKeys;->Delete:J

    invoke-static {p0, p1, v6, v7}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    move-result v1

    if-eqz v1, :cond_2e

    sget-object v1, Landroidx/compose/foundation/text/KeyCommand;->DELETE_NEXT_CHAR:Landroidx/compose/foundation/text/KeyCommand;

    goto :goto_7

    :cond_2e
    sget-wide v6, Landroidx/compose/foundation/text/MappedKeys;->Paste:J

    invoke-static {p0, p1, v6, v7}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    move-result v1

    if-eqz v1, :cond_2f

    goto/16 :goto_5

    :cond_2f
    sget-wide v5, Landroidx/compose/foundation/text/MappedKeys;->Cut:J

    invoke-static {p0, p1, v5, v6}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    move-result v1

    if-eqz v1, :cond_30

    goto/16 :goto_6

    :cond_30
    sget-wide v0, Landroidx/compose/foundation/text/MappedKeys;->Copy:J

    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    move-result v0

    if-eqz v0, :cond_31

    goto/16 :goto_4

    :cond_31
    sget-wide v0, Landroidx/compose/foundation/text/MappedKeys;->Tab:J

    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    move-result p0

    if-eqz p0, :cond_11

    sget-object v1, Landroidx/compose/foundation/text/KeyCommand;->TAB:Landroidx/compose/foundation/text/KeyCommand;

    :goto_7
    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
