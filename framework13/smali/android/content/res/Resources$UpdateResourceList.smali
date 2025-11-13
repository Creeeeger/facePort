.class Landroid/content/res/Resources$UpdateResourceList;
.super Ljava/lang/Object;
.source "Resources.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/Resources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UpdateResourceList"
.end annotation


# instance fields
.field blacklist resourceId:I

.field blacklist value:Landroid/util/TypedValue;


# direct methods
.method constructor blacklist <init>(ILandroid/util/TypedValue;)V
    .locals 0
    .param p1, "resourceId"    # I
    .param p2, "value"    # Landroid/util/TypedValue;

    .line 2864
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2865
    iput p1, p0, Landroid/content/res/Resources$UpdateResourceList;->resourceId:I

    .line 2866
    iput-object p2, p0, Landroid/content/res/Resources$UpdateResourceList;->value:Landroid/util/TypedValue;

    .line 2867
    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 7

    .line 2869
    const/4 v0, 0x0

    .line 2870
    .local v0, "fos":Ljava/io/FileOutputStream;
    const/4 v1, 0x0

    .line 2872
    .local v1, "oos":Ljava/io/ObjectOutputStream;
    :try_start_0
    const-string/jumbo v2, "null"

    .line 2873
    .local v2, "filename":Ljava/lang/String;
    iget-object v3, p0, Landroid/content/res/Resources$UpdateResourceList;->value:Landroid/util/TypedValue;

    if-eqz v3, :cond_0

    .line 2874
    iget-object v3, v3, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 2876
    :cond_0
    invoke-static {}, Landroid/content/res/Resources;->-$$Nest$sfgetsResourceCount()I

    move-result v3

    const/16 v4, 0x1e

    if-gt v3, v4, :cond_2

    const-string/jumbo v3, "null"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, ".png"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, ".xml"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, ".webp"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2877
    :cond_1
    invoke-static {}, Landroid/content/res/Resources;->-$$Nest$sfgetsRlistWriteLock()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 2878
    :try_start_1
    invoke-static {}, Landroid/content/res/Resources;->-$$Nest$sfgetsResourceList()Ljava/util/List;

    move-result-object v4

    iget v5, p0, Landroid/content/res/Resources$UpdateResourceList;->resourceId:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2879
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2880
    :try_start_2
    invoke-static {}, Landroid/content/res/Resources;->-$$Nest$sfgetsResourceCount()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Landroid/content/res/Resources;->-$$Nest$sfputsResourceCount(I)V

    .line 2881
    invoke-static {}, Landroid/content/res/Resources;->-$$Nest$sfgetsAppContext()Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 2882
    invoke-static {}, Landroid/content/res/Resources;->-$$Nest$sfgetsAppContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "rList"

    invoke-static {}, Landroid/content/res/Resources;->-$$Nest$sfgetsAppContext()Landroid/content/Context;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v3

    move-object v0, v3

    .line 2883
    new-instance v3, Ljava/io/ObjectOutputStream;

    invoke-direct {v3, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v1, v3

    .line 2884
    invoke-static {}, Landroid/content/res/Resources;->-$$Nest$sfgetsRlistWriteLock()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 2885
    :try_start_3
    invoke-static {}, Landroid/content/res/Resources;->-$$Nest$sfgetsResourceList()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 2886
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2887
    :try_start_4
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->flush()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    .line 2886
    :catchall_0
    move-exception v4

    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .end local v0    # "fos":Ljava/io/FileOutputStream;
    .end local v1    # "oos":Ljava/io/ObjectOutputStream;
    .end local p0    # "this":Landroid/content/res/Resources$UpdateResourceList;
    :try_start_6
    throw v4
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 2879
    .restart local v0    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "oos":Ljava/io/ObjectOutputStream;
    .restart local p0    # "this":Landroid/content/res/Resources$UpdateResourceList;
    :catchall_1
    move-exception v4

    :try_start_7
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .end local v0    # "fos":Ljava/io/FileOutputStream;
    .end local v1    # "oos":Ljava/io/ObjectOutputStream;
    .end local p0    # "this":Landroid/content/res/Resources$UpdateResourceList;
    :try_start_8
    throw v4
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 2894
    .end local v2    # "filename":Ljava/lang/String;
    .restart local v0    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "oos":Ljava/io/ObjectOutputStream;
    .restart local p0    # "this":Landroid/content/res/Resources$UpdateResourceList;
    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    .line 2895
    :try_start_9
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0

    goto :goto_1

    .line 2897
    :catch_0
    move-exception v2

    .line 2898
    .local v2, "e":Ljava/io/IOException;
    const-string v3, "Resources"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IOException occured at : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 2899
    .end local v2    # "e":Ljava/io/IOException;
    :cond_3
    :goto_1
    nop

    .line 2901
    :goto_2
    if-eqz v0, :cond_4

    .line 2902
    :try_start_a
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1

    goto :goto_4

    .line 2904
    :catch_1
    move-exception v2

    .line 2905
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v3, "Resources"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    :goto_3
    const-string v5, "IOException occured at : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2907
    .end local v2    # "e":Ljava/io/IOException;
    goto :goto_7

    .line 2906
    :cond_4
    :goto_4
    goto :goto_7

    .line 2893
    :catchall_2
    move-exception v2

    goto :goto_8

    .line 2890
    :catch_2
    move-exception v2

    .line 2891
    .local v2, "e":Ljava/lang/Exception;
    :try_start_b
    const-string v3, "Resources"

    const-string v4, "An exception occurred : "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 2894
    .end local v2    # "e":Ljava/lang/Exception;
    if-eqz v1, :cond_5

    .line 2895
    :try_start_c
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_3

    goto :goto_5

    .line 2897
    :catch_3
    move-exception v2

    .line 2898
    .local v2, "e":Ljava/io/IOException;
    const-string v3, "Resources"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IOException occured at : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 2899
    .end local v2    # "e":Ljava/io/IOException;
    :cond_5
    :goto_5
    nop

    .line 2901
    :goto_6
    if-eqz v0, :cond_4

    .line 2902
    :try_start_d
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_4

    goto :goto_4

    .line 2904
    :catch_4
    move-exception v2

    .line 2905
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v3, "Resources"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_3

    .line 2908
    .end local v2    # "e":Ljava/io/IOException;
    :goto_7
    return-void

    .line 2894
    :goto_8
    if-eqz v1, :cond_6

    .line 2895
    :try_start_e
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_5

    goto :goto_9

    .line 2897
    :catch_5
    move-exception v3

    .line 2898
    .local v3, "e":Ljava/io/IOException;
    const-string v4, "Resources"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IOException occured at : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 2899
    .end local v3    # "e":Ljava/io/IOException;
    :cond_6
    :goto_9
    nop

    .line 2901
    :goto_a
    if-eqz v0, :cond_7

    .line 2902
    :try_start_f
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_6

    goto :goto_b

    .line 2904
    :catch_6
    move-exception v3

    .line 2905
    .restart local v3    # "e":Ljava/io/IOException;
    const-string v4, "Resources"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IOException occured at : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 2906
    .end local v3    # "e":Ljava/io/IOException;
    :cond_7
    :goto_b
    nop

    .line 2907
    :goto_c
    throw v2
.end method
