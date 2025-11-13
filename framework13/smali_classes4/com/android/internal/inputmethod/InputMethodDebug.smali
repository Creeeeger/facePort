.class public final Lcom/android/internal/inputmethod/InputMethodDebug;
.super Ljava/lang/Object;
.source "InputMethodDebug.java"


# direct methods
.method private constructor blacklist <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method public static blacklist objToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    .line 271
    if-nez p0, :cond_0

    .line 272
    const-string/jumbo v0, "null"

    return-object v0

    .line 274
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 275
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 276
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist softInputDisplayReasonToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "reason"    # I

    .line 196
    packed-switch p0, :pswitch_data_0

    .line 260
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 257
    :pswitch_1
    const-string v0, "HIDE_SCREEN_OFF_SECURE_LOCK_SCREEN_STATE"

    return-object v0

    .line 255
    :pswitch_2
    const-string v0, "HIDE_SETTINGS_BUTTON_CLICKED"

    return-object v0

    .line 253
    :pswitch_3
    const-string v0, "HIDE_STATUS_BAR_ANIMATION"

    return-object v0

    .line 251
    :pswitch_4
    const-string v0, "HIDE_HW_KEYBOARD_CONNECTED"

    return-object v0

    .line 248
    :pswitch_5
    const-string v0, "HIDE_DISPLAY_IME_POLICY_HIDE"

    return-object v0

    .line 246
    :pswitch_6
    const-string v0, "SHOW_SOFT_INPUT_BY_INSETS_API"

    return-object v0

    .line 244
    :pswitch_7
    const-string v0, "HIDE_TOGGLE_SOFT_INPUT"

    return-object v0

    .line 242
    :pswitch_8
    const-string v0, "SHOW_TOGGLE_SOFT_INPUT"

    return-object v0

    .line 240
    :pswitch_9
    const-string v0, "SHOW_RESTORE_IME_VISIBILITY"

    return-object v0

    .line 238
    :pswitch_a
    const-string v0, "HIDE_REMOVE_CLIENT"

    return-object v0

    .line 236
    :pswitch_b
    const-string v0, "HIDE_SAME_WINDOW_FOCUSED_WITHOUT_EDITOR"

    return-object v0

    .line 234
    :pswitch_c
    const-string v0, "HIDE_RECENTS_ANIMATION"

    return-object v0

    .line 232
    :pswitch_d
    const-string v0, "HIDE_DOCKED_STACK_ATTACHED"

    return-object v0

    .line 230
    :pswitch_e
    const-string v0, "HIDE_POWER_BUTTON_GO_HOME"

    return-object v0

    .line 228
    :pswitch_f
    const-string v0, "HIDE_SETTINGS_ON_CHANGE"

    return-object v0

    .line 226
    :pswitch_10
    const-string v0, "HIDE_RESET_SHELL_COMMAND"

    return-object v0

    .line 224
    :pswitch_11
    const-string v0, "HIDE_ALWAYS_HIDDEN_STATE"

    return-object v0

    .line 222
    :pswitch_12
    const-string v0, "HIDE_STATE_HIDDEN_FORWARD_NAV"

    return-object v0

    .line 220
    :pswitch_13
    const-string v0, "HIDE_UNSPECIFIED_WINDOW"

    return-object v0

    .line 218
    :pswitch_14
    const-string v0, "HIDE_INVALID_USER"

    return-object v0

    .line 216
    :pswitch_15
    const-string v0, "HIDE_SWITCH_USER"

    return-object v0

    .line 214
    :pswitch_16
    const-string v0, "SHOW_SETTINGS_ON_CHANGE"

    return-object v0

    .line 212
    :pswitch_17
    const-string v0, "SHOW_STATE_ALWAYS_VISIBLE"

    return-object v0

    .line 210
    :pswitch_18
    const-string v0, "SHOW_STATE_VISIBLE_FORWARD_NAV"

    return-object v0

    .line 208
    :pswitch_19
    const-string v0, "SHOW_AUTO_EDITOR_FORWARD_NAV"

    return-object v0

    .line 206
    :pswitch_1a
    const-string v0, "HIDE_MY_SOFT_INPUT"

    return-object v0

    .line 204
    :pswitch_1b
    const-string v0, "HIDE_SOFT_INPUT"

    return-object v0

    .line 202
    :pswitch_1c
    const-string v0, "SHOW_MY_SOFT_INPUT"

    return-object v0

    .line 200
    :pswitch_1d
    const-string v0, "ATTACH_NEW_INPUT"

    return-object v0

    .line 198
    :pswitch_1e
    const-string v0, "SHOW_SOFT_INPUT"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static blacklist softInputModeToString(I)Ljava/lang/String;
    .locals 7
    .param p0, "softInputMode"    # I

    .line 114
    new-instance v0, Ljava/util/StringJoiner;

    const-string/jumbo v1, "|"

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 115
    .local v0, "joiner":Ljava/util/StringJoiner;
    and-int/lit8 v1, p0, 0xf

    .line 116
    .local v1, "state":I
    and-int/lit16 v2, p0, 0xf0

    .line 117
    .local v2, "adjust":I
    and-int/lit16 v3, p0, 0x100

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 120
    .local v3, "isForwardNav":Z
    :goto_0
    const-string v4, ")"

    packed-switch v1, :pswitch_data_0

    .line 140
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "STATE_UNKNOWN("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_1

    .line 137
    :pswitch_0
    const-string v5, "STATE_ALWAYS_VISIBLE"

    invoke-virtual {v0, v5}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 138
    goto :goto_1

    .line 134
    :pswitch_1
    const-string v5, "STATE_VISIBLE"

    invoke-virtual {v0, v5}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 135
    goto :goto_1

    .line 131
    :pswitch_2
    const-string v5, "STATE_ALWAYS_HIDDEN"

    invoke-virtual {v0, v5}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 132
    goto :goto_1

    .line 128
    :pswitch_3
    const-string v5, "STATE_HIDDEN"

    invoke-virtual {v0, v5}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 129
    goto :goto_1

    .line 125
    :pswitch_4
    const-string v5, "STATE_UNCHANGED"

    invoke-virtual {v0, v5}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 126
    goto :goto_1

    .line 122
    :pswitch_5
    const-string v5, "STATE_UNSPECIFIED"

    invoke-virtual {v0, v5}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 123
    nop

    .line 144
    :goto_1
    sparse-switch v2, :sswitch_data_0

    .line 158
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ADJUST_UNKNOWN("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_2

    .line 155
    :sswitch_0
    const-string v4, "ADJUST_NOTHING"

    invoke-virtual {v0, v4}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 156
    goto :goto_2

    .line 152
    :sswitch_1
    const-string v4, "ADJUST_PAN"

    invoke-virtual {v0, v4}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 153
    goto :goto_2

    .line 149
    :sswitch_2
    const-string v4, "ADJUST_RESIZE"

    invoke-virtual {v0, v4}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 150
    goto :goto_2

    .line 146
    :sswitch_3
    const-string v4, "ADJUST_UNSPECIFIED"

    invoke-virtual {v0, v4}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 147
    nop

    .line 162
    :goto_2
    if-eqz v3, :cond_1

    .line 164
    const-string v4, "IS_FORWARD_NAVIGATION"

    invoke-virtual {v0, v4}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 167
    :cond_1
    const-string v4, "(none)"

    invoke-virtual {v0, v4}, Ljava/util/StringJoiner;->setEmptyValue(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_3
        0x10 -> :sswitch_2
        0x20 -> :sswitch_1
        0x30 -> :sswitch_0
    .end sparse-switch
.end method

.method public static blacklist startInputFlagsToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "startInputFlags"    # I

    .line 177
    new-instance v0, Ljava/util/StringJoiner;

    const-string/jumbo v1, "|"

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 178
    .local v0, "joiner":Ljava/util/StringJoiner;
    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_0

    .line 179
    const-string v1, "VIEW_HAS_FOCUS"

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 181
    :cond_0
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_1

    .line 182
    const-string v1, "IS_TEXT_EDITOR"

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 184
    :cond_1
    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_2

    .line 185
    const-string v1, "INITIAL_CONNECTION"

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 188
    :cond_2
    const-string v1, "(none)"

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->setEmptyValue(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist startInputReasonToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "reason"    # I

    .line 44
    packed-switch p0, :pswitch_data_0

    .line 70
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 68
    :pswitch_1
    const-string v0, "BOUND_ACCESSIBILITY_SESSION_TO_IMMS"

    return-object v0

    .line 66
    :pswitch_2
    const-string v0, "SESSION_CREATED_BY_IME"

    return-object v0

    .line 64
    :pswitch_3
    const-string v0, "DEACTIVATED_BY_IMMS"

    return-object v0

    .line 62
    :pswitch_4
    const-string v0, "ACTIVATED_BY_IMMS"

    return-object v0

    .line 60
    :pswitch_5
    const-string v0, "UNBOUND_FROM_IMMS"

    return-object v0

    .line 58
    :pswitch_6
    const-string v0, "BOUND_TO_IMMS"

    return-object v0

    .line 56
    :pswitch_7
    const-string v0, "CHECK_FOCUS"

    return-object v0

    .line 54
    :pswitch_8
    const-string v0, "APP_CALLED_RESTART_INPUT_API"

    return-object v0

    .line 52
    :pswitch_9
    const-string v0, "WINDOW_FOCUS_GAIN_REPORT_WITHOUT_CONNECTION"

    return-object v0

    .line 50
    :pswitch_a
    const-string v0, "WINDOW_FOCUS_GAIN_REPORT_WITH_CONNECTION"

    return-object v0

    .line 48
    :pswitch_b
    const-string v0, "WINDOW_FOCUS_GAIN"

    return-object v0

    .line 46
    :pswitch_c
    const-string v0, "UNSPECIFIED"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static blacklist unbindReasonToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "reason"    # I

    .line 81
    sparse-switch p0, :sswitch_data_0

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 100
    :sswitch_0
    const-string v0, "EXIT_DEX_DESKTOP_MODE"

    return-object v0

    .line 97
    :sswitch_1
    const-string v0, "ACCESSIBILITY_SERVICE_DISABLED"

    return-object v0

    .line 95
    :sswitch_2
    const-string v0, "SWITCH_USER"

    return-object v0

    .line 93
    :sswitch_3
    const-string v0, "SWITCH_IME_FAILED"

    return-object v0

    .line 91
    :sswitch_4
    const-string v0, "NO_IME"

    return-object v0

    .line 89
    :sswitch_5
    const-string v0, "DISCONNECT_IME"

    return-object v0

    .line 87
    :sswitch_6
    const-string v0, "SWITCH_IME"

    return-object v0

    .line 85
    :sswitch_7
    const-string v0, "SWITCH_CLIENT"

    return-object v0

    .line 83
    :sswitch_8
    const-string v0, "UNSPECIFIED"

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_8
        0x1 -> :sswitch_7
        0x2 -> :sswitch_6
        0x3 -> :sswitch_5
        0x4 -> :sswitch_4
        0x5 -> :sswitch_3
        0x6 -> :sswitch_2
        0x7 -> :sswitch_1
        0x1e -> :sswitch_0
    .end sparse-switch
.end method
