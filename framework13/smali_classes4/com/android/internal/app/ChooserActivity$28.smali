.class Lcom/android/internal/app/ChooserActivity$28;
.super Landroid/os/AsyncTask;
.source "ChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/ChooserActivity;->semLoadFavoriteSetFromProvider()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/app/ChooserActivity;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/app/ChooserActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/app/ChooserActivity;

    .line 11792
    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$28;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic whitelist doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 11792
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/internal/app/ChooserActivity$28;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs blacklist doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 17
    .param p1, "params"    # [Ljava/lang/Void;

    .line 11796
    move-object/from16 v1, p0

    const-string/jumbo v0, "rank_app_item_array"

    const-string v2, "ChooserActivity"

    const/4 v3, 0x0

    :try_start_0
    const-string/jumbo v4, "start semLoadFavoriteSetFromProvider do in background"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 11797
    iget-object v4, v1, Lcom/android/internal/app/ChooserActivity$28;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v4, v4, Lcom/android/internal/app/ChooserActivity;->mCopyFavoriteSetFromProvider:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 11798
    iget-object v4, v1, Lcom/android/internal/app/ChooserActivity$28;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v4, v4, Lcom/android/internal/app/ChooserActivity;->mCopyFavoriteSetFromProvider:Ljava/util/ArrayList;

    iget-object v5, v1, Lcom/android/internal/app/ChooserActivity$28;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v5, v5, Lcom/android/internal/app/ChooserActivity;->mFavoriteSetFromProvider:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 11799
    iget-object v4, v1, Lcom/android/internal/app/ChooserActivity$28;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v4, v4, Lcom/android/internal/app/ChooserActivity;->mFavoriteSetFromProvider:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 11800
    iget-object v4, v1, Lcom/android/internal/app/ChooserActivity$28;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v4}, Lcom/android/internal/app/ChooserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 11801
    .local v4, "cr":Landroid/content/ContentResolver;
    sget-object v5, Lcom/samsung/android/share/SemShareConstants;->SELECT_APP_PROVIDER_AUTHORITY_URI:Landroid/net/Uri;

    const-string v6, "com.samsung.android.settings.share.GetData"

    const-string v7, "Chooser"

    invoke-virtual {v4, v5, v6, v7, v3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v5

    .line 11803
    .local v5, "bundle":Landroid/os/Bundle;
    if-eqz v5, :cond_5

    .line 11804
    const-string v6, "array_result"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 11805
    .local v6, "bundleResult":Ljava/lang/Object;
    if-nez v6, :cond_0

    .line 11806
    const-string/jumbo v0, "semLoadFavoriteSetFromProvider: Null Array Result bundle data"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 11808
    :cond_0
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 11809
    .local v7, "resultString":Ljava/lang/String;
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 11811
    .local v8, "jsonObject":Lorg/json/JSONObject;
    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 11812
    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 11813
    .local v0, "jsonArrayRankItems":Lorg/json/JSONArray;
    if-nez v0, :cond_1

    .line 11814
    const-string/jumbo v9, "semLoadFavoriteSetFromProvider: Null Rank app JSONArray data from Result Object"

    invoke-static {v2, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 11816
    :cond_1
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v9, v10, :cond_3

    .line 11817
    invoke-virtual {v0, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 11818
    .local v10, "object":Lorg/json/JSONObject;
    if-nez v10, :cond_2

    .line 11819
    const-string/jumbo v11, "semLoadFavoriteSetFromProvider: Null rank package JSONObjct"

    invoke-static {v2, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11820
    move-object/from16 v16, v4

    goto :goto_1

    .line 11823
    :cond_2
    const-string/jumbo v11, "packageName"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 11824
    .local v11, "packageName":Ljava/lang/String;
    const-string v12, "activityName"

    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 11825
    .local v12, "activityName":Ljava/lang/String;
    const-string/jumbo v13, "uid"

    invoke-virtual {v10, v13}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v13

    .line 11826
    .local v13, "userId":I
    iget-object v14, v1, Lcom/android/internal/app/ChooserActivity$28;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v14, v14, Lcom/android/internal/app/ChooserActivity;->mFavoriteSetFromProvider:Ljava/util/ArrayList;

    new-instance v15, Lcom/android/internal/app/ChooserActivity$SemFavoriteAppSource;

    new-instance v3, Landroid/content/ComponentName;

    invoke-direct {v3, v11, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v16, v4

    const/4 v4, 0x0

    .end local v4    # "cr":Landroid/content/ContentResolver;
    .local v16, "cr":Landroid/content/ContentResolver;
    invoke-direct {v15, v3, v13, v4}, Lcom/android/internal/app/ChooserActivity$SemFavoriteAppSource;-><init>(Landroid/content/ComponentName;ILcom/android/internal/app/ChooserActivity$SemFavoriteAppSource-IA;)V

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11816
    nop

    .end local v10    # "object":Lorg/json/JSONObject;
    .end local v11    # "packageName":Ljava/lang/String;
    .end local v12    # "activityName":Ljava/lang/String;
    .end local v13    # "userId":I
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v4, v16

    const/4 v3, 0x0

    goto :goto_0

    .end local v16    # "cr":Landroid/content/ContentResolver;
    .restart local v4    # "cr":Landroid/content/ContentResolver;
    :cond_3
    move-object/from16 v16, v4

    .line 11828
    .end local v4    # "cr":Landroid/content/ContentResolver;
    .end local v9    # "i":I
    .restart local v16    # "cr":Landroid/content/ContentResolver;
    :goto_1
    iget-object v3, v1, Lcom/android/internal/app/ChooserActivity$28;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v4, v3, Lcom/android/internal/app/ChooserActivity;->mFavoriteSetFromProvider:Ljava/util/ArrayList;

    iget-object v9, v1, Lcom/android/internal/app/ChooserActivity$28;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v9, v9, Lcom/android/internal/app/ChooserActivity;->mCopyFavoriteSetFromProvider:Ljava/util/ArrayList;

    invoke-static {v3, v4, v9}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$msemInsertShareLogEditAction(Lcom/android/internal/app/ChooserActivity;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 11811
    .end local v0    # "jsonArrayRankItems":Lorg/json/JSONArray;
    .end local v16    # "cr":Landroid/content/ContentResolver;
    .restart local v4    # "cr":Landroid/content/ContentResolver;
    :cond_4
    move-object/from16 v16, v4

    .end local v4    # "cr":Landroid/content/ContentResolver;
    .restart local v16    # "cr":Landroid/content/ContentResolver;
    goto :goto_2

    .line 11803
    .end local v6    # "bundleResult":Ljava/lang/Object;
    .end local v7    # "resultString":Ljava/lang/String;
    .end local v8    # "jsonObject":Lorg/json/JSONObject;
    .end local v16    # "cr":Landroid/content/ContentResolver;
    .restart local v4    # "cr":Landroid/content/ContentResolver;
    :cond_5
    move-object/from16 v16, v4

    .end local v4    # "cr":Landroid/content/ContentResolver;
    .restart local v16    # "cr":Landroid/content/ContentResolver;
    goto :goto_2

    .line 11837
    .end local v5    # "bundle":Landroid/os/Bundle;
    .end local v16    # "cr":Landroid/content/ContentResolver;
    :catch_0
    move-exception v0

    .line 11838
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 11835
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    goto :goto_2

    .line 11833
    :catch_2
    move-exception v0

    .line 11834
    .local v0, "e":Lorg/json/JSONException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ShareStar JSON exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11839
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_2
    nop

    .line 11841
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "semLoadFavoriteSetFromProvider.size = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, v1, Lcom/android/internal/app/ChooserActivity$28;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v3, v3, Lcom/android/internal/app/ChooserActivity;->mFavoriteSetFromProvider:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 11842
    const/4 v2, 0x0

    return-object v2
.end method
