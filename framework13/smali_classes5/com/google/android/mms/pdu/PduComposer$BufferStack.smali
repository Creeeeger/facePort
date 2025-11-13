.class Lcom/google/android/mms/pdu/PduComposer$BufferStack;
.super Ljava/lang/Object;
.source "PduComposer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/mms/pdu/PduComposer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BufferStack"
.end annotation


# instance fields
.field private blacklist stack:Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;

.field blacklist stackSize:I

.field final synthetic blacklist this$0:Lcom/google/android/mms/pdu/PduComposer;

.field private blacklist toCopy:Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;


# direct methods
.method private constructor blacklist <init>(Lcom/google/android/mms/pdu/PduComposer;)V
    .locals 0

    .line 1140
    iput-object p1, p0, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->this$0:Lcom/google/android/mms/pdu/PduComposer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1141
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->stack:Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;

    .line 1142
    iput-object p1, p0, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->toCopy:Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;

    .line 1144
    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->stackSize:I

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/google/android/mms/pdu/PduComposer;Lcom/google/android/mms/pdu/PduComposer$BufferStack-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;-><init>(Lcom/google/android/mms/pdu/PduComposer;)V

    return-void
.end method


# virtual methods
.method greylist copy()V
    .locals 4

    .line 1198
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->this$0:Lcom/google/android/mms/pdu/PduComposer;

    iget-object v1, p0, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->toCopy:Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;

    iget-object v1, v1, Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;->currentMessage:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->toCopy:Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;

    iget v2, v2, Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;->currentPosition:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/google/android/mms/pdu/PduComposer;->arraycopy([BII)V

    .line 1201
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->toCopy:Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;

    .line 1202
    return-void
.end method

.method greylist mark()Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    .locals 3

    .line 1209
    new-instance v0, Lcom/google/android/mms/pdu/PduComposer$PositionMarker;

    iget-object v1, p0, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->this$0:Lcom/google/android/mms/pdu/PduComposer;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/mms/pdu/PduComposer$PositionMarker;-><init>(Lcom/google/android/mms/pdu/PduComposer;Lcom/google/android/mms/pdu/PduComposer$PositionMarker-IA;)V

    .line 1211
    .local v0, "m":Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    iget-object v1, p0, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->this$0:Lcom/google/android/mms/pdu/PduComposer;

    iget v1, v1, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    invoke-static {v0, v1}, Lcom/google/android/mms/pdu/PduComposer$PositionMarker;->-$$Nest$fputc_pos(Lcom/google/android/mms/pdu/PduComposer$PositionMarker;I)V

    .line 1212
    iget v1, p0, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->stackSize:I

    invoke-static {v0, v1}, Lcom/google/android/mms/pdu/PduComposer$PositionMarker;->-$$Nest$fputcurrentStackSize(Lcom/google/android/mms/pdu/PduComposer$PositionMarker;I)V

    .line 1214
    return-object v0
.end method

.method greylist newbuf()V
    .locals 3

    .line 1154
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->toCopy:Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;

    if-nez v0, :cond_0

    .line 1158
    new-instance v0, Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;-><init>(Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode-IA;)V

    .line 1160
    .local v0, "temp":Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;
    iget-object v1, p0, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->this$0:Lcom/google/android/mms/pdu/PduComposer;

    iget-object v1, v1, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    iput-object v1, v0, Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;->currentMessage:Ljava/io/ByteArrayOutputStream;

    .line 1161
    iget-object v1, p0, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->this$0:Lcom/google/android/mms/pdu/PduComposer;

    iget v1, v1, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    iput v1, v0, Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;->currentPosition:I

    .line 1163
    iget-object v1, p0, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->stack:Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;

    iput-object v1, v0, Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;->next:Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;

    .line 1164
    iput-object v0, p0, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->stack:Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;

    .line 1166
    iget v1, p0, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->stackSize:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->stackSize:I

    .line 1168
    iget-object v1, p0, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->this$0:Lcom/google/android/mms/pdu/PduComposer;

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v2, v1, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    .line 1169
    iget-object v1, p0, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->this$0:Lcom/google/android/mms/pdu/PduComposer;

    const/4 v2, 0x0

    iput v2, v1, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    .line 1170
    return-void

    .line 1155
    .end local v0    # "temp":Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "BUG: Invalid newbuf() before copy()"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method greylist pop()V
    .locals 4

    .line 1177
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->this$0:Lcom/google/android/mms/pdu/PduComposer;

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    .line 1178
    .local v0, "currentMessage":Ljava/io/ByteArrayOutputStream;
    iget-object v1, p0, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->this$0:Lcom/google/android/mms/pdu/PduComposer;

    iget v1, v1, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    .line 1180
    .local v1, "currentPosition":I
    iget-object v2, p0, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->this$0:Lcom/google/android/mms/pdu/PduComposer;

    iget-object v3, p0, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->stack:Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;

    iget-object v3, v3, Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;->currentMessage:Ljava/io/ByteArrayOutputStream;

    iput-object v3, v2, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    .line 1181
    iget-object v2, p0, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->this$0:Lcom/google/android/mms/pdu/PduComposer;

    iget-object v3, p0, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->stack:Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;

    iget v3, v3, Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;->currentPosition:I

    iput v3, v2, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    .line 1183
    iget-object v2, p0, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->stack:Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;

    iput-object v2, p0, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->toCopy:Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;

    .line 1186
    iget-object v2, v2, Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;->next:Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;

    iput-object v2, p0, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->stack:Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;

    .line 1187
    iget v2, p0, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->stackSize:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->stackSize:I

    .line 1189
    iget-object v2, p0, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->toCopy:Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;

    iput-object v0, v2, Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;->currentMessage:Ljava/io/ByteArrayOutputStream;

    .line 1190
    iget-object v2, p0, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->toCopy:Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;

    iput v1, v2, Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;->currentPosition:I

    .line 1191
    return-void
.end method
