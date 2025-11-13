.class public final Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands$ExtendedAttribute;
.super Ljava/lang/Object;
.source "ATCommands.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ExtendedAttribute"
.end annotation


# static fields
.field private static final blacklist CARRIER_BLOCK:Ljava/lang/String; = "CRB"

.field private static final blacklist CARRIER_OPEN:Ljava/lang/String; = "CRO"

.field private static final blacklist CSTOOL_OPEN:Ljava/lang/String; = "CSO"

.field private static final blacklist FACBIN_OPEN_ATD:Ljava/lang/String; = "FBOA"

.field private static final blacklist FACBIN_OPEN_ATD_DDEX:Ljava/lang/String; = "FBOAD"

.field private static final blacklist FACBIN_OPEN_DDEX:Ljava/lang/String; = "FBOD"

.field private static final blacklist SECURELOCK_OPEN:Ljava/lang/String; = "SLO"

.field private static final blacklist SHIPBIN_BLOCK:Ljava/lang/String; = "SBB"


# instance fields
.field private blacklist mCSOpen:Z

.field private blacklist mCarrierBlock:Z

.field private blacklist mCarrierBlockList:Ljava/lang/String;

.field private blacklist mCarrierOpen:Z

.field private blacklist mCarrierOpenList:Ljava/lang/String;

.field private blacklist mFacBinOpenATD:Z

.field private blacklist mFacBinOpenATDDDEX:Z

.field private blacklist mFacBinOpenDDEX:Z

.field private blacklist mSecureLockOpen:Z

.field private blacklist mShipBlock:Z

.field final synthetic blacklist this$0:Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;


# direct methods
.method public constructor blacklist <init>(Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;)V
    .locals 2
    .param p1, "this$0"    # Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;

    .line 208
    iput-object p1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands$ExtendedAttribute;->this$0:Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 209
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands$ExtendedAttribute;->mSecureLockOpen:Z

    .line 210
    iput-boolean v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands$ExtendedAttribute;->mShipBlock:Z

    .line 211
    iput-boolean v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands$ExtendedAttribute;->mCSOpen:Z

    .line 212
    iput-boolean v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands$ExtendedAttribute;->mFacBinOpenATDDDEX:Z

    .line 213
    iput-boolean v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands$ExtendedAttribute;->mFacBinOpenATD:Z

    .line 214
    iput-boolean v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands$ExtendedAttribute;->mFacBinOpenDDEX:Z

    .line 216
    iput-boolean v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands$ExtendedAttribute;->mCarrierOpen:Z

    .line 217
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands$ExtendedAttribute;->mCarrierOpenList:Ljava/lang/String;

    .line 218
    iput-boolean v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands$ExtendedAttribute;->mCarrierBlock:Z

    .line 219
    iput-object v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands$ExtendedAttribute;->mCarrierBlockList:Ljava/lang/String;

    .line 220
    return-void
.end method


# virtual methods
.method public blacklist getCSOpen()Z
    .locals 1

    .line 231
    iget-boolean v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands$ExtendedAttribute;->mCSOpen:Z

    return v0
.end method

.method public blacklist getCarrierBlock()Z
    .locals 1

    .line 243
    iget-boolean v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands$ExtendedAttribute;->mCarrierBlock:Z

    return v0
.end method

.method public blacklist getCarrierBlockList()Ljava/lang/String;
    .locals 1

    .line 247
    iget-object v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands$ExtendedAttribute;->mCarrierBlockList:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getCarrierOpen()Z
    .locals 1

    .line 235
    iget-boolean v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands$ExtendedAttribute;->mCarrierOpen:Z

    return v0
.end method

.method public blacklist getCarrierOpenList()Ljava/lang/String;
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands$ExtendedAttribute;->mCarrierOpenList:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getFacBinOpenATD()Z
    .locals 1

    .line 251
    iget-boolean v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands$ExtendedAttribute;->mFacBinOpenATD:Z

    return v0
.end method

.method public blacklist getFacBinOpenATDDDEX()Z
    .locals 1

    .line 259
    iget-boolean v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands$ExtendedAttribute;->mFacBinOpenATDDDEX:Z

    return v0
.end method

.method public blacklist getFacBinOpenDDEX()Z
    .locals 1

    .line 255
    iget-boolean v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands$ExtendedAttribute;->mFacBinOpenDDEX:Z

    return v0
.end method

.method public blacklist getSecureLockOpen()Z
    .locals 1

    .line 223
    iget-boolean v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands$ExtendedAttribute;->mSecureLockOpen:Z

    return v0
.end method

.method public blacklist getShipBlock()Z
    .locals 1

    .line 227
    iget-boolean v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands$ExtendedAttribute;->mShipBlock:Z

    return v0
.end method

.method blacklist setAttribute([B)[B
    .locals 16
    .param p1, "cmds"    # [B

    .line 263
    move-object/from16 v0, p0

    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    move-object/from16 v3, p1

    invoke-direct {v1, v3, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 264
    .local v1, "cmd":Ljava/lang/String;
    const-string/jumbo v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v4, 0x1

    add-int/2addr v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v5, "\\|"

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 266
    .local v2, "option":[Ljava/lang/String;
    array-length v6, v2

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v6, :cond_c

    aget-object v9, v2, v8

    .line 268
    .local v9, "list":Ljava/lang/String;
    iget-object v10, v0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands$ExtendedAttribute;->this$0:Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "list = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->debugLog(Ljava/lang/String;)V

    .line 270
    const-string v10, "SLO"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 271
    iget-object v10, v0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands$ExtendedAttribute;->this$0:Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;

    const-string v11, "SECURELOCK_OPEN set"

    invoke-virtual {v10, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->debugLog(Ljava/lang/String;)V

    .line 272
    iput-boolean v4, v0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands$ExtendedAttribute;->mSecureLockOpen:Z

    .line 275
    :cond_0
    const-string v10, "SBB"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 276
    iget-object v10, v0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands$ExtendedAttribute;->this$0:Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;

    const-string v11, "SHIPBIN_BLOCK set"

    invoke-virtual {v10, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->debugLog(Ljava/lang/String;)V

    .line 277
    iput-boolean v4, v0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands$ExtendedAttribute;->mShipBlock:Z

    .line 280
    :cond_1
    const-string v10, "FBOAD"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 281
    iget-object v10, v0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands$ExtendedAttribute;->this$0:Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;

    const-string v11, "FACBIN_OPEN_ATDDDEX set"

    invoke-virtual {v10, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->debugLog(Ljava/lang/String;)V

    .line 282
    iput-boolean v4, v0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands$ExtendedAttribute;->mFacBinOpenATDDDEX:Z

    .line 285
    :cond_2
    const-string v10, "FBOA"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 286
    iget-object v10, v0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands$ExtendedAttribute;->this$0:Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;

    const-string v11, "FACBIN_OPEN_ATD set"

    invoke-virtual {v10, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->debugLog(Ljava/lang/String;)V

    .line 287
    iput-boolean v4, v0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands$ExtendedAttribute;->mFacBinOpenATD:Z

    .line 290
    :cond_3
    const-string v10, "FBOD"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 291
    iget-object v10, v0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands$ExtendedAttribute;->this$0:Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;

    const-string v11, "FACBIN_OPEN_DDEX set"

    invoke-virtual {v10, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->debugLog(Ljava/lang/String;)V

    .line 292
    iput-boolean v4, v0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands$ExtendedAttribute;->mFacBinOpenDDEX:Z

    .line 295
    :cond_4
    const-string v10, "CSO"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 296
    iget-object v10, v0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands$ExtendedAttribute;->this$0:Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;

    const-string v11, "CSTOOL_OPEN set"

    invoke-virtual {v10, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->debugLog(Ljava/lang/String;)V

    .line 297
    iput-boolean v4, v0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands$ExtendedAttribute;->mCSOpen:Z

    .line 300
    :cond_5
    const-string v10, "CRO"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    const-string v13, "#### And This command can\'t operate with attribute"

    const-string v14, "#### Error Command Convention, Must check AT Command List File"

    const/16 v15, 0x28

    const/4 v7, 0x3

    const-string v12, "ATCommands"

    if-eqz v11, :cond_8

    .line 301
    iget-object v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands$ExtendedAttribute;->this$0:Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;

    const-string v4, "CARRIER_OPEN set"

    invoke-virtual {v11, v4}, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->debugLog(Ljava/lang/String;)V

    .line 302
    invoke-virtual {v9, v7}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v15, :cond_7

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v11, 0x1

    sub-int/2addr v4, v11

    invoke-virtual {v9, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v15, 0x29

    if-eq v4, v15, :cond_6

    goto :goto_1

    .line 308
    :cond_6
    iput-boolean v11, v0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands$ExtendedAttribute;->mCarrierOpen:Z

    .line 309
    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v11

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    aget-object v10, v10, v11

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    sub-int/2addr v10, v11

    invoke-virtual {v4, v11, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands$ExtendedAttribute;->mCarrierOpenList:Ljava/lang/String;

    goto :goto_2

    .line 303
    :cond_7
    :goto_1
    invoke-static {v12, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    goto :goto_5

    .line 312
    :cond_8
    :goto_2
    const-string v4, "CRB"

    invoke-virtual {v9, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 313
    iget-object v10, v0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands$ExtendedAttribute;->this$0:Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;

    const-string v11, "CARRIER_BLOCK set"

    invoke-virtual {v10, v11}, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->debugLog(Ljava/lang/String;)V

    .line 314
    invoke-virtual {v9, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v10, 0x28

    if-ne v7, v10, :cond_a

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v10, 0x1

    sub-int/2addr v7, v10

    invoke-virtual {v9, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v11, 0x29

    if-eq v7, v11, :cond_9

    goto :goto_3

    .line 320
    :cond_9
    iput-boolean v10, v0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands$ExtendedAttribute;->mCarrierBlock:Z

    .line 321
    invoke-virtual {v9, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    aget-object v7, v7, v10

    invoke-virtual {v9, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v10

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v10

    invoke-virtual {v7, v10, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands$ExtendedAttribute;->mCarrierBlockList:Ljava/lang/String;

    goto :goto_4

    .line 315
    :cond_a
    :goto_3
    invoke-static {v12, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    goto :goto_5

    .line 312
    :cond_b
    const/4 v10, 0x1

    .line 266
    .end local v9    # "list":Ljava/lang/String;
    :goto_4
    add-int/lit8 v8, v8, 0x1

    move v4, v10

    goto/16 :goto_0

    .line 325
    :cond_c
    :goto_5
    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    return-object v4
.end method
