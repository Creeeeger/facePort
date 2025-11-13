.class Lcom/android/server/RDSParser$ProgramService;
.super Ljava/lang/Object;
.source "RDSParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/RDSParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProgramService"
.end annotation


# instance fields
.field private blacklist buffer_ps:[C

.field private blacklist buffer_validate:I

.field private blacklist final_ps:Ljava/lang/String;

.field private blacklist isPSValid:Z

.field private blacklist receivedChar:I

.field final synthetic blacklist this$0:Lcom/android/server/RDSParser;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetbuffer_ps(Lcom/android/server/RDSParser$ProgramService;)[C
    .locals 0

    iget-object p0, p0, Lcom/android/server/RDSParser$ProgramService;->buffer_ps:[C

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetbuffer_validate(Lcom/android/server/RDSParser$ProgramService;)I
    .locals 0

    iget p0, p0, Lcom/android/server/RDSParser$ProgramService;->buffer_validate:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetisPSValid(Lcom/android/server/RDSParser$ProgramService;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/RDSParser$ProgramService;->isPSValid:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetreceivedChar(Lcom/android/server/RDSParser$ProgramService;)I
    .locals 0

    iget p0, p0, Lcom/android/server/RDSParser$ProgramService;->receivedChar:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputreceivedChar(Lcom/android/server/RDSParser$ProgramService;I)V
    .locals 0

    iput p1, p0, Lcom/android/server/RDSParser$ProgramService;->receivedChar:I

    return-void
.end method

.method private constructor blacklist <init>(Lcom/android/server/RDSParser;)V
    .locals 0

    .line 249
    iput-object p1, p0, Lcom/android/server/RDSParser$ProgramService;->this$0:Lcom/android/server/RDSParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 243
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/RDSParser$ProgramService;->final_ps:Ljava/lang/String;

    .line 244
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/RDSParser$ProgramService;->buffer_validate:I

    .line 246
    iput p1, p0, Lcom/android/server/RDSParser$ProgramService;->receivedChar:I

    .line 247
    iput-boolean p1, p0, Lcom/android/server/RDSParser$ProgramService;->isPSValid:Z

    .line 250
    invoke-virtual {p0}, Lcom/android/server/RDSParser$ProgramService;->resetBuffer()V

    .line 251
    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/server/RDSParser;Lcom/android/server/RDSParser$ProgramService-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/RDSParser$ProgramService;-><init>(Lcom/android/server/RDSParser;)V

    return-void
.end method


# virtual methods
.method public blacklist getProgramService()Ljava/lang/String;
    .locals 1

    .line 259
    iget-object v0, p0, Lcom/android/server/RDSParser$ProgramService;->final_ps:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist isPSValid()Z
    .locals 2

    .line 285
    iget-object v0, p0, Lcom/android/server/RDSParser$ProgramService;->this$0:Lcom/android/server/RDSParser;

    invoke-static {v0}, Lcom/android/server/RDSParser;->-$$Nest$fgetmProgramService(Lcom/android/server/RDSParser;)Lcom/android/server/RDSParser$ProgramService;

    move-result-object v0

    iget v0, v0, Lcom/android/server/RDSParser$ProgramService;->receivedChar:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist latch()V
    .locals 4

    .line 263
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/RDSParser$ProgramService;->buffer_validate:I

    .line 264
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/RDSParser$ProgramService;->buffer_ps:[C

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([C)V

    const/4 v2, 0x0

    const/16 v3, 0x8

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/RDSParser$ProgramService;->final_ps:Ljava/lang/String;

    .line 265
    iput-boolean v0, p0, Lcom/android/server/RDSParser$ProgramService;->isPSValid:Z

    .line 266
    return-void
.end method

.method public blacklist resetBuffer()V
    .locals 1

    .line 254
    const/16 v0, 0x9

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/android/server/RDSParser$ProgramService;->buffer_ps:[C

    .line 255
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/RDSParser$ProgramService;->receivedChar:I

    .line 256
    return-void
.end method

.method public blacklist validateBuffer()V
    .locals 3

    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "validatePSBuffer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/RDSParser$ProgramService;->buffer_validate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/RDSParser;->-$$Nest$smLog(Ljava/lang/String;)V

    .line 270
    iget-object v0, p0, Lcom/android/server/RDSParser$ProgramService;->final_ps:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 271
    invoke-virtual {p0}, Lcom/android/server/RDSParser$ProgramService;->latch()V

    .line 272
    return-void

    .line 274
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x8

    if-ge v0, v1, :cond_2

    .line 275
    iget-object v1, p0, Lcom/android/server/RDSParser$ProgramService;->buffer_ps:[C

    aget-char v1, v1, v0

    iget-object v2, p0, Lcom/android/server/RDSParser$ProgramService;->final_ps:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v1, v2, :cond_1

    .line 276
    invoke-virtual {p0}, Lcom/android/server/RDSParser$ProgramService;->latch()V

    .line 277
    return-void

    .line 274
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 280
    .end local v0    # "i":I
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "validatePSBuffer++ : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/RDSParser$ProgramService;->final_ps:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/RDSParser;->-$$Nest$smLog(Ljava/lang/String;)V

    .line 281
    iget v0, p0, Lcom/android/server/RDSParser$ProgramService;->buffer_validate:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/RDSParser$ProgramService;->buffer_validate:I

    .line 282
    return-void
.end method
