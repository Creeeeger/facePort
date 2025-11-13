.class public final Landroid/util/secutil/Slog;
.super Ljava/lang/Object;
.source "Slog.java"


# direct methods
.method private constructor blacklist <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method public static blacklist d(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 62
    sget-boolean v0, Landroid/util/secutil/LogSwitcher;->isShowingGlobalLog:Z

    if-eqz v0, :cond_0

    .line 63
    const/4 v0, 0x3

    invoke-static {v0, v0, p0, p1}, Landroid/util/secutil/Log;->println_native(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 65
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .line 76
    sget-boolean v0, Landroid/util/secutil/LogSwitcher;->isShowingGlobalLog:Z

    if-eqz v0, :cond_0

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 78
    invoke-static {p2}, Landroid/util/secutil/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 77
    const/4 v1, 0x3

    invoke-static {v1, v1, p0, v0}, Landroid/util/secutil/Log;->println_native(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 80
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist e(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 163
    sget-boolean v0, Landroid/util/secutil/LogSwitcher;->isShowingGlobalLog:Z

    if-eqz v0, :cond_0

    .line 164
    const/4 v0, 0x3

    const/4 v1, 0x6

    invoke-static {v0, v1, p0, p1}, Landroid/util/secutil/Log;->println_native(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 166
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .line 177
    sget-boolean v0, Landroid/util/secutil/LogSwitcher;->isShowingGlobalLog:Z

    if-eqz v0, :cond_0

    .line 178
    const/4 v0, 0x3

    const/4 v1, 0x6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 179
    invoke-static {p2}, Landroid/util/secutil/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 178
    invoke-static {v0, v1, p0, v2}, Landroid/util/secutil/Log;->println_native(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 181
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist i(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 91
    sget-boolean v0, Landroid/util/secutil/LogSwitcher;->isShowingGlobalLog:Z

    if-eqz v0, :cond_0

    .line 92
    const/4 v0, 0x3

    const/4 v1, 0x4

    invoke-static {v0, v1, p0, p1}, Landroid/util/secutil/Log;->println_native(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 94
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .line 105
    sget-boolean v0, Landroid/util/secutil/LogSwitcher;->isShowingGlobalLog:Z

    if-eqz v0, :cond_0

    .line 106
    const/4 v0, 0x3

    const/4 v1, 0x4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 107
    invoke-static {p2}, Landroid/util/secutil/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 106
    invoke-static {v0, v1, p0, v2}, Landroid/util/secutil/Log;->println_native(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 109
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist println(ILjava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "priority"    # I
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .line 275
    sget-boolean v0, Landroid/util/secutil/LogSwitcher;->isShowingGlobalLog:Z

    if-eqz v0, :cond_0

    .line 276
    const/4 v0, 0x3

    invoke-static {v0, p0, p1, p2}, Landroid/util/secutil/Log;->println_native(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 278
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist secD(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 69
    sget-boolean v0, Landroid/util/secutil/LogSwitcher;->isShowingSecDLog:Z

    if-eqz v0, :cond_0

    .line 70
    invoke-static {p0, p1}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 72
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist secD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .line 84
    sget-boolean v0, Landroid/util/secutil/LogSwitcher;->isShowingSecDLog:Z

    if-eqz v0, :cond_0

    .line 85
    invoke-static {p0, p1, p2}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0

    .line 87
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist secE(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 170
    sget-boolean v0, Landroid/util/secutil/LogSwitcher;->isShowingSecELog:Z

    if-eqz v0, :cond_0

    .line 171
    invoke-static {p0, p1}, Landroid/util/secutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 173
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .line 185
    sget-boolean v0, Landroid/util/secutil/LogSwitcher;->isShowingSecELog:Z

    if-eqz v0, :cond_0

    .line 186
    invoke-static {p0, p1, p2}, Landroid/util/secutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0

    .line 188
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist secI(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 98
    sget-boolean v0, Landroid/util/secutil/LogSwitcher;->isShowingSecILog:Z

    if-eqz v0, :cond_0

    .line 99
    invoke-static {p0, p1}, Landroid/util/secutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 101
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist secI(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .line 113
    sget-boolean v0, Landroid/util/secutil/LogSwitcher;->isShowingSecILog:Z

    if-eqz v0, :cond_0

    .line 114
    invoke-static {p0, p1, p2}, Landroid/util/secutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0

    .line 116
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist secPrintln(ILjava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "priority"    # I
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .line 282
    sget-boolean v0, Landroid/util/secutil/LogSwitcher;->isShowingGlobalLog:Z

    if-eqz v0, :cond_0

    .line 283
    invoke-static {p0, p1, p2}, Landroid/util/secutil/Slog;->println(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 285
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist secV(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 40
    sget-boolean v0, Landroid/util/secutil/LogSwitcher;->isShowingSecVLog:Z

    if-eqz v0, :cond_0

    .line 41
    invoke-static {p0, p1}, Landroid/util/secutil/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 43
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist secV(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .line 55
    sget-boolean v0, Landroid/util/secutil/LogSwitcher;->isShowingSecVLog:Z

    if-eqz v0, :cond_0

    .line 56
    invoke-static {p0, p1, p2}, Landroid/util/secutil/Slog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0

    .line 58
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist secW(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 127
    sget-boolean v0, Landroid/util/secutil/LogSwitcher;->isShowingSecWLog:Z

    if-eqz v0, :cond_0

    .line 128
    invoke-static {p0, p1}, Landroid/util/secutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 130
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist secW(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .line 142
    sget-boolean v0, Landroid/util/secutil/LogSwitcher;->isShowingSecWLog:Z

    if-eqz v0, :cond_0

    .line 143
    invoke-static {p0, p1, p2}, Landroid/util/secutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0

    .line 145
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist secW(Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .line 156
    sget-boolean v0, Landroid/util/secutil/LogSwitcher;->isShowingSecWLog:Z

    if-eqz v0, :cond_0

    .line 157
    invoke-static {p0, p1}, Landroid/util/secutil/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0

    .line 159
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist secWtf(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 204
    sget-boolean v0, Landroid/util/secutil/LogSwitcher;->isShowingSecWtfLog:Z

    if-eqz v0, :cond_0

    .line 205
    invoke-static {p0, p1}, Landroid/util/secutil/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 207
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist secWtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .line 268
    sget-boolean v0, Landroid/util/secutil/LogSwitcher;->isShowingSecWtfLog:Z

    if-eqz v0, :cond_0

    .line 269
    invoke-static {p0, p1, p2}, Landroid/util/secutil/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0

    .line 271
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist secWtf(Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .line 249
    sget-boolean v0, Landroid/util/secutil/LogSwitcher;->isShowingSecWtfLog:Z

    if-eqz v0, :cond_0

    .line 250
    invoke-static {p0, p1}, Landroid/util/secutil/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0

    .line 252
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist secWtfStack(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 230
    sget-boolean v0, Landroid/util/secutil/LogSwitcher;->isShowingSecWtfLog:Z

    if-eqz v0, :cond_0

    .line 231
    invoke-static {p0, p1}, Landroid/util/secutil/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 233
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist v(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 33
    sget-boolean v0, Landroid/util/secutil/LogSwitcher;->isShowingGlobalLog:Z

    if-eqz v0, :cond_0

    .line 34
    const/4 v0, 0x3

    const/4 v1, 0x2

    invoke-static {v0, v1, p0, p1}, Landroid/util/secutil/Log;->println_native(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 36
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .line 47
    sget-boolean v0, Landroid/util/secutil/LogSwitcher;->isShowingGlobalLog:Z

    if-eqz v0, :cond_0

    .line 48
    const/4 v0, 0x3

    const/4 v1, 0x2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 49
    invoke-static {p2}, Landroid/util/secutil/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 48
    invoke-static {v0, v1, p0, v2}, Landroid/util/secutil/Log;->println_native(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 51
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist w(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 120
    sget-boolean v0, Landroid/util/secutil/LogSwitcher;->isShowingGlobalLog:Z

    if-eqz v0, :cond_0

    .line 121
    const/4 v0, 0x3

    const/4 v1, 0x5

    invoke-static {v0, v1, p0, p1}, Landroid/util/secutil/Log;->println_native(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 123
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .line 134
    sget-boolean v0, Landroid/util/secutil/LogSwitcher;->isShowingGlobalLog:Z

    if-eqz v0, :cond_0

    .line 135
    const/4 v0, 0x3

    const/4 v1, 0x5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 136
    invoke-static {p2}, Landroid/util/secutil/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 135
    invoke-static {v0, v1, p0, v2}, Landroid/util/secutil/Log;->println_native(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 138
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist w(Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .line 149
    sget-boolean v0, Landroid/util/secutil/LogSwitcher;->isShowingGlobalLog:Z

    if-eqz v0, :cond_0

    .line 150
    const/4 v0, 0x3

    const/4 v1, 0x5

    invoke-static {p1}, Landroid/util/secutil/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, p0, v2}, Landroid/util/secutil/Log;->println_native(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 152
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist wtf(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 197
    sget-boolean v0, Landroid/util/secutil/LogSwitcher;->isShowingSecWtfLog:Z

    if-eqz v0, :cond_0

    .line 198
    const/4 v1, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v1 .. v6}, Landroid/util/secutil/Log;->wtf(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZZ)I

    move-result v0

    return v0

    .line 200
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 7
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .line 261
    sget-boolean v0, Landroid/util/secutil/LogSwitcher;->isShowingSecWtfLog:Z

    if-eqz v0, :cond_0

    .line 262
    const/4 v1, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-static/range {v1 .. v6}, Landroid/util/secutil/Log;->wtf(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZZ)I

    move-result v0

    return v0

    .line 264
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist wtf(Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 7
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .line 242
    sget-boolean v0, Landroid/util/secutil/LogSwitcher;->isShowingSecWtfLog:Z

    if-eqz v0, :cond_0

    .line 243
    const/4 v1, 0x3

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v2, p0

    move-object v4, p1

    invoke-static/range {v1 .. v6}, Landroid/util/secutil/Log;->wtf(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZZ)I

    move-result v0

    return v0

    .line 245
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist wtfQuiet(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 214
    const/4 v0, 0x3

    const/4 v1, 0x1

    invoke-static {v0, p0, p1, v1}, Landroid/util/secutil/Log;->wtfQuiet(ILjava/lang/String;Ljava/lang/String;Z)V

    .line 215
    return-void
.end method

.method public static blacklist wtfStack(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 223
    sget-boolean v0, Landroid/util/secutil/LogSwitcher;->isShowingSecWtfLog:Z

    if-eqz v0, :cond_0

    .line 224
    const/4 v1, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v1 .. v6}, Landroid/util/secutil/Log;->wtf(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZZ)I

    move-result v0

    return v0

    .line 226
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
