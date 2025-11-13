.class public Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;
.super Ljava/lang/Object;
.source "ATCommands.java"


# static fields
.field static final blacklist TAG:Ljava/lang/String; = "ATCommands"

.field private static final blacklist mIsTestBinary:Z


# instance fields
.field private blacklist mAttribute:Lcom/samsung/android/service/ProtectedATCommand/list/ATCommandAttribute;

.field private blacklist mCmds:[B

.field private blacklist mFlags:Z

.field private blacklist mHasAttribute:Z

.field private blacklist mName:Ljava/lang/String;

.field private blacklist mType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    const-string v0, "ro.build.type"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->mIsTestBinary:Z

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->mName:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->mCmds:[B

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->mFlags:Z

    const/16 v1, 0xaf

    iput v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->mType:I

    iput-boolean v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->mHasAttribute:Z

    new-instance v0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommandAttribute;

    invoke-direct {v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommandAttribute;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->mAttribute:Lcom/samsung/android/service/ProtectedATCommand/list/ATCommandAttribute;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;[B)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->mName:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->mCmds:[B

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->mFlags:Z

    const/16 v1, 0xaf

    iput v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->mType:I

    iput-boolean v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->mHasAttribute:Z

    new-instance v0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommandAttribute;

    invoke-direct {v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommandAttribute;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->mAttribute:Lcom/samsung/android/service/ProtectedATCommand/list/ATCommandAttribute;

    iput-object p1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->mName:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->mCmds:[B

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;[BZI)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->mName:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->mCmds:[B

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->mFlags:Z

    const/16 v1, 0xaf

    iput v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->mType:I

    iput-boolean v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->mHasAttribute:Z

    new-instance v0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommandAttribute;

    invoke-direct {v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommandAttribute;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->mAttribute:Lcom/samsung/android/service/ProtectedATCommand/list/ATCommandAttribute;

    iput-object p1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->mName:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->mCmds:[B

    iput-boolean p3, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->mFlags:Z

    iput p4, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->mType:I

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;[BZIZ)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->mName:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->mCmds:[B

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->mFlags:Z

    const/16 v1, 0xaf

    iput v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->mType:I

    iput-boolean v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->mHasAttribute:Z

    new-instance v1, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommandAttribute;

    invoke-direct {v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommandAttribute;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->mAttribute:Lcom/samsung/android/service/ProtectedATCommand/list/ATCommandAttribute;

    iput-object p1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->mName:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->mCmds:[B

    iput-boolean p3, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->mFlags:Z

    iput p4, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->mType:I

    iput-boolean p5, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->mHasAttribute:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CMD Name = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->debugLog(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CMD Type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->mType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->debugLog(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CMD Attribute = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->mHasAttribute:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->debugLog(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->mHasAttribute:Z

    if-eqz v1, :cond_0

    const-string v1, "\\|"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v0, v1, v0

    iput-object v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->mName:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->mAttribute:Lcom/samsung/android/service/ProtectedATCommand/list/ATCommandAttribute;

    invoke-virtual {v0, p2}, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommandAttribute;->setAttribute([B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->mCmds:[B

    :cond_0
    return-void
.end method

.method public static blacklist debugLog(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->mIsTestBinary:Z

    if-eqz v0, :cond_0

    const-string v0, "ATCommands"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 13

    instance-of v0, p1, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, p0, :cond_1

    return v0

    :cond_1
    move-object v2, p1

    check-cast v2, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;

    new-instance v3, Ljava/lang/String;

    invoke-virtual {v2}, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->getCmdBytes()[B

    move-result-object v4

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, v4, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    new-instance v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->mCmds:[B

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v4, v5, v6}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const-string v5, "="

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    array-length v8, v6

    const/4 v9, 0x2

    if-lt v8, v9, :cond_a

    array-length v8, v7

    if-ge v8, v9, :cond_2

    goto :goto_2

    :cond_2
    aget-object v5, v6, v0

    const-string v8, ","

    invoke-virtual {v5, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v9, v7, v0

    invoke-virtual {v9, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    array-length v9, v8

    array-length v10, v5

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v9, :cond_8

    :try_start_0
    aget-object v11, v5, v10

    const-string v12, "*"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    iget-boolean v11, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->mFlags:Z

    if-nez v11, :cond_3

    invoke-virtual {v2}, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->getFlags()Z

    move-result v11

    if-eqz v11, :cond_4

    :cond_3
    aget-object v11, v8, v10

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-ltz v11, :cond_4

    aget-object v11, v8, v10

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    const/16 v12, 0x9

    if-le v11, v12, :cond_5

    :cond_4
    move v1, v0

    :cond_5
    return v1

    :cond_6
    aget-object v11, v5, v10

    aget-object v12, v8, v10

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v11, :cond_7

    return v1

    :cond_7
    goto :goto_1

    :catch_0
    move-exception v11

    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_8
    array-length v10, v5

    array-length v11, v8

    if-ne v10, v11, :cond_9

    move v1, v0

    :cond_9
    return v1

    :cond_a
    :goto_2
    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "=*"

    if-eqz v0, :cond_b

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :cond_b
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_c
    :goto_3
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public blacklist getCarrierBlockList()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->mAttribute:Lcom/samsung/android/service/ProtectedATCommand/list/ATCommandAttribute;

    invoke-virtual {v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommandAttribute;->getCarrierBlockList()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getCarrierOpenList()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->mAttribute:Lcom/samsung/android/service/ProtectedATCommand/list/ATCommandAttribute;

    invoke-virtual {v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommandAttribute;->getCarrierOpenList()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getCmdBytes()[B
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->mCmds:[B

    return-object v0
.end method

.method public blacklist getFlags()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->mFlags:Z

    return v0
.end method

.method public blacklist getHasAttribute()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->mHasAttribute:Z

    return v0
.end method

.method public blacklist getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getType()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->mType:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->mName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public blacklist isAutoBlockerOpenCommand()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->mAttribute:Lcom/samsung/android/service/ProtectedATCommand/list/ATCommandAttribute;

    invoke-virtual {v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommandAttribute;->getAutoBlockerOpen()Z

    move-result v0

    return v0
.end method

.method public blacklist isCSOpenCommand()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->mAttribute:Lcom/samsung/android/service/ProtectedATCommand/list/ATCommandAttribute;

    invoke-virtual {v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommandAttribute;->getCSOpen()Z

    move-result v0

    return v0
.end method

.method public blacklist isCarrierBlockCommand()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->mAttribute:Lcom/samsung/android/service/ProtectedATCommand/list/ATCommandAttribute;

    invoke-virtual {v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommandAttribute;->getCarrierBlock()Z

    move-result v0

    return v0
.end method

.method public blacklist isCarrierOpenCommand()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->mAttribute:Lcom/samsung/android/service/ProtectedATCommand/list/ATCommandAttribute;

    invoke-virtual {v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommandAttribute;->getCarrierOpen()Z

    move-result v0

    return v0
.end method

.method public blacklist isFacBinOpenATDCommand()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->mAttribute:Lcom/samsung/android/service/ProtectedATCommand/list/ATCommandAttribute;

    invoke-virtual {v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommandAttribute;->getFacBinOpenATD()Z

    move-result v0

    return v0
.end method

.method public blacklist isFacBinOpenATDDDEXECommand()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->mAttribute:Lcom/samsung/android/service/ProtectedATCommand/list/ATCommandAttribute;

    invoke-virtual {v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommandAttribute;->getFacBinOpenATDDDEXE()Z

    move-result v0

    return v0
.end method

.method public blacklist isFacBinOpenDDEXECommand()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->mAttribute:Lcom/samsung/android/service/ProtectedATCommand/list/ATCommandAttribute;

    invoke-virtual {v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommandAttribute;->getFacBinOpenDDEXE()Z

    move-result v0

    return v0
.end method

.method public blacklist isSecureLockOpenCommand()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->mAttribute:Lcom/samsung/android/service/ProtectedATCommand/list/ATCommandAttribute;

    invoke-virtual {v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommandAttribute;->getSecureLockOpen()Z

    move-result v0

    return v0
.end method

.method public blacklist isShipBlockCommand()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->mAttribute:Lcom/samsung/android/service/ProtectedATCommand/list/ATCommandAttribute;

    invoke-virtual {v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommandAttribute;->getShipBlock()Z

    move-result v0

    return v0
.end method
