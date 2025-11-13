.class public Lcom/sec/android/iaft/IAFDDiagnosis;
.super Ljava/lang/Object;
.source "IAFDDiagnosis.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;,
        Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;,
        Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;,
        Lcom/sec/android/iaft/IAFDDiagnosis$IAFDDiagnosisHolder;
    }
.end annotation


# static fields
.field private static final blacklist EXP_REPAIRINFO_AppFlag:I = 0x3

.field private static final blacklist EXP_REPAIRINFO_MainLan:I = 0x4

.field private static final blacklist EXP_REPAIRINFO_NoOneKeyFlag:I = 0x1

.field private static final blacklist EXP_REPAIRINFO_NoUpdateFlag:I = 0x2

.field private static final blacklist EXP_REPAIRINFO_PileFlag:I = 0x0

.field private static final blacklist EXP_REPAIRINFO_SubLan:I = 0x5

.field private static final blacklist EXP_RULE_32BITONLY:I = 0x4

.field private static final blacklist EXP_RULE_LIBS:I = 0x2

.field private static final blacklist EXP_RULE_NONE:I = 0x0

.field private static final blacklist EXP_RULE_PKGN:I = 0x1

.field private static final blacklist EXP_UNKNOW:I = -0x1

.field private static final blacklist FLAG_SUPPORT3RDAPP:I = 0x1

.field private static final blacklist FLAG_SUPPORTSYSAPP:I = 0x2

.field private static final blacklist TAG:Ljava/lang/String; = "IAFDDiagnosis"


# instance fields
.field private blacklist callstack:Ljava/lang/String;

.field private blacklist component:Ljava/lang/String;

.field private blacklist curAppFlag:I

.field private blacklist curExpEntity:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

.field private blacklist dualUserId:I

.field private blacklist expType:I

.field private blacklist isCHNModel:Z

.field private blacklist isParseSuccess:Z

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

.field private blacklist mSalesCode:Ljava/lang/String;

.field private blacklist reason:Ljava/lang/String;


# direct methods
.method private constructor blacklist <init>()V
    .locals 1

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->mContext:Landroid/content/Context;

    .line 69
    iput-object v0, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    .line 70
    iput-object v0, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->mSalesCode:Ljava/lang/String;

    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->isCHNModel:Z

    .line 77
    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/sec/android/iaft/IAFDDiagnosis-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/iaft/IAFDDiagnosis;-><init>()V

    return-void
.end method

.method private blacklist findStringFromRtoL(Ljava/lang/String;Ljava/lang/String;II)I
    .locals 8
    .param p1, "orgStr"    # Ljava/lang/String;
    .param p2, "desStr"    # Ljava/lang/String;
    .param p3, "rIndex"    # I
    .param p4, "limitlen"    # I

    .line 276
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 277
    .local v0, "deslen":I
    add-int/lit8 v1, p3, 0x1

    sub-int/2addr v1, v0

    .line 278
    .local v1, "ileft":I
    add-int/lit8 v2, v0, -0x1

    .line 279
    .local v2, "icmpEnd":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, p4

    .line 280
    .local v3, "iorgend":I
    if-gez v3, :cond_0

    const/4 v3, 0x0

    .line 281
    :cond_0
    :goto_0
    if-lt v1, v3, :cond_3

    .line 282
    move v4, v1

    .local v4, "i":I
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1
    if-ge v5, v0, :cond_2

    .line 283
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {p2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v6, v7, :cond_2

    .line 284
    if-ne v5, v2, :cond_1

    .line 285
    return v1

    .line 282
    :cond_1
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 290
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 292
    .end local v4    # "i":I
    .end local v5    # "j":I
    :cond_3
    const/4 v4, -0x1

    return v4
.end method

.method private blacklist getCallstack()Ljava/lang/String;
    .locals 1

    .line 698
    iget-object v0, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->callstack:Ljava/lang/String;

    return-object v0
.end method

.method private blacklist getCallstackForJE(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 10
    .param p1, "srcStr"    # Ljava/lang/String;
    .param p2, "startStr"    # Ljava/lang/String;
    .param p3, "limitLen"    # I

    .line 297
    shl-int/lit8 v0, p3, 0x4

    .line 298
    .local v0, "maxlen":I
    const-string v1, ""

    .line 300
    .local v1, "outstring":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 301
    .local v2, "srclen":I
    if-gt v2, p3, :cond_0

    return-object p1

    .line 305
    :cond_0
    add-int/lit8 v3, v2, -0x1

    .line 306
    .local v3, "iend":I
    const/4 v4, 0x0

    .local v4, "icnt":I
    move v5, p3

    .line 307
    .local v5, "curLimitlen":I
    :goto_0
    const/4 v6, 0x2

    if-ge v4, v6, :cond_2

    .line 308
    add-int/lit8 v4, v4, 0x1

    .line 309
    const-string v6, "Caused by:"

    invoke-direct {p0, p1, v6, v3, v0}, Lcom/sec/android/iaft/IAFDDiagnosis;->findStringFromRtoL(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v6

    .line 310
    .local v6, "istart":I
    if-ltz v6, :cond_2

    .line 311
    sub-int v7, v3, v6

    if-ge v7, v5, :cond_1

    sub-int v7, v3, v6

    goto :goto_1

    :cond_1
    move v7, v5

    .line 312
    .local v7, "curlen":I
    :goto_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    add-int v9, v6, v7

    invoke-virtual {p1, v6, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 313
    sub-int/2addr v5, v7

    .line 314
    move v3, v6

    goto :goto_0

    .line 319
    .end local v6    # "istart":I
    .end local v7    # "curlen":I
    :cond_2
    if-lez v5, :cond_3

    .line 320
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {p1, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 322
    :cond_3
    return-object v1
.end method

.method private blacklist getCauseForNE(Ljava/lang/String;I)Ljava/lang/String;
    .locals 6
    .param p1, "srcStr"    # Ljava/lang/String;
    .param p2, "limitLen"    # I

    .line 209
    const/4 v0, 0x6

    .line 210
    .local v0, "prefixLen":I
    const-string v1, "Cause:"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 211
    .local v1, "istart":I
    const/4 v2, 0x0

    if-gez v1, :cond_0

    .line 212
    const-string v3, "Abort message:"

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 213
    const/16 v0, 0xe

    .line 214
    if-gez v1, :cond_0

    .line 215
    return-object v2

    .line 218
    :cond_0
    add-int v3, v1, p2

    .line 219
    .local v3, "iend":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-gt v3, v4, :cond_1

    move v4, v3

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    :goto_0
    move v3, v4

    .line 221
    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 222
    .local v4, "strtmp":Ljava/lang/String;
    if-nez v4, :cond_2

    .line 223
    return-object v2

    .line 225
    :cond_2
    move v1, v0

    .line 226
    add-int v2, v1, p2

    .line 227
    .end local v3    # "iend":I
    .local v2, "iend":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-gt v2, v3, :cond_3

    move v3, v2

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    :goto_1
    move v2, v3

    .line 228
    const-string v3, "\n"

    invoke-virtual {v4, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 229
    .local v3, "j":I
    if-le v3, v1, :cond_5

    .line 230
    if-gt v2, v3, :cond_4

    move v5, v2

    goto :goto_2

    :cond_4
    move v5, v3

    :goto_2
    move v2, v5

    .line 232
    :cond_5
    invoke-virtual {v4, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private blacklist getComponent()Ljava/lang/String;
    .locals 1

    .line 694
    iget-object v0, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->component:Ljava/lang/String;

    return-object v0
.end method

.method private blacklist getComponent(Ljava/lang/String;Ljava/lang/String;IZ)Ljava/lang/String;
    .locals 4
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "callstack"    # Ljava/lang/String;
    .param p3, "limitLen"    # I
    .param p4, "isNativeCrash"    # Z

    .line 239
    const-string v0, "com."

    if-eqz p1, :cond_0

    .line 240
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 241
    .local v1, "istart":I
    if-ltz v1, :cond_0

    .line 242
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 245
    .end local v1    # "istart":I
    :cond_0
    if-eqz p2, :cond_8

    .line 246
    const/4 v1, 0x0

    .line 247
    .local v1, "ifrom":I
    if-eqz p4, :cond_3

    .line 248
    const-string v2, "/data/app/"

    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 249
    if-gez v1, :cond_1

    const-string v2, "/app/"

    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 250
    :cond_1
    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 251
    .local v2, "istart":I
    if-gez v2, :cond_2

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 252
    :cond_2
    if-gez v2, :cond_4

    .line 253
    if-ltz v1, :cond_4

    move v2, v1

    goto :goto_0

    .line 256
    .end local v2    # "istart":I
    :cond_3
    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 259
    .restart local v2    # "istart":I
    :cond_4
    :goto_0
    if-ltz v2, :cond_8

    .line 260
    const-string v0, "\n"

    invoke-virtual {p2, v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 261
    .local v0, "iend":I
    if-lez v0, :cond_6

    .line 262
    add-int v3, v2, p3

    if-gt v0, v3, :cond_5

    move v3, v0

    goto :goto_1

    :cond_5
    add-int v3, v2, p3

    :goto_1
    move v0, v3

    goto :goto_3

    .line 264
    :cond_6
    add-int v0, v2, p3

    .line 265
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-gt v0, v3, :cond_7

    move v3, v0

    goto :goto_2

    :cond_7
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    :goto_2
    move v0, v3

    .line 267
    :goto_3
    invoke-virtual {p2, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 270
    .end local v0    # "iend":I
    .end local v1    # "ifrom":I
    .end local v2    # "istart":I
    :cond_8
    return-object p1
.end method

.method public static blacklist getInstance()Lcom/sec/android/iaft/IAFDDiagnosis;
    .locals 1

    .line 83
    invoke-static {}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFDDiagnosisHolder;->-$$Nest$sfgetINSTANCE()Lcom/sec/android/iaft/IAFDDiagnosis;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getReason()Ljava/lang/String;
    .locals 1

    .line 690
    iget-object v0, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->reason:Ljava/lang/String;

    return-object v0
.end method

.method private blacklist getRepairType(I)I
    .locals 7
    .param p1, "errtype"    # I

    .line 578
    iget-object v0, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v0, v0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    invoke-static {v0}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->-$$Nest$fgetisSupportRepair(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 579
    return v1

    .line 580
    :cond_0
    iget-object v0, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 582
    .local v0, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    const-string v2, "com.samsung.android.voc"

    const/16 v3, 0x4000

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 583
    .local v2, "pmInfo":Landroid/content/pm/PackageInfo;
    if-nez v2, :cond_1

    .line 584
    return v1

    .line 585
    :cond_1
    invoke-virtual {v2}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v3

    iget-object v5, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v5, v5, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    invoke-static {v5}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->-$$Nest$fgetminVocAppVersionCode(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;)J

    move-result-wide v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    cmp-long v3, v3, v5

    if-gez v3, :cond_2

    .line 586
    return v1

    .line 589
    .end local v2    # "pmInfo":Landroid/content/pm/PackageInfo;
    :cond_2
    nop

    .line 590
    iget-object v2, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v2, v2, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->gethashMapOfRepairDBInfo(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 591
    .local v2, "keyStr":[Ljava/lang/String;
    if-eqz v2, :cond_4

    .line 592
    aget-object v1, v2, v1

    const-string v3, "Pile"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 593
    const/4 v1, 0x1

    return v1

    .line 595
    :cond_3
    const/4 v1, 0x2

    return v1

    .line 597
    :cond_4
    return v1

    .line 587
    .end local v2    # "keyStr":[Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 588
    .local v2, "e":Ljava/lang/Exception;
    return v1
.end method

.method private blacklist getSubStringForNE(Ljava/lang/String;IZ)Ljava/lang/String;
    .locals 5
    .param p1, "srcStr"    # Ljava/lang/String;
    .param p2, "limitLen"    # I
    .param p3, "isHeaderInfo"    # Z

    .line 179
    const-string v0, "backtrace:"

    if-eqz p3, :cond_5

    .line 180
    const/4 v1, 0x0

    .line 181
    .local v1, "is64Bit":Z
    const-string v2, "ABI:"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 182
    .local v2, "istart":I
    add-int/lit8 v3, v2, 0x9

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x36

    if-ne v3, v4, :cond_0

    const/4 v1, 0x1

    .line 183
    :cond_0
    const-string/jumbo v3, "pid:"

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 184
    if-eqz v1, :cond_1

    const-string v3, " x0 "

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .local v3, "iend":I
    goto :goto_0

    .line 185
    .end local v3    # "iend":I
    :cond_1
    const-string v3, " r0 "

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 187
    .restart local v3    # "iend":I
    :goto_0
    if-gt v3, v2, :cond_2

    .line 188
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 189
    if-gt v3, v2, :cond_2

    .line 190
    const/4 v0, 0x0

    return-object v0

    .line 192
    :cond_2
    add-int v0, v2, p2

    .line 193
    .local v0, "imax":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-gt v0, v4, :cond_3

    move v4, v0

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    :goto_1
    move v0, v4

    .line 194
    if-gt v3, v0, :cond_4

    move v4, v3

    goto :goto_2

    :cond_4
    move v4, v0

    :goto_2
    move v3, v4

    .line 195
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 197
    .end local v0    # "imax":I
    .end local v1    # "is64Bit":Z
    .end local v2    # "istart":I
    .end local v3    # "iend":I
    :cond_5
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 198
    .local v0, "istart":I
    if-gez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_3

    .line 199
    :cond_6
    add-int/lit8 v0, v0, 0xb

    .line 200
    :goto_3
    add-int v1, v0, p2

    .line 201
    .local v1, "imax":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-gt v1, v2, :cond_7

    move v2, v1

    goto :goto_4

    :cond_7
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    :goto_4
    move v1, v2

    .line 202
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private blacklist initData(Z)V
    .locals 4
    .param p1, "isWait"    # Z

    .line 101
    iget-object v0, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    if-nez v0, :cond_1

    .line 103
    :try_start_0
    invoke-static {}, Lcom/sec/android/iaft/IAFDDBManager;->getInstance()Lcom/sec/android/iaft/IAFDDBManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->mSalesCode:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->isCHNModel:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/iaft/IAFDDBManager;->init(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 104
    invoke-static {}, Lcom/sec/android/iaft/IAFDDBManager;->getInstance()Lcom/sec/android/iaft/IAFDDBManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/iaft/IAFDDBManager;->getData()Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    .line 105
    if-eqz p1, :cond_0

    .line 106
    const/16 v0, 0x14

    .line 107
    .local v0, "waitMs":I
    const/16 v1, 0xa

    .line 108
    .local v1, "maxCnt":I
    :goto_0
    iget-object v2, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    if-nez v2, :cond_0

    if-lez v1, :cond_0

    .line 109
    const-string v2, "IAFDDiagnosis"

    const-string v3, "initData wait..."

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    int-to-long v2, v0

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 111
    add-int/lit8 v1, v1, -0x1

    .line 112
    invoke-static {}, Lcom/sec/android/iaft/IAFDDBManager;->getInstance()Lcom/sec/android/iaft/IAFDDBManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/iaft/IAFDDBManager;->getData()Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 118
    .end local v0    # "waitMs":I
    .end local v1    # "maxCnt":I
    :cond_0
    goto :goto_1

    .line 115
    :catch_0
    move-exception v0

    .line 116
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "==IAFD=="

    const-string v2, "initData fail, callstack as the following:"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 121
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-void
.end method

.method private blacklist is32BitApp(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "nativeLibraryDir"    # Ljava/lang/String;
    .param p2, "pkgname"    # Ljava/lang/String;

    .line 480
    move-object v0, p1

    .line 482
    .local v0, "nLibDir":Ljava/lang/String;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 483
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 484
    .local v2, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v2, p2, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 485
    .local v3, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v4, v3, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    move-object v0, v4

    .line 487
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    .end local v3    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_0
    const-string v2, "arm64"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "lib64"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_1

    goto :goto_0

    .line 490
    :cond_1
    const/4 v1, 0x1

    return v1

    .line 488
    :cond_2
    :goto_0
    return v1

    .line 491
    :catch_0
    move-exception v2

    .line 492
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 494
    .end local v2    # "e":Ljava/lang/Exception;
    return v1
.end method

.method private blacklist isAllFilesAccessOff(ILjava/lang/String;)Z
    .locals 3
    .param p1, "appuid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 534
    const/4 v0, -0x1

    .line 536
    .local v0, "appOpMode":I
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->mContext:Landroid/content/Context;

    const-class v2, Landroid/app/AppOpsManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    .line 537
    .local v1, "aps":Landroid/app/AppOpsManager;
    const-string v2, "android:manage_external_storage"

    invoke-virtual {v1, v2, p1, p2}, Landroid/app/AppOpsManager;->unsafeCheckOpNoThrow(Ljava/lang/String;ILjava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 538
    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const/4 v2, 0x1

    return v2

    .line 541
    .end local v1    # "aps":Landroid/app/AppOpsManager;
    :cond_0
    goto :goto_0

    .line 539
    :catch_0
    move-exception v1

    .line 540
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 542
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v1, 0x0

    return v1
.end method

.method private blacklist isAvalilableSizeNoEnough()Z
    .locals 8

    .line 520
    const-wide/32 v0, 0x8000000

    .line 522
    .local v0, "limitSize":J
    :try_start_0
    new-instance v2, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 523
    .local v2, "stat":Landroid/os/StatFs;
    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v3

    .line 524
    .local v3, "blockSize":J
    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    mul-long/2addr v5, v3

    .line 525
    .local v5, "avalilableSize":J
    cmp-long v7, v5, v0

    if-gtz v7, :cond_0

    .line 526
    const/4 v7, 0x1

    return v7

    .line 529
    .end local v2    # "stat":Landroid/os/StatFs;
    :cond_0
    goto :goto_0

    .line 527
    .end local v3    # "blockSize":J
    .end local v5    # "avalilableSize":J
    :catch_0
    move-exception v2

    .line 528
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 530
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v2, 0x0

    return v2
.end method

.method private blacklist isContainExpClassName(Ljava/lang/String;I)Z
    .locals 6
    .param p1, "srcStr"    # Ljava/lang/String;
    .param p2, "curflag"    # I

    .line 129
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 131
    :cond_0
    const/16 v1, 0x2e

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    .line 132
    .local v1, "i":I
    if-gez v1, :cond_1

    const/4 v1, 0x0

    .line 133
    :cond_1
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 134
    .local v3, "sub":Ljava/lang/String;
    if-nez v3, :cond_2

    return v0

    .line 136
    :cond_2
    iget-object v4, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v4, v4, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->hashMapJE_ClassNameTB:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    return v0

    .line 137
    :cond_3
    iget-object v4, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v4, v4, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->hashMapJE_ClassNameTB:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 138
    .local v4, "index":I
    iget-object v5, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v5, v5, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->JE_ClassNameTB:[Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    aget-object v5, v5, v4

    invoke-static {v5}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;->-$$Nest$fgetsupportFlag(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;)I

    move-result v5

    and-int/2addr v5, p2

    if-eq p2, v5, :cond_4

    .line 139
    return v0

    .line 140
    :cond_4
    iget-object v5, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v5, v5, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->JE_ClassNameTB:[Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    aget-object v5, v5, v4

    invoke-static {v5}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;->-$$Nest$fgetexpID(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;)I

    move-result v5

    iput v5, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->expType:I

    .line 141
    iget-object v5, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v5, v5, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->JE_ClassNameTB:[Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    aget-object v5, v5, v4

    iput-object v5, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->curExpEntity:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    .line 142
    iget-object v5, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v5, v5, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->JE_ClassNameTB:[Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    aget-object v5, v5, v4

    invoke-static {v5}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;->-$$Nest$fgetruleType(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;)I

    move-result v5

    if-lez v5, :cond_5

    .line 143
    return v0

    .line 145
    :cond_5
    return v2
.end method

.method private blacklist isContainExpInfo(Ljava/lang/String;[Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;Ljava/lang/String;I)Z
    .locals 6
    .param p1, "srcStr"    # Ljava/lang/String;
    .param p2, "tbs"    # [Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;
    .param p3, "csStr"    # Ljava/lang/String;
    .param p4, "curflag"    # I

    .line 150
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 151
    :cond_0
    array-length v1, p2

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_8

    aget-object v3, p2, v2

    .line 152
    .local v3, "i":Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;
    invoke-static {v3}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;->-$$Nest$fgetenable(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-static {v3}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;->-$$Nest$fgetsupportFlag(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;)I

    move-result v4

    and-int/2addr v4, p4

    if-ne v4, p4, :cond_7

    .line 153
    invoke-static {v3}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;->-$$Nest$fgetkeyWord(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 154
    invoke-static {v3}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;->-$$Nest$fgetruleType(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;)I

    move-result v1

    const/4 v2, 0x2

    const/4 v4, 0x1

    if-ne v1, v2, :cond_4

    .line 155
    if-nez p3, :cond_1

    return v0

    .line 156
    :cond_1
    invoke-static {v3}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;->-$$Nest$fgetrules(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    .line 157
    .local v1, "cnt":I
    const/4 v2, 0x1

    .local v2, "j":I
    :goto_1
    if-ge v2, v1, :cond_3

    .line 158
    invoke-static {v3}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;->-$$Nest$fgetrules(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v2

    invoke-virtual {p3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 159
    invoke-static {v3}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;->-$$Nest$fgetexpID(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->expType:I

    return v4

    .line 157
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 162
    :cond_3
    return v0

    .line 164
    .end local v1    # "cnt":I
    .end local v2    # "j":I
    :cond_4
    invoke-static {v3}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;->-$$Nest$fgetexpID(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;)I

    move-result v1

    iput v1, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->expType:I

    .line 165
    iput-object v3, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->curExpEntity:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    .line 166
    invoke-static {v3}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;->-$$Nest$fgetruleType(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;)I

    move-result v1

    if-eq v1, v4, :cond_6

    invoke-static {v3}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;->-$$Nest$fgetruleType(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;)I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_5

    goto :goto_2

    .line 169
    :cond_5
    return v4

    .line 167
    :cond_6
    :goto_2
    return v0

    .line 151
    .end local v3    # "i":Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 173
    :cond_8
    return v0
.end method

.method private blacklist isContainPkgname(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "srcStr"    # Ljava/lang/String;
    .param p2, "startStr"    # Ljava/lang/String;
    .param p3, "pkgname"    # Ljava/lang/String;

    .line 327
    const/4 v0, 0x0

    .line 329
    .local v0, "tmpStr":Ljava/lang/String;
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 330
    .local v1, "istart":I
    const/4 v2, 0x0

    if-gez v1, :cond_0

    return v2

    .line 331
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 332
    if-nez v0, :cond_1

    return v2

    .line 333
    :cond_1
    invoke-virtual {v0, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 334
    const/4 v2, 0x1

    return v2

    .line 335
    :cond_2
    return v2
.end method

.method private blacklist isNativeCrash(Ljava/lang/String;)Z
    .locals 1
    .param p1, "exceptionClassName"    # Ljava/lang/String;

    .line 124
    const-string v0, "Native crash"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private blacklist isRemovableApp(Ljava/lang/String;II)Z
    .locals 8
    .param p1, "pkgname"    # Ljava/lang/String;
    .param p2, "flag"    # I
    .param p3, "errType"    # I

    .line 498
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 500
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 501
    .local v1, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v1, p1, p2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 502
    .local v2, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v3, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v3, v3, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    invoke-static {v3}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->-$$Nest$fgetreMovableAppPaths(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    move v5, v0

    :goto_0
    if-ge v5, v4, :cond_3

    aget-object v6, v3, v5

    .line 503
    .local v6, "path":Ljava/lang/String;
    iget-object v7, v2, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 504
    const/16 v3, 0x13

    if-ne p3, v3, :cond_1

    .line 505
    iget v3, v2, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_1

    .line 506
    return v0

    .line 509
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 502
    .end local v6    # "path":Ljava/lang/String;
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 514
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    .end local v2    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_3
    goto :goto_1

    .line 512
    :catch_0
    move-exception v1

    .line 513
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 515
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return v0
.end method

.method private blacklist parseExpTypeInternal(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 17
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "nativeLibraryDir"    # Ljava/lang/String;
    .param p3, "puserId"    # I
    .param p4, "appuid"    # I
    .param p5, "flags"    # I
    .param p6, "exceptionClassName"    # Ljava/lang/String;
    .param p7, "exceptionMessage"    # Ljava/lang/String;
    .param p8, "stackTrace"    # Ljava/lang/String;

    .line 341
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    const-string v8, "IAFDDiagnosis"

    const/4 v9, 0x0

    iput v9, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->dualUserId:I

    .line 342
    iput-boolean v9, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->isParseSuccess:Z

    .line 343
    if-nez v7, :cond_0

    return v9

    .line 347
    :cond_0
    const/4 v0, 0x1

    :try_start_0
    iput v0, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->curAppFlag:I

    .line 349
    if-eqz v2, :cond_2

    .line 350
    and-int/lit8 v10, v4, 0x1

    if-nez v10, :cond_1

    and-int/lit16 v10, v4, 0x80

    if-nez v10, :cond_1

    const-string v10, "com.samsung."

    .line 351
    invoke-virtual {v2, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    const-string v10, "com.sec."

    invoke-virtual {v2, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 352
    :cond_1
    const/4 v10, 0x2

    iput v10, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->curAppFlag:I

    .line 355
    :cond_2
    invoke-direct {v1, v0}, Lcom/sec/android/iaft/IAFDDiagnosis;->initData(Z)V

    .line 356
    const/4 v10, -0x1

    iput v10, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->expType:I

    .line 357
    const/4 v10, 0x0

    iput-object v10, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->curExpEntity:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    .line 359
    iget-object v11, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    if-nez v11, :cond_3

    return v9

    .line 360
    :cond_3
    iget-object v11, v11, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    invoke-static {v11}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->-$$Nest$fgetenable(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;)Z

    move-result v11

    if-nez v11, :cond_4

    return v9

    .line 361
    :cond_4
    iget-object v11, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v11, v11, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    invoke-virtual {v11, v2}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->isInWhiteList(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    return v9

    .line 362
    :cond_5
    const-string/jumbo v11, "parseExpType start"

    invoke-static {v8, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    iput-object v10, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->reason:Ljava/lang/String;

    .line 365
    iput-object v10, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->callstack:Ljava/lang/String;

    .line 366
    iput-object v10, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->component:Ljava/lang/String;

    .line 368
    invoke-direct {v1, v5}, Lcom/sec/android/iaft/IAFDDiagnosis;->isNativeCrash(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_f

    .line 369
    const/4 v11, 0x0

    .local v11, "causeHeaderStr":Ljava/lang/String;
    const/4 v14, 0x0

    .line 370
    .local v14, "backTraceStr":Ljava/lang/String;
    iget-object v15, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v15, v15, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    invoke-static {v15}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->-$$Nest$fgetNE_cstack_maxSize(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;)I

    move-result v15

    .line 372
    .local v15, "max":I
    invoke-direct {v1, v7, v15, v9}, Lcom/sec/android/iaft/IAFDDiagnosis;->getSubStringForNE(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v14, v16

    .line 373
    invoke-direct {v1, v7, v15, v0}, Lcom/sec/android/iaft/IAFDDiagnosis;->getSubStringForNE(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v11, v16

    .line 376
    if-eqz v11, :cond_6

    .line 377
    iget-object v12, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v12, v12, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    invoke-static {v12}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->-$$Nest$fgetreason_maxSize(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;)I

    move-result v12

    invoke-direct {v1, v11, v12}, Lcom/sec/android/iaft/IAFDDiagnosis;->getCauseForNE(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->reason:Ljava/lang/String;

    .line 379
    :cond_6
    if-eqz v14, :cond_8

    .line 380
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v12

    .line 381
    .local v12, "curLen":I
    iget-object v13, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v13, v13, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    invoke-static {v13}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->-$$Nest$fgetcallstack_maxSize(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;)I

    move-result v13

    if-le v12, v13, :cond_7

    .line 382
    iget-object v13, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v13, v13, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    invoke-static {v13}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->-$$Nest$fgetcallstack_maxSize(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;)I

    move-result v13

    move v12, v13

    .line 383
    :cond_7
    invoke-virtual {v14, v9, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->callstack:Ljava/lang/String;

    .line 386
    .end local v12    # "curLen":I
    :cond_8
    iget-object v12, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->reason:Ljava/lang/String;

    iget-object v13, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v13, v13, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    invoke-static {v13}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->-$$Nest$fgetreason_maxSize(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;)I

    move-result v13

    invoke-direct {v1, v12, v14, v13, v0}, Lcom/sec/android/iaft/IAFDDiagnosis;->getComponent(Ljava/lang/String;Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->component:Ljava/lang/String;

    .line 388
    iget-object v12, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v12, v12, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    invoke-static {v12}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->-$$Nest$fgetenableDetectAll32bitApps(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;)Z

    move-result v12

    if-eqz v12, :cond_9

    iget v12, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->curAppFlag:I

    iget-object v13, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v13, v13, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    invoke-static {v13}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->-$$Nest$fgetsupportflagDetectAll32bitApps(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;)I

    move-result v13

    and-int/2addr v12, v13

    iget v13, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->curAppFlag:I

    if-ne v12, v13, :cond_9

    .line 389
    invoke-direct {v1, v3, v10}, Lcom/sec/android/iaft/IAFDDiagnosis;->is32BitApp(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 390
    const/16 v10, 0x1e

    iput v10, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->expType:I

    .line 391
    return v0

    .line 395
    :cond_9
    if-eqz v14, :cond_b

    .line 396
    iget-object v12, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v12, v12, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->NE_CallStackTB:[Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    iget v13, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->curAppFlag:I

    invoke-direct {v1, v14, v12, v14, v13}, Lcom/sec/android/iaft/IAFDDiagnosis;->isContainExpInfo(Ljava/lang/String;[Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;Ljava/lang/String;I)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 397
    iput-boolean v0, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->isParseSuccess:Z

    return v0

    .line 398
    :cond_a
    iget-object v12, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v12, v12, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->NE_HeaderInfoTB:[Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    iget v13, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->curAppFlag:I

    invoke-direct {v1, v14, v12, v14, v13}, Lcom/sec/android/iaft/IAFDDiagnosis;->isContainExpInfo(Ljava/lang/String;[Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;Ljava/lang/String;I)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 399
    iput-boolean v0, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->isParseSuccess:Z

    return v0

    .line 402
    :cond_b
    if-eqz v11, :cond_c

    .line 403
    iget-object v12, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v12, v12, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->NE_HeaderInfoTB:[Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    iget v13, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->curAppFlag:I

    invoke-direct {v1, v11, v12, v14, v13}, Lcom/sec/android/iaft/IAFDDiagnosis;->isContainExpInfo(Ljava/lang/String;[Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;Ljava/lang/String;I)Z

    move-result v12

    if-eqz v12, :cond_c

    .line 404
    iput-boolean v0, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->isParseSuccess:Z

    return v0

    .line 407
    :cond_c
    iget-object v12, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->curExpEntity:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    if-eqz v12, :cond_e

    .line 409
    invoke-static {v12}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;->-$$Nest$fgetruleType(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;)I

    move-result v12

    if-ne v12, v0, :cond_d

    iget-object v12, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->curExpEntity:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    invoke-static {v12}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;->-$$Nest$fgetexpID(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;)I

    move-result v12

    iget v13, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->expType:I

    if-ne v12, v13, :cond_d

    .line 410
    iget-object v10, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v10, v10, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    invoke-static {v10}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->-$$Nest$fgetNE_cstack_start(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v1, v14, v10, v2}, Lcom/sec/android/iaft/IAFDDiagnosis;->isContainPkgname(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_e

    .line 411
    iput-boolean v0, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->isParseSuccess:Z

    return v0

    .line 413
    :cond_d
    iget-object v12, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->curExpEntity:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    invoke-static {v12}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;->-$$Nest$fgetruleType(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;)I

    move-result v12

    const/4 v13, 0x4

    if-ne v12, v13, :cond_e

    iget-object v12, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->curExpEntity:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    invoke-static {v12}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;->-$$Nest$fgetexpID(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;)I

    move-result v12

    iget v13, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->expType:I

    if-ne v12, v13, :cond_e

    .line 414
    invoke-direct {v1, v3, v10}, Lcom/sec/android/iaft/IAFDDiagnosis;->is32BitApp(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_e

    .line 415
    iput-boolean v0, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->isParseSuccess:Z

    return v0

    .line 418
    .end local v11    # "causeHeaderStr":Ljava/lang/String;
    .end local v14    # "backTraceStr":Ljava/lang/String;
    :cond_e
    goto/16 :goto_1

    .line 419
    .end local v15    # "max":I
    :cond_f
    const-string v11, ""

    .line 421
    .local v11, "subCsStr":Ljava/lang/String;
    if-eqz v6, :cond_11

    .line 422
    invoke-virtual/range {p7 .. p7}, Ljava/lang/String;->length()I

    move-result v12

    .line 423
    .restart local v12    # "curLen":I
    iget-object v13, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v13, v13, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    invoke-static {v13}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->-$$Nest$fgetreason_maxSize(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;)I

    move-result v13

    if-le v12, v13, :cond_10

    .line 424
    iget-object v13, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v13, v13, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    invoke-static {v13}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->-$$Nest$fgetreason_maxSize(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;)I

    move-result v13

    move v12, v13

    .line 425
    :cond_10
    invoke-virtual {v6, v9, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->reason:Ljava/lang/String;

    .line 426
    .end local v12    # "curLen":I
    :cond_11
    if-eqz v7, :cond_13

    .line 427
    iget-object v12, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v12, v12, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    invoke-static {v12}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->-$$Nest$fgetJE_cstack_start(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;)Ljava/lang/String;

    move-result-object v12

    iget-object v13, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v13, v13, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    invoke-static {v13}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->-$$Nest$fgetJE_cstack_maxSize(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;)I

    move-result v13

    invoke-direct {v1, v7, v12, v13}, Lcom/sec/android/iaft/IAFDDiagnosis;->getCallstackForJE(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    move-object v11, v12

    .line 428
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v12

    .line 429
    .restart local v12    # "curLen":I
    iget-object v13, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v13, v13, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    invoke-static {v13}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->-$$Nest$fgetcallstack_maxSize(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;)I

    move-result v13

    if-le v12, v13, :cond_12

    iget-object v13, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v13, v13, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    invoke-static {v13}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->-$$Nest$fgetcallstack_maxSize(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;)I

    move-result v13

    goto :goto_0

    :cond_12
    move v13, v12

    :goto_0
    invoke-virtual {v11, v9, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->callstack:Ljava/lang/String;

    .line 433
    .end local v12    # "curLen":I
    :cond_13
    iget-object v12, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->reason:Ljava/lang/String;

    iget-object v13, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v13, v13, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    invoke-static {v13}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->-$$Nest$fgetreason_maxSize(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;)I

    move-result v13

    invoke-direct {v1, v12, v11, v13, v9}, Lcom/sec/android/iaft/IAFDDiagnosis;->getComponent(Ljava/lang/String;Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->component:Ljava/lang/String;

    .line 435
    iget-object v12, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v12, v12, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    invoke-static {v12}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->-$$Nest$fgetenableDetectAll32bitApps(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;)Z

    move-result v12

    if-eqz v12, :cond_14

    iget v12, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->curAppFlag:I

    iget-object v13, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v13, v13, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    invoke-static {v13}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->-$$Nest$fgetsupportflagDetectAll32bitApps(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;)I

    move-result v13

    and-int/2addr v12, v13

    iget v13, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->curAppFlag:I

    if-ne v12, v13, :cond_14

    .line 436
    invoke-direct {v1, v3, v10}, Lcom/sec/android/iaft/IAFDDiagnosis;->is32BitApp(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_14

    .line 437
    const/16 v10, 0x1e

    iput v10, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->expType:I

    .line 438
    return v0

    .line 442
    :cond_14
    iget v12, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->curAppFlag:I

    invoke-direct {v1, v5, v12}, Lcom/sec/android/iaft/IAFDDiagnosis;->isContainExpClassName(Ljava/lang/String;I)Z

    move-result v12

    if-eqz v12, :cond_15

    .line 443
    iput-boolean v0, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->isParseSuccess:Z

    return v0

    .line 446
    :cond_15
    iget-object v12, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v12, v12, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->JE_DetailMsgTB:[Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    iget v13, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->curAppFlag:I

    invoke-direct {v1, v6, v12, v11, v13}, Lcom/sec/android/iaft/IAFDDiagnosis;->isContainExpInfo(Ljava/lang/String;[Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;Ljava/lang/String;I)Z

    move-result v12

    if-eqz v12, :cond_16

    .line 447
    iput-boolean v0, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->isParseSuccess:Z

    return v0

    .line 449
    :cond_16
    iget-object v12, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v12, v12, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->JE_ClassNameTB:[Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    iget v13, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->curAppFlag:I

    invoke-direct {v1, v6, v12, v11, v13}, Lcom/sec/android/iaft/IAFDDiagnosis;->isContainExpInfo(Ljava/lang/String;[Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;Ljava/lang/String;I)Z

    move-result v12

    if-eqz v12, :cond_17

    .line 450
    iput-boolean v0, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->isParseSuccess:Z

    return v0

    .line 453
    :cond_17
    iget-object v12, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v12, v12, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->JE_ClassNameTB:[Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    iget v13, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->curAppFlag:I

    invoke-direct {v1, v11, v12, v11, v13}, Lcom/sec/android/iaft/IAFDDiagnosis;->isContainExpInfo(Ljava/lang/String;[Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;Ljava/lang/String;I)Z

    move-result v12

    if-eqz v12, :cond_18

    .line 454
    iput-boolean v0, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->isParseSuccess:Z

    return v0

    .line 455
    :cond_18
    iget-object v12, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v12, v12, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->JE_DetailMsgTB:[Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    iget v13, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->curAppFlag:I

    invoke-direct {v1, v11, v12, v11, v13}, Lcom/sec/android/iaft/IAFDDiagnosis;->isContainExpInfo(Ljava/lang/String;[Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;Ljava/lang/String;I)Z

    move-result v12

    if-eqz v12, :cond_19

    .line 456
    iput-boolean v0, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->isParseSuccess:Z

    return v0

    .line 457
    :cond_19
    iget-object v12, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v12, v12, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->JE_CallStackTB:[Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    iget v13, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->curAppFlag:I

    invoke-direct {v1, v11, v12, v11, v13}, Lcom/sec/android/iaft/IAFDDiagnosis;->isContainExpInfo(Ljava/lang/String;[Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;Ljava/lang/String;I)Z

    move-result v12

    if-eqz v12, :cond_1a

    .line 458
    iput-boolean v0, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->isParseSuccess:Z

    return v0

    .line 460
    :cond_1a
    iget-object v12, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->curExpEntity:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    if-eqz v12, :cond_1c

    .line 462
    invoke-static {v12}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;->-$$Nest$fgetruleType(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;)I

    move-result v12

    if-ne v12, v0, :cond_1b

    iget-object v12, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->curExpEntity:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    invoke-static {v12}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;->-$$Nest$fgetexpID(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;)I

    move-result v12

    iget v13, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->expType:I

    if-ne v12, v13, :cond_1b

    .line 463
    iget-object v10, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v10, v10, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    invoke-static {v10}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->-$$Nest$fgetJE_cstack_start(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v1, v11, v10, v2}, Lcom/sec/android/iaft/IAFDDiagnosis;->isContainPkgname(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1c

    .line 464
    iput-boolean v0, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->isParseSuccess:Z

    return v0

    .line 466
    :cond_1b
    iget-object v12, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->curExpEntity:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    invoke-static {v12}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;->-$$Nest$fgetruleType(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;)I

    move-result v12

    const/4 v13, 0x4

    if-ne v12, v13, :cond_1c

    iget-object v12, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->curExpEntity:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    invoke-static {v12}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;->-$$Nest$fgetexpID(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;)I

    move-result v12

    iget v13, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->expType:I

    if-ne v12, v13, :cond_1c

    .line 467
    invoke-direct {v1, v3, v10}, Lcom/sec/android/iaft/IAFDDiagnosis;->is32BitApp(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1c

    .line 468
    iput-boolean v0, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->isParseSuccess:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 475
    .end local v11    # "subCsStr":Ljava/lang/String;
    :cond_1c
    :goto_1
    goto :goto_2

    .line 472
    :catch_0
    move-exception v0

    .line 473
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v10, "parseExpType fail, skip, callstack as the following:"

    invoke-static {v8, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 476
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    return v9
.end method


# virtual methods
.method public blacklist getExpType()I
    .locals 2

    .line 685
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getExpType() expType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->expType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IAFDDiagnosis"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    iget v0, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->expType:I

    return v0
.end method

.method public blacklist getParseStatus()Z
    .locals 2

    .line 677
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IAFDDiagnosis Parse successful,expType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->expType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IAFDDiagnosis"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    iget-boolean v0, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->isParseSuccess:Z

    return v0
.end method

.method public blacklist init(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 94
    iput-object p1, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->mContext:Landroid/content/Context;

    .line 95
    invoke-static {}, Landroid/os/SemSystemProperties;->getSalesCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->mSalesCode:Ljava/lang/String;

    .line 96
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_SMARTMANAGER_CONFIG_PACKAGE_NAME"

    const-string v2, "com.samsung.android.lool"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.samsung.android.sm_cn"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->isCHNModel:Z

    .line 97
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/iaft/IAFDDiagnosis;->initData(Z)V

    .line 98
    return-void
.end method

.method public blacklist parseExpType(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "nativeLibraryDir"    # Ljava/lang/String;
    .param p3, "puserId"    # I
    .param p4, "appuid"    # I
    .param p5, "flags"    # I
    .param p6, "exceptionClassName"    # Ljava/lang/String;
    .param p7, "exceptionMessage"    # Ljava/lang/String;
    .param p8, "stackTrace"    # Ljava/lang/String;

    .line 547
    invoke-direct/range {p0 .. p8}, Lcom/sec/android/iaft/IAFDDiagnosis;->parseExpTypeInternal(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 548
    iget v0, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->expType:I

    const/4 v2, 0x1

    sparse-switch v0, :sswitch_data_0

    .line 571
    return v2

    .line 561
    :sswitch_0
    iput p3, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->dualUserId:I

    .line 562
    return v2

    .line 564
    :sswitch_1
    iget-boolean v0, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->isCHNModel:Z

    if-eqz v0, :cond_0

    .line 565
    const/16 v0, 0x22

    invoke-direct {p0, v0}, Lcom/sec/android/iaft/IAFDDiagnosis;->getRepairType(I)I

    move-result v0

    if-nez v0, :cond_0

    .line 566
    return v1

    .line 567
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/iaft/IAFDDiagnosis;->isAvalilableSizeNoEnough()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 568
    return v2

    .line 556
    :sswitch_2
    invoke-direct {p0, p4, p1}, Lcom/sec/android/iaft/IAFDDiagnosis;->isAllFilesAccessOff(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 557
    return v2

    .line 551
    :sswitch_3
    iget-object v0, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v0, v0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    invoke-static {v0}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->-$$Nest$fgetwebView_pkgName(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;)Ljava/lang/String;

    move-result-object v0

    const/high16 v3, 0x100000

    const/16 v4, 0x13

    invoke-direct {p0, v0, v3, v4}, Lcom/sec/android/iaft/IAFDDiagnosis;->isRemovableApp(Ljava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 552
    return v2

    .line 574
    :cond_1
    return v1

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_3
        0x1b -> :sswitch_2
        0x22 -> :sswitch_1
        0x23 -> :sswitch_0
    .end sparse-switch
.end method

.method public blacklist setContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 91
    iput-object p1, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->mContext:Landroid/content/Context;

    .line 92
    return-void
.end method

.method public blacklist showIAFDCrashDialogs(IILjava/lang/String;)Z
    .locals 11
    .param p1, "puserId"    # I
    .param p2, "appuid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 601
    const-string v0, "com.sec.android.iaft.IAFDService"

    const-string v1, "0"

    const/4 v2, 0x0

    .line 604
    .local v2, "intent":Landroid/content/Intent;
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/iaft/IAFDDiagnosis;->getExpType()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/sec/android/iaft/IAFDDiagnosis;->getRepairType(I)I

    move-result v4

    .line 605
    .local v4, "repairType":I
    const/4 v5, 0x1

    if-nez v4, :cond_0

    .line 606
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.sm.ACTION_START_THIRD_APP_ERROR_DIALOG"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v2, v0

    .line 607
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_SMARTMANAGER_CONFIG_PACKAGE_NAME"

    const-string v6, "com.samsung.android.lool"

    invoke-virtual {v0, v1, v6}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 608
    const-string v0, "IAFDDiagnosis"

    const-string v1, "Show3rdAppErrorUiExt() startService SM"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 610
    :cond_0
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v2, v6

    .line 611
    const-string v6, "com.sec.android.iaft"

    invoke-virtual {v2, v6, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 613
    iget-object v0, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v0, v0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    invoke-virtual {p0}, Lcom/sec/android/iaft/IAFDDiagnosis;->getExpType()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->gethashMapOfRepairDBInfo(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 615
    .local v0, "values":[Ljava/lang/String;
    aget-object v6, v0, v5

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v7, 0x2

    const-string v8, "OneKeyRepairMode"

    if-eqz v6, :cond_1

    .line 616
    :try_start_1
    invoke-virtual {v2, v8, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 618
    :cond_1
    invoke-virtual {v2, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 621
    :goto_0
    aget-object v6, v0, v7

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const-string v7, "CheckUpdateFlag"

    if-eqz v6, :cond_2

    .line 622
    :try_start_2
    invoke-virtual {v2, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_1

    .line 624
    :cond_2
    invoke-virtual {v2, v7, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 627
    :goto_1
    const/4 v6, 0x4

    .line 628
    .local v6, "lanIndex":I
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    .line 629
    .local v7, "lan":Ljava/lang/String;
    iget-object v8, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v8, v8, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    invoke-static {v8}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->-$$Nest$fgetmainLanguage(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 630
    const/4 v6, 0x5

    .line 632
    :cond_3
    const-string v8, "null"

    iget-object v9, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v9, v9, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    invoke-static {v9}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->-$$Nest$fgetdomainRepair(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 633
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v9, v9, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    invoke-static {v9}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->-$$Nest$fgetprefixRepair(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v0, v6

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v9, v9, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    invoke-static {v9}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->-$$Nest$fgetpostfixRepair(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .local v8, "targetUrlTmp":Ljava/lang/String;
    goto :goto_2

    .line 635
    .end local v8    # "targetUrlTmp":Ljava/lang/String;
    :cond_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v9, v9, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    invoke-static {v9}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->-$$Nest$fgetdomainRepair(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v9, v9, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    invoke-static {v9}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->-$$Nest$fgetprefixRepair(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v0, v6

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v9, v9, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    invoke-static {v9}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->-$$Nest$fgetpostfixRepair(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 637
    .restart local v8    # "targetUrlTmp":Ljava/lang/String;
    :goto_2
    const-string/jumbo v9, "targetUrl"

    invoke-virtual {v2, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 638
    const/4 v9, 0x3

    aget-object v10, v0, v9

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    const-string/jumbo v10, "repairTrigAPP"

    if-eqz v1, :cond_5

    .line 639
    :try_start_3
    const-string/jumbo v1, "vocApp"

    invoke-virtual {v2, v10, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_3

    .line 641
    :cond_5
    aget-object v1, v0, v9

    invoke-virtual {v2, v10, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 644
    .end local v0    # "values":[Ljava/lang/String;
    .end local v6    # "lanIndex":I
    .end local v7    # "lan":Ljava/lang/String;
    .end local v8    # "targetUrlTmp":Ljava/lang/String;
    :goto_3
    const-string/jumbo v0, "pkgName"

    invoke-virtual {v2, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 645
    const-string/jumbo v0, "userId"

    invoke-virtual {v2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 646
    const-string/jumbo v0, "type"

    invoke-virtual {p0}, Lcom/sec/android/iaft/IAFDDiagnosis;->getExpType()I

    move-result v1

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 647
    const-string/jumbo v0, "repeat"

    invoke-virtual {v2, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 648
    const-string v0, "component"

    invoke-direct {p0}, Lcom/sec/android/iaft/IAFDDiagnosis;->getComponent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 649
    const-string v0, "error_stack"

    invoke-direct {p0}, Lcom/sec/android/iaft/IAFDDiagnosis;->getCallstack()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 650
    const-string/jumbo v0, "pkgUserId"

    invoke-virtual {v2, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 651
    const-string/jumbo v0, "repairType"

    invoke-virtual {v2, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 652
    const-string v0, "dualUserId"

    iget v1, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->dualUserId:I

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 653
    const-string v0, "isCHNModel"

    iget-boolean v1, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->isCHNModel:Z

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 654
    if-lez v4, :cond_6

    .line 655
    iget-object v0, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 657
    .local v0, "pm":Landroid/content/pm/PackageManager;
    :try_start_4
    invoke-virtual {v0, p3, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 658
    .local v1, "pmInfo":Landroid/content/pm/PackageInfo;
    const-string/jumbo v6, "versionCode"

    invoke-virtual {v1}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v7

    invoke-virtual {v2, v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 659
    const-string/jumbo v6, "versionName"

    iget-object v7, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 660
    const-string v6, "appName"

    iget-object v7, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v7, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 661
    const-string v6, "hasUpdate"

    invoke-virtual {v2, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 664
    .end local v1    # "pmInfo":Landroid/content/pm/PackageInfo;
    goto :goto_4

    .line 662
    :catch_0
    move-exception v1

    .line 663
    .local v1, "e":Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 665
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_4
    const-string v1, "commandType"

    invoke-virtual {v2, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 667
    .end local v0    # "pm":Landroid/content/pm/PackageManager;
    :cond_6
    iget-object v0, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 668
    return v5

    .line 669
    .end local v4    # "repairType":I
    :catch_1
    move-exception v0

    .line 671
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 673
    .end local v0    # "e":Ljava/lang/Exception;
    return v3
.end method
