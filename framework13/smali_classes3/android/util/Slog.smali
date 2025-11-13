.class public final Landroid/util/Slog;
.super Ljava/lang/Object;
.source "Slog.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
.end annotation


# direct methods
.method private constructor greylist-max-o <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    return-void
.end method

.method public static greylist d(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 101
    const/4 v0, 0x3

    invoke-static {v0, v0, p0, p1}, Landroid/util/Log;->println_native(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static greylist d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 125
    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 124
    const/4 v1, 0x3

    invoke-static {v1, v1, p0, v0}, Landroid/util/Log;->println_native(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static greylist e(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 255
    const/4 v0, 0x3

    const/4 v1, 0x6

    invoke-static {v0, v1, p0, p1}, Landroid/util/Log;->println_native(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static greylist e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .line 278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 279
    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 278
    const/4 v1, 0x3

    const/4 v2, 0x6

    invoke-static {v1, v2, p0, v0}, Landroid/util/Log;->println_native(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static greylist i(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 146
    const/4 v0, 0x3

    const/4 v1, 0x4

    invoke-static {v0, v1, p0, p1}, Landroid/util/Log;->println_native(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static greylist-max-o i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 169
    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 168
    const/4 v1, 0x3

    const/4 v2, 0x4

    invoke-static {v1, v2, p0, v0}, Landroid/util/Log;->println_native(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static greylist-max-r println(ILjava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "priority"    # I
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .line 401
    const/4 v0, 0x3

    invoke-static {v0, p0, p1, p2}, Landroid/util/Log;->println_native(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static blacklist secD(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 105
    sget-boolean v0, Landroid/util/secutil/LogSwitcher;->isShowingSecDLog:Z

    if-eqz v0, :cond_0

    .line 106
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 108
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist secD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .line 129
    sget-boolean v0, Landroid/util/secutil/LogSwitcher;->isShowingSecDLog:Z

    if-eqz v0, :cond_0

    .line 130
    invoke-static {p0, p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0

    .line 132
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist secE(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 259
    sget-boolean v0, Landroid/util/secutil/LogSwitcher;->isShowingSecELog:Z

    if-eqz v0, :cond_0

    .line 260
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 262
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .line 283
    sget-boolean v0, Landroid/util/secutil/LogSwitcher;->isShowingSecELog:Z

    if-eqz v0, :cond_0

    .line 284
    invoke-static {p0, p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0

    .line 286
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist secI(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 150
    sget-boolean v0, Landroid/util/secutil/LogSwitcher;->isShowingSecILog:Z

    if-eqz v0, :cond_0

    .line 151
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 153
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist secI(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .line 173
    sget-boolean v0, Landroid/util/secutil/LogSwitcher;->isShowingSecILog:Z

    if-eqz v0, :cond_0

    .line 174
    invoke-static {p0, p1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0

    .line 176
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist secPrintln(ILjava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "priority"    # I
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .line 405
    sget-boolean v0, Landroid/util/secutil/LogSwitcher;->isShowingGlobalLog:Z

    if-eqz v0, :cond_0

    .line 406
    invoke-static {p0, p1, p2}, Landroid/util/Slog;->println(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 408
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist secV(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 61
    sget-boolean v0, Landroid/util/secutil/LogSwitcher;->isShowingSecVLog:Z

    if-eqz v0, :cond_0

    .line 62
    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 64
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist secV(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .line 84
    sget-boolean v0, Landroid/util/secutil/LogSwitcher;->isShowingSecVLog:Z

    if-eqz v0, :cond_0

    .line 85
    invoke-static {p0, p1, p2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0

    .line 87
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist secW(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 194
    sget-boolean v0, Landroid/util/secutil/LogSwitcher;->isShowingSecWLog:Z

    if-eqz v0, :cond_0

    .line 195
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 197
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist secW(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .line 218
    sget-boolean v0, Landroid/util/secutil/LogSwitcher;->isShowingSecWLog:Z

    if-eqz v0, :cond_0

    .line 219
    invoke-static {p0, p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0

    .line 221
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist secW(Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .line 238
    sget-boolean v0, Landroid/util/secutil/LogSwitcher;->isShowingSecWLog:Z

    if-eqz v0, :cond_0

    .line 239
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0

    .line 241
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist secWtf(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 308
    sget-boolean v0, Landroid/util/secutil/LogSwitcher;->isShowingSecWtfLog:Z

    if-eqz v0, :cond_0

    .line 309
    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 311
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist secWtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .line 392
    sget-boolean v0, Landroid/util/secutil/LogSwitcher;->isShowingSecWtfLog:Z

    if-eqz v0, :cond_0

    .line 393
    invoke-static {p0, p1, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0

    .line 395
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist secWtf(Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .line 365
    sget-boolean v0, Landroid/util/secutil/LogSwitcher;->isShowingSecWtfLog:Z

    if-eqz v0, :cond_0

    .line 366
    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0

    .line 368
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist secWtfStack(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 340
    sget-boolean v0, Landroid/util/secutil/LogSwitcher;->isShowingSecWtfLog:Z

    if-eqz v0, :cond_0

    .line 341
    invoke-static {p0, p1}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 343
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static greylist v(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 57
    const/4 v0, 0x3

    const/4 v1, 0x2

    invoke-static {v0, v1, p0, p1}, Landroid/util/Log;->println_native(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static greylist-max-o v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 80
    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 79
    const/4 v1, 0x3

    const/4 v2, 0x2

    invoke-static {v1, v2, p0, v0}, Landroid/util/Log;->println_native(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static greylist w(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 190
    const/4 v0, 0x3

    const/4 v1, 0x5

    invoke-static {v0, v1, p0, p1}, Landroid/util/Log;->println_native(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static greylist w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 214
    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 213
    const/4 v1, 0x3

    const/4 v2, 0x5

    invoke-static {v1, v2, p0, v0}, Landroid/util/Log;->println_native(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static greylist-max-o w(Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .line 234
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x5

    invoke-static {v1, v2, p0, v0}, Landroid/util/Log;->println_native(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static greylist-max-r wtf(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 304
    const/4 v0, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Landroid/util/Log;->wtf(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZZ)I

    move-result v0

    return v0
.end method

.method public static greylist wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 6
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .line 388
    const/4 v0, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Landroid/util/Log;->wtf(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZZ)I

    move-result v0

    return v0
.end method

.method public static greylist-max-o wtf(Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 6
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .line 361
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v1, p0

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Landroid/util/Log;->wtf(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZZ)I

    move-result v0

    return v0
.end method

.method public static greylist-max-o wtfQuiet(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 318
    const/4 v0, 0x3

    const/4 v1, 0x1

    invoke-static {v0, p0, p1, v1}, Landroid/util/Log;->wtfQuiet(ILjava/lang/String;Ljava/lang/String;Z)V

    .line 319
    return-void
.end method

.method public static greylist-max-p wtfStack(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 336
    const/4 v0, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Landroid/util/Log;->wtf(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZZ)I

    move-result v0

    return v0
.end method
