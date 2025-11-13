.class Landroid/drm/DrmManagerClient$EventHandler;
.super Landroid/os/Handler;
.source "DrmManagerClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/drm/DrmManagerClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/drm/DrmManagerClient;


# direct methods
.method public constructor blacklist <init>(Landroid/drm/DrmManagerClient;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .line 161
    iput-object p1, p0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    .line 162
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 163
    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .line 166
    const/4 v0, 0x0

    .line 167
    .local v0, "event":Landroid/drm/DrmEvent;
    const/4 v1, 0x0

    .line 168
    .local v1, "error":Landroid/drm/DrmErrorEvent;
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 170
    .local v2, "attributes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iget v3, p1, Landroid/os/Message;->what:I

    const-string v4, "DrmManagerClient"

    const/4 v5, 0x0

    packed-switch v3, :pswitch_data_0

    .line 238
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown message type "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    return-void

    .line 172
    :pswitch_0
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/drm/DrmInfo;

    .line 174
    .local v3, "drmInfo":Landroid/drm/DrmInfo;
    const-string v6, "drm_path"

    invoke-virtual {v3, v6}, Landroid/drm/DrmInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 175
    .local v6, "filepath":Ljava/lang/String;
    const/4 v7, 0x0

    .line 176
    .local v7, "fis":Ljava/io/FileInputStream;
    const-string v8, ""

    .line 178
    .local v8, "FD":Ljava/lang/String;
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_0

    .line 180
    :try_start_0
    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, v6}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v7, v9

    .line 181
    invoke-virtual {v7}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v9

    .line 182
    .local v9, "fd":Ljava/io/FileDescriptor;
    iget-object v10, p0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    invoke-virtual {v10, v9}, Landroid/drm/DrmManagerClient;->setFD(Ljava/io/FileDescriptor;)Ljava/lang/String;

    move-result-object v10

    move-object v8, v10

    .line 183
    const-string v10, "FileDescriptorKey"

    invoke-virtual {v3, v10, v8}, Landroid/drm/DrmInfo;->put(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    .end local v9    # "fd":Ljava/io/FileDescriptor;
    goto :goto_0

    .line 185
    :catch_0
    move-exception v9

    .line 186
    .local v9, "e":Ljava/io/IOException;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Exception the file "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v9}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    .end local v9    # "e":Ljava/io/IOException;
    :cond_0
    :goto_0
    iget-object v4, p0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    invoke-static {v4}, Landroid/drm/DrmManagerClient;->-$$Nest$fgetmUniqueId(Landroid/drm/DrmManagerClient;)I

    move-result v9

    invoke-static {v4, v9, v3}, Landroid/drm/DrmManagerClient;->-$$Nest$m_processDrmInfo(Landroid/drm/DrmManagerClient;ILandroid/drm/DrmInfo;)Landroid/drm/DrmInfoStatus;

    move-result-object v4

    .line 192
    .local v4, "status":Landroid/drm/DrmInfoStatus;
    const-string v9, "drm_info_status_object"

    invoke-virtual {v2, v9, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    const-string v9, "drm_info_object"

    invoke-virtual {v2, v9, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    if-eqz v7, :cond_1

    .line 197
    :try_start_1
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 198
    :goto_1
    goto :goto_2

    :catch_1
    move-exception v9

    goto :goto_1

    .line 201
    :cond_1
    :goto_2
    if-eqz v4, :cond_2

    const/4 v9, 0x1

    iget v10, v4, Landroid/drm/DrmInfoStatus;->statusCode:I

    if-ne v9, v10, :cond_2

    .line 202
    new-instance v9, Landroid/drm/DrmEvent;

    iget-object v10, p0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    invoke-static {v10}, Landroid/drm/DrmManagerClient;->-$$Nest$fgetmUniqueId(Landroid/drm/DrmManagerClient;)I

    move-result v10

    iget-object v11, p0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    iget v12, v4, Landroid/drm/DrmInfoStatus;->infoType:I

    .line 203
    invoke-static {v11, v12}, Landroid/drm/DrmManagerClient;->-$$Nest$mgetEventType(Landroid/drm/DrmManagerClient;I)I

    move-result v11

    invoke-direct {v9, v10, v11, v5, v2}, Landroid/drm/DrmEvent;-><init>(IILjava/lang/String;Ljava/util/HashMap;)V

    move-object v0, v9

    goto/16 :goto_5

    .line 205
    :cond_2
    if-eqz v4, :cond_3

    iget v9, v4, Landroid/drm/DrmInfoStatus;->infoType:I

    goto :goto_3

    :cond_3
    invoke-virtual {v3}, Landroid/drm/DrmInfo;->getInfoType()I

    move-result v9

    .line 208
    .local v9, "infoType":I
    :goto_3
    if-eqz v4, :cond_4

    iget-object v10, v4, Landroid/drm/DrmInfoStatus;->data:Landroid/drm/ProcessedData;

    invoke-virtual {v10}, Landroid/drm/ProcessedData;->getData()[B

    move-result-object v10

    if-eqz v10, :cond_4

    .line 209
    iget-object v5, v4, Landroid/drm/DrmInfoStatus;->data:Landroid/drm/ProcessedData;

    invoke-virtual {v5}, Landroid/drm/ProcessedData;->getData()[B

    move-result-object v5

    .line 210
    .local v5, "bytes":[B
    new-instance v10, Ljava/lang/String;

    sget-object v11, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v10, v5, v11}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 213
    .local v10, "url":Ljava/lang/String;
    new-instance v11, Landroid/drm/DrmErrorEvent;

    iget-object v12, p0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    invoke-static {v12}, Landroid/drm/DrmManagerClient;->-$$Nest$fgetmUniqueId(Landroid/drm/DrmManagerClient;)I

    move-result v12

    iget-object v13, p0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    invoke-static {v13, v9, v4}, Landroid/drm/DrmManagerClient;->-$$Nest$mgetErrorType(Landroid/drm/DrmManagerClient;ILandroid/drm/DrmInfoStatus;)I

    move-result v13

    invoke-direct {v11, v12, v13, v10, v2}, Landroid/drm/DrmErrorEvent;-><init>(IILjava/lang/String;Ljava/util/HashMap;)V

    move-object v1, v11

    .line 214
    .end local v5    # "bytes":[B
    .end local v10    # "url":Ljava/lang/String;
    goto :goto_4

    .line 216
    :cond_4
    new-instance v10, Landroid/drm/DrmErrorEvent;

    iget-object v11, p0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    invoke-static {v11}, Landroid/drm/DrmManagerClient;->-$$Nest$fgetmUniqueId(Landroid/drm/DrmManagerClient;)I

    move-result v11

    iget-object v12, p0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    invoke-static {v12, v9, v4}, Landroid/drm/DrmManagerClient;->-$$Nest$mgetErrorType(Landroid/drm/DrmManagerClient;ILandroid/drm/DrmInfoStatus;)I

    move-result v12

    invoke-direct {v10, v11, v12, v5, v2}, Landroid/drm/DrmErrorEvent;-><init>(IILjava/lang/String;Ljava/util/HashMap;)V

    move-object v1, v10

    .line 226
    .end local v9    # "infoType":I
    :goto_4
    goto :goto_5

    .line 229
    .end local v3    # "drmInfo":Landroid/drm/DrmInfo;
    .end local v4    # "status":Landroid/drm/DrmInfoStatus;
    .end local v6    # "filepath":Ljava/lang/String;
    .end local v7    # "fis":Ljava/io/FileInputStream;
    .end local v8    # "FD":Ljava/lang/String;
    :pswitch_1
    iget-object v3, p0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    invoke-static {v3}, Landroid/drm/DrmManagerClient;->-$$Nest$fgetmUniqueId(Landroid/drm/DrmManagerClient;)I

    move-result v4

    invoke-static {v3, v4}, Landroid/drm/DrmManagerClient;->-$$Nest$m_removeAllRights(Landroid/drm/DrmManagerClient;I)I

    move-result v3

    if-nez v3, :cond_5

    .line 230
    new-instance v3, Landroid/drm/DrmEvent;

    iget-object v4, p0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    invoke-static {v4}, Landroid/drm/DrmManagerClient;->-$$Nest$fgetmUniqueId(Landroid/drm/DrmManagerClient;)I

    move-result v4

    const/16 v6, 0x3e9

    invoke-direct {v3, v4, v6, v5}, Landroid/drm/DrmEvent;-><init>(IILjava/lang/String;)V

    move-object v0, v3

    goto :goto_5

    .line 232
    :cond_5
    new-instance v3, Landroid/drm/DrmErrorEvent;

    iget-object v4, p0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    invoke-static {v4}, Landroid/drm/DrmManagerClient;->-$$Nest$fgetmUniqueId(Landroid/drm/DrmManagerClient;)I

    move-result v4

    const/16 v6, 0x7d7

    invoke-direct {v3, v4, v6, v5}, Landroid/drm/DrmErrorEvent;-><init>(IILjava/lang/String;)V

    move-object v1, v3

    .line 235
    nop

    .line 241
    :goto_5
    iget-object v3, p0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    invoke-static {v3}, Landroid/drm/DrmManagerClient;->-$$Nest$fgetmOnEventListener(Landroid/drm/DrmManagerClient;)Landroid/drm/DrmManagerClient$OnEventListener;

    move-result-object v3

    if-eqz v3, :cond_6

    if-eqz v0, :cond_6

    .line 242
    iget-object v3, p0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    invoke-static {v3}, Landroid/drm/DrmManagerClient;->-$$Nest$fgetmOnEventListener(Landroid/drm/DrmManagerClient;)Landroid/drm/DrmManagerClient$OnEventListener;

    move-result-object v3

    iget-object v4, p0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    invoke-interface {v3, v4, v0}, Landroid/drm/DrmManagerClient$OnEventListener;->onEvent(Landroid/drm/DrmManagerClient;Landroid/drm/DrmEvent;)V

    .line 244
    :cond_6
    iget-object v3, p0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    invoke-static {v3}, Landroid/drm/DrmManagerClient;->-$$Nest$fgetmOnErrorListener(Landroid/drm/DrmManagerClient;)Landroid/drm/DrmManagerClient$OnErrorListener;

    move-result-object v3

    if-eqz v3, :cond_7

    if-eqz v1, :cond_7

    .line 245
    iget-object v3, p0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    invoke-static {v3}, Landroid/drm/DrmManagerClient;->-$$Nest$fgetmOnErrorListener(Landroid/drm/DrmManagerClient;)Landroid/drm/DrmManagerClient$OnErrorListener;

    move-result-object v3

    iget-object v4, p0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    invoke-interface {v3, v4, v1}, Landroid/drm/DrmManagerClient$OnErrorListener;->onError(Landroid/drm/DrmManagerClient;Landroid/drm/DrmErrorEvent;)V

    .line 247
    :cond_7
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
