.class public Lcom/samsung/android/allshare/extension/impl/BrowseMediaGetter;
.super Ljava/lang/Object;
.source "BrowseMediaGetter.java"

# interfaces
.implements Lcom/samsung/android/allshare/extension/impl/IMediaGetter;
.implements Lcom/samsung/android/allshare/media/Provider$IProviderBrowseResponseListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;
    }
.end annotation


# static fields
.field private static final blacklist DEFAULT_BROWSE_REQUEST_SIZE:I = 0x2

.field private static final blacklist DEFAULT_REQUEST_SIZE:I = 0x32

.field private static final blacklist TAG_CLASS:Ljava/lang/String; = "BrowseMediaGetter"


# instance fields
.field private blacklist mConns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/allshare/extension/impl/BrowseMediaGetter;->mConns:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public blacklist cancel(Lcom/samsung/android/allshare/extension/FlatProvider$IFlatProviderConnection;)V
    .locals 3
    .param p1, "connection"    # Lcom/samsung/android/allshare/extension/FlatProvider$IFlatProviderConnection;

    .line 156
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/impl/BrowseMediaGetter;->mConns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 157
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 158
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;

    .line 159
    .local v1, "conn":Lcom/samsung/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;
    invoke-static {v1}, Lcom/samsung/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;->-$$Nest$fgetmConn(Lcom/samsung/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;)Lcom/samsung/android/allshare/extension/FlatProvider$IFlatProviderConnection;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 160
    invoke-virtual {v1}, Lcom/samsung/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;->setCancel()V

    .line 161
    goto :goto_1

    .line 163
    .end local v1    # "conn":Lcom/samsung/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;
    :cond_0
    goto :goto_0

    .line 164
    :cond_1
    :goto_1
    invoke-interface {p1}, Lcom/samsung/android/allshare/extension/FlatProvider$IFlatProviderConnection;->onCancel()V

    .line 165
    return-void
.end method

.method public whitelist onBrowseResponseReceived(Ljava/util/ArrayList;IILcom/samsung/android/allshare/Item;ZLcom/samsung/android/allshare/ERROR;)V
    .locals 17
    .param p2, "requestedStartIndex"    # I
    .param p3, "requestedCount"    # I
    .param p4, "requestedFolderItem"    # Lcom/samsung/android/allshare/Item;
    .param p5, "endOfItems"    # Z
    .param p6, "err"    # Lcom/samsung/android/allshare/ERROR;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/allshare/Item;",
            ">;II",
            "Lcom/samsung/android/allshare/Item;",
            "Z",
            "Lcom/samsung/android/allshare/ERROR;",
            ")V"
        }
    .end annotation

    .line 200
    .local p1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/allshare/Item;>;"
    move/from16 v0, p2

    move-object/from16 v1, p4

    move/from16 v2, p5

    move-object/from16 v3, p6

    const-class v4, Lcom/samsung/android/allshare/extension/impl/BrowseMediaGetter;

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 202
    .local v5, "returnedCount":I
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 203
    .local v6, "itemIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/allshare/Item;>;"
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 204
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/allshare/Item;

    .line 205
    .local v7, "obj":Lcom/samsung/android/allshare/Item;
    invoke-virtual {v7}, Lcom/samsung/android/allshare/Item;->getType()Lcom/samsung/android/allshare/Item$MediaType;

    move-result-object v8

    sget-object v9, Lcom/samsung/android/allshare/Item$MediaType;->ITEM_UNKNOWN:Lcom/samsung/android/allshare/Item$MediaType;

    if-ne v8, v9, :cond_0

    .line 206
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    .line 208
    .end local v7    # "obj":Lcom/samsung/android/allshare/Item;
    :cond_0
    goto :goto_0

    .line 210
    :cond_1
    move-object/from16 v7, p0

    iget-object v8, v7, Lcom/samsung/android/allshare/extension/impl/BrowseMediaGetter;->mConns:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 212
    .local v8, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;>;"
    if-nez v1, :cond_2

    .line 213
    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "onBrowseResponseReceived for requestedFolderItem == null"

    invoke-static {v9, v10}, Lcom/samsung/android/allshare/DLog;->d_api(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v11, p3

    goto :goto_1

    .line 216
    :cond_2
    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onBrowseResponseReceived for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 217
    invoke-virtual/range {p4 .. p4}, Lcom/samsung/android/allshare/Item;->getTitle()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", start idx = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", req count "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v11, p3

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, ", endOfItems"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 216
    invoke-static {v9, v10}, Lcom/samsung/android/allshare/DLog;->d_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_10

    .line 221
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 222
    .local v9, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/allshare/Item;>;"
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;

    .line 224
    .local v10, "conn":Lcom/samsung/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;
    invoke-virtual {v10, v1, v0}, Lcom/samsung/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;->isCurrentBrowseRequest(Lcom/samsung/android/allshare/Item;I)Z

    move-result v12

    if-eqz v12, :cond_e

    .line 226
    sget-object v12, Lcom/samsung/android/allshare/ERROR;->SUCCESS:Lcom/samsung/android/allshare/ERROR;

    invoke-virtual {v3, v12}, Lcom/samsung/android/allshare/ERROR;->compareTo(Ljava/lang/Enum;)I

    move-result v12

    if-eqz v12, :cond_5

    .line 227
    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "browse failed for "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 228
    invoke-virtual/range {p4 .. p4}, Lcom/samsung/android/allshare/Item;->getTitle()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 227
    invoke-static {v12, v13}, Lcom/samsung/android/allshare/DLog;->d_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    sget-object v12, Lcom/samsung/android/allshare/ERROR;->FAIL:Lcom/samsung/android/allshare/ERROR;

    invoke-virtual {v3, v12}, Lcom/samsung/android/allshare/ERROR;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 231
    invoke-virtual {v10, v1}, Lcom/samsung/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;->isRetry(Lcom/samsung/android/allshare/Item;)Z

    move-result v12

    if-nez v12, :cond_3

    .line 232
    invoke-virtual {v10, v1}, Lcom/samsung/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;->setRetry(Lcom/samsung/android/allshare/Item;)V

    .line 233
    invoke-static {v10}, Lcom/samsung/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;->-$$Nest$fgetmFailedBrowseFolderStack(Lcom/samsung/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;)Ljava/util/Stack;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    invoke-static {v10}, Lcom/samsung/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;->-$$Nest$fgetmFailedBrowseFolderStartIndexMap(Lcom/samsung/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;)Ljava/util/HashMap;

    move-result-object v12

    .line 235
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    .line 234
    invoke-virtual {v12, v1, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "failed browse added "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 237
    invoke-virtual/range {p4 .. p4}, Lcom/samsung/android/allshare/Item;->getTitle()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", start "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 236
    invoke-static {v12, v13}, Lcom/samsung/android/allshare/DLog;->d_api(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v16, v6

    goto :goto_4

    .line 240
    :cond_3
    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v12

    const-string v13, "failed again, no more try"

    invoke-static {v12, v13}, Lcom/samsung/android/allshare/DLog;->d_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    invoke-virtual {v10, v1}, Lcom/samsung/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;->removeRetry(Lcom/samsung/android/allshare/Item;)V

    move-object/from16 v16, v6

    goto :goto_4

    .line 245
    :cond_4
    invoke-virtual {v10, v3}, Lcom/samsung/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;->onError(Lcom/samsung/android/allshare/ERROR;)V

    .line 246
    goto/16 :goto_1

    .line 290
    :cond_5
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_8

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/samsung/android/allshare/Item;

    .line 291
    .local v13, "i":Lcom/samsung/android/allshare/Item;
    invoke-virtual {v10, v13}, Lcom/samsung/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;->isMathchingItem(Lcom/samsung/android/allshare/Item;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 292
    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 294
    :cond_6
    invoke-virtual {v13}, Lcom/samsung/android/allshare/Item;->getType()Lcom/samsung/android/allshare/Item$MediaType;

    move-result-object v14

    sget-object v15, Lcom/samsung/android/allshare/Item$MediaType;->ITEM_FOLDER:Lcom/samsung/android/allshare/Item$MediaType;

    if-ne v14, v15, :cond_7

    .line 295
    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v6

    .end local v6    # "itemIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/allshare/Item;>;"
    .local v16, "itemIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/allshare/Item;>;"
    const-string v6, "container stacking + "

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 296
    invoke-virtual {v13}, Lcom/samsung/android/allshare/Item;->getTitle()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 295
    invoke-static {v14, v6}, Lcom/samsung/android/allshare/DLog;->d_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    invoke-static {v10}, Lcom/samsung/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;->-$$Nest$fgetmFutureBrowseFolderStack(Lcom/samsung/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;)Ljava/util/Stack;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 294
    .end local v16    # "itemIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/allshare/Item;>;"
    .restart local v6    # "itemIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/allshare/Item;>;"
    :cond_7
    move-object/from16 v16, v6

    .line 299
    .end local v6    # "itemIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/allshare/Item;>;"
    .end local v13    # "i":Lcom/samsung/android/allshare/Item;
    .restart local v16    # "itemIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/allshare/Item;>;"
    :goto_3
    move-object/from16 v6, v16

    goto :goto_2

    .line 290
    .end local v16    # "itemIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/allshare/Item;>;"
    .restart local v6    # "itemIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/allshare/Item;>;"
    :cond_8
    move-object/from16 v16, v6

    .line 303
    .end local v6    # "itemIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/allshare/Item;>;"
    .restart local v16    # "itemIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/allshare/Item;>;"
    :goto_4
    invoke-virtual {v10}, Lcom/samsung/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;->isCanceled()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 304
    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    const-string v12, "conn is canceled.."

    invoke-static {v6, v12}, Lcom/samsung/android/allshare/DLog;->d_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    invoke-interface {v8}, Ljava/util/Iterator;->remove()V

    .line 306
    move-object/from16 v6, v16

    goto/16 :goto_1

    .line 309
    :cond_9
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_a

    .line 310
    invoke-virtual {v10, v9}, Lcom/samsung/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;->onProgress(Ljava/util/ArrayList;)V

    .line 311
    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 315
    :cond_a
    invoke-static {v10}, Lcom/samsung/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;->-$$Nest$fgetmCurrentBrowseMap(Lcom/samsung/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "endOfItems=="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", err="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 318
    invoke-virtual/range {p6 .. p6}, Lcom/samsung/android/allshare/ERROR;->enumToString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", conn.mFutureBrowseFolderStack.size() ="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v10}, Lcom/samsung/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;->-$$Nest$fgetmFutureBrowseFolderStack(Lcom/samsung/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;)Ljava/util/Stack;

    move-result-object v13

    .line 319
    invoke-virtual {v13}, Ljava/util/Stack;->size()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", conn.mFailedBrowseFolderStack.size() ="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v10}, Lcom/samsung/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;->-$$Nest$fgetmFailedBrowseFolderStack(Lcom/samsung/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;)Ljava/util/Stack;

    move-result-object v13

    .line 321
    invoke-virtual {v13}, Ljava/util/Stack;->size()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", conn.mCurrentBrowseMap.size() ="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v10}, Lcom/samsung/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;->-$$Nest$fgetmCurrentBrowseMap(Lcom/samsung/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;)Ljava/util/HashMap;

    move-result-object v13

    .line 322
    invoke-virtual {v13}, Ljava/util/HashMap;->size()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 317
    invoke-static {v6, v12}, Lcom/samsung/android/allshare/DLog;->d_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    const/16 v6, 0x32

    if-nez v2, :cond_b

    sget-object v12, Lcom/samsung/android/allshare/ERROR;->SUCCESS:Lcom/samsung/android/allshare/ERROR;

    invoke-virtual {v3, v12}, Lcom/samsung/android/allshare/ERROR;->compareTo(Ljava/lang/Enum;)I

    move-result v12

    if-nez v12, :cond_b

    .line 326
    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "browse reamin contents "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 327
    invoke-virtual/range {p4 .. p4}, Lcom/samsung/android/allshare/Item;->getTitle()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " idx = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 326
    invoke-static {v12, v13}, Lcom/samsung/android/allshare/DLog;->d_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    add-int v12, v0, v5

    invoke-virtual {v10, v1, v12}, Lcom/samsung/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;->setCurrentBrowseRequest(Lcom/samsung/android/allshare/Item;I)V

    .line 331
    invoke-static {v10}, Lcom/samsung/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;->-$$Nest$fgetmProvider(Lcom/samsung/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;)Lcom/samsung/android/allshare/media/Provider;

    move-result-object v12

    add-int v13, v0, v5

    invoke-virtual {v12, v1, v13, v6}, Lcom/samsung/android/allshare/media/Provider;->browse(Lcom/samsung/android/allshare/Item;II)V

    goto/16 :goto_6

    .line 334
    :cond_b
    invoke-static {v10}, Lcom/samsung/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;->-$$Nest$fgetmFutureBrowseFolderStack(Lcom/samsung/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;)Ljava/util/Stack;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/Stack;->size()I

    move-result v12

    if-lez v12, :cond_c

    .line 336
    :goto_5
    invoke-static {v10}, Lcom/samsung/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;->-$$Nest$fgetmFutureBrowseFolderStack(Lcom/samsung/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;)Ljava/util/Stack;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/Stack;->size()I

    move-result v12

    if-lez v12, :cond_f

    invoke-static {v10}, Lcom/samsung/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;->-$$Nest$fgetmCurrentBrowseMap(Lcom/samsung/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;)Ljava/util/HashMap;

    move-result-object v12

    .line 337
    invoke-virtual {v12}, Ljava/util/HashMap;->size()I

    move-result v12

    const/4 v13, 0x2

    if-ge v12, v13, :cond_f

    .line 338
    invoke-static {v10}, Lcom/samsung/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;->-$$Nest$fgetmFutureBrowseFolderStack(Lcom/samsung/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;)Ljava/util/Stack;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/samsung/android/allshare/Item;

    .line 339
    .local v12, "currentBrowseFolder":Lcom/samsung/android/allshare/Item;
    const/4 v13, 0x0

    invoke-virtual {v10, v12, v13}, Lcom/samsung/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;->setCurrentBrowseRequest(Lcom/samsung/android/allshare/Item;I)V

    .line 340
    invoke-static {v10}, Lcom/samsung/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;->-$$Nest$fgetmProvider(Lcom/samsung/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;)Lcom/samsung/android/allshare/media/Provider;

    move-result-object v14

    invoke-virtual {v14, v12, v13, v6}, Lcom/samsung/android/allshare/media/Provider;->browse(Lcom/samsung/android/allshare/Item;II)V

    .line 342
    nop

    .line 343
    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "browse stacked container ["

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 344
    invoke-virtual {v12}, Lcom/samsung/android/allshare/Item;->getTitle()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "], remained size = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {v10}, Lcom/samsung/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;->-$$Nest$fgetmFutureBrowseFolderStack(Lcom/samsung/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;)Ljava/util/Stack;

    move-result-object v15

    .line 346
    invoke-virtual {v15}, Ljava/util/Stack;->size()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 342
    invoke-static {v13, v14}, Lcom/samsung/android/allshare/DLog;->d_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    .end local v12    # "currentBrowseFolder":Lcom/samsung/android/allshare/Item;
    goto :goto_5

    .line 348
    :cond_c
    invoke-static {v10}, Lcom/samsung/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;->-$$Nest$fgetmFailedBrowseFolderStack(Lcom/samsung/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;)Ljava/util/Stack;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/Stack;->size()I

    move-result v12

    if-lez v12, :cond_d

    .line 350
    invoke-static {v10}, Lcom/samsung/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;->-$$Nest$fgetmFailedBrowseFolderStack(Lcom/samsung/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;)Ljava/util/Stack;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/samsung/android/allshare/Item;

    .line 351
    .restart local v12    # "currentBrowseFolder":Lcom/samsung/android/allshare/Item;
    invoke-static {v10}, Lcom/samsung/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;->-$$Nest$fgetmFailedBrowseFolderStartIndexMap(Lcom/samsung/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;)Ljava/util/HashMap;

    move-result-object v13

    .line 352
    invoke-virtual {v13, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    .line 353
    .local v13, "startIndex":Ljava/lang/Integer;
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v10, v12, v14}, Lcom/samsung/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;->setCurrentBrowseRequest(Lcom/samsung/android/allshare/Item;I)V

    .line 354
    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "brwose failed container ["

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 355
    invoke-virtual {v12}, Lcom/samsung/android/allshare/Item;->getTitle()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v15, "], start "

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v15, ", remained size = "

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v10}, Lcom/samsung/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;->-$$Nest$fgetmFailedBrowseFolderStack(Lcom/samsung/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;)Ljava/util/Stack;

    move-result-object v15

    .line 356
    invoke-virtual {v15}, Ljava/util/Stack;->size()I

    move-result v15

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 354
    invoke-static {v14, v6}, Lcom/samsung/android/allshare/DLog;->d_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    invoke-static {v10}, Lcom/samsung/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;->-$$Nest$fgetmProvider(Lcom/samsung/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;)Lcom/samsung/android/allshare/media/Provider;

    move-result-object v6

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v14

    const/16 v15, 0x32

    invoke-virtual {v6, v12, v14, v15}, Lcom/samsung/android/allshare/media/Provider;->browse(Lcom/samsung/android/allshare/Item;II)V

    .line 359
    .end local v12    # "currentBrowseFolder":Lcom/samsung/android/allshare/Item;
    .end local v13    # "startIndex":Ljava/lang/Integer;
    goto :goto_6

    .line 360
    :cond_d
    invoke-static {v10}, Lcom/samsung/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;->-$$Nest$fgetmCurrentBrowseMap(Lcom/samsung/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    if-gtz v6, :cond_f

    .line 361
    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    const-string v12, "FINISHED "

    invoke-static {v6, v12}, Lcom/samsung/android/allshare/DLog;->d_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    invoke-virtual {v10}, Lcom/samsung/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;->onFinish()V

    goto :goto_6

    .line 224
    .end local v16    # "itemIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/allshare/Item;>;"
    .restart local v6    # "itemIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/allshare/Item;>;"
    :cond_e
    move-object/from16 v16, v6

    .line 367
    .end local v6    # "itemIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/allshare/Item;>;"
    .end local v9    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/allshare/Item;>;"
    .end local v10    # "conn":Lcom/samsung/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;
    .restart local v16    # "itemIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/allshare/Item;>;"
    :cond_f
    :goto_6
    move-object/from16 v6, v16

    goto/16 :goto_1

    .line 368
    .end local v16    # "itemIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/allshare/Item;>;"
    .restart local v6    # "itemIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/allshare/Item;>;"
    :cond_10
    return-void
.end method

.method public blacklist start(Lcom/samsung/android/allshare/media/Provider;Lcom/samsung/android/allshare/Item$MediaType;Lcom/samsung/android/allshare/extension/FlatProvider$IFlatProviderConnection;)V
    .locals 1
    .param p1, "provider"    # Lcom/samsung/android/allshare/media/Provider;
    .param p2, "type"    # Lcom/samsung/android/allshare/Item$MediaType;
    .param p3, "callback"    # Lcom/samsung/android/allshare/extension/FlatProvider$IFlatProviderConnection;

    .line 190
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 191
    .local v0, "types":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/allshare/Item$MediaType;>;"
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    invoke-virtual {p0, p1, v0, p3}, Lcom/samsung/android/allshare/extension/impl/BrowseMediaGetter;->start(Lcom/samsung/android/allshare/media/Provider;Ljava/util/ArrayList;Lcom/samsung/android/allshare/extension/FlatProvider$IFlatProviderConnection;)V

    .line 194
    return-void
.end method

.method public blacklist start(Lcom/samsung/android/allshare/media/Provider;Ljava/util/ArrayList;Lcom/samsung/android/allshare/extension/FlatProvider$IFlatProviderConnection;)V
    .locals 5
    .param p1, "provider"    # Lcom/samsung/android/allshare/media/Provider;
    .param p3, "connection"    # Lcom/samsung/android/allshare/extension/FlatProvider$IFlatProviderConnection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/allshare/media/Provider;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/allshare/Item$MediaType;",
            ">;",
            "Lcom/samsung/android/allshare/extension/FlatProvider$IFlatProviderConnection;",
            ")V"
        }
    .end annotation

    .line 170
    .local p2, "types":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/allshare/Item$MediaType;>;"
    if-eqz p1, :cond_1

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/samsung/android/allshare/Item$MediaType;->ITEM_UNKNOWN:Lcom/samsung/android/allshare/Item$MediaType;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/samsung/android/allshare/Item$MediaType;->ITEM_FOLDER:Lcom/samsung/android/allshare/Item$MediaType;

    .line 171
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 177
    :cond_0
    invoke-interface {p3}, Lcom/samsung/android/allshare/extension/FlatProvider$IFlatProviderConnection;->onStart()V

    .line 178
    invoke-virtual {p1, p0}, Lcom/samsung/android/allshare/media/Provider;->setBrowseItemsResponseListener(Lcom/samsung/android/allshare/media/Provider$IProviderBrowseResponseListener;)V

    .line 180
    new-instance v0, Lcom/samsung/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;

    invoke-direct {v0, p2, p3, p1}, Lcom/samsung/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;-><init>(Ljava/util/ArrayList;Lcom/samsung/android/allshare/extension/FlatProvider$IFlatProviderConnection;Lcom/samsung/android/allshare/media/Provider;)V

    .line 182
    .local v0, "conn":Lcom/samsung/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;
    iget-object v1, p0, Lcom/samsung/android/allshare/extension/impl/BrowseMediaGetter;->mConns:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    invoke-virtual {p1}, Lcom/samsung/android/allshare/media/Provider;->getRootFolder()Lcom/samsung/android/allshare/Item;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;->setCurrentBrowseRequest(Lcom/samsung/android/allshare/Item;I)V

    .line 185
    invoke-static {v0}, Lcom/samsung/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;->-$$Nest$fgetmProvider(Lcom/samsung/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;)Lcom/samsung/android/allshare/media/Provider;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/allshare/media/Provider;->getRootFolder()Lcom/samsung/android/allshare/Item;

    move-result-object v3

    const/16 v4, 0x32

    invoke-virtual {v1, v3, v2, v4}, Lcom/samsung/android/allshare/media/Provider;->browse(Lcom/samsung/android/allshare/Item;II)V

    .line 186
    return-void

    .line 172
    .end local v0    # "conn":Lcom/samsung/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;
    :cond_1
    :goto_0
    sget-object v0, Lcom/samsung/android/allshare/ERROR;->INVALID_ARGUMENT:Lcom/samsung/android/allshare/ERROR;

    invoke-interface {p3, v0}, Lcom/samsung/android/allshare/extension/FlatProvider$IFlatProviderConnection;->onError(Lcom/samsung/android/allshare/ERROR;)V

    .line 173
    return-void
.end method
