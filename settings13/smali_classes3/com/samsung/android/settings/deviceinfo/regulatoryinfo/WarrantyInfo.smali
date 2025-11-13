.class public Lcom/samsung/android/settings/deviceinfo/regulatoryinfo/WarrantyInfo;
.super Lcom/android/internal/app/AlertActivity;
.source "WarrantyInfo.java"


# instance fields
.field private FILE_PATH_CONTACT_US:Ljava/lang/String;

.field private FILE_PATH_GENERAL_TERMS:Ljava/lang/String;

.field private FILE_PATH_PRODUCT_WARRANTY:Ljava/lang/String;

.field private FILE_PATH_WARRANTY_EXCEPTION:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    const-string v0, ""

    .line 55
    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/regulatoryinfo/WarrantyInfo;->FILE_PATH_GENERAL_TERMS:Ljava/lang/String;

    .line 56
    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/regulatoryinfo/WarrantyInfo;->FILE_PATH_WARRANTY_EXCEPTION:Ljava/lang/String;

    .line 57
    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/regulatoryinfo/WarrantyInfo;->FILE_PATH_PRODUCT_WARRANTY:Ljava/lang/String;

    .line 58
    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/regulatoryinfo/WarrantyInfo;->FILE_PATH_CONTACT_US:Ljava/lang/String;

    return-void
.end method

.method private getWarrantyInfoFilePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const-string p0, "/"

    const-string v0, "/system/etc/"

    const-string v1, "/system/serviceinfo/"

    const-string v2, "WarrantyInfo"

    .line 168
    invoke-static {}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils;->getOmcEtcPath()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 173
    :try_start_0
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 174
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    move-object v4, p0

    goto :goto_1

    .line 175
    :cond_0
    new-instance v1, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 176
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 177
    :cond_1
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 180
    :cond_2
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "take WarrantyInfo from : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    const-string p0, "fail to find a file"

    .line 182
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-object v4
.end method

.method private readCSCFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 p0, 0x0

    .line 125
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 126
    new-instance p1, Ljava/io/FileInputStream;

    invoke-direct {p1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_10
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_f
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_e
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_d
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 127
    :try_start_1
    new-instance v0, Ljava/io/InputStreamReader;

    const-string v1, "UTF-8"

    invoke-direct {v0, p1, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_9
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 128
    :try_start_2
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 129
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 131
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 132
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 134
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 146
    :try_start_4
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V

    .line 149
    invoke-virtual {v0}, Ljava/io/InputStreamReader;->close()V

    .line 152
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 156
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    return-object p0

    :catch_1
    move-exception v2

    goto :goto_3

    :catch_2
    move-exception v2

    goto/16 :goto_5

    :catch_3
    move-exception v2

    goto/16 :goto_7

    :catch_4
    move-exception v2

    goto/16 :goto_9

    :catchall_0
    move-exception v1

    move-object v4, v1

    move-object v1, p0

    move-object p0, v4

    goto/16 :goto_d

    :catch_5
    move-exception v2

    move-object v1, p0

    goto :goto_3

    :catch_6
    move-exception v2

    move-object v1, p0

    goto :goto_5

    :catch_7
    move-exception v2

    move-object v1, p0

    goto/16 :goto_7

    :catch_8
    move-exception v2

    move-object v1, p0

    goto/16 :goto_9

    :catchall_1
    move-exception v0

    move-object v1, p0

    move-object p0, v0

    move-object v0, v1

    goto/16 :goto_d

    :catch_9
    move-exception v2

    move-object v0, p0

    goto :goto_2

    :catch_a
    move-exception v2

    move-object v0, p0

    goto :goto_4

    :catch_b
    move-exception v2

    move-object v0, p0

    goto :goto_6

    :catch_c
    move-exception v2

    move-object v0, p0

    goto/16 :goto_8

    :catchall_2
    move-exception p1

    move-object v0, p0

    move-object v1, v0

    move-object p0, p1

    move-object p1, v1

    goto/16 :goto_d

    :catch_d
    move-exception v2

    move-object p1, p0

    move-object v0, p1

    :goto_2
    move-object v1, v0

    .line 142
    :goto_3
    :try_start_5
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-eqz p1, :cond_1

    .line 146
    :try_start_6
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V

    :cond_1
    if-eqz v0, :cond_2

    .line 149
    invoke-virtual {v0}, Ljava/io/InputStreamReader;->close()V

    :cond_2
    if-eqz v1, :cond_9

    .line 152
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_11

    goto :goto_c

    :catch_e
    move-exception v2

    move-object p1, p0

    move-object v0, p1

    :goto_4
    move-object v1, v0

    .line 140
    :goto_5
    :try_start_7
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    if-eqz p1, :cond_3

    .line 146
    :try_start_8
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V

    :cond_3
    if-eqz v0, :cond_4

    .line 149
    invoke-virtual {v0}, Ljava/io/InputStreamReader;->close()V

    :cond_4
    if-eqz v1, :cond_9

    .line 152
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_11

    goto :goto_c

    :catch_f
    move-exception v2

    move-object p1, p0

    move-object v0, p1

    :goto_6
    move-object v1, v0

    .line 138
    :goto_7
    :try_start_9
    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    if-eqz p1, :cond_5

    .line 146
    :try_start_a
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V

    :cond_5
    if-eqz v0, :cond_6

    .line 149
    invoke-virtual {v0}, Ljava/io/InputStreamReader;->close()V

    :cond_6
    if-eqz v1, :cond_9

    .line 152
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_11

    goto :goto_c

    :catch_10
    move-exception v2

    move-object p1, p0

    move-object v0, p1

    :goto_8
    move-object v1, v0

    .line 136
    :goto_9
    :try_start_b
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    if-eqz p1, :cond_7

    .line 146
    :try_start_c
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V

    goto :goto_a

    :catch_11
    move-exception p1

    goto :goto_b

    :cond_7
    :goto_a
    if-eqz v0, :cond_8

    .line 149
    invoke-virtual {v0}, Ljava/io/InputStreamReader;->close()V

    :cond_8
    if-eqz v1, :cond_9

    .line 152
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_11

    goto :goto_c

    .line 156
    :goto_b
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_9
    :goto_c
    return-object p0

    :catchall_3
    move-exception p0

    :goto_d
    if-eqz p1, :cond_a

    .line 146
    :try_start_d
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V

    goto :goto_e

    :catch_12
    move-exception p1

    goto :goto_f

    :cond_a
    :goto_e
    if-eqz v0, :cond_b

    .line 149
    invoke-virtual {v0}, Ljava/io/InputStreamReader;->close()V

    :cond_b
    if-eqz v1, :cond_c

    .line 152
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_12

    goto :goto_10

    .line 156
    :goto_f
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 158
    :cond_c
    :goto_10
    throw p0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 67
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 69
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "Option"

    const/4 v1, 0x0

    .line 70
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "option "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WarrantyInfo"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    .line 74
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    .line 77
    :cond_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 78
    sget v1, Lcom/android/settings/R$layout;->sec_warranty_info_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 79
    sget v1, Lcom/android/settings/R$id;->warranty_legal:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 81
    iget-object v2, p0, Lcom/android/internal/app/AlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    const-string v3, "general_terms.txt"

    .line 83
    invoke-direct {p0, v3}, Lcom/samsung/android/settings/deviceinfo/regulatoryinfo/WarrantyInfo;->getWarrantyInfoFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/deviceinfo/regulatoryinfo/WarrantyInfo;->FILE_PATH_GENERAL_TERMS:Ljava/lang/String;

    const-string v3, "warranty_exceptions.txt"

    .line 84
    invoke-direct {p0, v3}, Lcom/samsung/android/settings/deviceinfo/regulatoryinfo/WarrantyInfo;->getWarrantyInfoFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/deviceinfo/regulatoryinfo/WarrantyInfo;->FILE_PATH_WARRANTY_EXCEPTION:Ljava/lang/String;

    const-string v3, "product_warranty.txt"

    .line 85
    invoke-direct {p0, v3}, Lcom/samsung/android/settings/deviceinfo/regulatoryinfo/WarrantyInfo;->getWarrantyInfoFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/deviceinfo/regulatoryinfo/WarrantyInfo;->FILE_PATH_PRODUCT_WARRANTY:Ljava/lang/String;

    const-string v3, "contact_us.txt"

    .line 86
    invoke-direct {p0, v3}, Lcom/samsung/android/settings/deviceinfo/regulatoryinfo/WarrantyInfo;->getWarrantyInfoFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/deviceinfo/regulatoryinfo/WarrantyInfo;->FILE_PATH_CONTACT_US:Ljava/lang/String;

    const/4 v4, 0x1

    if-eq p1, v4, :cond_4

    const/4 v4, 0x2

    if-eq p1, v4, :cond_3

    const/4 v4, 0x3

    if-eq p1, v4, :cond_2

    const/4 v4, 0x4

    if-eq p1, v4, :cond_1

    goto :goto_0

    .line 105
    :cond_1
    invoke-direct {p0, v3}, Lcom/samsung/android/settings/deviceinfo/regulatoryinfo/WarrantyInfo;->readCSCFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 106
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/settings/R$string;->contact_us_title:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 107
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 100
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/settings/deviceinfo/regulatoryinfo/WarrantyInfo;->FILE_PATH_PRODUCT_WARRANTY:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/deviceinfo/regulatoryinfo/WarrantyInfo;->readCSCFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 101
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/settings/R$string;->product_warranty_title:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 102
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 95
    :cond_3
    iget-object p1, p0, Lcom/samsung/android/settings/deviceinfo/regulatoryinfo/WarrantyInfo;->FILE_PATH_WARRANTY_EXCEPTION:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/deviceinfo/regulatoryinfo/WarrantyInfo;->readCSCFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 96
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/settings/R$string;->warranty_exception_title:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 97
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 90
    :cond_4
    iget-object p1, p0, Lcom/samsung/android/settings/deviceinfo/regulatoryinfo/WarrantyInfo;->FILE_PATH_GENERAL_TERMS:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/deviceinfo/regulatoryinfo/WarrantyInfo;->readCSCFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 91
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/settings/R$string;->general_term_and_conditions_title:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 92
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    :goto_0
    iput-object v0, v2, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const p1, 0x104000a

    .line 114
    invoke-virtual {p0, p1}, Lcom/android/internal/app/AlertActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v2, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 116
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->setupAlert()V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 164
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onDestroy()V

    return-void
.end method
