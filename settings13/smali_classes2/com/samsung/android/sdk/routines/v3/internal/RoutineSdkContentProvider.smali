.class public final Lcom/samsung/android/sdk/routines/v3/internal/RoutineSdkContentProvider;
.super Landroid/content/ContentProvider;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher;
    .locals 0

    .line 1
    new-instance p0, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher;

    invoke-direct {p0}, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher;-><init>()V

    return-object p0
.end method

.method public final b()Lcom/samsung/android/sdk/routines/v3/internal/ConditionDispatcher;
    .locals 0

    .line 1
    new-instance p0, Lcom/samsung/android/sdk/routines/v3/internal/ConditionDispatcher;

    invoke-direct {p0}, Lcom/samsung/android/sdk/routines/v3/internal/ConditionDispatcher;-><init>()V

    return-object p0
.end method

.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 6

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 6
    :try_start_0
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    const-string v3, "RoutineSdkContentProvider"

    if-nez p2, :cond_0

    :try_start_1
    const-string p0, "call - context is null"

    .line 7
    invoke-static {v3, p0}, Lcom/samsung/android/sdk/routines/v3/internal/Log;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2

    :cond_0
    if-nez p3, :cond_1

    :try_start_2
    const-string p0, "call - extras is null"

    .line 39
    invoke-static {v3, p0}, Lcom/samsung/android/sdk/routines/v3/internal/Log;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 65
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2

    .line 66
    :cond_1
    :try_start_3
    sget-object p2, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;->CALL_TYPE:Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;

    invoke-virtual {p2}, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;->getValue()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_2

    const-string p0, "call - callType is null"

    .line 68
    invoke-static {v3, p0}, Lcom/samsung/android/sdk/routines/v3/internal/Log;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 88
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2

    .line 89
    :cond_2
    :try_start_4
    sget-object v4, Lcom/samsung/android/sdk/routines/v3/internal/RoutineSdkContentProvider$1;->a:[I

    invoke-static {p2}, Lcom/samsung/android/sdk/routines/v3/internal/ExtraValue;->a(Ljava/lang/String;)Lcom/samsung/android/sdk/routines/v3/internal/ExtraValue;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    const/4 v5, 0x1

    if-eq v4, v5, :cond_4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_3

    .line 101
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "call - not supported callType: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/samsung/android/sdk/routines/v3/internal/Log;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 105
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2

    .line 106
    :cond_3
    :try_start_5
    invoke-virtual {p0}, Lcom/samsung/android/sdk/routines/v3/internal/RoutineSdkContentProvider;->a()Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher;

    move-result-object p2

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p2, p0, p1, p3}, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 113
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    .line 114
    :cond_4
    :try_start_6
    invoke-virtual {p0}, Lcom/samsung/android/sdk/routines/v3/internal/RoutineSdkContentProvider;->b()Lcom/samsung/android/sdk/routines/v3/internal/ConditionDispatcher;

    move-result-object p2

    .line 115
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 116
    invoke-virtual {p2, p0, p1, p3}, Lcom/samsung/android/sdk/routines/v3/internal/ConditionDispatcher;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 130
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 131
    throw p0
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public onCreate()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method
