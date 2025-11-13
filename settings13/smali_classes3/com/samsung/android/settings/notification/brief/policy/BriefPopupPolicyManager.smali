.class public Lcom/samsung/android/settings/notification/brief/policy/BriefPopupPolicyManager;
.super Ljava/lang/Object;
.source "BriefPopupPolicyManager.java"


# static fields
.field private static final EL_POLICY_ITEM_URI:Landroid/net/Uri;

.field private static final POLICY_ITEM_PROJECTION:[Ljava/lang/String;

.field private static mInstance:Lcom/samsung/android/settings/notification/brief/policy/BriefPopupPolicyManager;


# instance fields
.field private final mCategoryComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/samsung/android/settings/notification/brief/policy/PolicyInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPolicyInfoData:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/settings/notification/brief/policy/PolicyInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private mPolicyType:I

.field private mPolicyVersion:J


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 52
    sget-object v0, Lcom/samsung/android/settings/notification/brief/policy/PolicyClientContract$PolicyItems;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "EdgeLighting"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/notification/brief/policy/BriefPopupPolicyManager;->EL_POLICY_ITEM_URI:Landroid/net/Uri;

    const-string v0, "item"

    const-string v1, "category"

    const-string v2, "data1"

    const-string v3, "data2"

    const-string v4, "data3"

    .line 55
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/notification/brief/policy/BriefPopupPolicyManager;->POLICY_ITEM_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 69
    iput v0, p0, Lcom/samsung/android/settings/notification/brief/policy/BriefPopupPolicyManager;->mPolicyType:I

    .line 71
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/notification/brief/policy/BriefPopupPolicyManager;->mPolicyInfoData:Landroid/util/SparseArray;

    .line 73
    new-instance v0, Lcom/samsung/android/settings/notification/brief/policy/BriefPopupPolicyManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/notification/brief/policy/BriefPopupPolicyManager$1;-><init>(Lcom/samsung/android/settings/notification/brief/policy/BriefPopupPolicyManager;)V

    iput-object v0, p0, Lcom/samsung/android/settings/notification/brief/policy/BriefPopupPolicyManager;->mCategoryComparator:Ljava/util/Comparator;

    .line 89
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/notification/brief/policy/BriefPopupPolicyManager;->fillInEdgeLightingPolicy(Landroid/content/Context;)V

    if-nez p2, :cond_0

    .line 94
    invoke-static {p1}, Lcom/samsung/android/settings/notification/brief/policy/BriefPopupPolicyUpdateService;->startActionUpdate(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method private fillInEdgeLightingPolicy(Landroid/content/Context;)V
    .locals 7

    const-string v0, "edge_lighting_policy.json"

    .line 103
    invoke-static {p1, v0}, Lcom/samsung/android/settings/notification/brief/policy/PolicyJSONManager;->existsJsonFile(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 104
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/notification/brief/policy/BriefPopupPolicyManager;->getJsonData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 106
    :goto_0
    sget v1, Lcom/android/settings/R$raw;->brief_popup_policy:I

    invoke-direct {p0, p1, v1}, Lcom/samsung/android/settings/notification/brief/policy/BriefPopupPolicyManager;->getJsonData(Landroid/content/Context;I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 108
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/notification/brief/policy/BriefPopupPolicyManager;->getJsonVersion(Ljava/lang/StringBuilder;)J

    move-result-wide v3

    .line 109
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/notification/brief/policy/BriefPopupPolicyManager;->getJsonVersion(Ljava/lang/StringBuilder;)J

    move-result-wide v5

    cmp-long v3, v5, v3

    if-lez v3, :cond_1

    const/4 v2, 0x1

    move-object v0, v1

    :cond_1
    move-object v1, v0

    .line 119
    :cond_2
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/notification/brief/policy/BriefPopupPolicyManager;->parseEdgeLightingInformation(Ljava/lang/StringBuilder;)V

    .line 120
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/notification/brief/policy/BriefPopupPolicyManager;->parseEdgeLightingPolicy(Ljava/lang/StringBuilder;)V

    .line 121
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/notification/brief/policy/BriefPopupPolicyManager;->parseEdgeLightingPriority(Ljava/lang/StringBuilder;)V

    .line 122
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/notification/brief/policy/BriefPopupPolicyManager;->parseEdgeLightingWhiteList(Ljava/lang/StringBuilder;)V

    if-eqz v2, :cond_3

    .line 124
    iget-wide v0, p0, Lcom/samsung/android/settings/notification/brief/policy/BriefPopupPolicyManager;->mPolicyVersion:J

    iget v2, p0, Lcom/samsung/android/settings/notification/brief/policy/BriefPopupPolicyManager;->mPolicyType:I

    iget-object p0, p0, Lcom/samsung/android/settings/notification/brief/policy/BriefPopupPolicyManager;->mPolicyInfoData:Landroid/util/SparseArray;

    invoke-static {p1, v0, v1, v2, p0}, Lcom/samsung/android/settings/notification/brief/policy/PolicyJSONManager;->writeJson(Landroid/content/Context;JILandroid/util/SparseArray;)V

    :cond_3
    return-void
.end method

.method public static getInstance(Landroid/content/Context;Z)Lcom/samsung/android/settings/notification/brief/policy/BriefPopupPolicyManager;
    .locals 1

    .line 82
    sget-object v0, Lcom/samsung/android/settings/notification/brief/policy/BriefPopupPolicyManager;->mInstance:Lcom/samsung/android/settings/notification/brief/policy/BriefPopupPolicyManager;

    if-nez v0, :cond_0

    .line 83
    new-instance v0, Lcom/samsung/android/settings/notification/brief/policy/BriefPopupPolicyManager;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/settings/notification/brief/policy/BriefPopupPolicyManager;-><init>(Landroid/content/Context;Z)V

    sput-object v0, Lcom/samsung/android/settings/notification/brief/policy/BriefPopupPolicyManager;->mInstance:Lcom/samsung/android/settings/notification/brief/policy/BriefPopupPolicyManager;

    .line 85
    :cond_0
    sget-object p0, Lcom/samsung/android/settings/notification/brief/policy/BriefPopupPolicyManager;->mInstance:Lcom/samsung/android/settings/notification/brief/policy/BriefPopupPolicyManager;

    return-object p0
.end method

.method private getJsonData(Landroid/content/Context;I)Ljava/lang/StringBuilder;
    .locals 3

    .line 166
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    .line 170
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 171
    :try_start_1
    new-instance p2, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p2, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 172
    :goto_0
    :try_start_2
    invoke-virtual {p2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 173
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 180
    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception p1

    goto :goto_2

    .line 183
    :cond_1
    :goto_1
    invoke-virtual {p2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 190
    :try_start_4
    invoke-virtual {p2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_b

    :catch_1
    move-exception p1

    .line 192
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b

    .line 186
    :goto_2
    :try_start_5
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 190
    :try_start_6
    invoke-virtual {p2}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_b

    :goto_3
    :try_start_7
    invoke-virtual {p2}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_4

    :catch_2
    move-exception p1

    .line 192
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 195
    :goto_4
    throw p0

    :catch_3
    move-exception v0

    goto :goto_5

    :catchall_1
    move-exception p0

    move-object p2, v0

    goto :goto_c

    :catch_4
    move-exception p2

    move-object v2, v0

    move-object v0, p2

    move-object p2, v2

    goto :goto_5

    :catchall_2
    move-exception p0

    move-object p2, v0

    goto :goto_d

    :catch_5
    move-exception p1

    move-object p2, v0

    move-object v0, p1

    move-object p1, p2

    .line 176
    :goto_5
    :try_start_8
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    if-eqz p1, :cond_2

    .line 180
    :try_start_9
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    goto :goto_6

    :catchall_3
    move-exception p0

    goto :goto_8

    :catch_6
    move-exception p1

    goto :goto_7

    :cond_2
    :goto_6
    if-eqz p2, :cond_4

    .line 183
    invoke-virtual {p2}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_a

    .line 186
    :goto_7
    :try_start_a
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    if-eqz p2, :cond_5

    .line 190
    :try_start_b
    invoke-virtual {p2}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1

    goto :goto_b

    :goto_8
    if-eqz p2, :cond_3

    :try_start_c
    invoke-virtual {p2}, Ljava/io/BufferedReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7

    goto :goto_9

    :catch_7
    move-exception p1

    .line 192
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 195
    :cond_3
    :goto_9
    throw p0

    :cond_4
    :goto_a
    if-eqz p2, :cond_5

    .line 190
    :try_start_d
    invoke-virtual {p2}, Ljava/io/BufferedReader;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_1

    :cond_5
    :goto_b
    return-object p0

    :catchall_4
    move-exception p0

    :goto_c
    move-object v0, p1

    :goto_d
    if-eqz v0, :cond_6

    .line 180
    :try_start_e
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    goto :goto_e

    :catchall_5
    move-exception p0

    goto :goto_10

    :catch_8
    move-exception p1

    goto :goto_f

    :cond_6
    :goto_e
    if-eqz p2, :cond_8

    .line 183
    invoke-virtual {p2}, Ljava/io/BufferedReader;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_8
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    goto :goto_12

    .line 186
    :goto_f
    :try_start_f
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    if-eqz p2, :cond_9

    .line 190
    :try_start_10
    invoke-virtual {p2}, Ljava/io/BufferedReader;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_a

    goto :goto_13

    :goto_10
    if-eqz p2, :cond_7

    :try_start_11
    invoke-virtual {p2}, Ljava/io/BufferedReader;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_9

    goto :goto_11

    :catch_9
    move-exception p1

    .line 192
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 195
    :cond_7
    :goto_11
    throw p0

    :cond_8
    :goto_12
    if-eqz p2, :cond_9

    .line 190
    :try_start_12
    invoke-virtual {p2}, Ljava/io/BufferedReader;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_a

    goto :goto_13

    :catch_a
    move-exception p1

    .line 192
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 196
    :cond_9
    :goto_13
    throw p0
.end method

.method private getJsonData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 3

    .line 130
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    .line 134
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 135
    :try_start_1
    new-instance p2, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p2, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 136
    :goto_0
    :try_start_2
    invoke-virtual {p2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 137
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 144
    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception p1

    goto :goto_2

    .line 147
    :cond_1
    :goto_1
    invoke-virtual {p2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 154
    :try_start_4
    invoke-virtual {p2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_c

    :catch_1
    move-exception p1

    .line 156
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_c

    .line 150
    :goto_2
    :try_start_5
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 154
    :try_start_6
    invoke-virtual {p2}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_c

    :goto_3
    :try_start_7
    invoke-virtual {p2}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_4

    :catch_2
    move-exception p1

    .line 156
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 159
    :goto_4
    throw p0

    :catch_3
    move-exception v0

    goto :goto_6

    :catchall_1
    move-exception p0

    move-object p2, v0

    :goto_5
    move-object v0, p1

    goto :goto_d

    :catch_4
    move-exception p2

    move-object v2, v0

    move-object v0, p2

    move-object p2, v2

    goto :goto_6

    :catchall_2
    move-exception p0

    move-object p2, v0

    goto :goto_d

    :catch_5
    move-exception p1

    move-object p2, v0

    move-object v0, p1

    move-object p1, p2

    .line 140
    :goto_6
    :try_start_8
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    if-eqz p1, :cond_2

    .line 144
    :try_start_9
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    goto :goto_7

    :catchall_3
    move-exception p0

    goto :goto_9

    :catch_6
    move-exception p1

    goto :goto_8

    :cond_2
    :goto_7
    if-eqz p2, :cond_4

    .line 147
    invoke-virtual {p2}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_b

    .line 150
    :goto_8
    :try_start_a
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    if-eqz p2, :cond_5

    .line 154
    :try_start_b
    invoke-virtual {p2}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1

    goto :goto_c

    :goto_9
    if-eqz p2, :cond_3

    :try_start_c
    invoke-virtual {p2}, Ljava/io/BufferedReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7

    goto :goto_a

    :catch_7
    move-exception p1

    .line 156
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 159
    :cond_3
    :goto_a
    throw p0

    :cond_4
    :goto_b
    if-eqz p2, :cond_5

    .line 154
    :try_start_d
    invoke-virtual {p2}, Ljava/io/BufferedReader;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_1

    :cond_5
    :goto_c
    return-object p0

    :catchall_4
    move-exception p0

    goto :goto_5

    :goto_d
    if-eqz v0, :cond_6

    .line 144
    :try_start_e
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    goto :goto_e

    :catchall_5
    move-exception p0

    goto :goto_10

    :catch_8
    move-exception p1

    goto :goto_f

    :cond_6
    :goto_e
    if-eqz p2, :cond_8

    .line 147
    invoke-virtual {p2}, Ljava/io/BufferedReader;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_8
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    goto :goto_12

    .line 150
    :goto_f
    :try_start_f
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    if-eqz p2, :cond_9

    .line 154
    :try_start_10
    invoke-virtual {p2}, Ljava/io/BufferedReader;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_a

    goto :goto_13

    :goto_10
    if-eqz p2, :cond_7

    :try_start_11
    invoke-virtual {p2}, Ljava/io/BufferedReader;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_9

    goto :goto_11

    :catch_9
    move-exception p1

    .line 156
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 159
    :cond_7
    :goto_11
    throw p0

    :cond_8
    :goto_12
    if-eqz p2, :cond_9

    .line 154
    :try_start_12
    invoke-virtual {p2}, Ljava/io/BufferedReader;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_a

    goto :goto_13

    :catch_a
    move-exception p1

    .line 156
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 160
    :cond_9
    :goto_13
    throw p0
.end method

.method private getJsonVersion(Ljava/lang/StringBuilder;)J
    .locals 0

    .line 202
    :try_start_0
    new-instance p0, Lorg/json/JSONObject;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "policyVersion"

    .line 203
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    move-exception p0

    .line 205
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method private parseEdgeLightingInformation(Ljava/lang/StringBuilder;)V
    .locals 4

    const-string v0, "policy_type"

    .line 212
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "policyVersion"

    .line 213
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/samsung/android/settings/notification/brief/policy/BriefPopupPolicyManager;->mPolicyVersion:J

    .line 214
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 215
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/settings/notification/brief/policy/BriefPopupPolicyManager;->mPolicyType:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 218
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private parseEdgeLightingPolicy(Ljava/lang/StringBuilder;)V
    .locals 19

    move-object/from16 v0, p0

    const-string v1, "versionCode"

    const-string v2, "color"

    const-string v3, "range"

    .line 223
    iget-object v4, v0, Lcom/samsung/android/settings/notification/brief/policy/BriefPopupPolicyManager;->mPolicyInfoData:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V

    .line 225
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 226
    new-instance v5, Lorg/json/JSONArray;

    const-string v6, "edge_lighting_policy"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 227
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v4

    .line 229
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const/4 v7, 0x1

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v4, :cond_5

    .line 231
    invoke-virtual {v5, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "item"

    .line 232
    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "category"

    .line 233
    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v15

    const v12, -0xb37941

    .line 237
    invoke-virtual {v10, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 238
    invoke-virtual {v10, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v13

    move/from16 v16, v13

    goto :goto_1

    :cond_0
    const/16 v16, 0x0

    .line 240
    :goto_1
    invoke-virtual {v10, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 241
    invoke-virtual {v10, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v12

    :cond_1
    move/from16 v17, v12

    .line 243
    invoke-virtual {v10, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 244
    invoke-virtual {v10, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    goto :goto_2

    :cond_2
    const/4 v10, 0x0

    .line 246
    :goto_2
    new-instance v14, Lcom/samsung/android/settings/notification/brief/policy/PolicyInfo;

    move-object v12, v14

    move-object v13, v11

    move-object v8, v14

    move v14, v15

    move-object/from16 v18, v1

    move v1, v15

    move/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v10

    invoke-direct/range {v12 .. v17}, Lcom/samsung/android/settings/notification/brief/policy/PolicyInfo;-><init>(Ljava/lang/String;IIII)V

    if-eq v7, v1, :cond_4

    .line 248
    iget-object v10, v0, Lcom/samsung/android/settings/notification/brief/policy/BriefPopupPolicyManager;->mPolicyInfoData:Landroid/util/SparseArray;

    invoke-virtual {v10, v7, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 250
    iget-object v6, v0, Lcom/samsung/android/settings/notification/brief/policy/BriefPopupPolicyManager;->mPolicyInfoData:Landroid/util/SparseArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashMap;

    if-nez v6, :cond_3

    .line 252
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    :cond_3
    move v7, v1

    .line 255
    :cond_4
    invoke-virtual {v6, v11, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v1, v18

    goto :goto_0

    .line 257
    :cond_5
    iget-object v0, v0, Lcom/samsung/android/settings/notification/brief/policy/BriefPopupPolicyManager;->mPolicyInfoData:Landroid/util/SparseArray;

    invoke-virtual {v0, v7, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 259
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_3
    return-void
.end method

.method private parseEdgeLightingPriority(Ljava/lang/StringBuilder;)V
    .locals 16

    const-string v0, "color"

    const-string v1, "default_on"

    const-string v2, "priority"

    .line 265
    :try_start_0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 266
    new-instance v4, Lorg/json/JSONObject;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 267
    new-instance v5, Lorg/json/JSONArray;

    const-string v6, "edge_lighting_priority"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 268
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v4

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    if-ge v7, v4, :cond_3

    .line 270
    invoke-virtual {v5, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "item"

    .line 271
    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v13, 0x1

    const v10, -0xb37941

    .line 275
    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 276
    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    .line 278
    :cond_0
    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 279
    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v11

    move v14, v11

    goto :goto_1

    :cond_1
    move v14, v6

    .line 281
    :goto_1
    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 282
    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    move v15, v8

    goto :goto_2

    :cond_2
    move v15, v10

    .line 284
    :goto_2
    new-instance v8, Lcom/samsung/android/settings/notification/brief/policy/PolicyInfo;

    const/16 v12, 0xa

    move-object v10, v8

    move-object v11, v9

    invoke-direct/range {v10 .. v15}, Lcom/samsung/android/settings/notification/brief/policy/PolicyInfo;-><init>(Ljava/lang/String;IIZI)V

    invoke-virtual {v3, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    .line 286
    iget-object v0, v0, Lcom/samsung/android/settings/notification/brief/policy/BriefPopupPolicyManager;->mPolicyInfoData:Landroid/util/SparseArray;

    const/16 v1, 0xa

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 288
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_3
    return-void
.end method

.method private parseEdgeLightingWhiteList(Ljava/lang/StringBuilder;)V
    .locals 6

    .line 294
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 295
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 296
    new-instance p1, Lorg/json/JSONArray;

    const-string v2, "edge_lighting_whitelist"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 297
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0xb

    if-ge v2, v1, :cond_0

    .line 299
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "item"

    .line 300
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 301
    new-instance v5, Lcom/samsung/android/settings/notification/brief/policy/PolicyInfo;

    invoke-direct {v5, v4, v3}, Lcom/samsung/android/settings/notification/brief/policy/PolicyInfo;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 303
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/notification/brief/policy/BriefPopupPolicyManager;->mPolicyInfoData:Landroid/util/SparseArray;

    invoke-virtual {p0, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 305
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1
    return-void
.end method


# virtual methods
.method public getPolicyInfoByCategory(I)Ljava/util/HashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/settings/notification/brief/policy/PolicyInfo;",
            ">;"
        }
    .end annotation

    .line 386
    iget-object p0, p0, Lcom/samsung/android/settings/notification/brief/policy/BriefPopupPolicyManager;->mPolicyInfoData:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashMap;

    return-object p0
.end method

.method public getPolicyType()I
    .locals 0

    .line 373
    iget p0, p0, Lcom/samsung/android/settings/notification/brief/policy/BriefPopupPolicyManager;->mPolicyType:I

    return p0
.end method

.method public getPriorityMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/settings/notification/brief/policy/PolicyInfo;",
            ">;"
        }
    .end annotation

    .line 377
    iget-object p0, p0, Lcom/samsung/android/settings/notification/brief/policy/BriefPopupPolicyManager;->mPolicyInfoData:Landroid/util/SparseArray;

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashMap;

    return-object p0
.end method
