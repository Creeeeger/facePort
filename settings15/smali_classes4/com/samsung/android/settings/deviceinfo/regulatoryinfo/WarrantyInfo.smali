.class public Lcom/samsung/android/settings/deviceinfo/regulatoryinfo/WarrantyInfo;
.super Lcom/android/internal/app/AlertActivity;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public FILE_PATH_GENERAL_TERMS:Ljava/lang/String;

.field public FILE_PATH_PRODUCT_WARRANTY:Ljava/lang/String;

.field public FILE_PATH_WARRANTY_EXCEPTION:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/regulatoryinfo/WarrantyInfo;->FILE_PATH_GENERAL_TERMS:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/regulatoryinfo/WarrantyInfo;->FILE_PATH_WARRANTY_EXCEPTION:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/regulatoryinfo/WarrantyInfo;->FILE_PATH_PRODUCT_WARRANTY:Ljava/lang/String;

    return-void
.end method

.method public static getWarrantyInfoFilePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const-string v0, "/system/etc/"

    const-string v1, "/system/serviceinfo/"

    const-string v2, "WarrantyInfo"

    const-string v3, "/"

    const-string/jumbo v4, "take WarrantyInfo from : "

    const-string/jumbo v5, "persist.sys.omc_etcpath"

    const-string v6, ""

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    :try_start_0
    new-instance v7, Ljava/io/File;

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_2
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string p0, "fail to find a file"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-object v6
.end method

.method public static readCSCFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance p0, Ljava/io/FileInputStream;

    invoke-direct {p0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_10
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_f
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_e
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_d
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    new-instance v1, Ljava/io/InputStreamReader;

    const-string v2, "UTF-8"

    invoke-direct {v1, p0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_9
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_d

    :catch_0
    move-exception v3

    goto/16 :goto_6

    :catch_1
    move-exception v3

    goto/16 :goto_9

    :catch_2
    move-exception v3

    goto/16 :goto_a

    :catch_3
    move-exception v3

    goto/16 :goto_b

    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V

    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_1

    :catch_4
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    return-object v0

    :catchall_1
    move-exception v2

    move-object v5, v2

    move-object v2, v0

    move-object v0, v5

    goto/16 :goto_d

    :catch_5
    move-exception v3

    move-object v2, v0

    goto/16 :goto_6

    :catch_6
    move-exception v3

    move-object v2, v0

    goto/16 :goto_9

    :catch_7
    move-exception v3

    move-object v2, v0

    goto/16 :goto_a

    :catch_8
    move-exception v3

    move-object v2, v0

    goto/16 :goto_b

    :catchall_2
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    move-object v1, v2

    goto/16 :goto_d

    :catch_9
    move-exception v3

    move-object v1, v0

    :goto_2
    move-object v2, v1

    goto :goto_6

    :catch_a
    move-exception v3

    move-object v1, v0

    :goto_3
    move-object v2, v1

    goto :goto_9

    :catch_b
    move-exception v3

    move-object v1, v0

    :goto_4
    move-object v2, v1

    goto/16 :goto_a

    :catch_c
    move-exception v3

    move-object v1, v0

    :goto_5
    move-object v2, v1

    goto/16 :goto_b

    :catchall_3
    move-exception p0

    move-object v1, v0

    move-object v2, v1

    move-object v0, p0

    move-object p0, v2

    goto/16 :goto_d

    :catch_d
    move-exception v3

    move-object p0, v0

    move-object v1, p0

    goto :goto_2

    :catch_e
    move-exception v3

    move-object p0, v0

    move-object v1, p0

    goto :goto_3

    :catch_f
    move-exception v3

    move-object p0, v0

    move-object v1, p0

    goto :goto_4

    :catch_10
    move-exception v3

    move-object p0, v0

    move-object v1, p0

    goto :goto_5

    :goto_6
    :try_start_5
    invoke-virtual {v3}, Ljava/lang/NullPointerException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz p0, :cond_1

    :try_start_6
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V

    goto :goto_7

    :catch_11
    move-exception p0

    goto :goto_8

    :cond_1
    :goto_7
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V

    :cond_2
    if-eqz v2, :cond_9

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_11

    goto :goto_c

    :goto_8
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_c

    :goto_9
    :try_start_7
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz p0, :cond_3

    :try_start_8
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V

    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V

    :cond_4
    if-eqz v2, :cond_9

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_11

    goto :goto_c

    :goto_a
    :try_start_9
    invoke-virtual {v3}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    if-eqz p0, :cond_5

    :try_start_a
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V

    :cond_5
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V

    :cond_6
    if-eqz v2, :cond_9

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_11

    goto :goto_c

    :goto_b
    :try_start_b
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    if-eqz p0, :cond_7

    :try_start_c
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V

    :cond_7
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V

    :cond_8
    if-eqz v2, :cond_9

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_11

    :cond_9
    :goto_c
    return-object v0

    :goto_d
    if-eqz p0, :cond_a

    :try_start_d
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V

    goto :goto_e

    :catch_12
    move-exception p0

    goto :goto_f

    :cond_a
    :goto_e
    if-eqz v1, :cond_b

    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V

    :cond_b
    if-eqz v2, :cond_c

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_12

    goto :goto_10

    :goto_f
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_c
    :goto_10
    throw v0
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "Option"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string/jumbo v0, "option "

    const-string v1, "WarrantyInfo"

    invoke-static {p1, v0, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    :cond_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d09f0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a1144

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/internal/app/AlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    const-string v3, "general_terms.txt"

    invoke-static {v3}, Lcom/samsung/android/settings/deviceinfo/regulatoryinfo/WarrantyInfo;->getWarrantyInfoFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/deviceinfo/regulatoryinfo/WarrantyInfo;->FILE_PATH_GENERAL_TERMS:Ljava/lang/String;

    const-string/jumbo v3, "warranty_exceptions.txt"

    invoke-static {v3}, Lcom/samsung/android/settings/deviceinfo/regulatoryinfo/WarrantyInfo;->getWarrantyInfoFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/deviceinfo/regulatoryinfo/WarrantyInfo;->FILE_PATH_WARRANTY_EXCEPTION:Ljava/lang/String;

    const-string/jumbo v3, "product_warranty.txt"

    invoke-static {v3}, Lcom/samsung/android/settings/deviceinfo/regulatoryinfo/WarrantyInfo;->getWarrantyInfoFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/deviceinfo/regulatoryinfo/WarrantyInfo;->FILE_PATH_PRODUCT_WARRANTY:Ljava/lang/String;

    const-string v3, "contact_us.txt"

    invoke-static {v3}, Lcom/samsung/android/settings/deviceinfo/regulatoryinfo/WarrantyInfo;->getWarrantyInfoFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    if-eq p1, v4, :cond_4

    const/4 v4, 0x2

    if-eq p1, v4, :cond_3

    const/4 v4, 0x3

    if-eq p1, v4, :cond_2

    const/4 v4, 0x4

    if-eq p1, v4, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v3}, Lcom/samsung/android/settings/deviceinfo/regulatoryinfo/WarrantyInfo;->readCSCFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f140a79

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/settings/deviceinfo/regulatoryinfo/WarrantyInfo;->FILE_PATH_PRODUCT_WARRANTY:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/settings/deviceinfo/regulatoryinfo/WarrantyInfo;->readCSCFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f141da3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/samsung/android/settings/deviceinfo/regulatoryinfo/WarrantyInfo;->FILE_PATH_WARRANTY_EXCEPTION:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/settings/deviceinfo/regulatoryinfo/WarrantyInfo;->readCSCFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f143260

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/samsung/android/settings/deviceinfo/regulatoryinfo/WarrantyInfo;->FILE_PATH_GENERAL_TERMS:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/settings/deviceinfo/regulatoryinfo/WarrantyInfo;->readCSCFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f14106f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iput-object v0, v2, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const p1, 0x104000a

    invoke-virtual {p0, p1}, Lcom/android/internal/app/AlertActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v2, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->setupAlert()V

    return-void
.end method

.method public final onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onDestroy()V

    return-void
.end method
