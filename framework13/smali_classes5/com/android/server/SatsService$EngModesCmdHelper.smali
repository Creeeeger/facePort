.class final Lcom/android/server/SatsService$EngModesCmdHelper;
.super Ljava/lang/Object;
.source "SatsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "EngModesCmdHelper"
.end annotation


# static fields
.field private static final blacklist AT_CMD_EM_SEQ_NO:I = 0x3

.field private static final blacklist AT_CMD_EM_WRITING_END:Ljava/lang/String; = "FFF"

.field private static final blacklist AT_RESPONSE_END:Ljava/lang/String; = "\r\n\r\nOK\r\n"

.field private static final blacklist AT_RESPONSE_EXCEPION:Ljava/lang/String; = "NG,EXCEPTION"

.field private static final blacklist AT_RESPONSE_MISSED_DATA:Ljava/lang/String; = "NG,DATA MISSED"

.field private static final blacklist AT_RESPONSE_OK:Ljava/lang/String; = "OK"


# instance fields
.field private final blacklist lCmdParams:[Ljava/lang/String;

.field private blacklist mCmdCounter:I

.field private blacklist mCmdData:Ljava/lang/String;

.field final synthetic blacklist this$0:Lcom/android/server/SatsService;


# direct methods
.method public constructor blacklist <init>(Lcom/android/server/SatsService;)V
    .locals 1

    .line 622
    iput-object p1, p0, Lcom/android/server/SatsService$EngModesCmdHelper;->this$0:Lcom/android/server/SatsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 618
    const-string p1, "0,5,"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/SatsService$EngModesCmdHelper;->lCmdParams:[Ljava/lang/String;

    .line 623
    const-string p1, "SatsService"

    const-string v0, "Initialized"

    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    invoke-direct {p0}, Lcom/android/server/SatsService$EngModesCmdHelper;->init()V

    .line 625
    return-void
.end method

.method private blacklist getDataIndex()I
    .locals 1

    .line 708
    iget v0, p0, Lcom/android/server/SatsService$EngModesCmdHelper;->mCmdCounter:I

    return v0
.end method

.method private blacklist getTotalData()Ljava/lang/String;
    .locals 1

    .line 703
    iget-object v0, p0, Lcom/android/server/SatsService$EngModesCmdHelper;->mCmdData:Ljava/lang/String;

    return-object v0
.end method

.method private blacklist init()V
    .locals 1

    .line 713
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/SatsService$EngModesCmdHelper;->mCmdCounter:I

    .line 714
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/SatsService$EngModesCmdHelper;->mCmdData:Ljava/lang/String;

    .line 715
    return-void
.end method

.method private blacklist proceedlCmd(Landroid/content/Context;Ljava/lang/String;I)[B
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "param"    # Ljava/lang/String;
    .param p3, "fixedParamLen"    # I

    .line 652
    add-int/lit8 v0, p3, 0x3

    invoke-virtual {p2, p3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 655
    .local v0, "strSequenceNo":Ljava/lang/String;
    const-string v1, "FFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 656
    invoke-direct {p0}, Lcom/android/server/SatsService$EngModesCmdHelper;->getDataIndex()I

    move-result v2

    add-int/2addr v2, v3

    .local v2, "sequenceNo":I
    goto :goto_0

    .line 658
    .end local v2    # "sequenceNo":I
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 660
    .restart local v2    # "sequenceNo":I
    :goto_0
    add-int/lit8 v4, p3, 0x3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v2, v4}, Lcom/android/server/SatsService$EngModesCmdHelper;->appendData(ILjava/lang/String;)Z

    move-result v4

    const-string v5, "\r\n\r\nOK\r\n"

    const-string v6, ","

    const-string v7, "+ENGMODES:"

    const/4 v8, 0x0

    if-nez v4, :cond_1

    .line 662
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to append command SN-"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " EN-"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/server/SatsService$EngModesCmdHelper;->getDataIndex()I

    move-result v9

    add-int/2addr v9, v3

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v9, "SatsService"

    invoke-static {v9, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "NG,DATA MISSED"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " SN-"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 664
    invoke-direct {p0}, Lcom/android/server/SatsService$EngModesCmdHelper;->getDataIndex()I

    move-result v4

    add-int/2addr v4, v3

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 666
    .local v1, "errStr":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/server/SatsService$EngModesCmdHelper;->init()V

    .line 667
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    return-object v3

    .line 670
    .end local v1    # "errStr":Ljava/lang/String;
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 672
    invoke-virtual {p2, v8, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 673
    .local v1, "preParam":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/SatsService$EngModesCmdHelper;->lCmdParams:[Ljava/lang/String;

    aget-object v3, v3, v8

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 674
    const-string v1, "0,2,"

    .line 676
    :cond_2
    iget-object v3, p0, Lcom/android/server/SatsService$EngModesCmdHelper;->this$0:Lcom/android/server/SatsService;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/android/server/SatsService$EngModesCmdHelper;->getTotalData()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Lcom/android/server/SatsService;->commandForESS(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v3

    .line 677
    .local v3, "result":[B
    invoke-direct {p0}, Lcom/android/server/SatsService$EngModesCmdHelper;->init()V

    .line 678
    .end local v1    # "preParam":Ljava/lang/String;
    nop

    .line 683
    return-object v3

    .line 679
    .end local v3    # "result":[B
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "OK"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 680
    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 679
    return-object v1
.end method


# virtual methods
.method public blacklist appendData(ILjava/lang/String;)Z
    .locals 3
    .param p1, "sequenceNo"    # I
    .param p2, "data"    # Ljava/lang/String;

    .line 688
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 689
    iput p1, p0, Lcom/android/server/SatsService$EngModesCmdHelper;->mCmdCounter:I

    .line 690
    iput-object p2, p0, Lcom/android/server/SatsService$EngModesCmdHelper;->mCmdData:Ljava/lang/String;

    .line 691
    return v0

    .line 692
    :cond_0
    iget v1, p0, Lcom/android/server/SatsService$EngModesCmdHelper;->mCmdCounter:I

    add-int/2addr v1, v0

    if-ne p1, v1, :cond_1

    .line 693
    iput p1, p0, Lcom/android/server/SatsService$EngModesCmdHelper;->mCmdCounter:I

    .line 694
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/SatsService$EngModesCmdHelper;->mCmdData:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/SatsService$EngModesCmdHelper;->mCmdData:Ljava/lang/String;

    .line 695
    return v0

    .line 698
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist processCmd(Landroid/content/Context;Ljava/lang/String;)[B
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "param"    # Ljava/lang/String;

    .line 629
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/SatsService$EngModesCmdHelper;->lCmdParams:[Ljava/lang/String;

    array-length v2, v1

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 630
    .local v4, "lCmdParam":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    .line 631
    .local v5, "lCmdParamLen":I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v6, v5, :cond_0

    .line 632
    goto :goto_1

    .line 634
    :cond_0
    invoke-virtual {p2, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 635
    invoke-direct {p0, p1, p2, v5}, Lcom/android/server/SatsService$EngModesCmdHelper;->proceedlCmd(Landroid/content/Context;Ljava/lang/String;I)[B

    move-result-object v0

    return-object v0

    .line 629
    .end local v4    # "lCmdParam":Ljava/lang/String;
    .end local v5    # "lCmdParamLen":I
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 639
    :cond_2
    iget-object v1, p0, Lcom/android/server/SatsService$EngModesCmdHelper;->this$0:Lcom/android/server/SatsService;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/SatsService;->commandForESS(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 640
    :catch_0
    move-exception v1

    .line 641
    .local v1, "e":Ljava/lang/RuntimeException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to excute ENGMODES AT command : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SatsService"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 643
    invoke-direct {p0}, Lcom/android/server/SatsService$EngModesCmdHelper;->init()V

    .line 644
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "+ENGMODES:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p2, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "NG,EXCEPTION"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\r\n\r\nOK\r\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 645
    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 644
    return-object v0
.end method
