.class public Landroid/media/SemUibcInputHandler;
.super Ljava/lang/Object;
.source "SemUibcInputHandler.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "SemUibcInputHandler.java"


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 3

    const-string v0, "library loading is failed"

    const-string v1, "SemUibcInputHandler.java"

    :try_start_0
    const-string v2, "try to load libuibc.so"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "uibc"

    invoke-static {v2}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_1
    move-exception v2

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    nop

    :goto_1
    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist handleKeyDown(Landroid/content/Context;II)V
    .locals 2

    const-string v0, "android.permission.INJECT_EVENTS"

    const-string v1, "Need INJECT_EVENT Permission"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, p2}, Landroid/media/SemUibcInputHandler;->keyDown(II)V

    return-void
.end method

.method public static native blacklist handleKeyDownASCII(II)V
.end method

.method public static blacklist handleKeyDownASCII(Landroid/content/Context;II)V
    .locals 2

    const-string v0, "android.permission.INJECT_EVENTS"

    const-string v1, "Need INJECT_EVENT Permission"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, p2}, Landroid/media/SemUibcInputHandler;->keyDownASCII(II)V

    return-void
.end method

.method public static whitelist handleKeyUp(Landroid/content/Context;II)V
    .locals 2

    const-string v0, "android.permission.INJECT_EVENTS"

    const-string v1, "Need INJECT_EVENT Permission"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, p2}, Landroid/media/SemUibcInputHandler;->keyUp(II)V

    return-void
.end method

.method public static native blacklist handleKeyUpASCII(II)V
.end method

.method public static blacklist handleKeyUpASCII(Landroid/content/Context;II)V
    .locals 2

    const-string v0, "android.permission.INJECT_EVENTS"

    const-string v1, "Need INJECT_EVENT Permission"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, p2}, Landroid/media/SemUibcInputHandler;->keyUpASCII(II)V

    return-void
.end method

.method public static whitelist handlePenEvent(Landroid/content/Context;IIIFFF)V
    .locals 2

    const-string v0, "android.permission.INJECT_EVENTS"

    const-string v1, "Need INJECT_EVENT Permission"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {p1 .. p6}, Landroid/media/SemUibcInputHandler;->penEvent(IIIFFF)V

    return-void
.end method

.method public static native blacklist handleRotate(II)V
.end method

.method public static blacklist handleRotate(Landroid/content/Context;II)V
    .locals 2

    const-string v0, "android.permission.INJECT_EVENTS"

    const-string v1, "Need INJECT_EVENT Permission"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, p2}, Landroid/media/SemUibcInputHandler;->rotate(II)V

    return-void
.end method

.method public static native blacklist handleScroll(FF)V
.end method

.method public static blacklist handleScroll(Landroid/content/Context;FF)V
    .locals 2

    const-string v0, "android.permission.INJECT_EVENTS"

    const-string v1, "Need INJECT_EVENT Permission"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, p2}, Landroid/media/SemUibcInputHandler;->scroll(FF)V

    return-void
.end method

.method public static whitelist handleTouchDown(Landroid/content/Context;I[I[I[I)V
    .locals 2

    const-string v0, "android.permission.INJECT_EVENTS"

    const-string v1, "Need INJECT_EVENT Permission"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, p2, p3, p4}, Landroid/media/SemUibcInputHandler;->touchDown(I[I[I[I)V

    return-void
.end method

.method public static whitelist handleTouchMove(Landroid/content/Context;I[I[I[I)V
    .locals 2

    const-string v0, "android.permission.INJECT_EVENTS"

    const-string v1, "Need INJECT_EVENT Permission"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, p2, p3, p4}, Landroid/media/SemUibcInputHandler;->touchMove(I[I[I[I)V

    return-void
.end method

.method public static whitelist handleTouchUp(Landroid/content/Context;I[I[I[I)V
    .locals 2

    const-string v0, "android.permission.INJECT_EVENTS"

    const-string v1, "Need INJECT_EVENT Permission"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, p2, p3, p4}, Landroid/media/SemUibcInputHandler;->touchUp(I[I[I[I)V

    return-void
.end method

.method public static whitelist isActive()Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Landroid/media/SemUibcInputHandler;->isActiveUIBC()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "SemUibcInputHandler.java"

    const-string v3, "NoSuchMethod - mWfdSinkManager.isActiveUIBC()"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0
.end method

.method public static native blacklist isActiveUIBC()Z
.end method

.method public static whitelist isPenAvailable()Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Landroid/media/SemUibcInputHandler;->isPenEnabled()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "SemUibcInputHandler.java"

    const-string v3, "NoSuchMethod - mWfdSinkManager.isPenAvailable()"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0
.end method

.method public static native blacklist isPenEnabled()Z
.end method

.method private static native blacklist keyDown(II)V
.end method

.method private static native blacklist keyDownASCII(II)V
.end method

.method private static native blacklist keyUp(II)V
.end method

.method private static native blacklist keyUpASCII(II)V
.end method

.method private static native blacklist penEvent(IIIFFF)V
.end method

.method private static native blacklist rotate(II)V
.end method

.method private static native blacklist scroll(FF)V
.end method

.method private static native blacklist touchDown(I[I[I[I)V
.end method

.method private static native blacklist touchMove(I[I[I[I)V
.end method

.method private static native blacklist touchUp(I[I[I[I)V
.end method
