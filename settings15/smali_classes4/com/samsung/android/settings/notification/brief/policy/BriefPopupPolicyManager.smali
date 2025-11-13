.class public final Lcom/samsung/android/settings/notification/brief/policy/BriefPopupPolicyManager;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static mInstance:Lcom/samsung/android/settings/notification/brief/policy/BriefPopupPolicyManager;


# instance fields
.field public mPolicyInfoData:Landroid/util/SparseArray;

.field public mPolicyType:I

.field public mPolicyVersion:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lcom/samsung/android/settings/notification/brief/policy/PolicyClientContract$PolicyItems;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "EdgeLighting"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/notification/brief/policy/BriefPopupPolicyManager;
    .locals 25

    move-object/from16 v1, p0

    sget-object v0, Lcom/samsung/android/settings/notification/brief/policy/BriefPopupPolicyManager;->mInstance:Lcom/samsung/android/settings/notification/brief/policy/BriefPopupPolicyManager;

    if-nez v0, :cond_29

    new-instance v3, Lcom/samsung/android/settings/notification/brief/policy/BriefPopupPolicyManager;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    const/4 v4, 0x0

    iput v4, v3, Lcom/samsung/android/settings/notification/brief/policy/BriefPopupPolicyManager;->mPolicyType:I

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, v3, Lcom/samsung/android/settings/notification/brief/policy/BriefPopupPolicyManager;->mPolicyInfoData:Landroid/util/SparseArray;

    const-string v5, "color"

    const-string v6, "item"

    new-instance v0, Ljava/io/File;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v7

    const-string v8, "edge_lighting_policy.json"

    invoke-direct {v0, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_9

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_0
    invoke-virtual {v1, v8}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v10
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    new-instance v11, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v11, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :goto_0
    :try_start_2
    invoke-virtual {v11}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v0

    move-object v7, v10

    goto/16 :goto_d

    :catch_0
    move-exception v0

    goto :goto_7

    :cond_0
    if-eqz v10, :cond_1

    :try_start_3
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v1, v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_2

    :cond_1
    :goto_1
    invoke-virtual {v11}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-virtual {v11}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_14

    :catch_2
    move-exception v0

    move-object v10, v0

    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_14

    :goto_2
    :try_start_5
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    invoke-virtual {v11}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_14

    :goto_3
    :try_start_7
    invoke-virtual {v11}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_4

    :catch_3
    move-exception v0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :goto_4
    throw v1

    :catchall_2
    move-exception v0

    move-object v1, v0

    move-object v7, v10

    :goto_5
    const/4 v11, 0x0

    goto :goto_d

    :catch_4
    move-exception v0

    :goto_6
    const/4 v11, 0x0

    goto :goto_7

    :catchall_3
    move-exception v0

    move-object v1, v0

    const/4 v7, 0x0

    goto :goto_5

    :catch_5
    move-exception v0

    const/4 v10, 0x0

    goto :goto_6

    :goto_7
    :try_start_8
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-eqz v10, :cond_2

    :try_start_9
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    goto :goto_8

    :catchall_4
    move-exception v0

    move-object v1, v0

    goto :goto_a

    :catch_6
    move-exception v0

    goto :goto_9

    :cond_2
    :goto_8
    if-eqz v11, :cond_4

    invoke-virtual {v11}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    goto :goto_c

    :goto_9
    :try_start_a
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    if-eqz v11, :cond_a

    :try_start_b
    invoke-virtual {v11}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2

    goto :goto_14

    :goto_a
    if-eqz v11, :cond_3

    :try_start_c
    invoke-virtual {v11}, Ljava/io/BufferedReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7

    goto :goto_b

    :catch_7
    move-exception v0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :cond_3
    :goto_b
    throw v1

    :cond_4
    :goto_c
    if-eqz v11, :cond_a

    :try_start_d
    invoke-virtual {v11}, Ljava/io/BufferedReader;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_2

    goto :goto_14

    :goto_d
    if-eqz v7, :cond_5

    :try_start_e
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    goto :goto_e

    :catchall_5
    move-exception v0

    move-object v1, v0

    goto :goto_10

    :catch_8
    move-exception v0

    goto :goto_f

    :cond_5
    :goto_e
    if-eqz v11, :cond_7

    invoke-virtual {v11}, Ljava/io/BufferedReader;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_8
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    goto :goto_12

    :goto_f
    :try_start_f
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    if-eqz v11, :cond_8

    :try_start_10
    invoke-virtual {v11}, Ljava/io/BufferedReader;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_9

    goto :goto_13

    :catch_9
    move-exception v0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_13

    :goto_10
    if-eqz v11, :cond_6

    :try_start_11
    invoke-virtual {v11}, Ljava/io/BufferedReader;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_a

    goto :goto_11

    :catch_a
    move-exception v0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :cond_6
    :goto_11
    throw v1

    :cond_7
    :goto_12
    if-eqz v11, :cond_8

    :try_start_12
    invoke-virtual {v11}, Ljava/io/BufferedReader;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_9

    :cond_8
    :goto_13
    throw v1

    :cond_9
    const/4 v9, 0x0

    :cond_a
    :goto_14
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_13
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v11, 0x7f130018

    invoke-virtual {v0, v11}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v11
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_10
    .catchall {:try_start_13 .. :try_end_13} :catchall_9

    :try_start_14
    new-instance v12, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v12, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_f
    .catchall {:try_start_14 .. :try_end_14} :catchall_8

    :goto_15
    :try_start_15
    invoke-virtual {v12}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_b
    .catchall {:try_start_15 .. :try_end_15} :catchall_6

    goto :goto_15

    :catchall_6
    move-exception v0

    move-object v1, v0

    move-object v7, v11

    goto/16 :goto_41

    :catch_b
    move-exception v0

    goto :goto_1c

    :cond_b
    if-eqz v11, :cond_c

    :try_start_16
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V

    goto :goto_16

    :catchall_7
    move-exception v0

    move-object v1, v0

    goto :goto_18

    :catch_c
    move-exception v0

    goto :goto_17

    :cond_c
    :goto_16
    invoke-virtual {v12}, Ljava/io/BufferedReader;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_c
    .catchall {:try_start_16 .. :try_end_16} :catchall_7

    :try_start_17
    invoke-virtual {v12}, Ljava/io/BufferedReader;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_d

    goto/16 :goto_22

    :catch_d
    move-exception v0

    move-object v11, v0

    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_22

    :goto_17
    :try_start_18
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_7

    :try_start_19
    invoke-virtual {v12}, Ljava/io/BufferedReader;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_d

    goto :goto_22

    :goto_18
    :try_start_1a
    invoke-virtual {v12}, Ljava/io/BufferedReader;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_e

    goto :goto_19

    :catch_e
    move-exception v0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :goto_19
    throw v1

    :catchall_8
    move-exception v0

    move-object v1, v0

    move-object v7, v11

    :goto_1a
    const/4 v12, 0x0

    goto/16 :goto_41

    :catch_f
    move-exception v0

    :goto_1b
    const/4 v12, 0x0

    goto :goto_1c

    :catchall_9
    move-exception v0

    move-object v1, v0

    const/4 v7, 0x0

    goto :goto_1a

    :catch_10
    move-exception v0

    const/4 v11, 0x0

    goto :goto_1b

    :goto_1c
    :try_start_1b
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_6

    if-eqz v11, :cond_d

    :try_start_1c
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V

    goto :goto_1d

    :catchall_a
    move-exception v0

    move-object v1, v0

    goto :goto_1f

    :catch_11
    move-exception v0

    goto :goto_1e

    :cond_d
    :goto_1d
    if-eqz v12, :cond_f

    invoke-virtual {v12}, Ljava/io/BufferedReader;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_11
    .catchall {:try_start_1c .. :try_end_1c} :catchall_a

    goto :goto_21

    :goto_1e
    :try_start_1d
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_a

    if-eqz v12, :cond_10

    :try_start_1e
    invoke-virtual {v12}, Ljava/io/BufferedReader;->close()V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_d

    goto :goto_22

    :goto_1f
    if-eqz v12, :cond_e

    :try_start_1f
    invoke-virtual {v12}, Ljava/io/BufferedReader;->close()V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_1f} :catch_12

    goto :goto_20

    :catch_12
    move-exception v0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :cond_e
    :goto_20
    throw v1

    :cond_f
    :goto_21
    if-eqz v12, :cond_10

    :try_start_20
    invoke-virtual {v12}, Ljava/io/BufferedReader;->close()V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_20} :catch_d

    :cond_10
    :goto_22
    if-eqz v9, :cond_12

    invoke-static {v9}, Lcom/samsung/android/settings/notification/brief/policy/BriefPopupPolicyManager;->getJsonVersion(Ljava/lang/StringBuilder;)J

    move-result-wide v11

    invoke-static {v10}, Lcom/samsung/android/settings/notification/brief/policy/BriefPopupPolicyManager;->getJsonVersion(Ljava/lang/StringBuilder;)J

    move-result-wide v13

    cmp-long v0, v13, v11

    if-lez v0, :cond_11

    move-object v9, v10

    const/4 v0, 0x1

    goto :goto_23

    :cond_11
    move v0, v4

    :goto_23
    move-object v10, v9

    move v9, v0

    goto :goto_24

    :cond_12
    move v9, v4

    :goto_24
    const-string/jumbo v0, "policy_type"

    :try_start_21
    new-instance v11, Lorg/json/JSONObject;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v12, "policyVersion"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v12

    iput-wide v12, v3, Lcom/samsung/android/settings/notification/brief/policy/BriefPopupPolicyManager;->mPolicyVersion:J

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_13

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v3, Lcom/samsung/android/settings/notification/brief/policy/BriefPopupPolicyManager;->mPolicyType:I
    :try_end_21
    .catch Lorg/json/JSONException; {:try_start_21 .. :try_end_21} :catch_13

    goto :goto_25

    :catch_13
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_13
    :goto_25
    const-string/jumbo v0, "versionCode"

    const-string/jumbo v11, "range"

    iget-object v12, v3, Lcom/samsung/android/settings/notification/brief/policy/BriefPopupPolicyManager;->mPolicyInfoData:Landroid/util/SparseArray;

    invoke-virtual {v12}, Landroid/util/SparseArray;->clear()V

    :try_start_22
    new-instance v13, Lorg/json/JSONObject;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v14, Lorg/json/JSONArray;

    const-string v15, "edge_lighting_policy"

    invoke-virtual {v13, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v14, v13}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Lorg/json/JSONArray;->length()I

    move-result v13

    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    move v7, v4

    const/4 v12, 0x1

    :goto_26
    if-ge v7, v13, :cond_19

    invoke-virtual {v14, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move/from16 v23, v13

    const-string v13, "category"

    invoke-virtual {v4, v13}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_14

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v17

    move/from16 v19, v17

    goto :goto_27

    :catch_14
    move-exception v0

    goto :goto_2b

    :cond_14
    const/16 v19, 0x0

    :goto_27
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_15

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v17

    move/from16 v20, v17

    goto :goto_28

    :cond_15
    const v20, -0xb37941

    :goto_28
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_16

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    move/from16 v21, v4

    goto :goto_29

    :cond_16
    const/16 v21, 0x0

    :goto_29
    new-instance v4, Lcom/samsung/android/settings/notification/brief/policy/PolicyInfo;

    move-object/from16 v17, v4

    move/from16 v18, v13

    move-object/from16 v22, v2

    invoke-direct/range {v17 .. v22}, Lcom/samsung/android/settings/notification/brief/policy/PolicyInfo;-><init>(IIIILjava/lang/String;)V

    if-eq v12, v13, :cond_18

    move-object/from16 v17, v0

    iget-object v0, v3, Lcom/samsung/android/settings/notification/brief/policy/BriefPopupPolicyManager;->mPolicyInfoData:Landroid/util/SparseArray;

    invoke-virtual {v0, v12, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, v3, Lcom/samsung/android/settings/notification/brief/policy/BriefPopupPolicyManager;->mPolicyInfoData:Landroid/util/SparseArray;

    invoke-virtual {v0, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    if-nez v0, :cond_17

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :cond_17
    move-object v15, v0

    move v12, v13

    goto :goto_2a

    :cond_18
    move-object/from16 v17, v0

    :goto_2a
    invoke-virtual {v15, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x1

    add-int/2addr v7, v2

    move-object/from16 v0, v17

    move/from16 v13, v23

    const/4 v4, 0x0

    goto :goto_26

    :cond_19
    iget-object v0, v3, Lcom/samsung/android/settings/notification/brief/policy/BriefPopupPolicyManager;->mPolicyInfoData:Landroid/util/SparseArray;

    invoke-virtual {v0, v12, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_22
    .catch Lorg/json/JSONException; {:try_start_22 .. :try_end_22} :catch_14

    goto :goto_2c

    :goto_2b
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_2c
    const-string v0, "default_on"

    const-string/jumbo v2, "priority"

    :try_start_23
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    new-instance v7, Lorg/json/JSONObject;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v7, v11}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v11, Lorg/json/JSONArray;

    const-string v12, "edge_lighting_priority"

    invoke-virtual {v7, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v11, v7}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v7

    const/4 v12, 0x0

    :goto_2d
    if-ge v12, v7, :cond_1d

    invoke-virtual {v11, v12}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v13

    invoke-virtual {v13, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_1a

    invoke-virtual {v13, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v15

    goto :goto_2e

    :catch_15
    move-exception v0

    goto :goto_30

    :cond_1a
    const v15, -0xb37941

    :goto_2e
    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_1b

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v17

    move/from16 v24, v17

    move-object/from16 v17, v0

    move/from16 v0, v24

    goto :goto_2f

    :cond_1b
    move-object/from16 v17, v0

    const/4 v0, 0x0

    :goto_2f
    invoke-virtual {v13, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_1c

    invoke-virtual {v13, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v15

    :cond_1c
    new-instance v13, Lcom/samsung/android/settings/notification/brief/policy/PolicyInfo;

    invoke-direct {v13, v15, v14, v0}, Lcom/samsung/android/settings/notification/brief/policy/PolicyInfo;-><init>(ILjava/lang/String;Z)V

    invoke-virtual {v4, v14, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v13, 0x1

    add-int/2addr v12, v13

    move-object/from16 v0, v17

    goto :goto_2d

    :cond_1d
    iget-object v0, v3, Lcom/samsung/android/settings/notification/brief/policy/BriefPopupPolicyManager;->mPolicyInfoData:Landroid/util/SparseArray;

    const/16 v2, 0xa

    invoke-virtual {v0, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_23
    .catch Lorg/json/JSONException; {:try_start_23 .. :try_end_23} :catch_15

    goto :goto_31

    :goto_30
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_31
    :try_start_24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v2, Lorg/json/JSONObject;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v4, Lorg/json/JSONArray;

    const-string v5, "edge_lighting_whitelist"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v2

    const/4 v5, 0x0

    :goto_32
    if-ge v5, v2, :cond_1e

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v7, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v10, Lcom/samsung/android/settings/notification/brief/policy/PolicyInfo;

    invoke-direct {v10, v7}, Lcom/samsung/android/settings/notification/brief/policy/PolicyInfo;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v7, 0x1

    add-int/2addr v5, v7

    goto :goto_32

    :catch_16
    move-exception v0

    goto :goto_33

    :cond_1e
    iget-object v2, v3, Lcom/samsung/android/settings/notification/brief/policy/BriefPopupPolicyManager;->mPolicyInfoData:Landroid/util/SparseArray;

    const/16 v4, 0xb

    invoke-virtual {v2, v4, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_24
    .catch Lorg/json/JSONException; {:try_start_24 .. :try_end_24} :catch_16

    goto :goto_34

    :goto_33
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_34
    if-eqz v9, :cond_24

    iget-wide v4, v3, Lcom/samsung/android/settings/notification/brief/policy/BriefPopupPolicyManager;->mPolicyVersion:J

    iget v0, v3, Lcom/samsung/android/settings/notification/brief/policy/BriefPopupPolicyManager;->mPolicyType:I

    iget-object v2, v3, Lcom/samsung/android/settings/notification/brief/policy/BriefPopupPolicyManager;->mPolicyInfoData:Landroid/util/SparseArray;

    :try_start_25
    invoke-virtual {v1, v8}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    const/4 v6, 0x0

    invoke-virtual {v1, v8, v6}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v6
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_25} :catch_1d
    .catchall {:try_start_25 .. :try_end_25} :catchall_e

    :try_start_26
    new-instance v7, Ljava/io/OutputStreamWriter;

    const-string v8, "UTF-8"

    invoke-direct {v7, v6, v8}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_26} :catch_1c
    .catchall {:try_start_26 .. :try_end_26} :catchall_d

    :try_start_27
    new-instance v8, Landroid/util/JsonWriter;

    invoke-direct {v8, v7}, Landroid/util/JsonWriter;-><init>(Ljava/io/Writer;)V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_27} :catch_1b
    .catchall {:try_start_27 .. :try_end_27} :catchall_c

    :try_start_28
    const-string v9, " "

    invoke-virtual {v8, v9}, Landroid/util/JsonWriter;->setIndent(Ljava/lang/String;)V

    invoke-static {v8, v4, v5, v0, v2}, Lcom/samsung/android/settings/notification/brief/policy/PolicyJSONManager;->writePolicy(Landroid/util/JsonWriter;JILandroid/util/SparseArray;)V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_28} :catch_1a
    .catchall {:try_start_28 .. :try_end_28} :catchall_b

    :try_start_29
    invoke-virtual {v8}, Landroid/util/JsonWriter;->close()V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_29} :catch_17

    goto :goto_35

    :catch_17
    move-exception v0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :goto_35
    :try_start_2a
    invoke-virtual {v7}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2a} :catch_18

    goto :goto_36

    :catch_18
    move-exception v0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :goto_36
    if-eqz v6, :cond_24

    :try_start_2b
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2b} :catch_19

    goto/16 :goto_40

    :catch_19
    move-exception v0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_40

    :catchall_b
    move-exception v0

    move-object v1, v0

    move-object/from16 v16, v7

    move-object v7, v8

    goto :goto_3c

    :catch_1a
    move-exception v0

    move-object/from16 v16, v7

    move-object v7, v8

    goto :goto_39

    :catchall_c
    move-exception v0

    move-object v1, v0

    move-object/from16 v16, v7

    const/4 v7, 0x0

    goto :goto_3c

    :catch_1b
    move-exception v0

    move-object/from16 v16, v7

    const/4 v7, 0x0

    goto :goto_39

    :catchall_d
    move-exception v0

    move-object v1, v0

    :goto_37
    const/4 v7, 0x0

    const/16 v16, 0x0

    goto :goto_3c

    :catch_1c
    move-exception v0

    :goto_38
    const/4 v7, 0x0

    const/16 v16, 0x0

    goto :goto_39

    :catchall_e
    move-exception v0

    move-object v1, v0

    const/4 v6, 0x0

    goto :goto_37

    :catch_1d
    move-exception v0

    const/4 v6, 0x0

    goto :goto_38

    :goto_39
    :try_start_2c
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_f

    if-eqz v7, :cond_1f

    :try_start_2d
    invoke-virtual {v7}, Landroid/util/JsonWriter;->close()V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_2d} :catch_1e

    goto :goto_3a

    :catch_1e
    move-exception v0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :cond_1f
    :goto_3a
    if-eqz v16, :cond_20

    :try_start_2e
    invoke-virtual/range {v16 .. v16}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_2e} :catch_1f

    goto :goto_3b

    :catch_1f
    move-exception v0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :cond_20
    :goto_3b
    if-eqz v6, :cond_24

    :try_start_2f
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_2f} :catch_19

    goto :goto_40

    :catchall_f
    move-exception v0

    move-object v1, v0

    :goto_3c
    if-eqz v7, :cond_21

    :try_start_30
    invoke-virtual {v7}, Landroid/util/JsonWriter;->close()V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_30} :catch_20

    goto :goto_3d

    :catch_20
    move-exception v0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :cond_21
    :goto_3d
    if-eqz v16, :cond_22

    :try_start_31
    invoke-virtual/range {v16 .. v16}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_31} :catch_21

    goto :goto_3e

    :catch_21
    move-exception v0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :cond_22
    :goto_3e
    if-eqz v6, :cond_23

    :try_start_32
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_32} :catch_22

    goto :goto_3f

    :catch_22
    move-exception v0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :cond_23
    :goto_3f
    throw v1

    :cond_24
    :goto_40
    sget v0, Lcom/samsung/android/settings/notification/brief/policy/BriefPopupPolicyUpdateService;->$r8$clinit:I

    const-string v0, "ELPolicyUpdateService"

    const-string/jumbo v2, "startActionUpdate"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/samsung/android/settings/notification/brief/policy/BriefPopupPolicyUpdateReceiver;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "com.android.systemui.edgelighting.action.UPDATE_POLICY"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    sput-object v3, Lcom/samsung/android/settings/notification/brief/policy/BriefPopupPolicyManager;->mInstance:Lcom/samsung/android/settings/notification/brief/policy/BriefPopupPolicyManager;

    goto :goto_48

    :goto_41
    if-eqz v7, :cond_25

    :try_start_33
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    goto :goto_42

    :catchall_10
    move-exception v0

    move-object v1, v0

    goto :goto_44

    :catch_23
    move-exception v0

    goto :goto_43

    :cond_25
    :goto_42
    if-eqz v12, :cond_27

    invoke-virtual {v12}, Ljava/io/BufferedReader;->close()V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_33} :catch_23
    .catchall {:try_start_33 .. :try_end_33} :catchall_10

    goto :goto_46

    :goto_43
    :try_start_34
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_10

    if-eqz v12, :cond_28

    :try_start_35
    invoke-virtual {v12}, Ljava/io/BufferedReader;->close()V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_35} :catch_24

    goto :goto_47

    :catch_24
    move-exception v0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_47

    :goto_44
    if-eqz v12, :cond_26

    :try_start_36
    invoke-virtual {v12}, Ljava/io/BufferedReader;->close()V
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_36} :catch_25

    goto :goto_45

    :catch_25
    move-exception v0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :cond_26
    :goto_45
    throw v1

    :cond_27
    :goto_46
    if-eqz v12, :cond_28

    :try_start_37
    invoke-virtual {v12}, Ljava/io/BufferedReader;->close()V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_37} :catch_24

    :cond_28
    :goto_47
    throw v1

    :cond_29
    :goto_48
    sget-object v0, Lcom/samsung/android/settings/notification/brief/policy/BriefPopupPolicyManager;->mInstance:Lcom/samsung/android/settings/notification/brief/policy/BriefPopupPolicyManager;

    return-object v0
.end method

.method public static getJsonVersion(Ljava/lang/StringBuilder;)J
    .locals 2

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo p0, "policyVersion"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    const-wide/16 v0, 0x0

    return-wide v0
.end method
