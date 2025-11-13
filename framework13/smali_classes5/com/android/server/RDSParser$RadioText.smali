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

    .line 199
    iput-object p1, p0, Lcom/android/server/RDSParser$RadioText;->this$0:Lcom/android/server/RDSParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/RDSParser$RadioText;->final_rt:Ljava/lang/String;

    .line 191
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/RDSParser$RadioText;->buffer_validate:I

    .line 193
    iput-boolean p1, p0, Lcom/android/server/RDSParser$RadioText;->endReceived:Z

    .line 194
    iput p1, p0, Lcom/android/server/RDSParser$RadioText;->receivedChar:I

    .line 195
    iput p1, p0, Lcom/android/server/RDSParser$RadioText;->length:I

    .line 196
    iput-boolean p1, p0, Lcom/android/server/RDSParser$RadioText;->isRTValid:Z

    .line 197
    const/4 p1, -0x1

    iput p1, p0, Lcom/android/server/RDSParser$RadioText;->previousRTChangeFlag:I

    .line 200
    invoke-virtual {p0}, Lcom/android/server/RDSParser$RadioText;->resetBuffer()V

    .line 201
    return-void
.end method


# virtual methods
.method public blacklist getRadioText()Ljava/lang/String;
    .locals 1

    .line 227
    iget-object v0, p0, Lcom/android/server/RDSParser$RadioText;->final_rt:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist isRTValid(I)Z
    .locals 2
    .param p1, "maxLength"    # I

    .line 238
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

    .line 231
    const-string v0, "FMRDSParser"

    const-string v1, "latch Radio Text"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/RDSParser$RadioText;->buffer_validate:I

    .line 233
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/RDSParser$RadioText;->buffer_rt:[C

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([C)V

    iget v2, p0, Lcom/android/server/RDSParser$RadioText;->length:I

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/RDSParser$RadioText;->final_rt:Ljava/lang/String;

    .line 234
    iput-boolean v0, p0, Lcom/android/server/RDSParser$RadioText;->isRTValid:Z

    .line 235
    return-void
.end method

.method public blacklist resetBuffer()V
    .locals 1

    .line 204
    const/16 v0, 0x41

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/android/server/RDSParser$RadioText;->buffer_rt:[C

    .line 205
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/RDSParser$RadioText;->length:I

    .line 206
    iput v0, p0, Lcom/android/server/RDSParser$RadioText;->receivedChar:I

    .line 207
    iput-boolean v0, p0, Lcom/android/server/RDSParser$RadioText;->endReceived:Z

    .line 208
    return-void
.end method

.method public blacklist validateBuffer()V
    .locals 3

    .line 211
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

    .line 212
    iget-object v0, p0, Lcom/android/server/RDSParser$RadioText;->final_rt:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lcom/android/server/RDSParser$RadioText;->length:I

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 216
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/server/RDSParser$RadioText;->length:I

    if-ge v0, v1, :cond_2

    .line 217
    iget-object v1, p0, Lcom/android/server/RDSParser$RadioText;->buffer_rt:[C

    aget-char v1, v1, v0

    iget-object v2, p0, Lcom/android/server/RDSParser$RadioText;->final_rt:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v1, v2, :cond_1

    .line 218
    invoke-virtual {p0}, Lcom/android/server/RDSParser$RadioText;->latch()V

    .line 219
    return-void

    .line 216
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 222
    .end local v0    # "i":I
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

    .line 223
    iget v0, p0, Lcom/android/server/RDSParser$RadioText;->buffer_validate:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/RDSParser$RadioText;->buffer_validate:I

    .line 224
    return-void

    .line 213
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/RDSParser$RadioText;->latch()V

    .line 214
    return-void
.end method
