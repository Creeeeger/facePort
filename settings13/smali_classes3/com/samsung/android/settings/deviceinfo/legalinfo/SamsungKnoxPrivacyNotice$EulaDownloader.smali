.class Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice$EulaDownloader;
.super Landroid/os/AsyncTask;
.source "SamsungKnoxPrivacyNotice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EulaDownloader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;)V
    .locals 0

    .line 339
    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice$EulaDownloader;->this$0:Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 339
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice$EulaDownloader;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 16

    move-object/from16 v1, p0

    const-string v0, ".html"

    const-string v2, "/"

    .line 343
    invoke-virtual/range {p0 .. p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    return-object v4

    :cond_0
    const/4 v3, 0x0

    .line 349
    :try_start_0
    iget-object v5, v1, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice$EulaDownloader;->this$0:Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;

    invoke-static {v5}, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->-$$Nest$misProductShipBinary(Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;)Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    const-string v6, "https://eula-dev.secb2b.com"

    const-string v7, "https://eula.secb2b.com"

    if-eqz v5, :cond_2

    .line 350
    :try_start_1
    invoke-static {}, Landroid/os/SemSystemProperties;->getCountryCode()Ljava/lang/String;

    move-result-object v5

    const-string v8, "china"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "https://eula.secb2b.com.cn"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_1
    move-object v5, v7

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_4

    :cond_2
    move-object v5, v6

    .line 356
    :goto_0
    :try_start_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/EULA"

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 357
    iget-object v8, v1, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice$EulaDownloader;->this$0:Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "/PPInfo"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->getEulaFromHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    const-string v9, "KnoxNotice"

    if-nez v8, :cond_3

    :try_start_3
    const-string v0, "PPInfoResult is null"

    .line 359
    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    return-object v4

    .line 362
    :cond_3
    :try_start_4
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 364
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Samsung Knox Privacy Policy is Need update : "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v11, 0x1

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, "GDPR"

    .line 366
    invoke-virtual {v10, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 367
    invoke-virtual {v8}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Landroid/os/SemSystemProperties;->getCountryIso()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    const-string v12, "deviceType"

    if-eqz v8, :cond_4

    .line 370
    :try_start_5
    iget-object v13, v1, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice$EulaDownloader;->this$0:Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;

    invoke-static {}, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->-$$Nest$sfgetDEVICE_GDPR()I

    move-result v14

    invoke-static {v13, v14}, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->-$$Nest$fputdeviceType(Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;I)V

    .line 371
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v1, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice$EulaDownloader;->this$0:Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;

    invoke-static {v12}, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->-$$Nest$fgetdeviceType(Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;)I

    move-result v12

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/GDPR"

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_1

    .line 373
    :cond_4
    :try_start_6
    invoke-static {}, Landroid/os/SemSystemProperties;->getCountryCode()Ljava/lang/String;

    move-result-object v13

    const-string v14, "brazil"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    if-eqz v13, :cond_5

    .line 374
    :try_start_7
    iget-object v13, v1, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice$EulaDownloader;->this$0:Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;

    invoke-static {}, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->-$$Nest$sfgetDEVICE_LGPD()I

    move-result v14

    invoke-static {v13, v14}, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->-$$Nest$fputdeviceType(Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;I)V

    .line 375
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v1, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice$EulaDownloader;->this$0:Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;

    invoke-static {v12}, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->-$$Nest$fgetdeviceType(Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;)I

    move-result v12

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/LGPD"

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_1

    .line 378
    :cond_5
    :try_start_8
    invoke-static {}, Landroid/os/SemSystemProperties;->getCountryCode()Ljava/lang/String;

    move-result-object v13

    const-string v14, "usa"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    if-eqz v13, :cond_6

    .line 379
    :try_start_9
    iget-object v13, v1, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice$EulaDownloader;->this$0:Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;

    invoke-static {}, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->-$$Nest$sfgetDEVICE_CCPA()I

    move-result v14

    invoke-static {v13, v14}, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->-$$Nest$fputdeviceType(Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;I)V

    .line 380
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v1, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice$EulaDownloader;->this$0:Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;

    invoke-static {v12}, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->-$$Nest$fgetdeviceType(Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;)I

    move-result v12

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/CCPA"

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    goto :goto_1

    .line 384
    :cond_6
    :try_start_a
    iget-object v13, v1, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice$EulaDownloader;->this$0:Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;

    invoke-static {}, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->-$$Nest$sfgetDEVICE_GLOBAL()I

    move-result v14

    invoke-static {v13, v14}, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->-$$Nest$fputdeviceType(Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;I)V

    .line 385
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v1, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice$EulaDownloader;->this$0:Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;

    invoke-static {v12}, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->-$$Nest$fgetdeviceType(Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;)I

    move-result v12

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/KLMS"

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 389
    :goto_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v12

    .line 390
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v13

    .line 391
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 392
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 393
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    :try_start_b
    const-string v4, "localizedUrl"

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "fil"

    .line 395
    invoke-virtual {v12, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2

    if-eqz v4, :cond_7

    :try_start_c
    const-string v12, "tl"
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    const/4 v4, 0x0

    goto/16 :goto_4

    .line 398
    :cond_7
    :goto_2
    :try_start_d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x2

    invoke-virtual {v12, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 399
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/default.html"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_2

    if-nez v8, :cond_a

    .line 401
    :try_start_e
    invoke-static {}, Landroid/os/SemSystemProperties;->getCountryCode()Ljava/lang/String;

    move-result-object v5

    const-string v8, "korea"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 402
    iget-object v0, v1, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice$EulaDownloader;->this$0:Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;

    invoke-static {}, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->-$$Nest$sfgetDEVICE_KOREA()I

    move-result v4

    invoke-static {v0, v4}, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->-$$Nest$fputdeviceType(Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;I)V

    .line 403
    iget-object v0, v1, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice$EulaDownloader;->this$0:Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;

    invoke-static {v0}, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->-$$Nest$misProductShipBinary(Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;)Z

    move-result v0

    if-eqz v0, :cond_8

    move-object v6, v7

    .line 408
    :cond_8
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v4, "ko"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 409
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/eula/kr"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    goto :goto_3

    .line 411
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/eula/en"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_1

    :goto_3
    move-object v0, v14

    move-object v4, v0

    :cond_a
    const/4 v5, 0x3

    :try_start_f
    new-array v5, v5, [Ljava/lang/String;

    aput-object v14, v5, v3

    aput-object v0, v5, v11

    aput-object v4, v5, v2

    .line 421
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Get Knox Privacy Policy try locale = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    iget-object v0, v1, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice$EulaDownloader;->this$0:Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;

    aget-object v4, v5, v3

    invoke-virtual {v0, v4}, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->getEulaFromHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_2

    if-nez v4, :cond_b

    .line 425
    :try_start_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Get Knox Privacy Policy try language = "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    iget-object v0, v1, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice$EulaDownloader;->this$0:Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;

    aget-object v6, v5, v11

    invoke-virtual {v0, v6}, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->getEulaFromHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_b
    if-nez v4, :cond_c

    const-string v0, "Get Knox Privacy Policy try default"

    .line 430
    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    iget-object v0, v1, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice$EulaDownloader;->this$0:Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;

    aget-object v2, v5, v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->getEulaFromHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_c
    if-eqz v4, :cond_d

    .line 434
    iget-object v0, v1, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice$EulaDownloader;->this$0:Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;

    const-string v2, "version"

    invoke-virtual {v10, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->-$$Nest$fputsaveVersion(Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;Lorg/json/JSONObject;)V

    .line 437
    :cond_d
    invoke-virtual/range {p0 .. p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v2, 0x0

    return-object v2

    .line 440
    :cond_e
    iget-object v0, v1, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice$EulaDownloader;->this$0:Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;

    invoke-static {v0, v11}, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->-$$Nest$fputchkException(Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;Z)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_0

    goto :goto_5

    :catch_2
    move-exception v0

    const/4 v2, 0x0

    move-object v4, v2

    goto :goto_4

    :catch_3
    move-exception v0

    move-object v2, v4

    .line 442
    :goto_4
    iget-object v1, v1, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice$EulaDownloader;->this$0:Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;

    invoke-static {v1, v3}, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->-$$Nest$fputchkException(Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;Z)V

    .line 443
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_5
    return-object v4
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 339
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice$EulaDownloader;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 5

    const-string v0, "KnoxNotice"

    .line 450
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 452
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 455
    :cond_0
    new-instance p1, Landroid/view/ContextThemeWrapper;

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice$EulaDownloader;->this$0:Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;

    invoke-static {v0}, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->-$$Nest$fgetcontext(Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;)Landroid/content/Context;

    move-result-object v0

    const v2, 0x103012b

    invoke-direct {p1, v0, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    sget v0, Lcom/android/settings/R$string;->pp_knox_not_available:I

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 457
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 458
    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice$EulaDownloader;->this$0:Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_2

    .line 461
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice$EulaDownloader;->this$0:Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;

    invoke-static {v2}, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->-$$Nest$fgetsaveVersion(Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "DEVICE_TYPE"

    iget-object v4, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice$EulaDownloader;->this$0:Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;

    invoke-static {v4}, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->-$$Nest$fgetdeviceType(Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v2, "onPostExecute : json Error"

    .line 463
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "saveVersion : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice$EulaDownloader;->this$0:Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;

    invoke-static {v3}, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->-$$Nest$fgetsaveVersion(Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice$EulaDownloader;->this$0:Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;

    invoke-static {v2}, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->-$$Nest$fgetcontext(Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice$EulaDownloader;->this$0:Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;

    invoke-static {v3}, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->-$$Nest$fgetsaveVersion(Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "LATEST_VERSION"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 469
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    if-lez v2, :cond_2

    .line 471
    :try_start_2
    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice$EulaDownloader;->this$0:Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;

    invoke-static {v2}, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->-$$Nest$fgettextView(Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;)Landroid/widget/TextView;

    move-result-object v2

    invoke-static {p1, v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    :try_start_3
    const-string v1, "Runtime Exception"

    .line 473
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 476
    :cond_2
    :goto_1
    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice$EulaDownloader;->this$0:Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;

    invoke-static {p0}, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->-$$Nest$fgetmProgress(Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;)Landroid/widget/ProgressBar;

    move-result-object p0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/ProgressBar;->setVisibility(I)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    :catch_2
    move-exception p0

    const-string p1, "UnExpected Runtime Exception "

    .line 478
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return-void
.end method
