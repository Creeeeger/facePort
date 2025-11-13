.class public Landroid/telephony/CellBroadcastService$ICellBroadcastServiceWrapper;
.super Landroid/telephony/ICellBroadcastService$Stub;
.source "CellBroadcastService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/CellBroadcastService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ICellBroadcastServiceWrapper"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/telephony/CellBroadcastService;


# direct methods
.method public constructor blacklist <init>(Landroid/telephony/CellBroadcastService;)V
    .locals 0
    .param p1, "this$0"    # Landroid/telephony/CellBroadcastService;

    .line 143
    iput-object p1, p0, Landroid/telephony/CellBroadcastService$ICellBroadcastServiceWrapper;->this$0:Landroid/telephony/CellBroadcastService;

    invoke-direct {p0}, Landroid/telephony/ICellBroadcastService$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$handleCdmaScpMessage$0(Landroid/os/RemoteCallback;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "callback"    # Landroid/os/RemoteCallback;
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 309
    invoke-virtual {p0, p1}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 310
    return-void
.end method


# virtual methods
.method protected whitelist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "fout"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 329
    iget-object v0, p0, Landroid/telephony/CellBroadcastService$ICellBroadcastServiceWrapper;->this$0:Landroid/telephony/CellBroadcastService;

    invoke-static {v0, p1, p2, p3}, Landroid/telephony/CellBroadcastService;->access$000(Landroid/telephony/CellBroadcastService;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 330
    return-void
.end method

.method public whitelist dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "args"    # [Ljava/lang/String;

    .line 334
    new-instance v0, Lcom/android/internal/util/FastPrintWriter;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v0, v1}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 335
    .local v0, "pw":Ljava/io/PrintWriter;
    iget-object v1, p0, Landroid/telephony/CellBroadcastService$ICellBroadcastServiceWrapper;->this$0:Landroid/telephony/CellBroadcastService;

    invoke-static {v1, p1, v0, p2}, Landroid/telephony/CellBroadcastService;->access$100(Landroid/telephony/CellBroadcastService;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 336
    return-void
.end method

.method public blacklist getCellBroadcastAreaInfo(I)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "slotIndex"    # I

    .line 324
    iget-object v0, p0, Landroid/telephony/CellBroadcastService$ICellBroadcastServiceWrapper;->this$0:Landroid/telephony/CellBroadcastService;

    invoke-virtual {v0, p1}, Landroid/telephony/CellBroadcastService;->getCellBroadcastAreaInfo(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public blacklist handleCdmaCellBroadcastSms(I[BI)V
    .locals 1
    .param p1, "slotIndex"    # I
    .param p2, "bearerData"    # [B
    .param p3, "serviceCategory"    # I

    .line 291
    iget-object v0, p0, Landroid/telephony/CellBroadcastService$ICellBroadcastServiceWrapper;->this$0:Landroid/telephony/CellBroadcastService;

    invoke-virtual {v0, p1, p2, p3}, Landroid/telephony/CellBroadcastService;->onCdmaCellBroadcastSms(I[BI)V

    .line 293
    return-void
.end method

.method public blacklist handleCdmaScpMessage(ILjava/util/List;Ljava/lang/String;Landroid/os/RemoteCallback;)V
    .locals 2
    .param p1, "slotIndex"    # I
    .param p3, "originatingAddress"    # Ljava/lang/String;
    .param p4, "callback"    # Landroid/os/RemoteCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/telephony/cdma/CdmaSmsCbProgramData;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/os/RemoteCallback;",
            ")V"
        }
    .end annotation

    .line 308
    .local p2, "smsCbProgramData":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/cdma/CdmaSmsCbProgramData;>;"
    new-instance v0, Landroid/telephony/CellBroadcastService$ICellBroadcastServiceWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v0, p4}, Landroid/telephony/CellBroadcastService$ICellBroadcastServiceWrapper$$ExternalSyntheticLambda0;-><init>(Landroid/os/RemoteCallback;)V

    .line 311
    .local v0, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/os/Bundle;>;"
    iget-object v1, p0, Landroid/telephony/CellBroadcastService$ICellBroadcastServiceWrapper;->this$0:Landroid/telephony/CellBroadcastService;

    invoke-virtual {v1, p1, p2, p3, v0}, Landroid/telephony/CellBroadcastService;->onCdmaScpMessage(ILjava/util/List;Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 313
    return-void
.end method

.method public blacklist handleGsmCellBroadcastSms(I[B)V
    .locals 23
    .param p1, "slotIndex"    # I
    .param p2, "message"    # [B

    .line 154
    move-object/from16 v1, p0

    move/from16 v8, p1

    move-object/from16 v9, p2

    const/4 v0, 0x1

    aget-byte v2, v9, v0

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    const/4 v10, 0x0

    aget-byte v3, v9, v10

    and-int/lit16 v3, v3, 0xff

    or-int v11, v2, v3

    .line 155
    .local v11, "pduLength":I
    new-array v12, v11, [B

    .line 156
    .local v12, "pdu":[B
    const/4 v2, 0x4

    invoke-static {v9, v2, v12, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 158
    iget-object v2, v1, Landroid/telephony/CellBroadcastService$ICellBroadcastServiceWrapper;->this$0:Landroid/telephony/CellBroadcastService;

    invoke-static {v2, v12}, Landroid/telephony/CellBroadcastService;->-$$Nest$mcreateSmsCbHeader(Landroid/telephony/CellBroadcastService;[B)Lcom/android/internal/telephony/gsm/SmsCbHeader;

    move-result-object v13

    .line 159
    .local v13, "header":Lcom/android/internal/telephony/gsm/SmsCbHeader;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "header="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v14, "CellBroadcastService"

    invoke-static {v14, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    if-nez v13, :cond_0

    .line 161
    return-void

    .line 164
    :cond_0
    invoke-virtual {v13}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getNumberOfPages()I

    move-result v15

    .line 165
    .local v15, "pageCount":I
    const/4 v2, 0x3

    const/4 v3, 0x2

    if-ne v15, v0, :cond_7

    .line 166
    invoke-virtual {v13}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->isUmtsFormat()Z

    move-result v4

    if-nez v4, :cond_6

    .line 168
    :try_start_0
    const-string v4, "Single page. Not UMTS format"

    invoke-static {v14, v4}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    aget-byte v4, v9, v2

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    aget-byte v5, v9, v3

    and-int/lit16 v5, v5, 0xff

    or-int v7, v4, v5

    .line 170
    .local v7, "wacLength":I
    if-lez v7, :cond_1

    .line 171
    add-int/lit8 v4, v7, 0x2

    new-array v4, v4, [B

    move-object v6, v4

    .line 172
    .local v6, "wacPdu":[B
    aget-byte v4, v9, v3

    aput-byte v4, v6, v10

    .line 173
    aget-byte v2, v9, v2

    aput-byte v2, v6, v0

    .line 174
    add-int/lit8 v0, v11, 0x4

    invoke-static {v9, v0, v6, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 175
    iget-object v2, v1, Landroid/telephony/CellBroadcastService$ICellBroadcastServiceWrapper;->this$0:Landroid/telephony/CellBroadcastService;

    add-int/lit8 v0, v7, 0x2

    move-object v3, v12

    move-object v4, v6

    move v5, v11

    move-object v10, v6

    .end local v6    # "wacPdu":[B
    .local v10, "wacPdu":[B
    move v6, v0

    move/from16 v16, v7

    .end local v7    # "wacLength":I
    .local v16, "wacLength":I
    move/from16 v7, p1

    invoke-static/range {v2 .. v7}, Landroid/telephony/CellBroadcastService;->-$$Nest$mconvertGsmToUmts(Landroid/telephony/CellBroadcastService;[B[BIII)V

    .line 176
    return-void

    .line 177
    .end local v10    # "wacPdu":[B
    .end local v16    # "wacLength":I
    .restart local v7    # "wacLength":I
    :cond_1
    move/from16 v16, v7

    .end local v7    # "wacLength":I
    .restart local v16    # "wacLength":I
    invoke-virtual {v13}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getServiceCategory()I

    move-result v2

    const/16 v3, 0x1130

    if-ne v2, v3, :cond_2

    .line 178
    iget-object v2, v1, Landroid/telephony/CellBroadcastService$ICellBroadcastServiceWrapper;->this$0:Landroid/telephony/CellBroadcastService;

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v3, v12

    move v5, v11

    move/from16 v7, p1

    invoke-static/range {v2 .. v7}, Landroid/telephony/CellBroadcastService;->-$$Nest$mconvertGsmToUmts(Landroid/telephony/CellBroadcastService;[B[BIII)V

    .line 179
    return-void

    .line 180
    :cond_2
    invoke-virtual {v13}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getEtwsInfo()Landroid/telephony/SmsCbEtwsInfo;

    move-result-object v2

    if-eqz v2, :cond_5

    array-length v2, v12

    const/16 v3, 0x38

    if-le v2, v3, :cond_5

    .line 181
    const-string v2, "Remove padding bit and convert GSM to UMTS."

    invoke-static {v14, v2}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    array-length v2, v12

    sub-int/2addr v2, v0

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_4

    .line 183
    aget-byte v0, v12, v2

    if-eqz v0, :cond_3

    .line 184
    goto :goto_1

    .line 182
    :cond_3
    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v11, v11, -0x1

    goto :goto_0

    .line 187
    .end local v2    # "i":I
    :cond_4
    :goto_1
    iget-object v2, v1, Landroid/telephony/CellBroadcastService$ICellBroadcastServiceWrapper;->this$0:Landroid/telephony/CellBroadcastService;

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v3, v12

    move v5, v11

    move/from16 v7, p1

    invoke-static/range {v2 .. v7}, Landroid/telephony/CellBroadcastService;->-$$Nest$mconvertGsmToUmts(Landroid/telephony/CellBroadcastService;[B[BIII)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    return-void

    .line 194
    .end local v16    # "wacLength":I
    :cond_5
    goto :goto_2

    .line 190
    :catch_0
    move-exception v0

    .line 191
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in decoding SMS CB pdu "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v14, v2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    iget-object v2, v1, Landroid/telephony/CellBroadcastService$ICellBroadcastServiceWrapper;->this$0:Landroid/telephony/CellBroadcastService;

    invoke-virtual {v2, v8, v12}, Landroid/telephony/CellBroadcastService;->onGsmCellBroadcastSms(I[B)V

    .line 193
    return-void

    .line 196
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_6
    :goto_2
    const-string v0, "Converting is not needed"

    invoke-static {v14, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    iget-object v0, v1, Landroid/telephony/CellBroadcastService$ICellBroadcastServiceWrapper;->this$0:Landroid/telephony/CellBroadcastService;

    invoke-virtual {v0, v8, v12}, Landroid/telephony/CellBroadcastService;->onGsmCellBroadcastSms(I[B)V

    .line 198
    return-void

    .line 199
    :cond_7
    if-le v15, v0, :cond_14

    .line 201
    new-instance v4, Landroid/telephony/CellBroadcastService$SmsCbConcatInfo;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct {v4, v13, v5, v6}, Landroid/telephony/CellBroadcastService$SmsCbConcatInfo;-><init>(Lcom/android/internal/telephony/gsm/SmsCbHeader;J)V

    move-object v7, v4

    .line 202
    .local v7, "concatInfo":Landroid/telephony/CellBroadcastService$SmsCbConcatInfo;
    iget-object v4, v1, Landroid/telephony/CellBroadcastService$ICellBroadcastServiceWrapper;->this$0:Landroid/telephony/CellBroadcastService;

    invoke-static {v4}, Landroid/telephony/CellBroadcastService;->-$$Nest$fgetmSmsCbPageMap(Landroid/telephony/CellBroadcastService;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[B

    .line 204
    .local v4, "pdus":[[B
    if-nez v4, :cond_8

    .line 205
    new-array v4, v15, [[B

    .line 206
    iget-object v5, v1, Landroid/telephony/CellBroadcastService$ICellBroadcastServiceWrapper;->this$0:Landroid/telephony/CellBroadcastService;

    invoke-static {v5}, Landroid/telephony/CellBroadcastService;->-$$Nest$fgetmSmsCbPageMap(Landroid/telephony/CellBroadcastService;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v6, v4

    goto :goto_3

    .line 204
    :cond_8
    move-object v6, v4

    .line 209
    .end local v4    # "pdus":[[B
    .local v6, "pdus":[[B
    :goto_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "pdus size="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v14, v4}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    invoke-virtual {v13}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getPageIndex()I

    move-result v4

    sub-int/2addr v4, v0

    aput-object v12, v6, v4

    .line 212
    array-length v4, v6

    move v5, v10

    :goto_4
    if-ge v5, v4, :cond_a

    aget-object v16, v6, v5

    .line 213
    .local v16, "p":[B
    if-nez v16, :cond_9

    .line 214
    const-string/jumbo v0, "still missing pdu"

    invoke-static {v14, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    return-void

    .line 212
    .end local v16    # "p":[B
    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 220
    :cond_a
    :try_start_1
    iget-object v4, v1, Landroid/telephony/CellBroadcastService$ICellBroadcastServiceWrapper;->this$0:Landroid/telephony/CellBroadcastService;

    invoke-static {v4}, Landroid/telephony/CellBroadcastService;->-$$Nest$fgetmSmsCbPageMap(Landroid/telephony/CellBroadcastService;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    iget-object v4, v1, Landroid/telephony/CellBroadcastService$ICellBroadcastServiceWrapper;->this$0:Landroid/telephony/CellBroadcastService;

    invoke-static {v4}, Landroid/telephony/CellBroadcastService;->-$$Nest$fgetmSmsCbPageMap(Landroid/telephony/CellBroadcastService;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object/from16 v16, v4

    .line 227
    .local v16, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/telephony/CellBroadcastService$SmsCbConcatInfo;>;"
    :goto_5
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v4
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_6

    if-eqz v4, :cond_c

    .line 228
    :try_start_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/CellBroadcastService$SmsCbConcatInfo;

    .line 229
    .local v4, "info":Landroid/telephony/CellBroadcastService$SmsCbConcatInfo;
    invoke-static {v4}, Landroid/telephony/CellBroadcastService$SmsCbConcatInfo;->-$$Nest$moverTime(Landroid/telephony/CellBroadcastService$SmsCbConcatInfo;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 230
    const-string v5, "Remove saved message over 5min"

    invoke-static {v14, v5}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->remove()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    .line 233
    .end local v4    # "info":Landroid/telephony/CellBroadcastService$SmsCbConcatInfo;
    :cond_b
    goto :goto_5

    .line 264
    .end local v16    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/telephony/CellBroadcastService$SmsCbConcatInfo;>;"
    :catch_1
    move-exception v0

    move-object/from16 v20, v7

    move/from16 v22, v10

    move-object v10, v6

    goto/16 :goto_a

    .line 235
    .restart local v16    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/telephony/CellBroadcastService$SmsCbConcatInfo;>;"
    :cond_c
    :try_start_3
    aget-byte v4, v9, v2

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    aget-byte v5, v9, v3
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_6

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v5, v4

    .line 236
    .local v5, "wacLength":I
    const/16 v17, 0x0

    .line 237
    .local v17, "wacPdu":[B
    if-lez v5, :cond_d

    .line 238
    :try_start_4
    const-string v4, "WAC included in GSM format multipage"

    invoke-static {v14, v4}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    add-int/lit8 v4, v5, 0x2

    new-array v4, v4, [B

    .line 240
    .end local v17    # "wacPdu":[B
    .local v4, "wacPdu":[B
    aget-byte v17, v9, v3

    aput-byte v17, v4, v10

    .line 241
    aget-byte v2, v9, v2

    aput-byte v2, v4, v0

    .line 242
    add-int/lit8 v0, v11, 0x4

    invoke-static {v9, v0, v4, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 243
    iget-object v2, v1, Landroid/telephony/CellBroadcastService$ICellBroadcastServiceWrapper;->this$0:Landroid/telephony/CellBroadcastService;
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2

    add-int/lit8 v0, v5, 0x2

    move v3, v15

    move-object/from16 v17, v4

    .end local v4    # "wacPdu":[B
    .restart local v17    # "wacPdu":[B
    move-object v4, v6

    move/from16 v18, v5

    .end local v5    # "wacLength":I
    .local v18, "wacLength":I
    move-object/from16 v5, v17

    move-object v10, v6

    .end local v6    # "pdus":[[B
    .local v10, "pdus":[[B
    move v6, v0

    move-object/from16 v20, v7

    .end local v7    # "concatInfo":Landroid/telephony/CellBroadcastService$SmsCbConcatInfo;
    .local v20, "concatInfo":Landroid/telephony/CellBroadcastService$SmsCbConcatInfo;
    move/from16 v7, p1

    :try_start_5
    invoke-static/range {v2 .. v7}, Landroid/telephony/CellBroadcastService;->-$$Nest$mconvertGsmToUmtsForMultiPage(Landroid/telephony/CellBroadcastService;I[[B[BII)V

    goto/16 :goto_9

    .line 264
    .end local v10    # "pdus":[[B
    .end local v16    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/telephony/CellBroadcastService$SmsCbConcatInfo;>;"
    .end local v17    # "wacPdu":[B
    .end local v18    # "wacLength":I
    .end local v20    # "concatInfo":Landroid/telephony/CellBroadcastService$SmsCbConcatInfo;
    .restart local v6    # "pdus":[[B
    .restart local v7    # "concatInfo":Landroid/telephony/CellBroadcastService$SmsCbConcatInfo;
    :catch_2
    move-exception v0

    move-object v10, v6

    move-object/from16 v20, v7

    const/16 v22, 0x0

    goto/16 :goto_a

    .line 244
    .restart local v5    # "wacLength":I
    .restart local v16    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/telephony/CellBroadcastService$SmsCbConcatInfo;>;"
    .restart local v17    # "wacPdu":[B
    :cond_d
    move/from16 v18, v5

    move-object v10, v6

    move-object/from16 v20, v7

    .end local v5    # "wacLength":I
    .end local v6    # "pdus":[[B
    .end local v7    # "concatInfo":Landroid/telephony/CellBroadcastService$SmsCbConcatInfo;
    .restart local v10    # "pdus":[[B
    .restart local v18    # "wacLength":I
    .restart local v20    # "concatInfo":Landroid/telephony/CellBroadcastService$SmsCbConcatInfo;
    invoke-virtual {v13}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getEtwsInfo()Landroid/telephony/SmsCbEtwsInfo;

    move-result-object v2

    if-eqz v2, :cond_10

    .line 245
    const-string v2, "Remove padding bit and convert GSM to UMTS for multipage."

    invoke-static {v14, v2}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    add-int/lit8 v2, v15, -0x1

    aget-object v2, v10, v2

    move-object v7, v2

    .line 247
    .local v7, "p":[B
    array-length v2, v7

    .line 248
    .local v2, "pLength":I
    array-length v3, v7

    sub-int/2addr v3, v0

    move v0, v2

    .end local v2    # "pLength":I
    .local v0, "pLength":I
    .local v3, "i":I
    :goto_6
    if-ltz v3, :cond_f

    .line 249
    aget-byte v2, v7, v3

    if-eqz v2, :cond_e

    .line 250
    goto :goto_7

    .line 248
    :cond_e
    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 253
    .end local v3    # "i":I
    :cond_f
    :goto_7
    new-array v2, v0, [B
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_5

    move-object v6, v2

    .line 254
    .local v6, "noPaddingPdu":[B
    const/4 v5, 0x0

    :try_start_6
    invoke-static {v7, v5, v6, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 255
    add-int/lit8 v2, v15, -0x1

    aput-object v6, v10, v2

    .line 256
    iget-object v2, v1, Landroid/telephony/CellBroadcastService$ICellBroadcastServiceWrapper;->this$0:Landroid/telephony/CellBroadcastService;
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_3

    const/16 v19, 0x0

    const/16 v21, 0x0

    move v3, v15

    move-object v4, v10

    move/from16 v22, v5

    move-object/from16 v5, v19

    move-object/from16 v19, v6

    .end local v6    # "noPaddingPdu":[B
    .local v19, "noPaddingPdu":[B
    move/from16 v6, v21

    move-object/from16 v21, v7

    .end local v7    # "p":[B
    .local v21, "p":[B
    move/from16 v7, p1

    :try_start_7
    invoke-static/range {v2 .. v7}, Landroid/telephony/CellBroadcastService;->-$$Nest$mconvertGsmToUmtsForMultiPage(Landroid/telephony/CellBroadcastService;I[[B[BII)V

    .line 257
    .end local v0    # "pLength":I
    .end local v19    # "noPaddingPdu":[B
    .end local v21    # "p":[B
    goto :goto_9

    .line 264
    .end local v16    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/telephony/CellBroadcastService$SmsCbConcatInfo;>;"
    .end local v17    # "wacPdu":[B
    .end local v18    # "wacLength":I
    :catch_3
    move-exception v0

    move/from16 v22, v5

    goto :goto_a

    .line 258
    .restart local v16    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/telephony/CellBroadcastService$SmsCbConcatInfo;>;"
    .restart local v17    # "wacPdu":[B
    .restart local v18    # "wacLength":I
    :cond_10
    const/16 v22, 0x0

    const-string v0, "No WAC. Deliver CB without converting."

    invoke-static {v14, v0}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    array-length v0, v10

    move/from16 v5, v22

    :goto_8
    if-ge v5, v0, :cond_11

    aget-object v2, v10, v5

    .line 260
    .local v2, "p":[B
    iget-object v3, v1, Landroid/telephony/CellBroadcastService$ICellBroadcastServiceWrapper;->this$0:Landroid/telephony/CellBroadcastService;

    invoke-virtual {v3, v8, v2}, Landroid/telephony/CellBroadcastService;->onGsmCellBroadcastSms(I[B)V
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_4

    .line 259
    .end local v2    # "p":[B
    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    .line 263
    :cond_11
    :goto_9
    return-void

    .line 264
    .end local v16    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/telephony/CellBroadcastService$SmsCbConcatInfo;>;"
    .end local v17    # "wacPdu":[B
    .end local v18    # "wacLength":I
    :catch_4
    move-exception v0

    goto :goto_a

    :catch_5
    move-exception v0

    const/16 v22, 0x0

    goto :goto_a

    .end local v10    # "pdus":[[B
    .end local v20    # "concatInfo":Landroid/telephony/CellBroadcastService$SmsCbConcatInfo;
    .local v6, "pdus":[[B
    .local v7, "concatInfo":Landroid/telephony/CellBroadcastService$SmsCbConcatInfo;
    :catch_6
    move-exception v0

    move-object/from16 v20, v7

    move/from16 v22, v10

    move-object v10, v6

    .line 265
    .end local v6    # "pdus":[[B
    .end local v7    # "concatInfo":Landroid/telephony/CellBroadcastService$SmsCbConcatInfo;
    .local v0, "e":Ljava/lang/RuntimeException;
    .restart local v10    # "pdus":[[B
    .restart local v20    # "concatInfo":Landroid/telephony/CellBroadcastService$SmsCbConcatInfo;
    :goto_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in decoding SMS CB pdu"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 266
    .local v2, "errorMessage":Ljava/lang/String;
    invoke-static {v14, v2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    if-eqz v10, :cond_13

    .line 268
    array-length v3, v10

    move/from16 v4, v22

    :goto_b
    if-ge v4, v3, :cond_13

    aget-object v5, v10, v4

    .line 269
    .local v5, "p":[B
    if-eqz v5, :cond_12

    .line 270
    iget-object v6, v1, Landroid/telephony/CellBroadcastService$ICellBroadcastServiceWrapper;->this$0:Landroid/telephony/CellBroadcastService;

    invoke-virtual {v6, v8, v5}, Landroid/telephony/CellBroadcastService;->onGsmCellBroadcastSms(I[B)V

    .line 268
    .end local v5    # "p":[B
    :cond_12
    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    .line 274
    :cond_13
    return-void

    .line 277
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v2    # "errorMessage":Ljava/lang/String;
    .end local v10    # "pdus":[[B
    .end local v20    # "concatInfo":Landroid/telephony/CellBroadcastService$SmsCbConcatInfo;
    :cond_14
    iget-object v0, v1, Landroid/telephony/CellBroadcastService$ICellBroadcastServiceWrapper;->this$0:Landroid/telephony/CellBroadcastService;

    invoke-virtual {v0, v8, v12}, Landroid/telephony/CellBroadcastService;->onGsmCellBroadcastSms(I[B)V

    .line 279
    return-void
.end method
