.class public Lcom/samsung/android/service/ProtectedATCommand/list/ATCommandAttribute;
.super Ljava/lang/Object;
.source "ATCommandAttribute.java"


# static fields
.field private static final blacklist AUTOBLOCKER_OPEN:Ljava/lang/String; = "ABO"

.field private static final blacklist CARRIER_BLOCK:Ljava/lang/String; = "CRB"

.field private static final blacklist CARRIER_OPEN:Ljava/lang/String; = "CRO"

.field private static final blacklist CSTOOL_OPEN:Ljava/lang/String; = "CSO"

.field private static final blacklist FACBIN_OPEN_ATD:Ljava/lang/String; = "FBOA"

.field private static final blacklist FACBIN_OPEN_ATD_DDEXE:Ljava/lang/String; = "FBOAD"

.field private static final blacklist FACBIN_OPEN_DDEXE:Ljava/lang/String; = "FBOD"

.field private static final blacklist SECURELOCK_OPEN:Ljava/lang/String; = "SLO"

.field private static final blacklist SHIPBIN_BLOCK:Ljava/lang/String; = "SBB"


# instance fields
.field private blacklist mAutoBlockerOpen:Z

.field private blacklist mCSOpen:Z

.field private blacklist mCarrierBlock:Z

.field private blacklist mCarrierBlockList:Ljava/lang/String;

.field private blacklist mCarrierOpen:Z

.field private blacklist mCarrierOpenList:Ljava/lang/String;

.field private blacklist mFacBinOpenATD:Z

.field private blacklist mFacBinOpenATDDDEXE:Z

.field private blacklist mFacBinOpenDDEXE:Z

.field private blacklist mSecureLockOpen:Z

.field private blacklist mShipBlock:Z


# direct methods
.method public constructor blacklist <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommandAttribute;->mSecureLockOpen:Z

    iput-boolean v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommandAttribute;->mShipBlock:Z

    iput-boolean v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommandAttribute;->mCSOpen:Z

    iput-boolean v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommandAttribute;->mFacBinOpenATDDDEXE:Z

    iput-boolean v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommandAttribute;->mFacBinOpenATD:Z

    iput-boolean v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommandAttribute;->mFacBinOpenDDEXE:Z

    iput-boolean v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommandAttribute;->mAutoBlockerOpen:Z

    iput-boolean v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommandAttribute;->mCarrierOpen:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommandAttribute;->mCarrierOpenList:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommandAttribute;->mCarrierBlock:Z

    iput-object v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommandAttribute;->mCarrierBlockList:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public blacklist getAutoBlockerOpen()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommandAttribute;->mAutoBlockerOpen:Z

    return v0
.end method

.method public blacklist getCSOpen()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommandAttribute;->mCSOpen:Z

    return v0
.end method

.method public blacklist getCarrierBlock()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommandAttribute;->mCarrierBlock:Z

    return v0
.end method

.method public blacklist getCarrierBlockList()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommandAttribute;->mCarrierBlockList:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getCarrierOpen()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommandAttribute;->mCarrierOpen:Z

    return v0
.end method

.method public blacklist getCarrierOpenList()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommandAttribute;->mCarrierOpenList:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getFacBinOpenATD()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommandAttribute;->mFacBinOpenATD:Z

    return v0
.end method

.method public blacklist getFacBinOpenATDDDEXE()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommandAttribute;->mFacBinOpenATDDDEXE:Z

    return v0
.end method

.method public blacklist getFacBinOpenDDEXE()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommandAttribute;->mFacBinOpenDDEXE:Z

    return v0
.end method

.method public blacklist getSecureLockOpen()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommandAttribute;->mSecureLockOpen:Z

    return v0
.end method

.method public blacklist getShipBlock()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommandAttribute;->mShipBlock:Z

    return v0
.end method

.method blacklist setAttribute([B)[B
    .locals 16

    move-object/from16 v0, p0

    new-instance v1, Ljava/lang/String;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    move-object/from16 v3, p1

    invoke-direct {v1, v3, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v4, 0x1

    add-int/2addr v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v5, "\\|"

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v6, v2

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v6, :cond_9

    aget-object v9, v2, v8

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Attribute = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->debugLog(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v10

    sparse-switch v10, :sswitch_data_0

    :cond_0
    goto :goto_1

    :sswitch_0
    const-string v10, "FBOAD"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v10, 0x2

    goto :goto_2

    :sswitch_1
    const-string v10, "FBOD"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v10, 0x4

    goto :goto_2

    :sswitch_2
    const-string v10, "FBOA"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v10, 0x3

    goto :goto_2

    :sswitch_3
    const-string v10, "SLO"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v10, 0x0

    goto :goto_2

    :sswitch_4
    const-string v10, "SBB"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    move v10, v4

    goto :goto_2

    :sswitch_5
    const-string v10, "CSO"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v10, 0x5

    goto :goto_2

    :sswitch_6
    const-string v10, "ABO"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v10, 0x6

    goto :goto_2

    :goto_1
    const/4 v10, -0x1

    :goto_2
    packed-switch v10, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    const-string v10, "AUTOBLOCKER_OPEN set"

    invoke-static {v10}, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->debugLog(Ljava/lang/String;)V

    iput-boolean v4, v0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommandAttribute;->mAutoBlockerOpen:Z

    goto :goto_3

    :pswitch_1
    const-string v10, "CSTOOL_OPEN set"

    invoke-static {v10}, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->debugLog(Ljava/lang/String;)V

    iput-boolean v4, v0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommandAttribute;->mCSOpen:Z

    goto :goto_3

    :pswitch_2
    const-string v10, "FACBIN_OPEN_DDEXE set"

    invoke-static {v10}, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->debugLog(Ljava/lang/String;)V

    iput-boolean v4, v0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommandAttribute;->mFacBinOpenDDEXE:Z

    goto :goto_3

    :pswitch_3
    const-string v10, "FACBIN_OPEN_ATD set"

    invoke-static {v10}, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->debugLog(Ljava/lang/String;)V

    iput-boolean v4, v0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommandAttribute;->mFacBinOpenATD:Z

    goto :goto_3

    :pswitch_4
    const-string v10, "FACBIN_OPEN_ATDDDEXE set"

    invoke-static {v10}, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->debugLog(Ljava/lang/String;)V

    iput-boolean v4, v0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommandAttribute;->mFacBinOpenATDDDEXE:Z

    goto :goto_3

    :pswitch_5
    const-string v10, "SHIPBIN_BLOCK set"

    invoke-static {v10}, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->debugLog(Ljava/lang/String;)V

    iput-boolean v4, v0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommandAttribute;->mShipBlock:Z

    goto :goto_3

    :pswitch_6
    const-string v10, "SECURELOCK_OPEN set"

    invoke-static {v10}, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->debugLog(Ljava/lang/String;)V

    iput-boolean v4, v0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommandAttribute;->mSecureLockOpen:Z

    nop

    :goto_3
    const-string v10, "CRO"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    const-string v14, "#### And This command can\'t operate with attribute"

    const-string v15, "#### Error Command Convention, Must check AT Command List File"

    const-string v7, ") is invalid : "

    const-string v13, "The length of the attribute("

    const-string v4, "ATCommands"

    if-eqz v12, :cond_4

    const-string v12, "CARRIER_OPEN set"

    invoke-static {v12}, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->debugLog(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    if-gt v12, v11, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    :cond_1
    const/4 v11, 0x3

    invoke-virtual {v9, v11}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const/16 v11, 0x28

    if-ne v12, v11, :cond_3

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v12, 0x1

    sub-int/2addr v11, v12

    invoke-virtual {v9, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v12, 0x29

    if-eq v11, v12, :cond_2

    goto :goto_4

    :cond_2
    const/4 v11, 0x1

    iput-boolean v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommandAttribute;->mCarrierOpen:Z

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    aget-object v12, v12, v11

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    aget-object v10, v10, v11

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    sub-int/2addr v10, v11

    invoke-virtual {v12, v11, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommandAttribute;->mCarrierOpenList:Ljava/lang/String;

    goto :goto_5

    :cond_3
    :goto_4
    invoke-static {v4, v15}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v4, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    :cond_4
    :goto_5
    const-string v10, "CRB"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_8

    const-string v11, "CARRIER_BLOCK set"

    invoke-static {v11}, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->debugLog(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v12

    if-gt v11, v12, :cond_5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :cond_5
    const/4 v7, 0x3

    invoke-virtual {v9, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v11, 0x28

    if-ne v7, v11, :cond_7

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v11, 0x1

    sub-int/2addr v7, v11

    invoke-virtual {v9, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v12, 0x29

    if-eq v7, v12, :cond_6

    goto :goto_6

    :cond_6
    iput-boolean v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommandAttribute;->mCarrierBlock:Z

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v11

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    aget-object v7, v7, v11

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v7, v11

    invoke-virtual {v4, v11, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommandAttribute;->mCarrierBlockList:Ljava/lang/String;

    goto :goto_7

    :cond_7
    :goto_6
    invoke-static {v4, v15}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v4, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :cond_8
    const/4 v11, 0x1

    :goto_7
    add-int/lit8 v8, v8, 0x1

    move v4, v11

    goto/16 :goto_0

    :cond_9
    :goto_8
    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v4, v4, v5

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    return-object v4

    nop

    :sswitch_data_0
    .sparse-switch
        0xfc4e -> :sswitch_6
        0x105df -> :sswitch_5
        0x13fd3 -> :sswitch_4
        0x14116 -> :sswitch_3
        0x20d38e -> :sswitch_2
        0x20d391 -> :sswitch_1
        0x3f99e76 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
