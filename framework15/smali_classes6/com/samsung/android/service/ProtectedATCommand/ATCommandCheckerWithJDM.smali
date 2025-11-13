.class public Lcom/samsung/android/service/ProtectedATCommand/ATCommandCheckerWithJDM;
.super Lcom/samsung/android/service/ProtectedATCommand/ATCommandChecker;
.source "ATCommandCheckerWithJDM.java"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/service/ProtectedATCommand/ATCommandChecker;-><init>()V

    return-void
.end method

.method private blacklist checkJDMOpenCommand(Ljava/lang/String;)I
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Input Cmd : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PACMClassifier"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v0, -0x10000000

    if-nez p1, :cond_0

    const-string v2, "cmd is null"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    const-string v2, "AT+BATTTEST=4,7"

    const-string v3, "AT+PRODCODE=2,"

    const-string v4, "AT+IFPMICCN=0,0,6,0"

    filled-new-array {v4, v2, v3}, [Ljava/lang/String;

    move-result-object v2

    :try_start_0
    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_1

    const-string v3, "This command is a JDM open command"

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    nop

    const/16 v0, 0xb0

    return v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method private blacklist checkJDMProtectedCommand(Ljava/lang/String;)I
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Input Cmd : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PACMClassifier"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v0, -0x10000000

    if-nez p1, :cond_0

    const-string v2, "cmd is null"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    const-string v2, "AT+DEVROOTK=2,2,"

    const-string v3, "AT+DEVROOTK=2,3,"

    const-string v4, "AT+ALERTDIS=0,"

    const-string v5, "AT+DEBUGLVC=0,5"

    const-string v6, "AT+DEBUGLVC=0,6"

    filled-new-array {v4, v5, v6, v2, v3}, [Ljava/lang/String;

    move-result-object v2

    :try_start_0
    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_1

    const-string v3, "This command is a JDM protected command"

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    nop

    const/16 v0, 0xb0

    return v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method


# virtual methods
.method protected blacklist checkAdditionalCondition(Ljava/lang/String;)I
    .locals 3

    invoke-direct {p0, p1}, Lcom/samsung/android/service/ProtectedATCommand/ATCommandCheckerWithJDM;->checkJDMOpenCommand(Ljava/lang/String;)I

    move-result v0

    const-string v1, "PACMClassifier"

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const-string v0, "This command is allowed because this device is a JDM device"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xa1

    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/service/ProtectedATCommand/ATCommandCheckerWithJDM;->checkJDMProtectedCommand(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v2, :cond_1

    const-string v0, "This command is not allowed because this device is a JDM device"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xb1

    return v0

    :cond_1
    return v2
.end method

.method protected blacklist checkProtectedCommand(Lcom/samsung/android/service/ProtectedATCommand/Device;Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;Ljava/lang/String;)I
    .locals 2

    const-string v0, "PACMClassifier"

    const-string v1, "This Command is a protected command"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/service/ProtectedATCommand/ATCommandCheckerWithJDM;->checkAllCondition(Lcom/samsung/android/service/ProtectedATCommand/Device;Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/16 v1, 0xa1

    return v1
.end method

.method protected blacklist checkUnregisteredCommand(Lcom/samsung/android/service/ProtectedATCommand/Device;Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;)I
    .locals 3

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/service/ProtectedATCommand/ATCommandCheckerWithJDM;->checkAbsoluteCondition(Lcom/samsung/android/service/ProtectedATCommand/Device;Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const-string v1, "PACMClassifier"

    const-string v2, "Although this command is an unregistered command, the command is allowed because this device is a JDM device"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0xa1

    return v1
.end method
