.class public final Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final EL_POLICY_ITEM_URI:Landroid/net/Uri;

.field public static final POLICY_ITEM_PROJECTION:[Ljava/lang/String;

.field public static mInstance:Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;


# instance fields
.field public final mCategoryComparator:Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager$1;

.field public final mPolicyInfoData:Landroid/util/SparseArray;

.field public final mPolicyType:I

.field public mPolicyVersion:J


# direct methods
.method static constructor <clinit>()V
    .locals 5

    sget-object v0, Lcom/android/systemui/edgelighting/data/policy/PolicyClientContract$PolicyItems;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "EdgeLighting"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;->EL_POLICY_ITEM_URI:Landroid/net/Uri;

    const-string v0, "data2"

    const-string v1, "data3"

    const-string v2, "item"

    const-string v3, "category"

    const-string v4, "data1"

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;->POLICY_ITEM_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Z)V
    .locals 22

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v3, 0x0

    iput v3, v1, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;->mPolicyType:I

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, v1, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;->mPolicyInfoData:Landroid/util/SparseArray;

    new-instance v0, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager$1;

    invoke-direct {v0, v1}, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager$1;-><init>(Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;)V

    iput-object v0, v1, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;->mCategoryComparator:Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager$1;

    const-string v4, "color"

    const-string v5, "item"

    new-instance v0, Ljava/io/File;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v6

    const-string v7, "edge_lighting_policy.json"

    invoke-direct {v0, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v6, 0x0

    if-eqz v0, :cond_9

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_0
    invoke-virtual {v2, v7}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v7
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    new-instance v9, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v9, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :goto_0
    :try_start_2
    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v0

    :goto_1
    move-object v6, v7

    goto/16 :goto_c

    :catch_0
    move-exception v0

    goto :goto_6

    :cond_0
    if-eqz v7, :cond_1

    :try_start_3
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v1, v0

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_3

    :cond_1
    :goto_2
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_13

    :catch_2
    move-exception v0

    move-object v7, v0

    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_13

    :goto_3
    :try_start_5
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_13

    :goto_4
    :try_start_7
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_5

    :catch_3
    move-exception v0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :goto_5
    throw v1

    :catchall_2
    move-exception v0

    move-object v1, v0

    move-object v9, v6

    goto :goto_1

    :catch_4
    move-exception v0

    move-object v9, v6

    goto :goto_6

    :catchall_3
    move-exception v0

    move-object v1, v0

    move-object v9, v6

    goto :goto_c

    :catch_5
    move-exception v0

    move-object v7, v6

    move-object v9, v7

    :goto_6
    :try_start_8
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-eqz v7, :cond_2

    :try_start_9
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    goto :goto_7

    :catchall_4
    move-exception v0

    move-object v1, v0

    goto :goto_9

    :catch_6
    move-exception v0

    goto :goto_8

    :cond_2
    :goto_7
    if-eqz v9, :cond_4

    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    goto :goto_b

    :goto_8
    :try_start_a
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    if-eqz v9, :cond_a

    :try_start_b
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2

    goto :goto_13

    :goto_9
    if-eqz v9, :cond_3

    :try_start_c
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7

    goto :goto_a

    :catch_7
    move-exception v0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :cond_3
    :goto_a
    throw v1

    :cond_4
    :goto_b
    if-eqz v9, :cond_a

    :try_start_d
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_2

    goto :goto_13

    :goto_c
    if-eqz v6, :cond_5

    :try_start_e
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    goto :goto_d

    :catchall_5
    move-exception v0

    move-object v1, v0

    goto :goto_f

    :catch_8
    move-exception v0

    goto :goto_e

    :cond_5
    :goto_d
    if-eqz v9, :cond_7

    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_8
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    goto :goto_11

    :goto_e
    :try_start_f
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    if-eqz v9, :cond_8

    :try_start_10
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_9

    goto :goto_12

    :catch_9
    move-exception v0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_12

    :goto_f
    if-eqz v9, :cond_6

    :try_start_11
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_a

    goto :goto_10

    :catch_a
    move-exception v0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :cond_6
    :goto_10
    throw v1

    :cond_7
    :goto_11
    if-eqz v9, :cond_8

    :try_start_12
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_9

    :cond_8
    :goto_12
    throw v1

    :cond_9
    move-object v8, v6

    :cond_a
    :goto_13
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_13
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v9, 0x7f12001b

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v9
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_10
    .catchall {:try_start_13 .. :try_end_13} :catchall_9

    :try_start_14
    new-instance v10, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v10, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_f
    .catchall {:try_start_14 .. :try_end_14} :catchall_8

    :goto_14
    :try_start_15
    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_b
    .catchall {:try_start_15 .. :try_end_15} :catchall_6

    goto :goto_14

    :catchall_6
    move-exception v0

    move-object v1, v0

    :goto_15
    move-object v6, v9

    goto/16 :goto_35

    :catch_b
    move-exception v0

    :goto_16
    move-object v6, v9

    goto :goto_1b

    :cond_b
    if-eqz v9, :cond_c

    :try_start_16
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    goto :goto_17

    :catchall_7
    move-exception v0

    move-object v1, v0

    goto :goto_19

    :catch_c
    move-exception v0

    goto :goto_18

    :cond_c
    :goto_17
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_c
    .catchall {:try_start_16 .. :try_end_16} :catchall_7

    :try_start_17
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_d

    goto/16 :goto_21

    :catch_d
    move-exception v0

    move-object v6, v0

    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_21

    :goto_18
    :try_start_18
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_7

    :try_start_19
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_d

    goto :goto_21

    :goto_19
    :try_start_1a
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_e

    goto :goto_1a

    :catch_e
    move-exception v0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :goto_1a
    throw v1

    :catchall_8
    move-exception v0

    move-object v1, v0

    move-object v10, v6

    goto :goto_15

    :catch_f
    move-exception v0

    move-object v10, v6

    goto :goto_16

    :catchall_9
    move-exception v0

    move-object v1, v0

    move-object v10, v6

    goto/16 :goto_35

    :catch_10
    move-exception v0

    move-object v10, v6

    :goto_1b
    :try_start_1b
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_b

    if-eqz v6, :cond_d

    :try_start_1c
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    goto :goto_1c

    :catchall_a
    move-exception v0

    move-object v1, v0

    goto :goto_1e

    :catch_11
    move-exception v0

    goto :goto_1d

    :cond_d
    :goto_1c
    if-eqz v10, :cond_f

    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_11
    .catchall {:try_start_1c .. :try_end_1c} :catchall_a

    goto :goto_20

    :goto_1d
    :try_start_1d
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_a

    if-eqz v10, :cond_10

    :try_start_1e
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_d

    goto :goto_21

    :goto_1e
    if-eqz v10, :cond_e

    :try_start_1f
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_1f} :catch_12

    goto :goto_1f

    :catch_12
    move-exception v0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :cond_e
    :goto_1f
    throw v1

    :cond_f
    :goto_20
    if-eqz v10, :cond_10

    :try_start_20
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_20} :catch_d

    :cond_10
    :goto_21
    const/4 v6, 0x1

    if-eqz v8, :cond_12

    invoke-static {v8}, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;->getJsonVersion(Ljava/lang/StringBuilder;)J

    move-result-wide v9

    invoke-static {v7}, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;->getJsonVersion(Ljava/lang/StringBuilder;)J

    move-result-wide v11

    cmp-long v0, v11, v9

    if-lez v0, :cond_11

    move v0, v6

    move-object v8, v7

    goto :goto_22

    :cond_11
    move v0, v3

    :goto_22
    move v7, v0

    goto :goto_23

    :cond_12
    move-object v8, v7

    move v7, v3

    :goto_23
    const-string v0, "policy_type"

    :try_start_21
    new-instance v9, Lorg/json/JSONObject;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v10, "policy_version"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, v1, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;->mPolicyVersion:J

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_13

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;->mPolicyType:I
    :try_end_21
    .catch Lorg/json/JSONException; {:try_start_21 .. :try_end_21} :catch_13

    goto :goto_24

    :catch_13
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_13
    :goto_24
    const-string/jumbo v0, "versionCode"

    const-string v9, "range"

    iget-object v10, v1, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;->mPolicyInfoData:Landroid/util/SparseArray;

    invoke-virtual {v10}, Landroid/util/SparseArray;->clear()V

    :try_start_22
    new-instance v11, Lorg/json/JSONObject;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v12, Lorg/json/JSONArray;

    const-string v13, "edge_lighting_policy"

    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v12, v11}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v11

    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    move v14, v3

    :goto_25
    if-ge v14, v11, :cond_19

    invoke-virtual {v12, v14}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v15

    invoke-virtual {v15, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v10, "category"

    invoke-virtual {v15, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v15, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_14

    invoke-virtual {v15, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v16

    move/from16 v19, v16

    goto :goto_26

    :catch_14
    move-exception v0

    goto :goto_2a

    :cond_14
    const/16 v19, 0x0

    :goto_26
    invoke-virtual {v15, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_15

    invoke-virtual {v15, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v16

    move/from16 v20, v16

    goto :goto_27

    :cond_15
    const v20, -0xb37941

    :goto_27
    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_16

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v15

    move/from16 v21, v15

    goto :goto_28

    :cond_16
    const/16 v21, 0x0

    :goto_28
    new-instance v15, Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;

    move-object/from16 v16, v15

    move-object/from16 v17, v3

    move/from16 v18, v10

    invoke-direct/range {v16 .. v21}, Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;-><init>(Ljava/lang/String;IIII)V

    if-eq v6, v10, :cond_18

    move-object/from16 v16, v0

    iget-object v0, v1, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;->mPolicyInfoData:Landroid/util/SparseArray;

    invoke-virtual {v0, v6, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, v1, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;->mPolicyInfoData:Landroid/util/SparseArray;

    invoke-virtual {v0, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    if-nez v0, :cond_17

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :cond_17
    move-object v13, v0

    move v6, v10

    goto :goto_29

    :cond_18
    move-object/from16 v16, v0

    :goto_29
    invoke-virtual {v13, v3, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, v16

    const/4 v3, 0x0

    goto :goto_25

    :cond_19
    iget-object v0, v1, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;->mPolicyInfoData:Landroid/util/SparseArray;

    invoke-virtual {v0, v6, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_22
    .catch Lorg/json/JSONException; {:try_start_22 .. :try_end_22} :catch_14

    goto :goto_2b

    :goto_2a
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_2b
    const-string v0, "default_on"

    const-string v3, "priority"

    :try_start_23
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    new-instance v9, Lorg/json/JSONObject;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v10, Lorg/json/JSONArray;

    const-string v11, "edge_lighting_priority"

    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v10, v9}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v9

    const/4 v11, 0x0

    :goto_2c
    if-ge v11, v9, :cond_1d

    invoke-virtual {v10, v11}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v12

    invoke-virtual {v12, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1a

    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v13

    goto :goto_2d

    :catch_15
    move-exception v0

    goto :goto_30

    :cond_1a
    const v13, -0xb37941

    :goto_2d
    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1b

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v14

    move/from16 v17, v14

    goto :goto_2e

    :cond_1b
    const/16 v17, 0x0

    :goto_2e
    invoke-virtual {v12, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1c

    invoke-virtual {v12, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v12

    move/from16 v18, v12

    goto :goto_2f

    :cond_1c
    move/from16 v18, v13

    :goto_2f
    new-instance v12, Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;

    const/16 v16, 0xa

    const/16 v19, 0x1

    move-object v13, v12

    move-object v14, v15

    move-object/from16 v20, v0

    move-object v0, v15

    move/from16 v15, v16

    move/from16 v16, v19

    invoke-direct/range {v13 .. v18}, Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;-><init>(Ljava/lang/String;IIZI)V

    invoke-virtual {v6, v0, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, v20

    goto :goto_2c

    :cond_1d
    iget-object v0, v1, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;->mPolicyInfoData:Landroid/util/SparseArray;

    const/16 v3, 0xa

    invoke-virtual {v0, v3, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_23
    .catch Lorg/json/JSONException; {:try_start_23 .. :try_end_23} :catch_15

    goto :goto_31

    :goto_30
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_31
    :try_start_24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v4, Lorg/json/JSONArray;

    const-string v6, "edge_lighting_whitelist"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v3

    const/4 v6, 0x0

    :goto_32
    const/16 v8, 0xb

    if-ge v6, v3, :cond_1e

    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    invoke-virtual {v9, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;

    invoke-direct {v10, v9, v8}, Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v6, v6, 0x1

    goto :goto_32

    :catch_16
    move-exception v0

    goto :goto_33

    :cond_1e
    iget-object v3, v1, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;->mPolicyInfoData:Landroid/util/SparseArray;

    invoke-virtual {v3, v8, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_24
    .catch Lorg/json/JSONException; {:try_start_24 .. :try_end_24} :catch_16

    goto :goto_34

    :goto_33
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_34
    if-eqz v7, :cond_1f

    iget-wide v3, v1, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;->mPolicyVersion:J

    iget v0, v1, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;->mPolicyType:I

    iget-object v1, v1, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;->mPolicyInfoData:Landroid/util/SparseArray;

    invoke-static {v2, v3, v4, v0, v1}, Lcom/android/systemui/edgelighting/manager/PolicyJSONManager;->writeJson(Landroid/content/Context;JILandroid/util/SparseArray;)V

    :cond_1f
    if-nez p2, :cond_20

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/edgelighting/policy/EdgeLightingPolicyUpdateService;->startActionUpdate(Landroid/content/Context;)V

    :cond_20
    return-void

    :catchall_b
    move-exception v0

    move-object v1, v0

    :goto_35
    if-eqz v6, :cond_21

    :try_start_25
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    goto :goto_36

    :catchall_c
    move-exception v0

    move-object v1, v0

    goto :goto_38

    :catch_17
    move-exception v0

    goto :goto_37

    :cond_21
    :goto_36
    if-eqz v10, :cond_23

    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_25} :catch_17
    .catchall {:try_start_25 .. :try_end_25} :catchall_c

    goto :goto_3a

    :goto_37
    :try_start_26
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_c

    if-eqz v10, :cond_24

    :try_start_27
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_27} :catch_18

    goto :goto_3b

    :catch_18
    move-exception v0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3b

    :goto_38
    if-eqz v10, :cond_22

    :try_start_28
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_28} :catch_19

    goto :goto_39

    :catch_19
    move-exception v0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :cond_22
    :goto_39
    throw v1

    :cond_23
    :goto_3a
    if-eqz v10, :cond_24

    :try_start_29
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_29} :catch_18

    :cond_24
    :goto_3b
    throw v1
.end method

.method public static createPolicyInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;
    .locals 8

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    move v3, v0

    goto :goto_1

    :cond_0
    move p1, v0

    :goto_0
    move v3, p1

    :goto_1
    const/4 p1, 0x0

    const v1, -0xb37941

    if-eq v3, v0, :cond_5

    const/4 v2, 0x2

    if-eq v3, v2, :cond_5

    const/16 v2, 0xa

    if-eq v3, v2, :cond_1

    packed-switch v3, :pswitch_data_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "createPolicyInfo : wrong category = "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ELPolicyManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    new-instance p1, Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;

    invoke-direct {p1, p0, v3}, Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;-><init>(Ljava/lang/String;I)V

    return-object p1

    :cond_1
    if-eqz p2, :cond_2

    :try_start_1
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_2

    :catch_1
    move-exception p2

    goto :goto_3

    :cond_2
    :goto_2
    if-eqz p3, :cond_3

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    :cond_3
    if-eqz p4, :cond_4

    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :goto_3
    invoke-virtual {p2}, Ljava/lang/NumberFormatException;->printStackTrace()V

    :cond_4
    :goto_4
    move v5, p1

    move v4, v0

    move v6, v1

    new-instance p1, Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;

    move-object v1, p1

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;-><init>(Ljava/lang/String;IIZI)V

    return-object p1

    :cond_5
    if-eqz p2, :cond_6

    :try_start_2
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_5

    :catch_2
    move-exception p2

    move p3, p1

    goto :goto_7

    :cond_6
    move p2, p1

    :goto_5
    if-eqz p3, :cond_7

    :try_start_3
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_6

    :catch_3
    move-exception p3

    move-object v7, p3

    move p3, p2

    move-object p2, v7

    goto :goto_7

    :cond_7
    :goto_6
    if-eqz p4, :cond_8

    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_9

    :goto_7
    invoke-virtual {p2}, Ljava/lang/NumberFormatException;->printStackTrace()V

    move v6, p1

    move v4, p3

    :goto_8
    move v5, v1

    goto :goto_a

    :cond_8
    :goto_9
    move v6, p1

    move v4, p2

    goto :goto_8

    :goto_a
    new-instance p1, Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;

    move-object v1, p1

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;-><init>(Ljava/lang/String;IIII)V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static getInstance(Landroid/content/Context;Z)Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;
    .locals 1

    sget-object v0, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;->mInstance:Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;-><init>(Landroid/content/Context;Z)V

    sput-object v0, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;->mInstance:Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;

    :cond_0
    sget-object p0, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;->mInstance:Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;

    return-object p0
.end method

.method public static getJsonVersion(Ljava/lang/StringBuilder;)J
    .locals 2

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "policy_version"

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


# virtual methods
.method public final getEdgeLightingColor(Landroid/content/Context;Ljava/lang/String;)I
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;->mPolicyInfoData:Landroid/util/SparseArray;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v2, "com.samsung.android.messaging"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    sget v2, Lcom/android/systemui/edgelighting/utils/Utils;->$r8$clinit:I

    const-string v2, ""

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, p2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    iget-object v2, v4, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iget v4, v4, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const/4 v4, -0x1

    :goto_0
    const-string v5, " pkgName : "

    const-string v6, " version NAme : "

    const-string v7, " "

    invoke-static {v5, p2, v6, v2, v7}, Landroidx/appcompat/util/SeslRoundedCorner$SeslRoundedChunkingDrawable$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "Utils"

    invoke-static {v5, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v2, 0x1dcd6500

    if-ge v4, v2, :cond_0

    const p0, 0xf2721c

    return p0

    :cond_0
    const v2, -0xb37941

    if-eqz v0, :cond_1

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;

    if-eqz v0, :cond_1

    iget v0, v0, Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;->color:I

    if-eq v0, v2, :cond_1

    return v0

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;->mPolicyInfoData:Landroid/util/SparseArray;

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashMap;

    if-eqz p0, :cond_2

    invoke-virtual {p0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;

    if-eqz p0, :cond_2

    iget p0, p0, Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;->color:I

    if-eq p0, v2, :cond_2

    return p0

    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->getAppInfoSupportingEdgeLighting(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_6

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ResolveInfo;

    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    new-instance v3, Landroid/content/ComponentName;

    invoke-direct {v3, p0, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-static {p0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->semGetCscPackageItemIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->semGetCscPackageItemIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_5

    goto :goto_2

    :cond_5
    :try_start_1
    invoke-virtual {p0, v3, v1}, Landroid/content/pm/PackageManager;->semGetActivityIconForIconTray(Landroid/content/ComponentName;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    move-object v0, p0

    goto :goto_2

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_2

    :cond_6
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    :try_start_2
    invoke-virtual {p0, p2}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p0
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    move-exception p0

    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const/4 p0, 0x0

    goto :goto_1

    :goto_2
    if-eqz v0, :cond_7

    invoke-static {v0}, Lcom/android/systemui/edgelighting/utils/ExtractAppIconUtils;->processDominantColorInImage(Landroid/graphics/drawable/Drawable;)I

    move-result p0

    invoke-static {p1, p2, p0}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->saveAppCustomColor(Landroid/content/Context;Ljava/lang/String;I)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "package : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " Extract color : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ELPolicyManager"

    invoke-static {p2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    :cond_7
    return v2
.end method

.method public final updateEdgeLightingPolicy(Landroid/content/Context;Z)V
    .locals 6

    const-string v0, "edge"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/edge/SemEdgeManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v1, p0, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;->mPolicyType:I

    const/4 v2, 0x1

    if-eqz p2, :cond_1

    or-int/lit8 p2, v1, 0x1

    goto :goto_0

    :cond_1
    and-int/lit8 p2, v1, -0x2

    :goto_0
    new-instance v1, Lcom/samsung/android/edge/EdgeLightingPolicy;

    invoke-direct {v1}, Lcom/samsung/android/edge/EdgeLightingPolicy;-><init>()V

    invoke-virtual {v1, p2}, Lcom/samsung/android/edge/EdgeLightingPolicy;->setPolicyType(I)V

    iget-wide v3, p0, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;->mPolicyVersion:J

    invoke-virtual {v1, v3, v4}, Lcom/samsung/android/edge/EdgeLightingPolicy;->setPolicyVersion(J)V

    iget-object p2, p0, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;->mPolicyInfoData:Landroid/util/SparseArray;

    invoke-virtual {p2, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/HashMap;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;

    new-instance v4, Lcom/samsung/android/edge/EdgeLightingPolicyInfo;

    iget-object v5, v3, Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;->item:Ljava/lang/String;

    iget v3, v3, Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;->range:I

    invoke-direct {v4, v5, v2, v3}, Lcom/samsung/android/edge/EdgeLightingPolicyInfo;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v1, v4}, Lcom/samsung/android/edge/EdgeLightingPolicy;->addEdgeLightingPolicyInfo(Lcom/samsung/android/edge/EdgeLightingPolicyInfo;)V

    goto :goto_1

    :cond_2
    iget p2, p0, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;->mPolicyType:I

    and-int/lit8 p2, p2, 0x4

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;->mPolicyInfoData:Landroid/util/SparseArray;

    const/4 v2, 0x2

    invoke-virtual {p2, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/HashMap;

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;

    new-instance v4, Lcom/samsung/android/edge/EdgeLightingPolicyInfo;

    iget-object v5, v3, Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;->item:Ljava/lang/String;

    iget v3, v3, Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;->range:I

    invoke-direct {v4, v5, v2, v3}, Lcom/samsung/android/edge/EdgeLightingPolicyInfo;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v1, v4}, Lcom/samsung/android/edge/EdgeLightingPolicy;->addEdgeLightingPolicyInfo(Lcom/samsung/android/edge/EdgeLightingPolicyInfo;)V

    goto :goto_2

    :cond_3
    iget-object p0, p0, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;->mPolicyInfoData:Landroid/util/SparseArray;

    const/16 p2, 0xa

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashMap;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;

    iget-object v3, v3, Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;->item:Ljava/lang/String;

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;

    iget-object v2, v2, Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;->item:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_5
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "edge_lighting_recommend_app_list"

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, " update Policy : "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/samsung/android/edge/EdgeLightingPolicy;->getEdgeLightingPolicyInfoList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ELPolicyManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v1}, Lcom/samsung/android/edge/SemEdgeManager;->updateEdgeLightingPolicy(Lcom/samsung/android/edge/EdgeLightingPolicy;)V

    return-void
.end method
