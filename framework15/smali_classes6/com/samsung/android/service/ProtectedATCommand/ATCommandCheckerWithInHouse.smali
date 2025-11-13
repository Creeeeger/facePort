.class public Lcom/samsung/android/service/ProtectedATCommand/ATCommandCheckerWithInHouse;
.super Lcom/samsung/android/service/ProtectedATCommand/ATCommandChecker;
.source "ATCommandCheckerWithInHouse.java"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/service/ProtectedATCommand/ATCommandChecker;-><init>()V

    return-void
.end method


# virtual methods
.method protected blacklist checkAdditionalCondition(Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected blacklist checkProtectedCommand(Lcom/samsung/android/service/ProtectedATCommand/Device;Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;Ljava/lang/String;)I
    .locals 3

    const-string v0, "This Command is a protected command"

    const-string v1, "PACMClassifier"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/service/ProtectedATCommand/ATCommandCheckerWithInHouse;->checkAllCondition(Lcom/samsung/android/service/ProtectedATCommand/Device;Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    return v0

    :cond_0
    const-string v2, "This Command is NOT_ALLOWED_PROTECTED_AT_COMMAND"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0xb1

    return v1
.end method

.method protected blacklist checkUnregisteredCommand(Lcom/samsung/android/service/ProtectedATCommand/Device;Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;)I
    .locals 3

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/service/ProtectedATCommand/ATCommandCheckerWithInHouse;->checkAbsoluteCondition(Lcom/samsung/android/service/ProtectedATCommand/Device;Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const-string v1, "PACMClassifier"

    const-string v2, "This command is not allowed because the command is an unregistered command"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0xaf

    return v1
.end method
