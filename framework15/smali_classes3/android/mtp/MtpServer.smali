.class public Landroid/mtp/MtpServer;
.super Ljava/lang/Object;
.source "MtpServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final blacklist sID_LEN_BYTES:I = 0x10

.field private static final blacklist sID_LEN_STR:I = 0x20


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private final greylist-max-o mDatabase:Landroid/mtp/MtpDatabase;

.field private greylist-max-o mNativeContext:J

.field private final greylist-max-o mOnTerminate:Ljava/lang/Runnable;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const-string/jumbo v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/mtp/MtpDatabase;Ljava/io/FileDescriptor;ZLjava/lang/Runnable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 13

    move-object v8, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/mtp/MtpDatabase;

    iput-object v0, v8, Landroid/mtp/MtpServer;->mDatabase:Landroid/mtp/MtpDatabase;

    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    iput-object v0, v8, Landroid/mtp/MtpServer;->mOnTerminate:Ljava/lang/Runnable;

    iget-object v0, v8, Landroid/mtp/MtpServer;->mDatabase:Landroid/mtp/MtpDatabase;

    invoke-virtual {v0}, Landroid/mtp/MtpDatabase;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, v8, Landroid/mtp/MtpServer;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "mtp-cfg"

    const-string/jumbo v10, "mtp-id"

    const/4 v0, 0x0

    iget-object v1, v8, Landroid/mtp/MtpServer;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "mtp-cfg"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v11

    const-string/jumbo v1, "mtp-id"

    invoke-interface {v11, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    invoke-interface {v11, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x20

    if-eq v2, v3, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Character;->digit(CI)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-nez v0, :cond_3

    invoke-direct {p0}, Landroid/mtp/MtpServer;->getRandId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v11}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    move-object v12, v0

    goto :goto_2

    :cond_3
    move-object v12, v0

    :goto_2
    move-object v7, v12

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    invoke-direct/range {v0 .. v7}, Landroid/mtp/MtpServer;->native_setup(Landroid/mtp/MtpDatabase;Ljava/io/FileDescriptor;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p1

    invoke-virtual {p1, p0}, Landroid/mtp/MtpDatabase;->setServer(Landroid/mtp/MtpServer;)V

    return-void
.end method

.method private blacklist getRandId()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/16 v1, 0x10

    new-array v1, v1, [B

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextBytes([B)V

    invoke-static {v1}, Llibcore/util/HexEncoding;->encodeToString([B)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private final native greylist-max-o native_add_storage(Landroid/mtp/MtpStorage;)V
.end method

.method private final native greylist-max-o native_cleanup()V
.end method

.method private final native greylist-max-o native_remove_storage(I)V
.end method

.method private final native greylist-max-o native_run()V
.end method

.method private final native greylist-max-o native_send_device_property_changed(I)V
.end method

.method private final native greylist-max-o native_send_object_added(I)V
.end method

.method private final native blacklist native_send_object_info_changed(I)V
.end method

.method private final native greylist-max-o native_send_object_removed(I)V
.end method

.method private final native greylist-max-o native_setup(Landroid/mtp/MtpDatabase;Ljava/io/FileDescriptor;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method


# virtual methods
.method public greylist-max-o addStorage(Landroid/mtp/MtpStorage;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/mtp/MtpServer;->native_add_storage(Landroid/mtp/MtpStorage;)V

    return-void
.end method

.method public greylist-max-o removeStorage(Landroid/mtp/MtpStorage;)V
    .locals 1

    invoke-virtual {p1}, Landroid/mtp/MtpStorage;->getStorageId()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/mtp/MtpServer;->native_remove_storage(I)V

    return-void
.end method

.method public whitelist test-api run()V
    .locals 1

    invoke-direct {p0}, Landroid/mtp/MtpServer;->native_run()V

    invoke-direct {p0}, Landroid/mtp/MtpServer;->native_cleanup()V

    iget-object v0, p0, Landroid/mtp/MtpServer;->mDatabase:Landroid/mtp/MtpDatabase;

    invoke-virtual {v0}, Landroid/mtp/MtpDatabase;->close()V

    iget-object v0, p0, Landroid/mtp/MtpServer;->mOnTerminate:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public greylist-max-o sendDevicePropertyChanged(I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/mtp/MtpServer;->native_send_device_property_changed(I)V

    return-void
.end method

.method public greylist-max-o sendObjectAdded(I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/mtp/MtpServer;->native_send_object_added(I)V

    return-void
.end method

.method public blacklist sendObjectInfoChanged(I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/mtp/MtpServer;->native_send_object_info_changed(I)V

    return-void
.end method

.method public greylist-max-o sendObjectRemoved(I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/mtp/MtpServer;->native_send_object_removed(I)V

    return-void
.end method

.method public greylist-max-o start()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    const-string v1, "MtpServer"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
