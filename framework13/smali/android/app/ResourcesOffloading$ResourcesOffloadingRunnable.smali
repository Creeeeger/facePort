.class Landroid/app/ResourcesOffloading$ResourcesOffloadingRunnable;
.super Ljava/lang/Object;
.source "ResourcesOffloading.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ResourcesOffloading;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResourcesOffloadingRunnable"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/app/ResourcesOffloading;


# direct methods
.method private constructor blacklist <init>(Landroid/app/ResourcesOffloading;)V
    .locals 0

    .line 84
    iput-object p1, p0, Landroid/app/ResourcesOffloading$ResourcesOffloadingRunnable;->this$0:Landroid/app/ResourcesOffloading;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/app/ResourcesOffloading;Landroid/app/ResourcesOffloading$ResourcesOffloadingRunnable-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/ResourcesOffloading$ResourcesOffloadingRunnable;-><init>(Landroid/app/ResourcesOffloading;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 9

    .line 86
    iget-object v0, p0, Landroid/app/ResourcesOffloading$ResourcesOffloadingRunnable;->this$0:Landroid/app/ResourcesOffloading;

    invoke-static {v0}, Landroid/app/ResourcesOffloading;->-$$Nest$fgetappContext(Landroid/app/ResourcesOffloading;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "rList"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 87
    .local v0, "file":Ljava/io/File;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 88
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    .local v1, "fis":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v2, Ljava/io/ObjectInputStream;

    invoke-direct {v2, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 90
    .local v2, "ois":Ljava/io/ObjectInputStream;
    :try_start_2
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 91
    .local v3, "rList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v3, :cond_0

    .line 92
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 93
    .local v5, "rID":Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 94
    .local v6, "resourceId":I
    iget-object v7, p0, Landroid/app/ResourcesOffloading$ResourcesOffloadingRunnable;->this$0:Landroid/app/ResourcesOffloading;

    invoke-static {v7}, Landroid/app/ResourcesOffloading;->-$$Nest$fgetappContext(Landroid/app/ResourcesOffloading;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v6, v8}, Landroid/content/res/Resources;->offloadDrawable(II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 95
    .end local v5    # "rID":Ljava/lang/String;
    .end local v6    # "resourceId":I
    goto :goto_0

    .line 97
    .end local v3    # "rList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    :try_start_3
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .end local v2    # "ois":Ljava/io/ObjectInputStream;
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 99
    .end local v1    # "fis":Ljava/io/FileInputStream;
    goto :goto_3

    .line 88
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "ois":Ljava/io/ObjectInputStream;
    :catchall_0
    move-exception v3

    :try_start_5
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v4

    :try_start_6
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .end local p0    # "this":Landroid/app/ResourcesOffloading$ResourcesOffloadingRunnable;
    :goto_1
    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .end local v2    # "ois":Ljava/io/ObjectInputStream;
    .restart local v0    # "file":Ljava/io/File;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    .restart local p0    # "this":Landroid/app/ResourcesOffloading$ResourcesOffloadingRunnable;
    :catchall_2
    move-exception v2

    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v3

    :try_start_8
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "file":Ljava/io/File;
    .end local p0    # "this":Landroid/app/ResourcesOffloading$ResourcesOffloadingRunnable;
    :goto_2
    throw v2
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 97
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v0    # "file":Ljava/io/File;
    .restart local p0    # "this":Landroid/app/ResourcesOffloading$ResourcesOffloadingRunnable;
    :catch_0
    move-exception v1

    .line 98
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "ResourcesOffloading"

    const-string v3, "An exception occurred : "

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 101
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_3
    return-void
.end method
