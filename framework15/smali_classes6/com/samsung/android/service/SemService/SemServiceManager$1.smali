.class Lcom/samsung/android/service/SemService/SemServiceManager$1;
.super Ljava/lang/Object;
.source "SemServiceManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/service/SemService/SemServiceManager;->deactivateSCRSList(Ljava/lang/String;Ljava/util/ArrayList;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/service/SemService/SemServiceManager;

.field final synthetic blacklist val$aid:Ljava/util/ArrayList;

.field final synthetic blacklist val$flag:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/service/SemService/SemServiceManager;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/service/SemService/SemServiceManager$1;->this$0:Lcom/samsung/android/service/SemService/SemServiceManager;

    iput-object p2, p0, Lcom/samsung/android/service/SemService/SemServiceManager$1;->val$flag:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/service/SemService/SemServiceManager$1;->val$aid:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 33

    move-object/from16 v1, p0

    const-string v2, "Flag Error"

    const-string v3, "03"

    const-string v4, "SEC_ESE_ServiceManager"

    const/4 v5, -0x1

    const/16 v6, 0xe

    new-array v6, v6, [B

    fill-array-data v6, :array_0

    const/4 v7, 0x0

    const v8, 0x16800

    new-array v9, v8, [B

    const/4 v10, 0x0

    const/4 v11, 0x5

    new-array v12, v11, [B

    fill-array-data v12, :array_1

    new-array v13, v11, [B

    fill-array-data v13, :array_2

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    :try_start_0
    iget-object v8, v1, Lcom/samsung/android/service/SemService/SemServiceManager$1;->val$flag:Ljava/lang/String;

    if-eqz v8, :cond_2f

    iget-object v2, v1, Lcom/samsung/android/service/SemService/SemServiceManager$1;->val$aid:Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_7c
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_7b
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_7a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_79
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_78

    const-string v8, "02"

    if-nez v2, :cond_1

    :try_start_1
    iget-object v2, v1, Lcom/samsung/android/service/SemService/SemServiceManager$1;->val$flag:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v1, Lcom/samsung/android/service/SemService/SemServiceManager$1;->val$flag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "AID Null Error"

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v5, -0xd

    new-instance v2, Ljava/lang/NullPointerException;

    const-string v8, "AID Error"

    invoke-direct {v2, v8}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v0

    move-object v2, v0

    move-object/from16 v18, v6

    move-object/from16 v21, v9

    move-object/from16 v28, v12

    move-object/from16 v29, v13

    goto/16 :goto_21

    :catch_1
    move-exception v0

    move-object v2, v0

    move-object/from16 v18, v6

    move-object/from16 v21, v9

    move-object/from16 v28, v12

    move-object/from16 v29, v13

    goto/16 :goto_22

    :catch_2
    move-exception v0

    move-object v2, v0

    move-object/from16 v18, v6

    move-object/from16 v21, v9

    move-object/from16 v28, v12

    move-object/from16 v29, v13

    goto/16 :goto_23

    :catch_3
    move-exception v0

    move-object v2, v0

    move-object/from16 v18, v6

    move-object/from16 v21, v9

    move-object/from16 v28, v12

    move-object/from16 v29, v13

    goto/16 :goto_24

    :catch_4
    move-exception v0

    move-object v2, v0

    move-object/from16 v18, v6

    move-object/from16 v21, v9

    move-object/from16 v28, v12

    move-object/from16 v29, v13

    goto/16 :goto_25

    :cond_1
    :goto_0
    :try_start_2
    iget-object v2, v1, Lcom/samsung/android/service/SemService/SemServiceManager$1;->this$0:Lcom/samsung/android/service/SemService/SemServiceManager;

    invoke-virtual {v2}, Lcom/samsung/android/service/SemService/SemServiceManager;->open()I

    move-result v2
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_7c
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_2 .. :try_end_2} :catch_7b
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_2 .. :try_end_2} :catch_7a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_79
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_78

    move v5, v2

    if-nez v5, :cond_2e

    const/4 v14, 0x1

    :try_start_3
    iget-object v2, v1, Lcom/samsung/android/service/SemService/SemServiceManager$1;->this$0:Lcom/samsung/android/service/SemService/SemServiceManager;

    invoke-virtual {v2, v6}, Lcom/samsung/android/service/SemService/SemServiceManager;->send([B)[B

    move-result-object v2
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_6d
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_3 .. :try_end_3} :catch_6c
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_3 .. :try_end_3} :catch_6b
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6a
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_69

    move-object v7, v2

    const-string v2, "RESP Error"

    if-eqz v7, :cond_2d

    :try_start_4
    array-length v11, v7
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_6d
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_4 .. :try_end_4} :catch_6c
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_4 .. :try_end_4} :catch_6b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6a
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_4} :catch_69

    move-object/from16 v18, v6

    const/4 v6, 0x2

    if-lt v11, v6, :cond_2c

    :try_start_5
    array-length v11, v7

    const/16 v19, 0x0

    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v21, v20

    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_5
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_63
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_5 .. :try_end_5} :catch_62
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_5 .. :try_end_5} :catch_61
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_60
    .catch Ljava/lang/Error; {:try_start_5 .. :try_end_5} :catch_5f

    move/from16 v22, v10

    :try_start_6
    const-string v10, "Select SW : "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v10, v11, -0x2

    aget-byte v10, v7, v10

    invoke-static {v10}, Lcom/samsung/android/service/SemService/SemServiceManager;->byteToHex(B)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v10, v11, -0x1

    aget-byte v10, v7, v10

    invoke-static {v10}, Lcom/samsung/android/service/SemService/SemServiceManager;->byteToHex(B)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x2

    if-lt v11, v6, :cond_2a

    add-int/lit8 v6, v11, -0x2

    aget-byte v6, v7, v6

    const/16 v10, -0x70

    if-ne v6, v10, :cond_2a

    add-int/lit8 v6, v11, -0x1

    aget-byte v6, v7, v6

    if-nez v6, :cond_2a

    iget-object v6, v1, Lcom/samsung/android/service/SemService/SemServiceManager$1;->val$flag:Ljava/lang/String;

    const-string v10, "01"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_5e
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_6 .. :try_end_6} :catch_5d
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_6 .. :try_end_6} :catch_5c
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5b
    .catch Ljava/lang/Error; {:try_start_6 .. :try_end_6} :catch_5a

    const-string v10, "BDAL Fail"

    move/from16 v23, v11

    const-string v11, "RSP SW : "

    move/from16 v24, v14

    const-string v14, "BDAL Error"

    move/from16 v25, v15

    const-string v15, "Start ALL BDAL"

    if-eqz v6, :cond_4

    :try_start_7
    invoke-static {v4, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_e
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_7 .. :try_end_7} :catch_d
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_7 .. :try_end_7} :catch_c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_b
    .catch Ljava/lang/Error; {:try_start_7 .. :try_end_7} :catch_a

    const/4 v6, 0x5

    :try_start_8
    new-array v6, v6, [B

    fill-array-data v6, :array_3
    :try_end_8
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_8} :catch_9
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_8 .. :try_end_8} :catch_8
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_8 .. :try_end_8} :catch_7
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6
    .catch Ljava/lang/Error; {:try_start_8 .. :try_end_8} :catch_5

    :try_start_9
    iget-object v8, v1, Lcom/samsung/android/service/SemService/SemServiceManager$1;->this$0:Lcom/samsung/android/service/SemService/SemServiceManager;

    invoke-virtual {v8, v6}, Lcom/samsung/android/service/SemService/SemServiceManager;->send([B)[B

    move-result-object v8

    move-object v7, v8

    if-eqz v7, :cond_3

    array-length v8, v7

    const/4 v15, 0x2

    if-lt v8, v15, :cond_3

    array-length v2, v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    add-int/lit8 v11, v2, -0x2

    aget-byte v11, v7, v11

    invoke-static {v11}, Lcom/samsung/android/service/SemService/SemServiceManager;->byteToHex(B)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    add-int/lit8 v11, v2, -0x1

    aget-byte v11, v7, v11

    invoke-static {v11}, Lcom/samsung/android/service/SemService/SemServiceManager;->byteToHex(B)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x2

    if-lt v2, v8, :cond_2

    add-int/lit8 v8, v2, -0x2

    aget-byte v8, v7, v8

    const/16 v11, -0x70

    if-ne v8, v11, :cond_2

    add-int/lit8 v8, v2, -0x1

    aget-byte v8, v7, v8

    if-nez v8, :cond_2

    const-string v8, "BDAL Success"

    invoke-static {v4, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    invoke-static {v4, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v19, v19, 0x1

    :goto_1
    move v11, v2

    move-object/from16 v28, v12

    move-object/from16 v29, v13

    move-object/from16 v8, v21

    move/from16 v10, v22

    move/from16 v15, v25

    move-object/from16 v21, v9

    goto/16 :goto_1f

    :cond_3
    invoke-static {v4, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v8, Ljava/lang/Exception;

    invoke-direct {v8, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_9
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_9} :catch_e
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_9 .. :try_end_9} :catch_d
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_9 .. :try_end_9} :catch_c
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_b
    .catch Ljava/lang/Error; {:try_start_9 .. :try_end_9} :catch_a

    :catch_5
    move-exception v0

    move-object v2, v0

    goto :goto_2

    :catch_6
    move-exception v0

    move-object v2, v0

    goto :goto_3

    :catch_7
    move-exception v0

    move-object v2, v0

    goto :goto_4

    :catch_8
    move-exception v0

    move-object v2, v0

    goto :goto_5

    :catch_9
    move-exception v0

    move-object v2, v0

    goto :goto_6

    :goto_2
    move-object/from16 v21, v9

    move-object/from16 v28, v12

    move-object/from16 v29, v13

    move/from16 v10, v22

    move/from16 v14, v24

    move/from16 v15, v25

    goto/16 :goto_21

    :goto_3
    move-object/from16 v21, v9

    move-object/from16 v28, v12

    move-object/from16 v29, v13

    move/from16 v10, v22

    move/from16 v14, v24

    move/from16 v15, v25

    goto/16 :goto_22

    :goto_4
    move-object/from16 v21, v9

    move-object/from16 v28, v12

    move-object/from16 v29, v13

    move/from16 v10, v22

    move/from16 v14, v24

    move/from16 v15, v25

    goto/16 :goto_23

    :goto_5
    move-object/from16 v21, v9

    move-object/from16 v28, v12

    move-object/from16 v29, v13

    move/from16 v10, v22

    move/from16 v14, v24

    move/from16 v15, v25

    goto/16 :goto_24

    :goto_6
    move-object/from16 v21, v9

    move-object/from16 v28, v12

    move-object/from16 v29, v13

    move/from16 v10, v22

    move/from16 v14, v24

    move/from16 v15, v25

    goto/16 :goto_25

    :catch_a
    move-exception v0

    move-object v2, v0

    move-object/from16 v21, v9

    move-object/from16 v28, v12

    move-object/from16 v29, v13

    move/from16 v10, v22

    move/from16 v14, v24

    move/from16 v15, v25

    goto/16 :goto_21

    :catch_b
    move-exception v0

    move-object v2, v0

    move-object/from16 v21, v9

    move-object/from16 v28, v12

    move-object/from16 v29, v13

    move/from16 v10, v22

    move/from16 v14, v24

    move/from16 v15, v25

    goto/16 :goto_22

    :catch_c
    move-exception v0

    move-object v2, v0

    move-object/from16 v21, v9

    move-object/from16 v28, v12

    move-object/from16 v29, v13

    move/from16 v10, v22

    move/from16 v14, v24

    move/from16 v15, v25

    goto/16 :goto_23

    :catch_d
    move-exception v0

    move-object v2, v0

    move-object/from16 v21, v9

    move-object/from16 v28, v12

    move-object/from16 v29, v13

    move/from16 v10, v22

    move/from16 v14, v24

    move/from16 v15, v25

    goto/16 :goto_24

    :catch_e
    move-exception v0

    move-object v2, v0

    move-object/from16 v21, v9

    move-object/from16 v28, v12

    move-object/from16 v29, v13

    move/from16 v10, v22

    move/from16 v14, v24

    move/from16 v15, v25

    goto/16 :goto_25

    :cond_4
    :try_start_a
    const-string v6, "Start Get-L"

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_a} :catch_59
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_a .. :try_end_a} :catch_58
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_a .. :try_end_a} :catch_57
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_56
    .catch Ljava/lang/Error; {:try_start_a .. :try_end_a} :catch_55

    const/4 v6, 0x0

    move/from16 v32, v22

    move-object/from16 v22, v7

    move/from16 v7, v32

    :goto_7
    move/from16 v26, v5

    const/16 v5, 0x14

    move-object/from16 v27, v14

    if-ge v6, v5, :cond_d

    if-eqz v25, :cond_5

    :try_start_b
    const-string v5, "M"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, v1, Lcom/samsung/android/service/SemService/SemServiceManager$1;->this$0:Lcom/samsung/android/service/SemService/SemServiceManager;

    invoke-virtual {v5, v13}, Lcom/samsung/android/service/SemService/SemServiceManager;->send([B)[B

    move-result-object v5
    :try_end_b
    .catch Ljava/lang/NullPointerException; {:try_start_b .. :try_end_b} :catch_18
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_b .. :try_end_b} :catch_17
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_b .. :try_end_b} :catch_16
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_15
    .catch Ljava/lang/Error; {:try_start_b .. :try_end_b} :catch_14

    :try_start_c
    array-length v14, v5
    :try_end_c
    .catch Ljava/lang/NullPointerException; {:try_start_c .. :try_end_c} :catch_13
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_c .. :try_end_c} :catch_12
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_c .. :try_end_c} :catch_11
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_10
    .catch Ljava/lang/Error; {:try_start_c .. :try_end_c} :catch_f

    goto/16 :goto_8

    :catch_f
    move-exception v0

    move-object v2, v0

    move v10, v7

    move-object/from16 v21, v9

    move-object/from16 v28, v12

    move-object/from16 v29, v13

    move/from16 v14, v24

    move/from16 v15, v25

    move-object v7, v5

    move/from16 v5, v26

    goto/16 :goto_21

    :catch_10
    move-exception v0

    move-object v2, v0

    move v10, v7

    move-object/from16 v21, v9

    move-object/from16 v28, v12

    move-object/from16 v29, v13

    move/from16 v14, v24

    move/from16 v15, v25

    move-object v7, v5

    move/from16 v5, v26

    goto/16 :goto_22

    :catch_11
    move-exception v0

    move-object v2, v0

    move v10, v7

    move-object/from16 v21, v9

    move-object/from16 v28, v12

    move-object/from16 v29, v13

    move/from16 v14, v24

    move/from16 v15, v25

    move-object v7, v5

    move/from16 v5, v26

    goto/16 :goto_23

    :catch_12
    move-exception v0

    move-object v2, v0

    move v10, v7

    move-object/from16 v21, v9

    move-object/from16 v28, v12

    move-object/from16 v29, v13

    move/from16 v14, v24

    move/from16 v15, v25

    move-object v7, v5

    move/from16 v5, v26

    goto/16 :goto_24

    :catch_13
    move-exception v0

    move-object v2, v0

    move v10, v7

    move-object/from16 v21, v9

    move-object/from16 v28, v12

    move-object/from16 v29, v13

    move/from16 v14, v24

    move/from16 v15, v25

    move-object v7, v5

    move/from16 v5, v26

    goto/16 :goto_25

    :catch_14
    move-exception v0

    move-object v2, v0

    move v10, v7

    move-object/from16 v21, v9

    move-object/from16 v28, v12

    move-object/from16 v29, v13

    move-object/from16 v7, v22

    move/from16 v14, v24

    move/from16 v15, v25

    move/from16 v5, v26

    goto/16 :goto_21

    :catch_15
    move-exception v0

    move-object v2, v0

    move v10, v7

    move-object/from16 v21, v9

    move-object/from16 v28, v12

    move-object/from16 v29, v13

    move-object/from16 v7, v22

    move/from16 v14, v24

    move/from16 v15, v25

    move/from16 v5, v26

    goto/16 :goto_22

    :catch_16
    move-exception v0

    move-object v2, v0

    move v10, v7

    move-object/from16 v21, v9

    move-object/from16 v28, v12

    move-object/from16 v29, v13

    move-object/from16 v7, v22

    move/from16 v14, v24

    move/from16 v15, v25

    move/from16 v5, v26

    goto/16 :goto_23

    :catch_17
    move-exception v0

    move-object v2, v0

    move v10, v7

    move-object/from16 v21, v9

    move-object/from16 v28, v12

    move-object/from16 v29, v13

    move-object/from16 v7, v22

    move/from16 v14, v24

    move/from16 v15, v25

    move/from16 v5, v26

    goto/16 :goto_24

    :catch_18
    move-exception v0

    move-object v2, v0

    move v10, v7

    move-object/from16 v21, v9

    move-object/from16 v28, v12

    move-object/from16 v29, v13

    move-object/from16 v7, v22

    move/from16 v14, v24

    move/from16 v15, v25

    move/from16 v5, v26

    goto/16 :goto_25

    :cond_5
    :try_start_d
    iget-object v5, v1, Lcom/samsung/android/service/SemService/SemServiceManager$1;->this$0:Lcom/samsung/android/service/SemService/SemServiceManager;

    invoke-virtual {v5, v12}, Lcom/samsung/android/service/SemService/SemServiceManager;->send([B)[B

    move-result-object v5
    :try_end_d
    .catch Ljava/lang/NullPointerException; {:try_start_d .. :try_end_d} :catch_31
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_d .. :try_end_d} :catch_30
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_d .. :try_end_d} :catch_2f
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_2e
    .catch Ljava/lang/Error; {:try_start_d .. :try_end_d} :catch_2d

    :try_start_e
    array-length v14, v5
    :try_end_e
    .catch Ljava/lang/NullPointerException; {:try_start_e .. :try_end_e} :catch_2c
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_e .. :try_end_e} :catch_2b
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_e .. :try_end_e} :catch_2a
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_29
    .catch Ljava/lang/Error; {:try_start_e .. :try_end_e} :catch_28

    :goto_8
    move-object/from16 v28, v12

    :try_start_f
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_f
    .catch Ljava/lang/NullPointerException; {:try_start_f .. :try_end_f} :catch_27
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_f .. :try_end_f} :catch_26
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_f .. :try_end_f} :catch_25
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_24
    .catch Ljava/lang/Error; {:try_start_f .. :try_end_f} :catch_23

    move-object/from16 v29, v13

    :try_start_10
    const-string v13, "List SW : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    add-int/lit8 v13, v14, -0x2

    aget-byte v13, v5, v13

    invoke-static {v13}, Lcom/samsung/android/service/SemService/SemServiceManager;->byteToHex(B)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    add-int/lit8 v13, v14, -0x1

    aget-byte v13, v5, v13

    invoke-static {v13}, Lcom/samsung/android/service/SemService/SemServiceManager;->byteToHex(B)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v4, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catch Ljava/lang/NullPointerException; {:try_start_10 .. :try_end_10} :catch_22
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_10 .. :try_end_10} :catch_21
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_10 .. :try_end_10} :catch_20
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_1f
    .catch Ljava/lang/Error; {:try_start_10 .. :try_end_10} :catch_1e

    const-string v12, "Size Error"

    const/4 v13, 0x2

    if-lt v14, v13, :cond_7

    add-int/lit8 v13, v14, -0x2

    :try_start_11
    aget-byte v13, v5, v13

    move-object/from16 v30, v10

    const/16 v10, 0x63

    if-ne v13, v10, :cond_8

    add-int/lit8 v10, v14, -0x1

    aget-byte v10, v5, v10

    const/16 v13, 0x10

    if-ne v10, v13, :cond_8

    const-string v10, "M-Get List"

    invoke-static {v4, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v25, 0x1

    add-int/lit8 v10, v14, -0x2

    add-int/2addr v10, v7

    const v13, 0x16800

    if-le v10, v13, :cond_6

    invoke-static {v4, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    :cond_6
    add-int/lit8 v10, v14, -0x2

    const/4 v12, 0x0

    invoke-static {v5, v12, v9, v7, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v10, v14, -0x2

    add-int/2addr v7, v10

    :goto_9
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v22, v5

    move/from16 v23, v14

    move/from16 v5, v26

    move-object/from16 v14, v27

    move-object/from16 v12, v28

    move-object/from16 v13, v29

    move-object/from16 v10, v30

    goto/16 :goto_7

    :cond_7
    move-object/from16 v30, v10

    :cond_8
    const/4 v10, 0x2

    if-lt v14, v10, :cond_b

    add-int/lit8 v10, v14, -0x2

    aget-byte v10, v5, v10

    const/16 v13, -0x70

    if-ne v10, v13, :cond_b

    add-int/lit8 v10, v14, -0x1

    aget-byte v10, v5, v10

    if-nez v10, :cond_b

    const-string v10, "Get List Succ"

    invoke-static {v4, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catch Ljava/lang/NullPointerException; {:try_start_11 .. :try_end_11} :catch_22
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_11 .. :try_end_11} :catch_21
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_11 .. :try_end_11} :catch_20
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_1f
    .catch Ljava/lang/Error; {:try_start_11 .. :try_end_11} :catch_1e

    const/4 v10, 0x0

    add-int/lit8 v13, v14, -0x2

    add-int/2addr v13, v7

    move/from16 v31, v6

    const v6, 0x16800

    if-le v13, v6, :cond_9

    :try_start_12
    invoke-static {v4, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    :cond_9
    add-int/lit8 v6, v14, -0x2

    const/4 v12, 0x0

    invoke-static {v5, v12, v9, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v6, v14, -0x2

    add-int/2addr v7, v6

    :goto_a
    iget-object v6, v1, Lcom/samsung/android/service/SemService/SemServiceManager$1;->this$0:Lcom/samsung/android/service/SemService/SemServiceManager;

    invoke-static {v6, v9, v7}, Lcom/samsung/android/service/SemService/SemServiceManager;->-$$Nest$mparseList(Lcom/samsung/android/service/SemService/SemServiceManager;[BI)Ljava/util/ArrayList;

    move-result-object v6

    if-eqz v6, :cond_a

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "L CNT : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v4, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catch Ljava/lang/NullPointerException; {:try_start_12 .. :try_end_12} :catch_1d
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_12 .. :try_end_12} :catch_1c
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_12 .. :try_end_12} :catch_1b
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_1a
    .catch Ljava/lang/Error; {:try_start_12 .. :try_end_12} :catch_19

    :cond_a
    move/from16 v25, v10

    move/from16 v23, v14

    move v10, v7

    move-object v7, v5

    goto/16 :goto_b

    :catch_19
    move-exception v0

    move-object v2, v0

    move-object/from16 v21, v9

    move v15, v10

    move/from16 v14, v24

    move v10, v7

    move-object v7, v5

    move/from16 v5, v26

    goto/16 :goto_21

    :catch_1a
    move-exception v0

    move-object v2, v0

    move-object/from16 v21, v9

    move v15, v10

    move/from16 v14, v24

    move v10, v7

    move-object v7, v5

    move/from16 v5, v26

    goto/16 :goto_22

    :catch_1b
    move-exception v0

    move-object v2, v0

    move-object/from16 v21, v9

    move v15, v10

    move/from16 v14, v24

    move v10, v7

    move-object v7, v5

    move/from16 v5, v26

    goto/16 :goto_23

    :catch_1c
    move-exception v0

    move-object v2, v0

    move-object/from16 v21, v9

    move v15, v10

    move/from16 v14, v24

    move v10, v7

    move-object v7, v5

    move/from16 v5, v26

    goto/16 :goto_24

    :catch_1d
    move-exception v0

    move-object v2, v0

    move-object/from16 v21, v9

    move v15, v10

    move/from16 v14, v24

    move v10, v7

    move-object v7, v5

    move/from16 v5, v26

    goto/16 :goto_25

    :cond_b
    move/from16 v31, v6

    const/4 v6, 0x2

    if-lt v14, v6, :cond_c

    add-int/lit8 v6, v14, -0x2

    :try_start_13
    aget-byte v6, v5, v6

    const/16 v8, 0x6a

    if-ne v6, v8, :cond_c

    add-int/lit8 v6, v14, -0x1

    aget-byte v6, v5, v6

    const/16 v8, -0x78

    if-ne v6, v8, :cond_c

    const-string v6, "List Null"

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v16, 0x1

    new-instance v6, Ljava/lang/Exception;

    invoke-direct {v6, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_c
    const-string v6, "Get List Fail"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Ljava/lang/Exception;

    invoke-direct {v6, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_13
    .catch Ljava/lang/NullPointerException; {:try_start_13 .. :try_end_13} :catch_22
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_13 .. :try_end_13} :catch_21
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_13 .. :try_end_13} :catch_20
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_1f
    .catch Ljava/lang/Error; {:try_start_13 .. :try_end_13} :catch_1e

    :catch_1e
    move-exception v0

    move-object v2, v0

    move v10, v7

    move-object/from16 v21, v9

    move/from16 v14, v24

    move/from16 v15, v25

    move-object v7, v5

    move/from16 v5, v26

    goto/16 :goto_21

    :catch_1f
    move-exception v0

    move-object v2, v0

    move v10, v7

    move-object/from16 v21, v9

    move/from16 v14, v24

    move/from16 v15, v25

    move-object v7, v5

    move/from16 v5, v26

    goto/16 :goto_22

    :catch_20
    move-exception v0

    move-object v2, v0

    move v10, v7

    move-object/from16 v21, v9

    move/from16 v14, v24

    move/from16 v15, v25

    move-object v7, v5

    move/from16 v5, v26

    goto/16 :goto_23

    :catch_21
    move-exception v0

    move-object v2, v0

    move v10, v7

    move-object/from16 v21, v9

    move/from16 v14, v24

    move/from16 v15, v25

    move-object v7, v5

    move/from16 v5, v26

    goto/16 :goto_24

    :catch_22
    move-exception v0

    move-object v2, v0

    move v10, v7

    move-object/from16 v21, v9

    move/from16 v14, v24

    move/from16 v15, v25

    move-object v7, v5

    move/from16 v5, v26

    goto/16 :goto_25

    :catch_23
    move-exception v0

    move-object/from16 v29, v13

    move-object v2, v0

    move v10, v7

    move-object/from16 v21, v9

    move/from16 v14, v24

    move/from16 v15, v25

    move-object v7, v5

    move/from16 v5, v26

    goto/16 :goto_21

    :catch_24
    move-exception v0

    move-object/from16 v29, v13

    move-object v2, v0

    move v10, v7

    move-object/from16 v21, v9

    move/from16 v14, v24

    move/from16 v15, v25

    move-object v7, v5

    move/from16 v5, v26

    goto/16 :goto_22

    :catch_25
    move-exception v0

    move-object/from16 v29, v13

    move-object v2, v0

    move v10, v7

    move-object/from16 v21, v9

    move/from16 v14, v24

    move/from16 v15, v25

    move-object v7, v5

    move/from16 v5, v26

    goto/16 :goto_23

    :catch_26
    move-exception v0

    move-object/from16 v29, v13

    move-object v2, v0

    move v10, v7

    move-object/from16 v21, v9

    move/from16 v14, v24

    move/from16 v15, v25

    move-object v7, v5

    move/from16 v5, v26

    goto/16 :goto_24

    :catch_27
    move-exception v0

    move-object/from16 v29, v13

    move-object v2, v0

    move v10, v7

    move-object/from16 v21, v9

    move/from16 v14, v24

    move/from16 v15, v25

    move-object v7, v5

    move/from16 v5, v26

    goto/16 :goto_25

    :catch_28
    move-exception v0

    move-object/from16 v28, v12

    move-object/from16 v29, v13

    move-object v2, v0

    move v10, v7

    move-object/from16 v21, v9

    move/from16 v14, v24

    move/from16 v15, v25

    move-object v7, v5

    move/from16 v5, v26

    goto/16 :goto_21

    :catch_29
    move-exception v0

    move-object/from16 v28, v12

    move-object/from16 v29, v13

    move-object v2, v0

    move v10, v7

    move-object/from16 v21, v9

    move/from16 v14, v24

    move/from16 v15, v25

    move-object v7, v5

    move/from16 v5, v26

    goto/16 :goto_22

    :catch_2a
    move-exception v0

    move-object/from16 v28, v12

    move-object/from16 v29, v13

    move-object v2, v0

    move v10, v7

    move-object/from16 v21, v9

    move/from16 v14, v24

    move/from16 v15, v25

    move-object v7, v5

    move/from16 v5, v26

    goto/16 :goto_23

    :catch_2b
    move-exception v0

    move-object/from16 v28, v12

    move-object/from16 v29, v13

    move-object v2, v0

    move v10, v7

    move-object/from16 v21, v9

    move/from16 v14, v24

    move/from16 v15, v25

    move-object v7, v5

    move/from16 v5, v26

    goto/16 :goto_24

    :catch_2c
    move-exception v0

    move-object/from16 v28, v12

    move-object/from16 v29, v13

    move-object v2, v0

    move v10, v7

    move-object/from16 v21, v9

    move/from16 v14, v24

    move/from16 v15, v25

    move-object v7, v5

    move/from16 v5, v26

    goto/16 :goto_25

    :catch_2d
    move-exception v0

    move-object/from16 v28, v12

    move-object/from16 v29, v13

    move-object v2, v0

    move v10, v7

    move-object/from16 v21, v9

    move-object/from16 v7, v22

    move/from16 v14, v24

    move/from16 v15, v25

    move/from16 v5, v26

    goto/16 :goto_21

    :catch_2e
    move-exception v0

    move-object/from16 v28, v12

    move-object/from16 v29, v13

    move-object v2, v0

    move v10, v7

    move-object/from16 v21, v9

    move-object/from16 v7, v22

    move/from16 v14, v24

    move/from16 v15, v25

    move/from16 v5, v26

    goto/16 :goto_22

    :catch_2f
    move-exception v0

    move-object/from16 v28, v12

    move-object/from16 v29, v13

    move-object v2, v0

    move v10, v7

    move-object/from16 v21, v9

    move-object/from16 v7, v22

    move/from16 v14, v24

    move/from16 v15, v25

    move/from16 v5, v26

    goto/16 :goto_23

    :catch_30
    move-exception v0

    move-object/from16 v28, v12

    move-object/from16 v29, v13

    move-object v2, v0

    move v10, v7

    move-object/from16 v21, v9

    move-object/from16 v7, v22

    move/from16 v14, v24

    move/from16 v15, v25

    move/from16 v5, v26

    goto/16 :goto_24

    :catch_31
    move-exception v0

    move-object/from16 v28, v12

    move-object/from16 v29, v13

    move-object v2, v0

    move v10, v7

    move-object/from16 v21, v9

    move-object/from16 v7, v22

    move/from16 v14, v24

    move/from16 v15, v25

    move/from16 v5, v26

    goto/16 :goto_25

    :cond_d
    move/from16 v31, v6

    move-object/from16 v30, v10

    move-object/from16 v28, v12

    move-object/from16 v29, v13

    move v10, v7

    move-object/from16 v6, v20

    move-object/from16 v7, v22

    :goto_b
    const/4 v5, 0x0

    const/4 v12, 0x1

    :try_start_14
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13
    :try_end_14
    .catch Ljava/lang/NullPointerException; {:try_start_14 .. :try_end_14} :catch_54
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_14 .. :try_end_14} :catch_53
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_14 .. :try_end_14} :catch_52
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_51
    .catch Ljava/lang/Error; {:try_start_14 .. :try_end_14} :catch_50

    move-object v12, v13

    if-nez v6, :cond_e

    :try_start_15
    const-string v2, "whiteAidList Null"

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15
    .catch Ljava/lang/NullPointerException; {:try_start_15 .. :try_end_15} :catch_36
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_15 .. :try_end_15} :catch_35
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_15 .. :try_end_15} :catch_34
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_33
    .catch Ljava/lang/Error; {:try_start_15 .. :try_end_15} :catch_32

    const/16 v2, -0xd

    move/from16 v26, v2

    move-object/from16 v8, v21

    move/from16 v11, v23

    move-object/from16 v21, v9

    goto/16 :goto_1d

    :catch_32
    move-exception v0

    move-object v2, v0

    move-object/from16 v21, v9

    move/from16 v14, v24

    move/from16 v15, v25

    move/from16 v5, v26

    goto/16 :goto_21

    :catch_33
    move-exception v0

    move-object v2, v0

    move-object/from16 v21, v9

    move/from16 v14, v24

    move/from16 v15, v25

    move/from16 v5, v26

    goto/16 :goto_22

    :catch_34
    move-exception v0

    move-object v2, v0

    move-object/from16 v21, v9

    move/from16 v14, v24

    move/from16 v15, v25

    move/from16 v5, v26

    goto/16 :goto_23

    :catch_35
    move-exception v0

    move-object v2, v0

    move-object/from16 v21, v9

    move/from16 v14, v24

    move/from16 v15, v25

    move/from16 v5, v26

    goto/16 :goto_24

    :catch_36
    move-exception v0

    move-object v2, v0

    move-object/from16 v21, v9

    move/from16 v14, v24

    move/from16 v15, v25

    move/from16 v5, v26

    goto/16 :goto_25

    :cond_e
    :try_start_16
    iget-object v13, v1, Lcom/samsung/android/service/SemService/SemServiceManager$1;->val$flag:Ljava/lang/String;

    invoke-virtual {v13, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8
    :try_end_16
    .catch Ljava/lang/NullPointerException; {:try_start_16 .. :try_end_16} :catch_54
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_16 .. :try_end_16} :catch_53
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_16 .. :try_end_16} :catch_52
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_51
    .catch Ljava/lang/Error; {:try_start_16 .. :try_end_16} :catch_50

    const-string v13, "COM List : "

    const-string v14, ""

    move-object/from16 v17, v5

    const-string v5, "#"

    move-object/from16 v20, v7

    const-string v7, "*"

    if-eqz v8, :cond_19

    :try_start_17
    const-string v2, "Start LD"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v1, Lcom/samsung/android/service/SemService/SemServiceManager$1;->val$aid:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_18

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_18

    const/4 v2, 0x0

    :goto_c
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v2, v8, :cond_17

    const/4 v8, 0x0

    :goto_d
    iget-object v11, v1, Lcom/samsung/android/service/SemService/SemServiceManager$1;->val$aid:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v8, v11, :cond_16

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v15, " : "

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v15, v1, Lcom/samsung/android/service/SemService/SemServiceManager$1;->val$aid:Ljava/util/ArrayList;

    invoke-virtual {v15, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    if-eqz v11, :cond_14

    iget-object v11, v1, Lcom/samsung/android/service/SemService/SemServiceManager$1;->val$aid:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    if-nez v11, :cond_f

    move-object/from16 v15, v21

    move-object/from16 v21, v9

    goto/16 :goto_e

    :cond_f
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    iget-object v15, v1, Lcom/samsung/android/service/SemService/SemServiceManager$1;->val$aid:Ljava/util/ArrayList;

    invoke-virtual {v15, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v11, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11
    :try_end_17
    .catch Ljava/lang/NullPointerException; {:try_start_17 .. :try_end_17} :catch_40
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_17 .. :try_end_17} :catch_3f
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_17 .. :try_end_17} :catch_3e
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_3d
    .catch Ljava/lang/Error; {:try_start_17 .. :try_end_17} :catch_3c

    if-eqz v11, :cond_10

    :try_start_18
    const-string v11, "N A-DAL"

    invoke-static {v4, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    move-object/from16 v15, v21

    invoke-virtual {v15, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_18
    .catch Ljava/lang/NullPointerException; {:try_start_18 .. :try_end_18} :catch_3b
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_18 .. :try_end_18} :catch_3a
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_18 .. :try_end_18} :catch_39
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_38
    .catch Ljava/lang/Error; {:try_start_18 .. :try_end_18} :catch_37

    move-object/from16 v21, v9

    goto/16 :goto_10

    :catch_37
    move-exception v0

    move-object v2, v0

    move-object/from16 v21, v9

    move-object/from16 v7, v20

    move/from16 v14, v24

    move/from16 v15, v25

    move/from16 v5, v26

    goto/16 :goto_21

    :catch_38
    move-exception v0

    move-object v2, v0

    move-object/from16 v21, v9

    move-object/from16 v7, v20

    move/from16 v14, v24

    move/from16 v15, v25

    move/from16 v5, v26

    goto/16 :goto_22

    :catch_39
    move-exception v0

    move-object v2, v0

    move-object/from16 v21, v9

    move-object/from16 v7, v20

    move/from16 v14, v24

    move/from16 v15, v25

    move/from16 v5, v26

    goto/16 :goto_23

    :catch_3a
    move-exception v0

    move-object v2, v0

    move-object/from16 v21, v9

    move-object/from16 v7, v20

    move/from16 v14, v24

    move/from16 v15, v25

    move/from16 v5, v26

    goto/16 :goto_24

    :catch_3b
    move-exception v0

    move-object v2, v0

    move-object/from16 v21, v9

    move-object/from16 v7, v20

    move/from16 v14, v24

    move/from16 v15, v25

    move/from16 v5, v26

    goto/16 :goto_25

    :cond_10
    move-object/from16 v15, v21

    :try_start_19
    iget-object v11, v1, Lcom/samsung/android/service/SemService/SemServiceManager$1;->val$aid:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v11, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_12

    iget-object v11, v1, Lcom/samsung/android/service/SemService/SemServiceManager$1;->val$aid:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v11, v7, v14}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v11, v17

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17
    :try_end_19
    .catch Ljava/lang/NullPointerException; {:try_start_19 .. :try_end_19} :catch_40
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_19 .. :try_end_19} :catch_3f
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_19 .. :try_end_19} :catch_3e
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_3d
    .catch Ljava/lang/Error; {:try_start_19 .. :try_end_19} :catch_3c

    move-object/from16 v21, v9

    :try_start_1a
    move-object/from16 v9, v17

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_11

    const-string v9, "* A-DAL"

    invoke-static {v4, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v15, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v17, v11

    goto :goto_10

    :cond_11
    move-object/from16 v17, v11

    goto :goto_f

    :cond_12
    move-object/from16 v21, v9

    iget-object v9, v1, Lcom/samsung/android/service/SemService/SemServiceManager$1;->val$aid:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v9, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_15

    iget-object v9, v1, Lcom/samsung/android/service/SemService/SemServiceManager$1;->val$aid:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v9, v5, v14}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object v9, v11

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v11, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_13

    const-string v11, "# A-DAL"

    invoke-static {v4, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v15, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v17, v9

    goto :goto_10

    :cond_13
    move-object/from16 v17, v9

    goto :goto_f

    :cond_14
    move-object/from16 v15, v21

    move-object/from16 v21, v9

    :goto_e
    const-string v9, "COM Data Error"

    invoke-static {v4, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    :goto_f
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v9, v21

    move-object/from16 v21, v15

    goto/16 :goto_d

    :cond_16
    move-object/from16 v15, v21

    move-object/from16 v21, v9

    :goto_10
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v9, v21

    move-object/from16 v21, v15

    goto/16 :goto_c

    :cond_17
    move-object/from16 v15, v21

    move-object/from16 v21, v9

    move-object v8, v15

    move-object/from16 v5, v17

    move-object/from16 v7, v20

    move/from16 v11, v23

    goto/16 :goto_1d

    :cond_18
    move-object/from16 v15, v21

    move-object/from16 v21, v9

    move-object v8, v15

    goto/16 :goto_1c

    :catch_3c
    move-exception v0

    move-object/from16 v21, v9

    move-object v2, v0

    move-object/from16 v7, v20

    move/from16 v14, v24

    move/from16 v15, v25

    move/from16 v5, v26

    goto/16 :goto_21

    :catch_3d
    move-exception v0

    move-object/from16 v21, v9

    move-object v2, v0

    move-object/from16 v7, v20

    move/from16 v14, v24

    move/from16 v15, v25

    move/from16 v5, v26

    goto/16 :goto_22

    :catch_3e
    move-exception v0

    move-object/from16 v21, v9

    move-object v2, v0

    move-object/from16 v7, v20

    move/from16 v14, v24

    move/from16 v15, v25

    move/from16 v5, v26

    goto/16 :goto_23

    :catch_3f
    move-exception v0

    move-object/from16 v21, v9

    move-object v2, v0

    move-object/from16 v7, v20

    move/from16 v14, v24

    move/from16 v15, v25

    move/from16 v5, v26

    goto/16 :goto_24

    :catch_40
    move-exception v0

    move-object/from16 v21, v9

    move-object v2, v0

    move-object/from16 v7, v20

    move/from16 v14, v24

    move/from16 v15, v25

    move/from16 v5, v26

    goto/16 :goto_25

    :cond_19
    move-object/from16 v8, v21

    move-object/from16 v21, v9

    iget-object v9, v1, Lcom/samsung/android/service/SemService/SemServiceManager$1;->val$flag:Ljava/lang/String;

    invoke-virtual {v9, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_28

    const-string v9, "Start BLD"

    invoke-static {v4, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, v1, Lcom/samsung/android/service/SemService/SemServiceManager$1;->val$aid:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_24

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_24

    const/4 v2, 0x0

    :goto_11
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v2, v9, :cond_23

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    move-object v9, v11

    const/4 v11, 0x0

    :goto_12
    iget-object v12, v1, Lcom/samsung/android/service/SemService/SemServiceManager$1;->val$aid:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v11, v12, :cond_21

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v15, " : "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v15, v1, Lcom/samsung/android/service/SemService/SemServiceManager$1;->val$aid:Ljava/util/ArrayList;

    invoke-virtual {v15, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v4, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    if-eqz v12, :cond_20

    iget-object v12, v1, Lcom/samsung/android/service/SemService/SemServiceManager$1;->val$aid:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    if-nez v12, :cond_1a

    const/4 v15, 0x0

    goto/16 :goto_13

    :cond_1a
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    iget-object v15, v1, Lcom/samsung/android/service/SemService/SemServiceManager$1;->val$aid:Ljava/util/ArrayList;

    invoke-virtual {v15, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v12, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1b

    const-string v12, "N"

    invoke-static {v4, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    move-object v9, v15

    move-object v12, v9

    const/4 v15, 0x0

    goto/16 :goto_15

    :cond_1b
    iget-object v12, v1, Lcom/samsung/android/service/SemService/SemServiceManager$1;->val$aid:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v12, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_1d

    iget-object v12, v1, Lcom/samsung/android/service/SemService/SemServiceManager$1;->val$aid:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v12, v7, v14}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object v12, v15

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v15, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_1c

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    move-object/from16 v9, v17

    move-object/from16 v17, v12

    const/4 v15, 0x0

    move-object v12, v9

    goto :goto_15

    :cond_1c
    move-object/from16 v17, v12

    const/4 v15, 0x0

    goto :goto_14

    :cond_1d
    iget-object v12, v1, Lcom/samsung/android/service/SemService/SemServiceManager$1;->val$aid:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v12, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_1f

    iget-object v12, v1, Lcom/samsung/android/service/SemService/SemServiceManager$1;->val$aid:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v12, v5, v14}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object v12, v15

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v15, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_1e

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    move-object/from16 v9, v17

    move-object/from16 v17, v12

    move-object v12, v9

    goto :goto_15

    :cond_1e
    const/4 v15, 0x0

    move-object/from16 v17, v12

    goto :goto_14

    :cond_1f
    const/4 v15, 0x0

    goto :goto_14

    :cond_20
    const/4 v15, 0x0

    :goto_13
    const-string v12, "COM Data Error"

    invoke-static {v4, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_14
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_12

    :cond_21
    const/4 v15, 0x0

    move-object v12, v9

    :goto_15
    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_22

    const-string v9, "A-DAL"

    invoke-static {v4, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_22
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_11

    :cond_23
    move-object/from16 v5, v17

    move-object/from16 v7, v20

    move/from16 v11, v23

    goto/16 :goto_1d

    :cond_24
    iget-object v5, v1, Lcom/samsung/android/service/SemService/SemServiceManager$1;->val$aid:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v7, 0x1

    if-ge v5, v7, :cond_27

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_27

    invoke-static {v4, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a
    .catch Ljava/lang/NullPointerException; {:try_start_1a .. :try_end_1a} :catch_4f
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1a .. :try_end_1a} :catch_4e
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1a .. :try_end_1a} :catch_4d
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_4c
    .catch Ljava/lang/Error; {:try_start_1a .. :try_end_1a} :catch_4b

    const/4 v5, 0x5

    :try_start_1b
    new-array v5, v5, [B

    fill-array-data v5, :array_4
    :try_end_1b
    .catch Ljava/lang/NullPointerException; {:try_start_1b .. :try_end_1b} :catch_45
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1b .. :try_end_1b} :catch_44
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1b .. :try_end_1b} :catch_43
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_42
    .catch Ljava/lang/Error; {:try_start_1b .. :try_end_1b} :catch_41

    :try_start_1c
    iget-object v7, v1, Lcom/samsung/android/service/SemService/SemServiceManager$1;->this$0:Lcom/samsung/android/service/SemService/SemServiceManager;

    invoke-virtual {v7, v5}, Lcom/samsung/android/service/SemService/SemServiceManager;->send([B)[B

    move-result-object v7
    :try_end_1c
    .catch Ljava/lang/NullPointerException; {:try_start_1c .. :try_end_1c} :catch_4f
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1c .. :try_end_1c} :catch_4e
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1c .. :try_end_1c} :catch_4d
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_4c
    .catch Ljava/lang/Error; {:try_start_1c .. :try_end_1c} :catch_4b

    if-eqz v7, :cond_26

    :try_start_1d
    array-length v9, v7

    const/4 v13, 0x2

    if-lt v9, v13, :cond_26

    array-length v2, v7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    add-int/lit8 v11, v2, -0x2

    aget-byte v11, v7, v11

    invoke-static {v11}, Lcom/samsung/android/service/SemService/SemServiceManager;->byteToHex(B)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    add-int/lit8 v11, v2, -0x1

    aget-byte v11, v7, v11

    invoke-static {v11}, Lcom/samsung/android/service/SemService/SemServiceManager;->byteToHex(B)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x2

    if-lt v2, v9, :cond_25

    add-int/lit8 v9, v2, -0x2

    aget-byte v9, v7, v9

    const/16 v11, -0x70

    if-ne v9, v11, :cond_25

    add-int/lit8 v9, v2, -0x1

    aget-byte v9, v7, v9

    if-nez v9, :cond_25

    const-string v9, "BDAL Success"

    invoke-static {v4, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16

    :cond_25
    move-object/from16 v9, v30

    invoke-static {v4, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v19, v19, 0x1

    :goto_16
    move v11, v2

    move-object/from16 v5, v17

    goto/16 :goto_1d

    :cond_26
    move-object/from16 v9, v27

    invoke-static {v4, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v9, Ljava/lang/Exception;

    invoke-direct {v9, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_1d
    .catch Ljava/lang/NullPointerException; {:try_start_1d .. :try_end_1d} :catch_4a
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1d .. :try_end_1d} :catch_49
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1d .. :try_end_1d} :catch_48
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_47
    .catch Ljava/lang/Error; {:try_start_1d .. :try_end_1d} :catch_46

    :catch_41
    move-exception v0

    move-object v2, v0

    goto :goto_17

    :catch_42
    move-exception v0

    move-object v2, v0

    goto :goto_18

    :catch_43
    move-exception v0

    move-object v2, v0

    goto :goto_19

    :catch_44
    move-exception v0

    move-object v2, v0

    goto :goto_1a

    :catch_45
    move-exception v0

    move-object v2, v0

    goto :goto_1b

    :goto_17
    move-object/from16 v7, v20

    move/from16 v14, v24

    move/from16 v15, v25

    move/from16 v5, v26

    goto/16 :goto_21

    :goto_18
    move-object/from16 v7, v20

    move/from16 v14, v24

    move/from16 v15, v25

    move/from16 v5, v26

    goto/16 :goto_22

    :goto_19
    move-object/from16 v7, v20

    move/from16 v14, v24

    move/from16 v15, v25

    move/from16 v5, v26

    goto/16 :goto_23

    :goto_1a
    move-object/from16 v7, v20

    move/from16 v14, v24

    move/from16 v15, v25

    move/from16 v5, v26

    goto/16 :goto_24

    :goto_1b
    move-object/from16 v7, v20

    move/from16 v14, v24

    move/from16 v15, v25

    move/from16 v5, v26

    goto/16 :goto_25

    :cond_27
    :goto_1c
    move-object/from16 v5, v17

    move-object/from16 v7, v20

    move/from16 v11, v23

    goto :goto_1d

    :cond_28
    :try_start_1e
    const-string v2, "Type Error"

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1e
    .catch Ljava/lang/NullPointerException; {:try_start_1e .. :try_end_1e} :catch_4f
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1e .. :try_end_1e} :catch_4e
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1e .. :try_end_1e} :catch_4d
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_4c
    .catch Ljava/lang/Error; {:try_start_1e .. :try_end_1e} :catch_4b

    const/16 v2, -0xd

    move/from16 v26, v2

    move-object/from16 v5, v17

    move-object/from16 v7, v20

    move/from16 v11, v23

    :goto_1d
    :try_start_1f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "DL CNT : "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v9, 0x1

    if-ge v2, v9, :cond_29

    const-string v2, "DA List Null"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v5, v26

    goto :goto_1e

    :cond_29
    iget-object v2, v1, Lcom/samsung/android/service/SemService/SemServiceManager$1;->this$0:Lcom/samsung/android/service/SemService/SemServiceManager;

    invoke-static {v2, v8}, Lcom/samsung/android/service/SemService/SemServiceManager;->-$$Nest$mAIDDeactivation(Lcom/samsung/android/service/SemService/SemServiceManager;Ljava/util/ArrayList;)I

    move-result v2
    :try_end_1f
    .catch Ljava/lang/NullPointerException; {:try_start_1f .. :try_end_1f} :catch_4a
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1f .. :try_end_1f} :catch_49
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1f .. :try_end_1f} :catch_48
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_47
    .catch Ljava/lang/Error; {:try_start_1f .. :try_end_1f} :catch_46

    add-int v19, v19, v2

    move v5, v2

    :goto_1e
    move-object/from16 v20, v6

    move/from16 v15, v25

    goto/16 :goto_1f

    :catch_46
    move-exception v0

    move-object v2, v0

    move/from16 v14, v24

    move/from16 v15, v25

    move/from16 v5, v26

    goto/16 :goto_21

    :catch_47
    move-exception v0

    move-object v2, v0

    move/from16 v14, v24

    move/from16 v15, v25

    move/from16 v5, v26

    goto/16 :goto_22

    :catch_48
    move-exception v0

    move-object v2, v0

    move/from16 v14, v24

    move/from16 v15, v25

    move/from16 v5, v26

    goto/16 :goto_23

    :catch_49
    move-exception v0

    move-object v2, v0

    move/from16 v14, v24

    move/from16 v15, v25

    move/from16 v5, v26

    goto/16 :goto_24

    :catch_4a
    move-exception v0

    move-object v2, v0

    move/from16 v14, v24

    move/from16 v15, v25

    move/from16 v5, v26

    goto/16 :goto_25

    :catch_4b
    move-exception v0

    move-object v2, v0

    move-object/from16 v7, v20

    move/from16 v14, v24

    move/from16 v15, v25

    move/from16 v5, v26

    goto/16 :goto_21

    :catch_4c
    move-exception v0

    move-object v2, v0

    move-object/from16 v7, v20

    move/from16 v14, v24

    move/from16 v15, v25

    move/from16 v5, v26

    goto/16 :goto_22

    :catch_4d
    move-exception v0

    move-object v2, v0

    move-object/from16 v7, v20

    move/from16 v14, v24

    move/from16 v15, v25

    move/from16 v5, v26

    goto/16 :goto_23

    :catch_4e
    move-exception v0

    move-object v2, v0

    move-object/from16 v7, v20

    move/from16 v14, v24

    move/from16 v15, v25

    move/from16 v5, v26

    goto/16 :goto_24

    :catch_4f
    move-exception v0

    move-object v2, v0

    move-object/from16 v7, v20

    move/from16 v14, v24

    move/from16 v15, v25

    move/from16 v5, v26

    goto/16 :goto_25

    :catch_50
    move-exception v0

    move-object/from16 v20, v7

    move-object/from16 v21, v9

    move-object v2, v0

    move/from16 v14, v24

    move/from16 v15, v25

    move/from16 v5, v26

    goto/16 :goto_21

    :catch_51
    move-exception v0

    move-object/from16 v20, v7

    move-object/from16 v21, v9

    move-object v2, v0

    move/from16 v14, v24

    move/from16 v15, v25

    move/from16 v5, v26

    goto/16 :goto_22

    :catch_52
    move-exception v0

    move-object/from16 v20, v7

    move-object/from16 v21, v9

    move-object v2, v0

    move/from16 v14, v24

    move/from16 v15, v25

    move/from16 v5, v26

    goto/16 :goto_23

    :catch_53
    move-exception v0

    move-object/from16 v20, v7

    move-object/from16 v21, v9

    move-object v2, v0

    move/from16 v14, v24

    move/from16 v15, v25

    move/from16 v5, v26

    goto/16 :goto_24

    :catch_54
    move-exception v0

    move-object/from16 v20, v7

    move-object/from16 v21, v9

    move-object v2, v0

    move/from16 v14, v24

    move/from16 v15, v25

    move/from16 v5, v26

    goto/16 :goto_25

    :catch_55
    move-exception v0

    move/from16 v26, v5

    move-object/from16 v21, v9

    move-object/from16 v28, v12

    move-object/from16 v29, v13

    move-object v2, v0

    move/from16 v10, v22

    move/from16 v14, v24

    move/from16 v15, v25

    goto/16 :goto_21

    :catch_56
    move-exception v0

    move/from16 v26, v5

    move-object/from16 v21, v9

    move-object/from16 v28, v12

    move-object/from16 v29, v13

    move-object v2, v0

    move/from16 v10, v22

    move/from16 v14, v24

    move/from16 v15, v25

    goto/16 :goto_22

    :catch_57
    move-exception v0

    move/from16 v26, v5

    move-object/from16 v21, v9

    move-object/from16 v28, v12

    move-object/from16 v29, v13

    move-object v2, v0

    move/from16 v10, v22

    move/from16 v14, v24

    move/from16 v15, v25

    goto/16 :goto_23

    :catch_58
    move-exception v0

    move/from16 v26, v5

    move-object/from16 v21, v9

    move-object/from16 v28, v12

    move-object/from16 v29, v13

    move-object v2, v0

    move/from16 v10, v22

    move/from16 v14, v24

    move/from16 v15, v25

    goto/16 :goto_24

    :catch_59
    move-exception v0

    move/from16 v26, v5

    move-object/from16 v21, v9

    move-object/from16 v28, v12

    move-object/from16 v29, v13

    move-object v2, v0

    move/from16 v10, v22

    move/from16 v14, v24

    move/from16 v15, v25

    goto/16 :goto_25

    :cond_2a
    move/from16 v26, v5

    move/from16 v23, v11

    move-object/from16 v28, v12

    move-object/from16 v29, v13

    move/from16 v24, v14

    move/from16 v25, v15

    move-object/from16 v8, v21

    move-object/from16 v21, v9

    :try_start_20
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Selet Fail"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v7}, Lcom/samsung/android/service/SemService/SemServiceManager;->bytesToHex([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v5, -0xb

    move/from16 v10, v22

    move/from16 v11, v23

    move/from16 v15, v25

    :goto_1f
    if-lez v19, :cond_2b

    const/16 v5, -0x12

    :cond_2b
    move/from16 v14, v24

    goto/16 :goto_27

    :catch_5a
    move-exception v0

    move/from16 v26, v5

    move-object/from16 v21, v9

    move-object/from16 v28, v12

    move-object/from16 v29, v13

    move/from16 v24, v14

    move/from16 v25, v15

    move-object v2, v0

    move/from16 v10, v22

    goto/16 :goto_21

    :catch_5b
    move-exception v0

    move/from16 v26, v5

    move-object/from16 v21, v9

    move-object/from16 v28, v12

    move-object/from16 v29, v13

    move/from16 v24, v14

    move/from16 v25, v15

    move-object v2, v0

    move/from16 v10, v22

    goto/16 :goto_22

    :catch_5c
    move-exception v0

    move/from16 v26, v5

    move-object/from16 v21, v9

    move-object/from16 v28, v12

    move-object/from16 v29, v13

    move/from16 v24, v14

    move/from16 v25, v15

    move-object v2, v0

    move/from16 v10, v22

    goto/16 :goto_23

    :catch_5d
    move-exception v0

    move/from16 v26, v5

    move-object/from16 v21, v9

    move-object/from16 v28, v12

    move-object/from16 v29, v13

    move/from16 v24, v14

    move/from16 v25, v15

    move-object v2, v0

    move/from16 v10, v22

    goto/16 :goto_24

    :catch_5e
    move-exception v0

    move/from16 v26, v5

    move-object/from16 v21, v9

    move-object/from16 v28, v12

    move-object/from16 v29, v13

    move/from16 v24, v14

    move/from16 v25, v15

    move-object v2, v0

    move/from16 v10, v22

    goto/16 :goto_25

    :catch_5f
    move-exception v0

    move/from16 v26, v5

    move-object/from16 v21, v9

    move/from16 v22, v10

    move-object/from16 v28, v12

    move-object/from16 v29, v13

    move/from16 v24, v14

    move/from16 v25, v15

    move-object v2, v0

    goto/16 :goto_21

    :catch_60
    move-exception v0

    move/from16 v26, v5

    move-object/from16 v21, v9

    move/from16 v22, v10

    move-object/from16 v28, v12

    move-object/from16 v29, v13

    move/from16 v24, v14

    move/from16 v25, v15

    move-object v2, v0

    goto/16 :goto_22

    :catch_61
    move-exception v0

    move/from16 v26, v5

    move-object/from16 v21, v9

    move/from16 v22, v10

    move-object/from16 v28, v12

    move-object/from16 v29, v13

    move/from16 v24, v14

    move/from16 v25, v15

    move-object v2, v0

    goto/16 :goto_23

    :catch_62
    move-exception v0

    move/from16 v26, v5

    move-object/from16 v21, v9

    move/from16 v22, v10

    move-object/from16 v28, v12

    move-object/from16 v29, v13

    move/from16 v24, v14

    move/from16 v25, v15

    move-object v2, v0

    goto/16 :goto_24

    :catch_63
    move-exception v0

    move/from16 v26, v5

    move-object/from16 v21, v9

    move/from16 v22, v10

    move-object/from16 v28, v12

    move-object/from16 v29, v13

    move/from16 v24, v14

    move/from16 v25, v15

    move-object v2, v0

    goto/16 :goto_25

    :cond_2c
    move/from16 v26, v5

    move-object/from16 v21, v9

    move/from16 v22, v10

    move-object/from16 v28, v12

    move-object/from16 v29, v13

    move/from16 v24, v14

    move/from16 v25, v15

    goto :goto_20

    :cond_2d
    move/from16 v26, v5

    move-object/from16 v18, v6

    move-object/from16 v21, v9

    move/from16 v22, v10

    move-object/from16 v28, v12

    move-object/from16 v29, v13

    move/from16 v24, v14

    move/from16 v25, v15

    :goto_20
    const-string v5, "Select Error"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Ljava/lang/Exception;

    invoke-direct {v5, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_20
    .catch Ljava/lang/NullPointerException; {:try_start_20 .. :try_end_20} :catch_68
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_20 .. :try_end_20} :catch_67
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_20 .. :try_end_20} :catch_66
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_65
    .catch Ljava/lang/Error; {:try_start_20 .. :try_end_20} :catch_64

    :catch_64
    move-exception v0

    move-object v2, v0

    move/from16 v10, v22

    move/from16 v14, v24

    move/from16 v15, v25

    move/from16 v5, v26

    goto/16 :goto_21

    :catch_65
    move-exception v0

    move-object v2, v0

    move/from16 v10, v22

    move/from16 v14, v24

    move/from16 v15, v25

    move/from16 v5, v26

    goto/16 :goto_22

    :catch_66
    move-exception v0

    move-object v2, v0

    move/from16 v10, v22

    move/from16 v14, v24

    move/from16 v15, v25

    move/from16 v5, v26

    goto/16 :goto_23

    :catch_67
    move-exception v0

    move-object v2, v0

    move/from16 v10, v22

    move/from16 v14, v24

    move/from16 v15, v25

    move/from16 v5, v26

    goto/16 :goto_24

    :catch_68
    move-exception v0

    move-object v2, v0

    move/from16 v10, v22

    move/from16 v14, v24

    move/from16 v15, v25

    move/from16 v5, v26

    goto/16 :goto_25

    :catch_69
    move-exception v0

    move/from16 v26, v5

    move-object/from16 v18, v6

    move-object/from16 v21, v9

    move/from16 v22, v10

    move-object/from16 v28, v12

    move-object/from16 v29, v13

    move/from16 v24, v14

    move/from16 v25, v15

    move-object v2, v0

    goto/16 :goto_21

    :catch_6a
    move-exception v0

    move/from16 v26, v5

    move-object/from16 v18, v6

    move-object/from16 v21, v9

    move/from16 v22, v10

    move-object/from16 v28, v12

    move-object/from16 v29, v13

    move/from16 v24, v14

    move/from16 v25, v15

    move-object v2, v0

    goto/16 :goto_22

    :catch_6b
    move-exception v0

    move/from16 v26, v5

    move-object/from16 v18, v6

    move-object/from16 v21, v9

    move/from16 v22, v10

    move-object/from16 v28, v12

    move-object/from16 v29, v13

    move/from16 v24, v14

    move/from16 v25, v15

    move-object v2, v0

    goto/16 :goto_23

    :catch_6c
    move-exception v0

    move/from16 v26, v5

    move-object/from16 v18, v6

    move-object/from16 v21, v9

    move/from16 v22, v10

    move-object/from16 v28, v12

    move-object/from16 v29, v13

    move/from16 v24, v14

    move/from16 v25, v15

    move-object v2, v0

    goto/16 :goto_24

    :catch_6d
    move-exception v0

    move/from16 v26, v5

    move-object/from16 v18, v6

    move-object/from16 v21, v9

    move/from16 v22, v10

    move-object/from16 v28, v12

    move-object/from16 v29, v13

    move/from16 v24, v14

    move/from16 v25, v15

    move-object v2, v0

    goto/16 :goto_25

    :cond_2e
    move/from16 v26, v5

    move-object/from16 v18, v6

    move-object/from16 v21, v9

    move/from16 v22, v10

    move-object/from16 v28, v12

    move-object/from16 v29, v13

    move/from16 v25, v15

    :try_start_21
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Open Error "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2
    :try_end_21
    .catch Ljava/lang/NullPointerException; {:try_start_21 .. :try_end_21} :catch_72
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_21 .. :try_end_21} :catch_71
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_21 .. :try_end_21} :catch_70
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_6f
    .catch Ljava/lang/Error; {:try_start_21 .. :try_end_21} :catch_6e

    move/from16 v5, v26

    :try_start_22
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/Exception;

    const-string v6, "OPEN Error"

    invoke-direct {v2, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2

    :catch_6e
    move-exception v0

    move/from16 v5, v26

    move-object v2, v0

    move/from16 v10, v22

    move/from16 v15, v25

    goto/16 :goto_21

    :catch_6f
    move-exception v0

    move/from16 v5, v26

    move-object v2, v0

    move/from16 v10, v22

    move/from16 v15, v25

    goto/16 :goto_22

    :catch_70
    move-exception v0

    move/from16 v5, v26

    move-object v2, v0

    move/from16 v10, v22

    move/from16 v15, v25

    goto/16 :goto_23

    :catch_71
    move-exception v0

    move/from16 v5, v26

    move-object v2, v0

    move/from16 v10, v22

    move/from16 v15, v25

    goto/16 :goto_24

    :catch_72
    move-exception v0

    move/from16 v5, v26

    move-object v2, v0

    move/from16 v10, v22

    move/from16 v15, v25

    goto/16 :goto_25

    :cond_2f
    move-object/from16 v18, v6

    move-object/from16 v21, v9

    move/from16 v22, v10

    move-object/from16 v28, v12

    move-object/from16 v29, v13

    move/from16 v25, v15

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v5, -0xd

    new-instance v6, Ljava/lang/NullPointerException;

    invoke-direct {v6, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_22
    .catch Ljava/lang/NullPointerException; {:try_start_22 .. :try_end_22} :catch_77
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_22 .. :try_end_22} :catch_76
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_22 .. :try_end_22} :catch_75
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_74
    .catch Ljava/lang/Error; {:try_start_22 .. :try_end_22} :catch_73

    :catch_73
    move-exception v0

    move-object v2, v0

    move/from16 v10, v22

    move/from16 v15, v25

    goto :goto_21

    :catch_74
    move-exception v0

    move-object v2, v0

    move/from16 v10, v22

    move/from16 v15, v25

    goto :goto_22

    :catch_75
    move-exception v0

    move-object v2, v0

    move/from16 v10, v22

    move/from16 v15, v25

    goto/16 :goto_23

    :catch_76
    move-exception v0

    move-object v2, v0

    move/from16 v10, v22

    move/from16 v15, v25

    goto/16 :goto_24

    :catch_77
    move-exception v0

    move-object v2, v0

    move/from16 v10, v22

    move/from16 v15, v25

    goto/16 :goto_25

    :catch_78
    move-exception v0

    move-object/from16 v18, v6

    move-object/from16 v21, v9

    move/from16 v22, v10

    move-object/from16 v28, v12

    move-object/from16 v29, v13

    move/from16 v25, v15

    move-object v2, v0

    :goto_21
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v5, -0x5a

    goto/16 :goto_27

    :catch_79
    move-exception v0

    move-object/from16 v18, v6

    move-object/from16 v21, v9

    move/from16 v22, v10

    move-object/from16 v28, v12

    move-object/from16 v29, v13

    move/from16 v25, v15

    move-object v2, v0

    :goto_22
    if-eqz v16, :cond_30

    const/4 v5, 0x0

    goto/16 :goto_26

    :cond_30
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v5, -0x5a

    goto/16 :goto_26

    :catch_7a
    move-exception v0

    move-object/from16 v18, v6

    move-object/from16 v21, v9

    move/from16 v22, v10

    move-object/from16 v28, v12

    move-object/from16 v29, v13

    move/from16 v25, v15

    move-object v2, v0

    :goto_23
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to link."

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v5, -0x5a

    goto :goto_26

    :catch_7b
    move-exception v0

    move-object/from16 v18, v6

    move-object/from16 v21, v9

    move/from16 v22, v10

    move-object/from16 v28, v12

    move-object/from16 v29, v13

    move/from16 v25, v15

    move-object v2, v0

    :goto_24
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to find class."

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v5, -0x5a

    goto :goto_26

    :catch_7c
    move-exception v0

    move-object/from16 v18, v6

    move-object/from16 v21, v9

    move/from16 v22, v10

    move-object/from16 v28, v12

    move-object/from16 v29, v13

    move/from16 v25, v15

    move-object v2, v0

    :goto_25
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to connect service."

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v5, -0x5a

    :goto_26
    nop

    :goto_27
    if-eqz v14, :cond_31

    :try_start_23
    iget-object v2, v1, Lcom/samsung/android/service/SemService/SemServiceManager$1;->this$0:Lcom/samsung/android/service/SemService/SemServiceManager;

    invoke-virtual {v2}, Lcom/samsung/android/service/SemService/SemServiceManager;->close()I

    const/4 v14, 0x0

    goto :goto_28

    :catch_7d
    move-exception v0

    move-object v2, v0

    goto :goto_29

    :catch_7e
    move-exception v0

    move-object v2, v0

    goto :goto_2a

    :cond_31
    :goto_28
    iget-object v2, v1, Lcom/samsung/android/service/SemService/SemServiceManager$1;->val$flag:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_32

    const-string v2, "Set PROP"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.sec.action.CDA_FINISH"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "com.sec.action.CDA_VALUE"

    const/4 v6, 0x1

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "com.samsung.android.app.telephonyui"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, v1, Lcom/samsung/android/service/SemService/SemServiceManager$1;->this$0:Lcom/samsung/android/service/SemService/SemServiceManager;

    invoke-static {v3}, Lcom/samsung/android/service/SemService/SemServiceManager;->-$$Nest$fgetmContext(Lcom/samsung/android/service/SemService/SemServiceManager;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string v3, "security.cdafinish"

    const-string v6, "1"

    invoke-static {v3, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_7e
    .catch Ljava/lang/Error; {:try_start_23 .. :try_end_23} :catch_7d

    goto :goto_2b

    :goto_29
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PROP Error "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2c

    :goto_2a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PROP Exception "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_32
    :goto_2b
    nop

    :goto_2c
    return-void

    :array_0
    .array-data 1
        0x0t
        -0x5ct
        0x4t
        0x0t
        0x9t
        -0x60t
        0x0t
        0x0t
        0x1t
        0x51t
        0x43t
        0x52t
        0x53t
        0x0t
    .end array-data

    nop

    :array_1
    .array-data 1
        -0x80t
        -0x8t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2
    .array-data 1
        -0x80t
        -0x8t
        0x1t
        0x0t
        0x0t
    .end array-data

    nop

    :array_3
    .array-data 1
        -0x80t
        -0x8t
        0x0t
        0x1t
        0x0t
    .end array-data

    nop

    :array_4
    .array-data 1
        -0x80t
        -0x8t
        0x0t
        0x1t
        0x0t
    .end array-data
.end method
