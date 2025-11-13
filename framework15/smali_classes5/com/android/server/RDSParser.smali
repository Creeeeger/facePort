.class public Lcom/android/server/RDSParser;
.super Ljava/lang/Object;
.source "RDSParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/RDSParser$RadioText;,
        Lcom/android/server/RDSParser$ProgramService;
    }
.end annotation


# static fields
.field public static final blacklist FM_RDS_STATUS_UNCORRECTABLE:I = 0x3

.field public static final blacklist GROUP_TYPE_0A:I = 0x0

.field public static final blacklist GROUP_TYPE_0B:I = 0x1

.field public static final blacklist GROUP_TYPE_2A:I = 0x4

.field public static final blacklist GROUP_TYPE_2B:I = 0x5

.field public static final blacklist PROGRAM_SERVICE_MAX_SIZE:I = 0x8

.field public static final blacklist PS_CHECK_BOUND:I = 0x2

.field public static final blacklist RADIO_TEXT_MAX_SIZE:I = 0x40

.field public static final blacklist RT_CHECK_BOUND:I = 0x1

.field private static final blacklist TAG:Ljava/lang/String; = "FMRDSParser"

.field private static blacklist mInstance:Lcom/android/server/RDSParser;


# instance fields
.field private blacklist mFinalProgramService:Ljava/lang/String;

.field private blacklist mFinalRadioText:Ljava/lang/String;

.field private blacklist mPI:I

.field private blacklist mPTY:I

.field private blacklist mProgramService:Lcom/android/server/RDSParser$ProgramService;

.field private blacklist mRadioText:Lcom/android/server/RDSParser$RadioText;

.field private blacklist mTP:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmProgramService(Lcom/android/server/RDSParser;)Lcom/android/server/RDSParser$ProgramService;
    .locals 0

    iget-object p0, p0, Lcom/android/server/RDSParser;->mProgramService:Lcom/android/server/RDSParser$ProgramService;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRadioText(Lcom/android/server/RDSParser;)Lcom/android/server/RDSParser$RadioText;
    .locals 0

    iget-object p0, p0, Lcom/android/server/RDSParser;->mRadioText:Lcom/android/server/RDSParser$RadioText;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smLog(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/android/server/RDSParser;->Log(Ljava/lang/String;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/RDSParser;->mInstance:Lcom/android/server/RDSParser;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/RDSParser;->mFinalRadioText:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/RDSParser;->mFinalProgramService:Ljava/lang/String;

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/RDSParser;->mPI:I

    iput v1, p0, Lcom/android/server/RDSParser;->mPTY:I

    iput v1, p0, Lcom/android/server/RDSParser;->mTP:I

    new-instance v1, Lcom/android/server/RDSParser$RadioText;

    invoke-direct {v1, p0}, Lcom/android/server/RDSParser$RadioText;-><init>(Lcom/android/server/RDSParser;)V

    iput-object v1, p0, Lcom/android/server/RDSParser;->mRadioText:Lcom/android/server/RDSParser$RadioText;

    new-instance v1, Lcom/android/server/RDSParser$ProgramService;

    invoke-direct {v1, p0, v0}, Lcom/android/server/RDSParser$ProgramService;-><init>(Lcom/android/server/RDSParser;Lcom/android/server/RDSParser$ProgramService-IA;)V

    iput-object v1, p0, Lcom/android/server/RDSParser;->mProgramService:Lcom/android/server/RDSParser$ProgramService;

    return-void
.end method

.method private static blacklist Log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "FMRDSParser"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static blacklist getInstance()Lcom/android/server/RDSParser;
    .locals 1

    sget-object v0, Lcom/android/server/RDSParser;->mInstance:Lcom/android/server/RDSParser;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/RDSParser;

    invoke-direct {v0}, Lcom/android/server/RDSParser;-><init>()V

    sput-object v0, Lcom/android/server/RDSParser;->mInstance:Lcom/android/server/RDSParser;

    :cond_0
    sget-object v0, Lcom/android/server/RDSParser;->mInstance:Lcom/android/server/RDSParser;

    return-object v0
.end method


# virtual methods
.method public blacklist getProgramService()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/server/RDSParser;->mProgramService:Lcom/android/server/RDSParser$ProgramService;

    invoke-static {v0}, Lcom/android/server/RDSParser$ProgramService;->-$$Nest$fgetbuffer_validate(Lcom/android/server/RDSParser$ProgramService;)I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/RDSParser;->mProgramService:Lcom/android/server/RDSParser$ProgramService;

    invoke-virtual {v0}, Lcom/android/server/RDSParser$ProgramService;->getProgramService()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/RDSParser;->mFinalProgramService:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/android/server/RDSParser;->mFinalProgramService:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getRadioText()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/server/RDSParser;->mRadioText:Lcom/android/server/RDSParser$RadioText;

    invoke-static {v0}, Lcom/android/server/RDSParser$RadioText;->-$$Nest$fgetbuffer_validate(Lcom/android/server/RDSParser$RadioText;)I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/RDSParser;->mRadioText:Lcom/android/server/RDSParser$RadioText;

    invoke-virtual {v0}, Lcom/android/server/RDSParser$RadioText;->getRadioText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/RDSParser;->mFinalRadioText:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/android/server/RDSParser;->mFinalRadioText:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist isRDSDataValid()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/RDSParser;->mRadioText:Lcom/android/server/RDSParser$RadioText;

    invoke-static {v0}, Lcom/android/server/RDSParser$RadioText;->-$$Nest$fgetisRTValid(Lcom/android/server/RDSParser$RadioText;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/server/RDSParser;->mProgramService:Lcom/android/server/RDSParser$ProgramService;

    invoke-static {v1}, Lcom/android/server/RDSParser$ProgramService;->-$$Nest$fgetisPSValid(Lcom/android/server/RDSParser$ProgramService;)Z

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public blacklist parseData(Lcom/android/server/ExtRDSData;)V
    .locals 14

    iget v0, p1, Lcom/android/server/ExtRDSData;->blera:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Lcom/android/server/ExtRDSData;->rdsb:[B

    const/4 v2, 0x0

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    shr-int/2addr v0, v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Group code: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    div-int/lit8 v4, v0, 0x2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    rem-int/lit8 v4, v0, 0x2

    if-nez v4, :cond_1

    const-string v4, "A"

    goto :goto_0

    :cond_1
    const-string v4, "B"

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/RDSParser;->Log(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/android/server/ExtRDSData;->rdsa:[B

    aget-byte v3, v3, v2

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    iget-object v4, p1, Lcom/android/server/ExtRDSData;->rdsa:[B

    const/4 v5, 0x1

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v3, v4

    iget v4, p0, Lcom/android/server/RDSParser;->mPI:I

    if-eq v3, v4, :cond_2

    iput v3, p0, Lcom/android/server/RDSParser;->mPI:I

    iget-object v4, p0, Lcom/android/server/RDSParser;->mRadioText:Lcom/android/server/RDSParser$RadioText;

    invoke-virtual {v4}, Lcom/android/server/RDSParser$RadioText;->resetBuffer()V

    iget-object v4, p0, Lcom/android/server/RDSParser;->mProgramService:Lcom/android/server/RDSParser$ProgramService;

    invoke-virtual {v4}, Lcom/android/server/RDSParser$ProgramService;->resetBuffer()V

    :cond_2
    const-string v4, "RDS is corrupted!"

    const/4 v6, 0x2

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_6

    :pswitch_1
    iget-object v7, p1, Lcom/android/server/ExtRDSData;->rdsb:[B

    aget-byte v7, v7, v5

    and-int/lit8 v7, v7, 0xf

    iget-object v8, p1, Lcom/android/server/ExtRDSData;->rdsb:[B

    aget-byte v8, v8, v5

    and-int/lit8 v8, v8, 0x10

    const/4 v9, 0x4

    shr-int/2addr v8, v9

    new-array v10, v9, [C

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "RTChangeFlag: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/server/RDSParser;->Log(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/android/server/RDSParser;->mRadioText:Lcom/android/server/RDSParser$RadioText;

    invoke-static {v11}, Lcom/android/server/RDSParser$RadioText;->-$$Nest$fgetpreviousRTChangeFlag(Lcom/android/server/RDSParser$RadioText;)I

    move-result v11

    if-eq v8, v11, :cond_3

    const-string v11, "Detected change"

    invoke-static {v11}, Lcom/android/server/RDSParser;->Log(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/android/server/RDSParser;->mRadioText:Lcom/android/server/RDSParser$RadioText;

    invoke-virtual {v11}, Lcom/android/server/RDSParser$RadioText;->resetBuffer()V

    iget-object v11, p0, Lcom/android/server/RDSParser;->mRadioText:Lcom/android/server/RDSParser$RadioText;

    invoke-static {v11, v2}, Lcom/android/server/RDSParser$RadioText;->-$$Nest$fputbuffer_validate(Lcom/android/server/RDSParser$RadioText;I)V

    iget-object v11, p0, Lcom/android/server/RDSParser;->mRadioText:Lcom/android/server/RDSParser$RadioText;

    invoke-static {v11, v8}, Lcom/android/server/RDSParser$RadioText;->-$$Nest$fputpreviousRTChangeFlag(Lcom/android/server/RDSParser$RadioText;I)V

    :cond_3
    if-ne v0, v9, :cond_6

    iget v9, p1, Lcom/android/server/ExtRDSData;->blerc:I

    if-eq v9, v1, :cond_5

    iget v9, p1, Lcom/android/server/ExtRDSData;->blerd:I

    if-ne v9, v1, :cond_4

    goto :goto_1

    :cond_4
    iget-object v4, p1, Lcom/android/server/ExtRDSData;->rdsc:[B

    aget-byte v4, v4, v2

    int-to-char v4, v4

    aput-char v4, v10, v2

    iget-object v4, p1, Lcom/android/server/ExtRDSData;->rdsc:[B

    aget-byte v4, v4, v5

    int-to-char v4, v4

    aput-char v4, v10, v5

    iget-object v4, p1, Lcom/android/server/ExtRDSData;->rdsd:[B

    aget-byte v4, v4, v2

    int-to-char v4, v4

    aput-char v4, v10, v6

    iget-object v4, p1, Lcom/android/server/ExtRDSData;->rdsd:[B

    aget-byte v4, v4, v5

    int-to-char v4, v4

    aput-char v4, v10, v1

    const/16 v1, 0x40

    const/4 v4, 0x4

    goto :goto_2

    :cond_5
    :goto_1
    invoke-static {v4}, Lcom/android/server/RDSParser;->Log(Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_6
    iget v6, p1, Lcom/android/server/ExtRDSData;->blerd:I

    if-ne v6, v1, :cond_7

    invoke-static {v4}, Lcom/android/server/RDSParser;->Log(Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_7
    iget-object v1, p1, Lcom/android/server/ExtRDSData;->rdsd:[B

    aget-byte v1, v1, v2

    int-to-char v1, v1

    aput-char v1, v10, v2

    iget-object v1, p1, Lcom/android/server/ExtRDSData;->rdsd:[B

    aget-byte v1, v1, v5

    int-to-char v1, v1

    aput-char v1, v10, v5

    const/16 v1, 0x20

    const/4 v4, 0x2

    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Group 2 - Segment:"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v11, " - data:"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v12, p1, Lcom/android/server/ExtRDSData;->rdsc:[B

    aget-byte v12, v12, v2

    int-to-char v12, v12

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v12, ","

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v13, p1, Lcom/android/server/ExtRDSData;->rdsc:[B

    aget-byte v13, v13, v5

    int-to-char v13, v13

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v13, p1, Lcom/android/server/ExtRDSData;->rdsd:[B

    aget-byte v13, v13, v2

    int-to-char v13, v13

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v13, p1, Lcom/android/server/ExtRDSData;->rdsd:[B

    aget-byte v13, v13, v5

    int-to-char v13, v13

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/RDSParser;->Log(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v9, p1, Lcom/android/server/ExtRDSData;->rdsc:[B

    aget-byte v9, v9, v2

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v9, p1, Lcom/android/server/ExtRDSData;->rdsc:[B

    aget-byte v9, v9, v5

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v9, p1, Lcom/android/server/ExtRDSData;->rdsd:[B

    aget-byte v2, v9, v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v6, p1, Lcom/android/server/ExtRDSData;->rdsd:[B

    aget-byte v6, v6, v5

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/RDSParser;->Log(Ljava/lang/String;)V

    mul-int/2addr v7, v4

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v4, :cond_a

    aget-char v6, v10, v2

    const/16 v9, 0xd

    if-eq v6, v9, :cond_9

    aget-char v6, v10, v2

    if-nez v6, :cond_8

    goto :goto_4

    :cond_8
    iget-object v6, p0, Lcom/android/server/RDSParser;->mRadioText:Lcom/android/server/RDSParser$RadioText;

    invoke-static {v6}, Lcom/android/server/RDSParser$RadioText;->-$$Nest$fgetbuffer_rt(Lcom/android/server/RDSParser$RadioText;)[C

    move-result-object v6

    add-int v9, v7, v2

    aget-char v11, v10, v2

    aput-char v11, v6, v9

    iget-object v6, p0, Lcom/android/server/RDSParser;->mRadioText:Lcom/android/server/RDSParser$RadioText;

    invoke-static {v6}, Lcom/android/server/RDSParser$RadioText;->-$$Nest$fgetreceivedChar(Lcom/android/server/RDSParser$RadioText;)I

    move-result v9

    add-int/2addr v9, v5

    invoke-static {v6, v9}, Lcom/android/server/RDSParser$RadioText;->-$$Nest$fputreceivedChar(Lcom/android/server/RDSParser$RadioText;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_9
    :goto_4
    const-string v6, "RT endReceived"

    invoke-static {v6}, Lcom/android/server/RDSParser;->Log(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/RDSParser;->mRadioText:Lcom/android/server/RDSParser$RadioText;

    invoke-static {v6, v5}, Lcom/android/server/RDSParser$RadioText;->-$$Nest$fputendReceived(Lcom/android/server/RDSParser$RadioText;Z)V

    iget-object v5, p0, Lcom/android/server/RDSParser;->mRadioText:Lcom/android/server/RDSParser$RadioText;

    add-int v6, v7, v2

    invoke-static {v5, v6}, Lcom/android/server/RDSParser$RadioText;->-$$Nest$fputlength(Lcom/android/server/RDSParser$RadioText;I)V

    nop

    :cond_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Radio Text Buffer: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v5, Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/RDSParser;->mRadioText:Lcom/android/server/RDSParser$RadioText;

    invoke-static {v6}, Lcom/android/server/RDSParser$RadioText;->-$$Nest$fgetbuffer_rt(Lcom/android/server/RDSParser$RadioText;)[C

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "MonitorRDS"

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mRadioText.receivedChar: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lcom/android/server/RDSParser;->mRadioText:Lcom/android/server/RDSParser$RadioText;

    invoke-static {v5}, Lcom/android/server/RDSParser$RadioText;->-$$Nest$fgetreceivedChar(Lcom/android/server/RDSParser$RadioText;)I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/RDSParser;->Log(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/RDSParser;->mRadioText:Lcom/android/server/RDSParser$RadioText;

    invoke-virtual {v2, v1}, Lcom/android/server/RDSParser$RadioText;->isRTValid(I)Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/android/server/RDSParser;->mRadioText:Lcom/android/server/RDSParser$RadioText;

    invoke-static {v2}, Lcom/android/server/RDSParser$RadioText;->-$$Nest$fgetreceivedChar(Lcom/android/server/RDSParser$RadioText;)I

    move-result v2

    const/16 v5, 0x40

    if-ne v2, v5, :cond_b

    iget-object v2, p0, Lcom/android/server/RDSParser;->mRadioText:Lcom/android/server/RDSParser$RadioText;

    invoke-static {v2, v5}, Lcom/android/server/RDSParser$RadioText;->-$$Nest$fputlength(Lcom/android/server/RDSParser$RadioText;I)V

    :cond_b
    iget-object v2, p0, Lcom/android/server/RDSParser;->mRadioText:Lcom/android/server/RDSParser$RadioText;

    invoke-virtual {v2}, Lcom/android/server/RDSParser$RadioText;->validateBuffer()V

    iget-object v2, p0, Lcom/android/server/RDSParser;->mRadioText:Lcom/android/server/RDSParser$RadioText;

    invoke-virtual {v2}, Lcom/android/server/RDSParser$RadioText;->resetBuffer()V

    :cond_c
    iget-object v2, p0, Lcom/android/server/RDSParser;->mRadioText:Lcom/android/server/RDSParser$RadioText;

    invoke-static {v2}, Lcom/android/server/RDSParser$RadioText;->-$$Nest$fgetendReceived(Lcom/android/server/RDSParser$RadioText;)Z

    move-result v2

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/android/server/RDSParser;->mRadioText:Lcom/android/server/RDSParser$RadioText;

    invoke-static {v2}, Lcom/android/server/RDSParser$RadioText;->-$$Nest$fgetreceivedChar(Lcom/android/server/RDSParser$RadioText;)I

    move-result v2

    iget-object v5, p0, Lcom/android/server/RDSParser;->mRadioText:Lcom/android/server/RDSParser$RadioText;

    invoke-static {v5}, Lcom/android/server/RDSParser$RadioText;->-$$Nest$fgetlength(Lcom/android/server/RDSParser$RadioText;)I

    move-result v5

    if-le v2, v5, :cond_10

    iget-object v2, p0, Lcom/android/server/RDSParser;->mRadioText:Lcom/android/server/RDSParser$RadioText;

    invoke-virtual {v2}, Lcom/android/server/RDSParser$RadioText;->resetBuffer()V

    goto :goto_6

    :pswitch_2
    iget v2, p1, Lcom/android/server/ExtRDSData;->blerd:I

    if-ne v2, v1, :cond_d

    invoke-static {v4}, Lcom/android/server/RDSParser;->Log(Ljava/lang/String;)V

    goto :goto_6

    :cond_d
    iget-object v2, p1, Lcom/android/server/ExtRDSData;->rdsb:[B

    aget-byte v2, v2, v5

    and-int/2addr v1, v2

    shl-int/2addr v1, v5

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v6, :cond_f

    iget-object v4, p0, Lcom/android/server/RDSParser;->mProgramService:Lcom/android/server/RDSParser$ProgramService;

    invoke-static {v4}, Lcom/android/server/RDSParser$ProgramService;->-$$Nest$fgetbuffer_ps(Lcom/android/server/RDSParser$ProgramService;)[C

    move-result-object v4

    add-int v7, v1, v2

    aget-char v4, v4, v7

    iget-object v7, p1, Lcom/android/server/ExtRDSData;->rdsd:[B

    aget-byte v7, v7, v2

    int-to-char v7, v7

    if-eq v4, v7, :cond_e

    iget-object v4, p0, Lcom/android/server/RDSParser;->mProgramService:Lcom/android/server/RDSParser$ProgramService;

    invoke-static {v4}, Lcom/android/server/RDSParser$ProgramService;->-$$Nest$fgetbuffer_ps(Lcom/android/server/RDSParser$ProgramService;)[C

    move-result-object v4

    add-int v7, v1, v2

    iget-object v8, p1, Lcom/android/server/ExtRDSData;->rdsd:[B

    aget-byte v8, v8, v2

    int-to-char v8, v8

    aput-char v8, v4, v7

    iget-object v4, p0, Lcom/android/server/RDSParser;->mProgramService:Lcom/android/server/RDSParser$ProgramService;

    invoke-static {v4}, Lcom/android/server/RDSParser$ProgramService;->-$$Nest$fgetreceivedChar(Lcom/android/server/RDSParser$ProgramService;)I

    move-result v7

    add-int/2addr v7, v5

    invoke-static {v4, v7}, Lcom/android/server/RDSParser$ProgramService;->-$$Nest$fputreceivedChar(Lcom/android/server/RDSParser$ProgramService;I)V

    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_f
    iget-object v2, p0, Lcom/android/server/RDSParser;->mProgramService:Lcom/android/server/RDSParser$ProgramService;

    invoke-virtual {v2}, Lcom/android/server/RDSParser$ProgramService;->isPSValid()Z

    move-result v2

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/android/server/RDSParser;->mProgramService:Lcom/android/server/RDSParser$ProgramService;

    invoke-virtual {v2}, Lcom/android/server/RDSParser$ProgramService;->validateBuffer()V

    iget-object v2, p0, Lcom/android/server/RDSParser;->mProgramService:Lcom/android/server/RDSParser$ProgramService;

    invoke-virtual {v2}, Lcom/android/server/RDSParser$ProgramService;->resetBuffer()V

    :cond_10
    :goto_6
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public blacklist reset()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/RDSParser;->mFinalRadioText:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/RDSParser;->mFinalProgramService:Ljava/lang/String;

    new-instance v1, Lcom/android/server/RDSParser$RadioText;

    invoke-direct {v1, p0}, Lcom/android/server/RDSParser$RadioText;-><init>(Lcom/android/server/RDSParser;)V

    iput-object v1, p0, Lcom/android/server/RDSParser;->mRadioText:Lcom/android/server/RDSParser$RadioText;

    new-instance v1, Lcom/android/server/RDSParser$ProgramService;

    invoke-direct {v1, p0, v0}, Lcom/android/server/RDSParser$ProgramService;-><init>(Lcom/android/server/RDSParser;Lcom/android/server/RDSParser$ProgramService-IA;)V

    iput-object v1, p0, Lcom/android/server/RDSParser;->mProgramService:Lcom/android/server/RDSParser$ProgramService;

    return-void
.end method
