.class Lcom/samsung/android/allshare/ProviderImpl$2;
.super Lcom/samsung/android/allshare/AllShareResponseHandler;
.source "ProviderImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/allshare/ProviderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/allshare/ProviderImpl;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/allshare/ProviderImpl;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/allshare/ProviderImpl;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 162
    iput-object p1, p0, Lcom/samsung/android/allshare/ProviderImpl$2;->this$0:Lcom/samsung/android/allshare/ProviderImpl;

    invoke-direct {p0, p2}, Lcom/samsung/android/allshare/AllShareResponseHandler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method blacklist getItemType(Landroid/os/Bundle;)Lcom/samsung/android/allshare/Item$MediaType;
    .locals 2
    .param p1, "b"    # Landroid/os/Bundle;

    .line 274
    if-nez p1, :cond_0

    .line 275
    sget-object v0, Lcom/samsung/android/allshare/Item$MediaType;->ITEM_UNKNOWN:Lcom/samsung/android/allshare/Item$MediaType;

    return-object v0

    .line 276
    :cond_0
    const-string v0, "BUNDLE_STRING_ITEM_TYPE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 277
    .local v0, "typeStr":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 278
    sget-object v1, Lcom/samsung/android/allshare/Item$MediaType;->ITEM_UNKNOWN:Lcom/samsung/android/allshare/Item$MediaType;

    return-object v1

    .line 280
    :cond_1
    invoke-static {v0}, Lcom/samsung/android/allshare/Item$MediaType;->stringToEnum(Ljava/lang/String;)Lcom/samsung/android/allshare/Item$MediaType;

    move-result-object v1

    return-object v1
.end method

.method public blacklist handleResponseMessage(Lcom/sec/android/allshare/iface/CVMessage;)V
    .locals 24
    .param p1, "cvm"    # Lcom/sec/android/allshare/iface/CVMessage;

    .line 165
    move-object/from16 v1, p0

    if-nez p1, :cond_0

    .line 166
    return-void

    .line 167
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/allshare/iface/CVMessage;->getActionID()Ljava/lang/String;

    move-result-object v2

    .line 168
    .local v2, "actionID":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/allshare/iface/CVMessage;->getBundle()Landroid/os/Bundle;

    move-result-object v3

    .line 169
    .local v3, "resBundle":Landroid/os/Bundle;
    if-eqz v2, :cond_e

    if-nez v3, :cond_1

    goto/16 :goto_f

    .line 172
    :cond_1
    nop

    .line 173
    const-string v0, "BUNDLE_PARCELABLE_CONTENT_BUNDLE_ARRAYLIST"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 174
    .local v0, "itemImpleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    if-nez v0, :cond_2

    .line 175
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v4

    goto :goto_0

    .line 174
    :cond_2
    move-object v4, v0

    .line 177
    .end local v0    # "itemImpleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    .local v4, "itemImpleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    :goto_0
    const-string v0, "BUNDLE_INT_STARTINDEX"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v12

    .line 178
    .local v12, "requestedStartIndex":I
    const-string v0, "BUNDLE_INT_REQUESTCOUNT"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v13

    .line 179
    .local v13, "reqeustedCount":I
    const-string v0, "BUNDLE_BOOLEAN_ENDOFITEM"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v14

    .line 180
    .local v14, "endOfItem":Z
    const-string v0, "BUNDLE_ENUM_ERROR"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/allshare/ERROR;->stringToEnum(Ljava/lang/String;)Lcom/samsung/android/allshare/ERROR;

    move-result-object v15

    .line 181
    .local v15, "error":Lcom/samsung/android/allshare/ERROR;
    nop

    .line 182
    const-string v0, "BUNDLE_STRING_ITEM_TYPE_ARRAYLIST"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v16

    .line 184
    .local v16, "itemTypeStrList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v0

    .line 186
    .local v11, "itemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/allshare/Item;>;"
    const/4 v0, 0x0

    .line 187
    .local v0, "type":Lcom/samsung/android/allshare/Item$MediaType;
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object/from16 v17, v0

    .end local v0    # "type":Lcom/samsung/android/allshare/Item$MediaType;
    .local v17, "type":Lcom/samsung/android/allshare/Item$MediaType;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 188
    .local v0, "b":Landroid/os/Bundle;
    invoke-virtual {v1, v0}, Lcom/samsung/android/allshare/ProviderImpl$2;->getItemType(Landroid/os/Bundle;)Lcom/samsung/android/allshare/Item$MediaType;

    move-result-object v17

    .line 189
    if-nez v17, :cond_3

    .line 190
    goto :goto_1

    .line 192
    :cond_3
    sget-object v6, Lcom/samsung/android/allshare/ProviderImpl$3;->$SwitchMap$com$samsung$android$allshare$Item$MediaType:[I

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/allshare/Item$MediaType;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 207
    return-void

    .line 203
    :pswitch_0
    new-instance v6, Lcom/samsung/android/allshare/FolderItemImpl;

    invoke-direct {v6, v0}, Lcom/samsung/android/allshare/FolderItemImpl;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 204
    goto :goto_2

    .line 200
    :pswitch_1
    new-instance v6, Lcom/samsung/android/allshare/VideoItemImpl;

    invoke-direct {v6, v0}, Lcom/samsung/android/allshare/VideoItemImpl;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 201
    goto :goto_2

    .line 197
    :pswitch_2
    new-instance v6, Lcom/samsung/android/allshare/ImageItemImpl;

    invoke-direct {v6, v0}, Lcom/samsung/android/allshare/ImageItemImpl;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    goto :goto_2

    .line 194
    :pswitch_3
    new-instance v6, Lcom/samsung/android/allshare/AudioItemImpl;

    invoke-direct {v6, v0}, Lcom/samsung/android/allshare/AudioItemImpl;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 195
    nop

    .line 209
    .end local v0    # "b":Landroid/os/Bundle;
    :goto_2
    goto :goto_1

    .line 211
    :cond_4
    const-string v0, "com.sec.android.allshare.action.ACTION_PROVIDER_REQUEST_SEARCHCRITERIA_ITEMS"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v10, "mAllShareRespHandler.handleResponseMessage Error"

    const-string v8, "mAllShareRespHandler.handleResponseMessage Exception"

    const/4 v5, 0x1

    const-string v7, "ProviderImpl"

    if-ne v0, v5, :cond_8

    .line 212
    const-string v0, "BUNDLE_STRING_SEARCHSTRING"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 213
    .local v6, "searchString":Ljava/lang/String;
    iget-object v0, v1, Lcom/samsung/android/allshare/ProviderImpl$2;->this$0:Lcom/samsung/android/allshare/ProviderImpl;

    invoke-static {v0}, Lcom/samsung/android/allshare/ProviderImpl;->-$$Nest$fgetmSearchResponseListener(Lcom/samsung/android/allshare/ProviderImpl;)Lcom/samsung/android/allshare/media/Provider$IProviderSearchResponseListener;

    move-result-object v0

    if-nez v0, :cond_5

    .line 214
    return-void

    .line 217
    :cond_5
    :try_start_0
    new-instance v0, Lcom/samsung/android/allshare/media/SearchCriteria$Builder;

    invoke-direct {v0}, Lcom/samsung/android/allshare/media/SearchCriteria$Builder;-><init>()V

    .line 218
    .local v0, "builder":Lcom/samsung/android/allshare/media/SearchCriteria$Builder;
    invoke-virtual {v0, v6}, Lcom/samsung/android/allshare/media/SearchCriteria$Builder;->setKeyword(Ljava/lang/String;)Lcom/samsung/android/allshare/media/SearchCriteria$Builder;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_8

    move-object v0, v5

    .line 220
    if-eqz v16, :cond_7

    .line 221
    :try_start_1
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 222
    .local v9, "iType":Ljava/lang/String;
    invoke-static {v9}, Lcom/samsung/android/allshare/Item$MediaType;->stringToEnum(Ljava/lang/String;)Lcom/samsung/android/allshare/Item$MediaType;

    move-result-object v18
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_2

    move-object/from16 v19, v18

    .line 223
    .local v19, "t":Lcom/samsung/android/allshare/Item$MediaType;
    move-object/from16 v18, v4

    move-object/from16 v4, v19

    .end local v19    # "t":Lcom/samsung/android/allshare/Item$MediaType;
    .local v4, "t":Lcom/samsung/android/allshare/Item$MediaType;
    .local v18, "itemImpleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    :try_start_2
    invoke-virtual {v0, v4}, Lcom/samsung/android/allshare/media/SearchCriteria$Builder;->addItemType(Lcom/samsung/android/allshare/Item$MediaType;)Lcom/samsung/android/allshare/media/SearchCriteria$Builder;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_0

    .line 224
    move-object/from16 v4, v18

    .end local v4    # "t":Lcom/samsung/android/allshare/Item$MediaType;
    .end local v9    # "iType":Ljava/lang/String;
    goto :goto_3

    .line 233
    .end local v0    # "builder":Lcom/samsung/android/allshare/media/SearchCriteria$Builder;
    :catch_0
    move-exception v0

    move-object/from16 v19, v6

    move-object v4, v7

    move-object/from16 v22, v11

    move/from16 v20, v12

    move/from16 v21, v13

    move-object v13, v10

    goto/16 :goto_5

    .line 230
    :catch_1
    move-exception v0

    move-object/from16 v19, v6

    move-object v4, v7

    move-object/from16 v22, v11

    move/from16 v20, v12

    move/from16 v21, v13

    move-object v12, v8

    goto/16 :goto_6

    .line 221
    .end local v18    # "itemImpleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    .restart local v0    # "builder":Lcom/samsung/android/allshare/media/SearchCriteria$Builder;
    .local v4, "itemImpleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    :cond_6
    move-object/from16 v18, v4

    .end local v4    # "itemImpleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    .restart local v18    # "itemImpleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    goto :goto_4

    .line 233
    .end local v0    # "builder":Lcom/samsung/android/allshare/media/SearchCriteria$Builder;
    .end local v18    # "itemImpleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    .restart local v4    # "itemImpleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    :catch_2
    move-exception v0

    move-object/from16 v18, v4

    move-object/from16 v19, v6

    move-object v4, v7

    move-object/from16 v22, v11

    move/from16 v20, v12

    move/from16 v21, v13

    move-object v13, v10

    .end local v4    # "itemImpleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    .restart local v18    # "itemImpleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    goto/16 :goto_5

    .line 230
    .end local v18    # "itemImpleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    .restart local v4    # "itemImpleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    :catch_3
    move-exception v0

    move-object/from16 v18, v4

    move-object/from16 v19, v6

    move-object v4, v7

    move-object/from16 v22, v11

    move/from16 v20, v12

    move/from16 v21, v13

    move-object v12, v8

    .end local v4    # "itemImpleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    .restart local v18    # "itemImpleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    goto/16 :goto_6

    .line 220
    .end local v18    # "itemImpleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    .restart local v0    # "builder":Lcom/samsung/android/allshare/media/SearchCriteria$Builder;
    .restart local v4    # "itemImpleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    :cond_7
    move-object/from16 v18, v4

    .line 227
    .end local v4    # "itemImpleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    .restart local v18    # "itemImpleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    :goto_4
    :try_start_3
    invoke-virtual {v0}, Lcom/samsung/android/allshare/media/SearchCriteria$Builder;->build()Lcom/samsung/android/allshare/media/SearchCriteria;

    move-result-object v9

    .line 228
    .local v9, "criteria":Lcom/samsung/android/allshare/media/SearchCriteria;
    iget-object v4, v1, Lcom/samsung/android/allshare/ProviderImpl$2;->this$0:Lcom/samsung/android/allshare/ProviderImpl;

    invoke-static {v4}, Lcom/samsung/android/allshare/ProviderImpl;->-$$Nest$fgetmSearchResponseListener(Lcom/samsung/android/allshare/ProviderImpl;)Lcom/samsung/android/allshare/media/Provider$IProviderSearchResponseListener;

    move-result-object v5
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_6

    move-object v4, v6

    .end local v6    # "searchString":Ljava/lang/String;
    .local v4, "searchString":Ljava/lang/String;
    move-object v6, v11

    move-object/from16 v19, v4

    move-object v4, v7

    .end local v4    # "searchString":Ljava/lang/String;
    .local v19, "searchString":Ljava/lang/String;
    move v7, v12

    move/from16 v20, v12

    move-object v12, v8

    .end local v12    # "requestedStartIndex":I
    .local v20, "requestedStartIndex":I
    move v8, v13

    move/from16 v21, v13

    move-object v13, v10

    .end local v13    # "reqeustedCount":I
    .local v21, "reqeustedCount":I
    move v10, v14

    move-object/from16 v22, v11

    .end local v11    # "itemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/allshare/Item;>;"
    .local v22, "itemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/allshare/Item;>;"
    move-object v11, v15

    :try_start_4
    invoke-interface/range {v5 .. v11}, Lcom/samsung/android/allshare/media/Provider$IProviderSearchResponseListener;->onSearchResponseReceived(Ljava/util/ArrayList;IILcom/samsung/android/allshare/media/SearchCriteria;ZLcom/samsung/android/allshare/ERROR;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_4} :catch_4

    .end local v0    # "builder":Lcom/samsung/android/allshare/media/SearchCriteria$Builder;
    .end local v9    # "criteria":Lcom/samsung/android/allshare/media/SearchCriteria;
    goto :goto_7

    .line 233
    :catch_4
    move-exception v0

    goto :goto_5

    .line 230
    :catch_5
    move-exception v0

    goto :goto_6

    .line 233
    .end local v19    # "searchString":Ljava/lang/String;
    .end local v20    # "requestedStartIndex":I
    .end local v21    # "reqeustedCount":I
    .end local v22    # "itemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/allshare/Item;>;"
    .restart local v6    # "searchString":Ljava/lang/String;
    .restart local v11    # "itemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/allshare/Item;>;"
    .restart local v12    # "requestedStartIndex":I
    .restart local v13    # "reqeustedCount":I
    :catch_6
    move-exception v0

    move-object/from16 v19, v6

    move-object v4, v7

    move-object/from16 v22, v11

    move/from16 v20, v12

    move/from16 v21, v13

    move-object v13, v10

    .end local v6    # "searchString":Ljava/lang/String;
    .end local v11    # "itemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/allshare/Item;>;"
    .end local v12    # "requestedStartIndex":I
    .end local v13    # "reqeustedCount":I
    .restart local v19    # "searchString":Ljava/lang/String;
    .restart local v20    # "requestedStartIndex":I
    .restart local v21    # "reqeustedCount":I
    .restart local v22    # "itemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/allshare/Item;>;"
    goto :goto_5

    .line 230
    .end local v19    # "searchString":Ljava/lang/String;
    .end local v20    # "requestedStartIndex":I
    .end local v21    # "reqeustedCount":I
    .end local v22    # "itemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/allshare/Item;>;"
    .restart local v6    # "searchString":Ljava/lang/String;
    .restart local v11    # "itemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/allshare/Item;>;"
    .restart local v12    # "requestedStartIndex":I
    .restart local v13    # "reqeustedCount":I
    :catch_7
    move-exception v0

    move-object/from16 v19, v6

    move-object v4, v7

    move-object/from16 v22, v11

    move/from16 v20, v12

    move/from16 v21, v13

    move-object v12, v8

    .end local v6    # "searchString":Ljava/lang/String;
    .end local v11    # "itemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/allshare/Item;>;"
    .end local v12    # "requestedStartIndex":I
    .end local v13    # "reqeustedCount":I
    .restart local v19    # "searchString":Ljava/lang/String;
    .restart local v20    # "requestedStartIndex":I
    .restart local v21    # "reqeustedCount":I
    .restart local v22    # "itemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/allshare/Item;>;"
    goto :goto_6

    .line 233
    .end local v18    # "itemImpleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    .end local v19    # "searchString":Ljava/lang/String;
    .end local v20    # "requestedStartIndex":I
    .end local v21    # "reqeustedCount":I
    .end local v22    # "itemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/allshare/Item;>;"
    .local v4, "itemImpleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    .restart local v6    # "searchString":Ljava/lang/String;
    .restart local v11    # "itemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/allshare/Item;>;"
    .restart local v12    # "requestedStartIndex":I
    .restart local v13    # "reqeustedCount":I
    :catch_8
    move-exception v0

    move-object/from16 v18, v4

    move-object/from16 v19, v6

    move-object v4, v7

    move-object/from16 v22, v11

    move/from16 v20, v12

    move/from16 v21, v13

    move-object v13, v10

    .line 234
    .end local v4    # "itemImpleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    .end local v6    # "searchString":Ljava/lang/String;
    .end local v11    # "itemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/allshare/Item;>;"
    .end local v12    # "requestedStartIndex":I
    .end local v13    # "reqeustedCount":I
    .local v0, "err":Ljava/lang/Error;
    .restart local v18    # "itemImpleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    .restart local v19    # "searchString":Ljava/lang/String;
    .restart local v20    # "requestedStartIndex":I
    .restart local v21    # "reqeustedCount":I
    .restart local v22    # "itemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/allshare/Item;>;"
    :goto_5
    invoke-static {v4, v13, v0}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Error;)V

    goto/16 :goto_d

    .line 230
    .end local v0    # "err":Ljava/lang/Error;
    .end local v18    # "itemImpleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    .end local v19    # "searchString":Ljava/lang/String;
    .end local v20    # "requestedStartIndex":I
    .end local v21    # "reqeustedCount":I
    .end local v22    # "itemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/allshare/Item;>;"
    .restart local v4    # "itemImpleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    .restart local v6    # "searchString":Ljava/lang/String;
    .restart local v11    # "itemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/allshare/Item;>;"
    .restart local v12    # "requestedStartIndex":I
    .restart local v13    # "reqeustedCount":I
    :catch_9
    move-exception v0

    move-object/from16 v18, v4

    move-object/from16 v19, v6

    move-object v4, v7

    move-object/from16 v22, v11

    move/from16 v20, v12

    move/from16 v21, v13

    move-object v12, v8

    .line 231
    .end local v4    # "itemImpleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    .end local v6    # "searchString":Ljava/lang/String;
    .end local v11    # "itemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/allshare/Item;>;"
    .end local v12    # "requestedStartIndex":I
    .end local v13    # "reqeustedCount":I
    .local v0, "e":Ljava/lang/Exception;
    .restart local v18    # "itemImpleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    .restart local v19    # "searchString":Ljava/lang/String;
    .restart local v20    # "requestedStartIndex":I
    .restart local v21    # "reqeustedCount":I
    .restart local v22    # "itemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/allshare/Item;>;"
    :goto_6
    invoke-static {v4, v12, v0}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 236
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_7
    goto/16 :goto_d

    .line 239
    .end local v18    # "itemImpleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    .end local v19    # "searchString":Ljava/lang/String;
    .end local v20    # "requestedStartIndex":I
    .end local v21    # "reqeustedCount":I
    .end local v22    # "itemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/allshare/Item;>;"
    .restart local v4    # "itemImpleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    .restart local v11    # "itemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/allshare/Item;>;"
    .restart local v12    # "requestedStartIndex":I
    .restart local v13    # "reqeustedCount":I
    :cond_8
    move-object/from16 v18, v4

    move-object v4, v7

    move-object/from16 v22, v11

    move/from16 v20, v12

    move/from16 v21, v13

    move-object v12, v8

    move-object v13, v10

    .end local v4    # "itemImpleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    .end local v11    # "itemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/allshare/Item;>;"
    .end local v12    # "requestedStartIndex":I
    .end local v13    # "reqeustedCount":I
    .restart local v18    # "itemImpleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    .restart local v20    # "requestedStartIndex":I
    .restart local v21    # "reqeustedCount":I
    .restart local v22    # "itemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/allshare/Item;>;"
    const-string v0, "com.sec.android.allshare.action.ACTION_PROVIDER_REQUEST_ITEMS"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v5, :cond_d

    .line 240
    nop

    .line 241
    const-string v0, "BUNDLE_PARCELABLE_FOLDERITEM"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/os/Bundle;

    .line 242
    .local v11, "bundleFolder":Landroid/os/Bundle;
    const/4 v0, 0x0

    .line 244
    .local v0, "requestedFolderItem":Lcom/samsung/android/allshare/FolderItemImpl;
    if-eqz v11, :cond_b

    .line 245
    const-string v5, "BUNDLE_STRING_OBJECT_ID"

    invoke-virtual {v11, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 247
    .local v5, "objID":Ljava/lang/String;
    if-eqz v5, :cond_a

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    goto :goto_8

    .line 250
    :cond_9
    new-instance v6, Lcom/samsung/android/allshare/FolderItemImpl;

    invoke-direct {v6, v11}, Lcom/samsung/android/allshare/FolderItemImpl;-><init>(Landroid/os/Bundle;)V

    move-object v0, v6

    move-object/from16 v19, v0

    goto :goto_9

    .line 248
    :cond_a
    :goto_8
    new-instance v6, Lcom/samsung/android/allshare/ProviderImpl$RootFolderItem;

    invoke-direct {v6, v11}, Lcom/samsung/android/allshare/ProviderImpl$RootFolderItem;-><init>(Landroid/os/Bundle;)V

    move-object v0, v6

    move-object/from16 v19, v0

    goto :goto_9

    .line 244
    .end local v5    # "objID":Ljava/lang/String;
    :cond_b
    move-object/from16 v19, v0

    .line 254
    .end local v0    # "requestedFolderItem":Lcom/samsung/android/allshare/FolderItemImpl;
    .local v19, "requestedFolderItem":Lcom/samsung/android/allshare/FolderItemImpl;
    :goto_9
    iget-object v0, v1, Lcom/samsung/android/allshare/ProviderImpl$2;->this$0:Lcom/samsung/android/allshare/ProviderImpl;

    invoke-static {v0}, Lcom/samsung/android/allshare/ProviderImpl;->-$$Nest$fgetmBrowseResponseListener(Lcom/samsung/android/allshare/ProviderImpl;)Lcom/samsung/android/allshare/media/Provider$IProviderBrowseResponseListener;

    move-result-object v0

    if-nez v0, :cond_c

    .line 255
    return-void

    .line 258
    :cond_c
    :try_start_5
    iget-object v0, v1, Lcom/samsung/android/allshare/ProviderImpl$2;->this$0:Lcom/samsung/android/allshare/ProviderImpl;

    invoke-static {v0}, Lcom/samsung/android/allshare/ProviderImpl;->-$$Nest$fgetmBrowseResponseListener(Lcom/samsung/android/allshare/ProviderImpl;)Lcom/samsung/android/allshare/media/Provider$IProviderBrowseResponseListener;

    move-result-object v5
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_d
    .catch Ljava/lang/Error; {:try_start_5 .. :try_end_5} :catch_c

    move-object/from16 v6, v22

    move/from16 v7, v20

    move/from16 v8, v21

    move-object/from16 v9, v19

    move v10, v14

    move-object/from16 v23, v11

    .end local v11    # "bundleFolder":Landroid/os/Bundle;
    .local v23, "bundleFolder":Landroid/os/Bundle;
    move-object v11, v15

    :try_start_6
    invoke-interface/range {v5 .. v11}, Lcom/samsung/android/allshare/media/Provider$IProviderBrowseResponseListener;->onBrowseResponseReceived(Ljava/util/ArrayList;IILcom/samsung/android/allshare/Item;ZLcom/samsung/android/allshare/ERROR;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_b
    .catch Ljava/lang/Error; {:try_start_6 .. :try_end_6} :catch_a

    goto :goto_c

    .line 264
    :catch_a
    move-exception v0

    goto :goto_a

    .line 261
    :catch_b
    move-exception v0

    goto :goto_b

    .line 264
    .end local v23    # "bundleFolder":Landroid/os/Bundle;
    .restart local v11    # "bundleFolder":Landroid/os/Bundle;
    :catch_c
    move-exception v0

    move-object/from16 v23, v11

    .line 265
    .end local v11    # "bundleFolder":Landroid/os/Bundle;
    .local v0, "err":Ljava/lang/Error;
    .restart local v23    # "bundleFolder":Landroid/os/Bundle;
    :goto_a
    invoke-static {v4, v13, v0}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Error;)V

    goto :goto_e

    .line 261
    .end local v0    # "err":Ljava/lang/Error;
    .end local v23    # "bundleFolder":Landroid/os/Bundle;
    .restart local v11    # "bundleFolder":Landroid/os/Bundle;
    :catch_d
    move-exception v0

    move-object/from16 v23, v11

    .line 262
    .end local v11    # "bundleFolder":Landroid/os/Bundle;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v23    # "bundleFolder":Landroid/os/Bundle;
    :goto_b
    invoke-static {v4, v12, v0}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 267
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_c
    goto :goto_e

    .line 239
    .end local v19    # "requestedFolderItem":Lcom/samsung/android/allshare/FolderItemImpl;
    .end local v23    # "bundleFolder":Landroid/os/Bundle;
    :cond_d
    :goto_d
    nop

    .line 271
    :goto_e
    return-void

    .line 170
    .end local v14    # "endOfItem":Z
    .end local v15    # "error":Lcom/samsung/android/allshare/ERROR;
    .end local v16    # "itemTypeStrList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v17    # "type":Lcom/samsung/android/allshare/Item$MediaType;
    .end local v18    # "itemImpleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    .end local v20    # "requestedStartIndex":I
    .end local v21    # "reqeustedCount":I
    .end local v22    # "itemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/allshare/Item;>;"
    :cond_e
    :goto_f
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
