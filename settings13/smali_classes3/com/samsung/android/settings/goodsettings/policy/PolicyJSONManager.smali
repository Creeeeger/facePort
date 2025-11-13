.class public Lcom/samsung/android/settings/goodsettings/policy/PolicyJSONManager;
.super Ljava/lang/Object;
.source "PolicyJSONManager.java"


# direct methods
.method public static existsJsonFile(Landroid/content/Context;)Z
    .locals 2

    .line 98
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    const-string v1, "good_settings_policy.json"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 99
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    return p0
.end method

.method public static getJsonData(Landroid/content/Context;)Ljava/lang/StringBuilder;
    .locals 5

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "good_settings_policy.json"

    .line 29
    invoke-virtual {p0, v2}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 30
    :try_start_1
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 31
    :goto_0
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    goto :goto_0

    :cond_0
    if-eqz p0, :cond_1

    .line 39
    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception p0

    goto :goto_2

    .line 42
    :cond_1
    :goto_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 49
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_b

    :catch_1
    move-exception p0

    .line 51
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b

    .line 45
    :goto_2
    :try_start_5
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 49
    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_b

    :goto_3
    :try_start_7
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_4

    :catch_2
    move-exception v0

    .line 51
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 54
    :goto_4
    throw p0

    :catch_3
    move-exception v1

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_c

    :catch_4
    move-exception v2

    move-object v4, v2

    move-object v2, v1

    move-object v1, v4

    goto :goto_5

    :catchall_2
    move-exception v0

    move-object v2, v1

    goto :goto_d

    :catch_5
    move-exception p0

    move-object v2, v1

    move-object v1, p0

    move-object p0, v2

    .line 35
    :goto_5
    :try_start_8
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    if-eqz p0, :cond_2

    .line 39
    :try_start_9
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    goto :goto_6

    :catchall_3
    move-exception p0

    goto :goto_8

    :catch_6
    move-exception p0

    goto :goto_7

    :cond_2
    :goto_6
    if-eqz v2, :cond_4

    .line 42
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_a

    .line 45
    :goto_7
    :try_start_a
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    if-eqz v2, :cond_5

    .line 49
    :try_start_b
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1

    goto :goto_b

    :goto_8
    if-eqz v2, :cond_3

    :try_start_c
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7

    goto :goto_9

    :catch_7
    move-exception v0

    .line 51
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 54
    :cond_3
    :goto_9
    throw p0

    :cond_4
    :goto_a
    if-eqz v2, :cond_5

    .line 49
    :try_start_d
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_1

    :cond_5
    :goto_b
    return-object v0

    :catchall_4
    move-exception v0

    :goto_c
    move-object v1, p0

    :goto_d
    if-eqz v1, :cond_6

    .line 39
    :try_start_e
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    goto :goto_e

    :catchall_5
    move-exception p0

    goto :goto_10

    :catch_8
    move-exception p0

    goto :goto_f

    :cond_6
    :goto_e
    if-eqz v2, :cond_8

    .line 42
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_8
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    goto :goto_12

    .line 45
    :goto_f
    :try_start_f
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    if-eqz v2, :cond_9

    .line 49
    :try_start_10
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_a

    goto :goto_13

    :goto_10
    if-eqz v2, :cond_7

    :try_start_11
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_9

    goto :goto_11

    :catch_9
    move-exception v0

    .line 51
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 54
    :cond_7
    :goto_11
    throw p0

    :cond_8
    :goto_12
    if-eqz v2, :cond_9

    .line 49
    :try_start_12
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_a

    goto :goto_13

    :catch_a
    move-exception p0

    .line 51
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 55
    :cond_9
    :goto_13
    throw v0
.end method

.method public static parsePolicy(Landroid/content/Context;)Lcom/samsung/android/settings/goodsettings/policy/PolicyData;
    .locals 2

    .line 103
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 104
    invoke-static {p0}, Lcom/samsung/android/settings/goodsettings/policy/PolicyJSONManager;->getJsonData(Landroid/content/Context;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-class v1, Lcom/samsung/android/settings/goodsettings/policy/PolicyData;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/goodsettings/policy/PolicyData;

    return-object p0
.end method

.method public static writeJson(Landroid/content/Context;Lcom/samsung/android/settings/goodsettings/policy/PolicyData;)V
    .locals 4

    const-string v0, "good_settings_policy.json"

    const/4 v1, 0x0

    .line 64
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    const/4 v2, 0x0

    .line 65
    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 66
    :try_start_1
    new-instance v0, Ljava/io/OutputStreamWriter;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 67
    :try_start_2
    new-instance v2, Lcom/google/gson/stream/JsonWriter;

    invoke-direct {v2, v0}, Lcom/google/gson/stream/JsonWriter;-><init>(Ljava/io/Writer;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 68
    :try_start_3
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 69
    const-class v3, Lcom/samsung/android/settings/goodsettings/policy/PolicyData;

    invoke-virtual {v1, p1, v3, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/google/gson/stream/JsonWriter;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 75
    :try_start_4
    invoke-virtual {v2}, Lcom/google/gson/stream/JsonWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 78
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 82
    :goto_0
    :try_start_5
    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 85
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    if-eqz p0, :cond_2

    .line 89
    :try_start_6
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_8

    goto :goto_5

    :catchall_0
    move-exception p1

    move-object v1, v2

    goto :goto_6

    :catch_2
    move-exception p1

    move-object v1, v2

    goto :goto_2

    :catch_3
    move-exception p1

    goto :goto_2

    :catchall_1
    move-exception p1

    move-object v0, v1

    goto :goto_6

    :catch_4
    move-exception p1

    move-object v0, v1

    goto :goto_2

    :catchall_2
    move-exception p1

    move-object p0, v1

    move-object v0, p0

    goto :goto_6

    :catch_5
    move-exception p1

    move-object p0, v1

    move-object v0, p0

    .line 71
    :goto_2
    :try_start_7
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    if-eqz v1, :cond_0

    .line 75
    :try_start_8
    invoke-virtual {v1}, Lcom/google/gson/stream/JsonWriter;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_3

    :catch_6
    move-exception p1

    .line 78
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_3
    if-eqz v0, :cond_1

    .line 82
    :try_start_9
    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    goto :goto_4

    :catch_7
    move-exception p1

    .line 85
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    :goto_4
    if-eqz p0, :cond_2

    .line 89
    :try_start_a
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    goto :goto_5

    :catch_8
    move-exception p0

    .line 92
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    :goto_5
    return-void

    :catchall_3
    move-exception p1

    :goto_6
    if-eqz v1, :cond_3

    .line 75
    :try_start_b
    invoke-virtual {v1}, Lcom/google/gson/stream/JsonWriter;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_9

    goto :goto_7

    :catch_9
    move-exception v1

    .line 78
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :cond_3
    :goto_7
    if-eqz v0, :cond_4

    .line 82
    :try_start_c
    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_a

    goto :goto_8

    :catch_a
    move-exception v0

    .line 85
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_4
    :goto_8
    if-eqz p0, :cond_5

    .line 89
    :try_start_d
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_b

    goto :goto_9

    :catch_b
    move-exception p0

    .line 92
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 94
    :cond_5
    :goto_9
    throw p1
.end method
