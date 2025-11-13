.class public abstract Lcom/samsung/android/service/ProtectedATCommand/ATCommandChecker;
.super Ljava/lang/Object;
.source "ATCommandChecker.java"


# static fields
.field public static final blacklist ATD:I = 0x1

.field public static final blacklist ATDDDEXEERR:I = 0x0

.field public static final blacklist DDEXE:I = 0x2

.field protected static final blacklist TAG:Ljava/lang/String; = "PACMClassifier"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private blacklist checkAtdDdexe(Lcom/samsung/android/service/ProtectedATCommand/Packet;)I
    .locals 6

    const/4 v0, 0x0

    const-string v1, ""

    const/4 v2, 0x4

    invoke-virtual {p1, v2}, Lcom/samsung/android/service/ProtectedATCommand/Packet;->getItem(I)[B

    move-result-object v0

    const/4 v2, 0x0

    const-string v3, "PACMClassifier"

    if-nez v0, :cond_0

    const-string v4, "atd_ddexe is null !!"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    new-instance v4, Ljava/lang/String;

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v4, v0, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    move-object v1, v4

    const-string v4, "ATD"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v2, "This cmd is from ATD"

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    return v2

    :cond_1
    const-string v4, "DDEXE"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v2, "This cmd is from DDEXE"

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x2

    return v2

    :cond_2
    return v2
.end method

.method private static blacklist checkAttribute(Lcom/samsung/android/service/ProtectedATCommand/Device;Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;I)I
    .locals 5

    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->getCmdBytes()[B

    move-result-object v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {p1}, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->getHasAttribute()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->getType()I

    move-result v1

    return v1

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->isCarrierOpenCommand()Z

    move-result v1

    const-string v2, " device"

    const-string v3, "PACMClassifier"

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->getCarrierOpenList()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/service/ProtectedATCommand/Device;->salesCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " is opened in only ("

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->getCarrierOpenList()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ") device, so this cmd is block in "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/service/ProtectedATCommand/Device;->salesCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0xc4

    return v1

    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->isCarrierBlockCommand()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->getCarrierBlockList()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/service/ProtectedATCommand/Device;->salesCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " is blocked in "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/service/ProtectedATCommand/Device;->salesCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0xc5

    return v1

    :cond_2
    invoke-virtual {p1}, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->isShipBlockCommand()Z

    move-result v1

    const/4 v2, 0x2

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/service/ProtectedATCommand/Device;->isShipBin()Z

    move-result v1

    if-eqz v1, :cond_3

    if-ne p2, v2, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must be used in only no ship binary. So this is blocked because this binary is ship binary."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0xc2

    return v1

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/service/ProtectedATCommand/Device;->isFacBin()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {p1}, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->isFacBinOpenATDDDEXECommand()Z

    move-result v1

    const/16 v4, 0xc6

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must be used in only factory binary. So this is blocked because this binary is not factory binary."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_4
    invoke-virtual {p1}, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->isFacBinOpenATDCommand()Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    if-ne p2, v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from ATD must be used in only factory binary. So this is blocked because this binary is not factory binary."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_5
    invoke-virtual {p1}, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->isFacBinOpenDDEXECommand()Z

    move-result v1

    if-eqz v1, :cond_6

    if-ne p2, v2, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from DDEXE must be used in only factory binary. So this is blocked because this binary is not factory binary."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_6
    invoke-virtual {p1}, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->isCSOpenCommand()Z

    move-result v1

    if-eqz v1, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is only opend in Galaxy Diag Tool."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0xc3

    return v1

    :cond_7
    invoke-virtual {p1}, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->getType()I

    move-result v1

    return v1
.end method

.method private blacklist checkCommonCondition(Lcom/samsung/android/service/ProtectedATCommand/Device;Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;Ljava/lang/String;)I
    .locals 4

    invoke-virtual {p1}, Lcom/samsung/android/service/ProtectedATCommand/Device;->hasToken()Z

    move-result v0

    const/16 v1, 0xa1

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->getType()I

    move-result v0

    const/16 v2, 0xa2

    if-ne v0, v2, :cond_0

    const/16 v1, 0xb0

    goto :goto_0

    :cond_0
    nop

    :goto_0
    return v1

    :cond_1
    invoke-static {p3}, Lcom/samsung/android/service/ProtectedATCommand/ATCommandChecker;->checkSpecialCommand(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x1

    const-string v3, "PACMClassifier"

    if-ne v0, v2, :cond_2

    const-string v0, "This command is allowed because the command is a special command"

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    invoke-virtual {p1}, Lcom/samsung/android/service/ProtectedATCommand/Device;->isMDFEnable()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "This command is not allowed by CC mode"

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xc1

    return v0

    :cond_3
    invoke-virtual {p1}, Lcom/samsung/android/service/ProtectedATCommand/Device;->isSecureLockOn()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/samsung/android/service/ProtectedATCommand/Device;->isShipBin()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/samsung/android/service/ProtectedATCommand/Device;->isMaintenanceModeOn()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p2}, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->isSecureLockOpenCommand()Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "This command is not allowed by secure lock"

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xc0

    return v0

    :cond_4
    return v2
.end method

.method static blacklist checkSpecialCommand(Ljava/lang/String;)I
    .locals 6

    const/high16 v0, -0x10000000

    if-nez p0, :cond_0

    const-string v1, "PACMClassifier"

    const-string v2, "cmd is null"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    const-string v1, "AT+CDV"

    const-string v2, "AT+TESTSPECIAL"

    const-string v3, "ATD"

    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    :try_start_0
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v5, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    nop

    const/16 v0, 0xff

    return v0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method private blacklist checkUserOpenCommand(Lcom/samsung/android/service/ProtectedATCommand/Device;Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;Lcom/samsung/android/service/ProtectedATCommand/Packet;Ljava/lang/String;)I
    .locals 4

    invoke-virtual {p0, p1, p2, p4}, Lcom/samsung/android/service/ProtectedATCommand/ATCommandChecker;->checkAllCondition(Lcom/samsung/android/service/ProtectedATCommand/Device;Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const-string v1, "This Command is USER_OPEN_AT_COMMAND"

    const-string v2, "PACMClassifier"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p3}, Lcom/samsung/android/service/ProtectedATCommand/ATCommandChecker;->checkAtdDdexe(Lcom/samsung/android/service/ProtectedATCommand/Packet;)I

    move-result v1

    invoke-static {p1, p2, v1}, Lcom/samsung/android/service/ProtectedATCommand/ATCommandChecker;->checkAttribute(Lcom/samsung/android/service/ProtectedATCommand/Device;Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;I)I

    move-result v1

    const/16 v3, 0xc3

    if-ne v1, v3, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/service/ProtectedATCommand/Device;->hasCSTool()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "This Command is now open becauese there is Galaxy Diag Tool"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0xa1

    goto :goto_0

    :cond_1
    const/16 v3, 0xa1

    if-eq v1, v3, :cond_2

    const-string v3, "This Command is not USER_OPEN_AT_COMMAND because of attribute"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return v1
.end method


# virtual methods
.method public blacklist checkATCommand(Lcom/samsung/android/service/ProtectedATCommand/Device;Ljava/util/LinkedHashMap;Ljava/lang/String;Lcom/samsung/android/service/ProtectedATCommand/Packet;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/service/ProtectedATCommand/Device;",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/LinkedHashSet<",
            "Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;",
            ">;>;",
            "Ljava/lang/String;",
            "Lcom/samsung/android/service/ProtectedATCommand/Packet;",
            ")I"
        }
    .end annotation

    invoke-static {p2, p3}, Lcom/samsung/android/service/ProtectedATCommand/PACMClassifier;->getCommand(Ljava/util/LinkedHashMap;Ljava/lang/String;)Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->getType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/service/ProtectedATCommand/ATCommandChecker;->checkUnregisteredCommand(Lcom/samsung/android/service/ProtectedATCommand/Device;Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;)I

    move-result v2

    return v2

    :pswitch_0
    invoke-virtual {p0, p1, v0, p3}, Lcom/samsung/android/service/ProtectedATCommand/ATCommandChecker;->checkProtectedCommand(Lcom/samsung/android/service/ProtectedATCommand/Device;Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;Ljava/lang/String;)I

    move-result v2

    return v2

    :pswitch_1
    invoke-direct {p0, p1, v0, p4, p3}, Lcom/samsung/android/service/ProtectedATCommand/ATCommandChecker;->checkUserOpenCommand(Lcom/samsung/android/service/ProtectedATCommand/Device;Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;Lcom/samsung/android/service/ProtectedATCommand/Packet;Ljava/lang/String;)I

    move-result v2

    return v2

    :pswitch_data_0
    .packed-switch 0xa1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method blacklist checkAbsoluteCondition(Lcom/samsung/android/service/ProtectedATCommand/Device;Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;)I
    .locals 2

    invoke-virtual {p1}, Lcom/samsung/android/service/ProtectedATCommand/Device;->isAutoBlockerOn()Z

    move-result v0

    const-string v1, "PACMClassifier"

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->isAutoBlockerOpenCommand()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "AT command is not allowed by Auto Blocker"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xd0

    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/service/ProtectedATCommand/Device;->isDevDevice()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/service/ProtectedATCommand/Device;->isTestMode()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "The command is allowed because this device is a development device."

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xa1

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method abstract blacklist checkAdditionalCondition(Ljava/lang/String;)I
.end method

.method blacklist checkAllCondition(Lcom/samsung/android/service/ProtectedATCommand/Device;Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;Ljava/lang/String;)I
    .locals 2

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/service/ProtectedATCommand/ATCommandChecker;->checkAbsoluteCondition(Lcom/samsung/android/service/ProtectedATCommand/Device;Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/service/ProtectedATCommand/ATCommandChecker;->checkCommonCondition(Lcom/samsung/android/service/ProtectedATCommand/Device;Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;Ljava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0, p3}, Lcom/samsung/android/service/ProtectedATCommand/ATCommandChecker;->checkAdditionalCondition(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method abstract blacklist checkProtectedCommand(Lcom/samsung/android/service/ProtectedATCommand/Device;Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;Ljava/lang/String;)I
.end method

.method protected abstract blacklist checkUnregisteredCommand(Lcom/samsung/android/service/ProtectedATCommand/Device;Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;)I
.end method
