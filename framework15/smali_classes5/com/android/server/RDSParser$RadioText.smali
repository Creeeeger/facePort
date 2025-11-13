.class Lcom/android/server/RDSParser$RadioText;
.super Ljava/lang/Object;
.source "RDSParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/RDSParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RadioText"
.end annotation


# instance fields
.field private blacklist buffer_rt:[C

.field private blacklist buffer_validate:I

.field private blacklist endReceived:Z

.field private blacklist final_rt:Ljava/lang/String;

.field private blacklist isRTValid:Z

.field private blacklist length:I

.field private blacklist previousRTChangeFlag:I

.field private blacklist receivedChar:I

.field final synthetic blacklist this$0:Lcom/android/server/RDSParser;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetbuffer_rt(Lcom/android/server/RDSParser$RadioText;)[C
    .locals 0

    iget-object p0, p0, Lcom/android/server/RDSParser$RadioText;->buffer_rt:[C

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetbuffer_validate(Lcom/android/server/RDSParser$RadioText;)I
    .locals 0

    iget p0, p0, Lcom/android/server/RDSParser$RadioText;->buffer_validate:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetendReceived(Lcom/android/server/RDSParser$RadioText;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/RDSParser$RadioText;->endReceived:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetisRTValid(Lcom/android/server/RDSParser$RadioText;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/RDSParser$RadioText;->isRTValid:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetlength(Lcom/android/server/RDSParser$RadioText;)I
    .locals 0

    iget p0, p0, Lcom/android/server/RDSParser$RadioText;->length:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetpreviousRTChangeFlag(Lcom/android/server/RDSParser$RadioText;)I
    .locals 0

    iget p0, p0, Lcom/android/server/RDSParser$RadioText;->previousRTChangeFlag:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetreceivedChar(Lcom/android/server/RDSParser$RadioText;)I
    .locals 0

    iget p0, p0, Lcom/android/server/RDSParser$RadioText;->receivedChar:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputbuffer_validate(Lcom/android/server/RDSParser$RadioText;I)V
    .locals 0

    iput p1, p0, Lcom/android/server/RDSParser$RadioText;->buffer_validate:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputendReceived(Lcom/android/server/RDSParser$RadioText;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/RDSParser$RadioText;->endReceived:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputlength(Lcom/android/server/RDSParser$RadioText;I)V
    .locals 0

    iput p1, p0, Lcom/android/server/RDSParser$RadioText;->length:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputpreviousRTChangeFlag(Lcom/android/server/RDSParser$RadioText;I)V
    .locals 0

    iput p1, p0, Lcom/android/server/RDSParser$RadioText;->previousRTChangeFlag:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputreceivedChar(Lcom/android/server/RDSParser$RadioText;I)V
    .locals 0

    iput p1, p0, Lcom/android/server/RDSParser$RadioText;->receivedChar:I

    return-void
.end method

.method constructor blacklist <init>(Lcom/android/server/RDSParser;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/android/server/RDSParser$RadioText;->this$0:Lcom/android/server/RDSParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/RDSParser$RadioText;->final_rt:Ljava/lang/String;

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/RDSParser$RadioText;->buffer_validate:I

    iput-boolean p1, p0, Lcom/android/server/RDSParser$RadioText;->endReceived:Z

    iput p1, p0, Lcom/android/server/RDSParser$RadioText;->receivedChar:I

    iput p1, p0, Lcom/android/server/RDSParser$RadioText;->length:I

    iput-boolean p1, p0, Lcom/android/server/RDSParser$RadioText;->isRTValid:Z

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/server/RDSParser$RadioText;->previousRTChangeFlag:I

    invoke-virtual {p0}, Lcom/android/server/RDSParser$RadioText;->resetBuffer()V

    return-void
.end method


# virtual methods
.method public blacklist getRadioText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/RDSParser$RadioText;->final_rt:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist isRTValid(I)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/RDSParser$RadioText;->this$0:Lcom/android/server/RDSParser;

    invoke-static {v0}, Lcom/android/server/RDSParser;->-$$Nest$fgetmRadioText(Lcom/android/server/RDSParser;)Lcom/android/server/RDSParser$RadioText;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/server/RDSParser$RadioText;->endReceived:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/RDSParser$RadioText;->this$0:Lcom/android/server/RDSParser;

    invoke-static {v0}, Lcom/android/server/RDSParser;->-$$Nest$fgetmRadioText(Lcom/android/server/RDSParser;)Lcom/android/server/RDSParser$RadioText;

    move-result-object v0

    iget v0, v0, Lcom/android/server/RDSParser$RadioText;->length:I

    iget-object v1, p0, Lcom/android/server/RDSParser$RadioText;->this$0:Lcom/android/server/RDSParser;

    invoke-static {v1}, Lcom/android/server/RDSParser;->-$$Nest$fgetmRadioText(Lcom/android/server/RDSParser;)Lcom/android/server/RDSParser$RadioText;

    move-result-object v1

    iget v1, v1, Lcom/android/server/RDSParser$RadioText;->receivedChar:I

    if-eq v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/RDSParser$RadioText;->this$0:Lcom/android/server/RDSParser;

    invoke-static {v0}, Lcom/android/server/RDSParser;->-$$Nest$fgetmRadioText(Lcom/android/server/RDSParser;)Lcom/android/server/RDSParser$RadioText;

    move-result-object v0

    iget v0, v0, Lcom/android/server/RDSParser$RadioText;->receivedChar:I

    if-ne v0, p1, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist latch()V
    .locals 4

    const-string v0, "FMRDSParser"

    const-string/jumbo v1, "latch Radio Text"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/RDSParser$RadioText;->buffer_validate:I

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/RDSParser$RadioText;->buffer_rt:[C

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([C)V

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/server/RDSParser$RadioText;->length:I

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/RDSParser$RadioText;->final_rt:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/android/server/RDSParser$RadioText;->isRTValid:Z

    return-void
.end method

.method public blacklist resetBuffer()V
    .locals 1

    const/16 v0, 0x41

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/android/server/RDSParser$RadioText;->buffer_rt:[C

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/RDSParser$RadioText;->length:I

    iput v0, p0, Lcom/android/server/RDSParser$RadioText;->receivedChar:I

    iput-boolean v0, p0, Lcom/android/server/RDSParser$RadioText;->endReceived:Z

    return-void
.end method

.method public blacklist validateBuffer()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "validateBuffer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/RDSParser$RadioText;->buffer_validate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/RDSParser;->-$$Nest$smLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/RDSParser$RadioText;->final_rt:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/RDSParser$RadioText;->final_rt:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lcom/android/server/RDSParser$RadioText;->length:I

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/android/server/RDSParser$RadioText;->length:I

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/android/server/RDSParser$RadioText;->buffer_rt:[C

    aget-char v1, v1, v0

    iget-object v2, p0, Lcom/android/server/RDSParser$RadioText;->final_rt:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/android/server/RDSParser$RadioText;->latch()V

    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "validateBuffer++ : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/RDSParser$RadioText;->final_rt:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/RDSParser;->-$$Nest$smLog(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/RDSParser$RadioText;->buffer_validate:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/RDSParser$RadioText;->buffer_validate:I

    return-void

    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/RDSParser$RadioText;->latch()V

    return-void
.end method
