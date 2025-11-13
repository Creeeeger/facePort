.class public Lcom/samsung/android/media/mir/SemAudioThumbnail;
.super Ljava/lang/Object;
.source "SemAudioThumbnail.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/media/mir/SemAudioThumbnail$ResultListener;
    }
.end annotation


# static fields
.field public static final whitelist ERROR_INVALID_ARG:I = -0x4

.field public static final whitelist ERROR_INVALID_PATH:I = -0x7

.field public static final whitelist ERROR_UNKNOWN:I = -0x1

.field public static final whitelist ERROR_UNSUPPORTED:I = -0x3

.field private static final blacklist SMAT_ERR:I = -0x1

.field private static final blacklist SMAT_ERR_INSUFF_MEM:I = -0x2

.field private static final blacklist SMAT_ERR_INVALID_ARG:I = -0x4

.field private static final blacklist SMAT_ERR_NOT_OPEN_FILE:I = -0x7

.field private static final blacklist SMAT_ERR_UNSUPPORT:I = -0x3

.field private static final blacklist SMAT_EXTRACT_DONE:I = 0x5

.field private static final blacklist SMAT_OK:I = 0x0

.field private static final blacklist SMAT_QUIT_DONE:I = 0x6

.field private static final blacklist SMAT_READY:I = 0x1

.field private static blacklist isNativeLibraryReady:Z


# instance fields
.field private blacklist lastError:I

.field private blacklist mHandle:I

.field private blacklist mListener:Lcom/samsung/android/media/mir/SemAudioThumbnail$ResultListener;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetlastError(Lcom/samsung/android/media/mir/SemAudioThumbnail;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/media/mir/SemAudioThumbnail;->lastError:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHandle(Lcom/samsung/android/media/mir/SemAudioThumbnail;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/media/mir/SemAudioThumbnail;->mHandle:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmListener(Lcom/samsung/android/media/mir/SemAudioThumbnail;)Lcom/samsung/android/media/mir/SemAudioThumbnail$ResultListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/media/mir/SemAudioThumbnail;->mListener:Lcom/samsung/android/media/mir/SemAudioThumbnail$ResultListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mdeinit(Lcom/samsung/android/media/mir/SemAudioThumbnail;I)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/media/mir/SemAudioThumbnail;->deinit(I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetInfo(Lcom/samsung/android/media/mir/SemAudioThumbnail;I)J
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/media/mir/SemAudioThumbnail;->getInfo(I)J

    move-result-wide p0

    return-wide p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetStat(Lcom/samsung/android/media/mir/SemAudioThumbnail;I)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/media/mir/SemAudioThumbnail;->getStat(I)I

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 438
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/media/mir/SemAudioThumbnail;->isNativeLibraryReady:Z

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 2

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 436
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/media/mir/SemAudioThumbnail;->mListener:Lcom/samsung/android/media/mir/SemAudioThumbnail$ResultListener;

    .line 440
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/media/mir/SemAudioThumbnail;->lastError:I

    .line 442
    iput v0, p0, Lcom/samsung/android/media/mir/SemAudioThumbnail;->mHandle:I

    .line 62
    const/4 v0, 0x0

    :try_start_0
    const-string/jumbo v1, "smat"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 63
    const/4 v1, 0x1

    sput-boolean v1, Lcom/samsung/android/media/mir/SemAudioThumbnail;->isNativeLibraryReady:Z
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 66
    :catch_0
    move-exception v1

    .line 67
    .local v1, "e":Ljava/lang/Exception;
    sput-boolean v0, Lcom/samsung/android/media/mir/SemAudioThumbnail;->isNativeLibraryReady:Z

    goto :goto_1

    .line 64
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 65
    .local v1, "e":Ljava/lang/UnsatisfiedLinkError;
    sput-boolean v0, Lcom/samsung/android/media/mir/SemAudioThumbnail;->isNativeLibraryReady:Z

    .line 68
    .end local v1    # "e":Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    nop

    .line 69
    :goto_1
    return-void
.end method

.method private native blacklist deinit(I)I
.end method

.method private native blacklist extract(I)I
.end method

.method private native blacklist getInfo(I)J
.end method

.method private native blacklist getStat(I)I
.end method

.method private native blacklist init(Ljava/lang/String;I)I
.end method

.method private native blacklist initialize(Ljava/io/FileDescriptor;I)I
.end method

.method private blacklist sendErrorMessage(Lcom/samsung/android/media/mir/SemAudioThumbnail$ResultListener;I)V
    .locals 2
    .param p1, "listener"    # Lcom/samsung/android/media/mir/SemAudioThumbnail$ResultListener;
    .param p2, "errorType"    # I

    .line 468
    iput-object p1, p0, Lcom/samsung/android/media/mir/SemAudioThumbnail;->mListener:Lcom/samsung/android/media/mir/SemAudioThumbnail$ResultListener;

    .line 469
    iput p2, p0, Lcom/samsung/android/media/mir/SemAudioThumbnail;->lastError:I

    .line 470
    new-instance v0, Lcom/samsung/android/media/mir/SemAudioThumbnail$4;

    const-string v1, "SemAudioThumbnail thread"

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/media/mir/SemAudioThumbnail$4;-><init>(Lcom/samsung/android/media/mir/SemAudioThumbnail;Ljava/lang/String;)V

    .line 481
    invoke-virtual {v0}, Lcom/samsung/android/media/mir/SemAudioThumbnail$4;->start()V

    .line 482
    return-void
.end method


# virtual methods
.method public whitelist checkFile(Ljava/lang/String;)Z
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .line 80
    sget-boolean v0, Lcom/samsung/android/media/mir/SemAudioThumbnail;->isNativeLibraryReady:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 85
    :cond_0
    :try_start_0
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/media/mir/SemAudioThumbnail;->init(Ljava/lang/String;I)I

    move-result v0

    .line 86
    .local v0, "handle":I
    if-ltz v0, :cond_1

    .line 87
    invoke-direct {p0, v0}, Lcom/samsung/android/media/mir/SemAudioThumbnail;->deinit(I)I
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    const/4 v1, 0x1

    return v1

    .line 94
    .end local v0    # "handle":I
    :cond_1
    nop

    .line 96
    return v1

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, "e":Ljava/lang/Exception;
    return v1

    .line 90
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 91
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    return v1

    .line 81
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :cond_2
    :goto_0
    return v1
.end method

.method public whitelist extract(Ljava/io/FileDescriptor;Lcom/samsung/android/media/mir/SemAudioThumbnail$ResultListener;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "listener"    # Lcom/samsung/android/media/mir/SemAudioThumbnail$ResultListener;

    .line 338
    if-eqz p2, :cond_4

    .line 342
    const/4 v0, -0x4

    if-nez p1, :cond_0

    .line 343
    invoke-direct {p0, p2, v0}, Lcom/samsung/android/media/mir/SemAudioThumbnail;->sendErrorMessage(Lcom/samsung/android/media/mir/SemAudioThumbnail$ResultListener;I)V

    .line 344
    return-void

    .line 347
    :cond_0
    sget-boolean v1, Lcom/samsung/android/media/mir/SemAudioThumbnail;->isNativeLibraryReady:Z

    const/4 v2, -0x1

    if-nez v1, :cond_1

    .line 348
    invoke-direct {p0, p2, v2}, Lcom/samsung/android/media/mir/SemAudioThumbnail;->sendErrorMessage(Lcom/samsung/android/media/mir/SemAudioThumbnail$ResultListener;I)V

    .line 349
    return-void

    .line 353
    :cond_1
    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/media/mir/SemAudioThumbnail;->initialize(Ljava/io/FileDescriptor;I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/media/mir/SemAudioThumbnail;->mHandle:I

    .line 354
    iput-object p2, p0, Lcom/samsung/android/media/mir/SemAudioThumbnail;->mListener:Lcom/samsung/android/media/mir/SemAudioThumbnail$ResultListener;

    .line 355
    if-ltz v1, :cond_3

    .line 356
    invoke-direct {p0, v1}, Lcom/samsung/android/media/mir/SemAudioThumbnail;->extract(I)I

    move-result v0

    if-nez v0, :cond_2

    .line 357
    new-instance v0, Lcom/samsung/android/media/mir/SemAudioThumbnail$3;

    const-string v1, "SemAudioThumbnail thread"

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/media/mir/SemAudioThumbnail$3;-><init>(Lcom/samsung/android/media/mir/SemAudioThumbnail;Ljava/lang/String;)V

    .line 411
    invoke-virtual {v0}, Lcom/samsung/android/media/mir/SemAudioThumbnail$3;->start()V

    goto :goto_0

    .line 413
    :cond_2
    invoke-direct {p0, p2, v2}, Lcom/samsung/android/media/mir/SemAudioThumbnail;->sendErrorMessage(Lcom/samsung/android/media/mir/SemAudioThumbnail$ResultListener;I)V

    goto :goto_0

    .line 416
    :cond_3
    iput v1, p0, Lcom/samsung/android/media/mir/SemAudioThumbnail;->lastError:I

    .line 417
    sparse-switch v1, :sswitch_data_0

    .line 425
    invoke-direct {p0, p2, v2}, Lcom/samsung/android/media/mir/SemAudioThumbnail;->sendErrorMessage(Lcom/samsung/android/media/mir/SemAudioThumbnail$ResultListener;I)V

    goto :goto_0

    .line 422
    :sswitch_0
    const/4 v0, -0x3

    invoke-direct {p0, p2, v0}, Lcom/samsung/android/media/mir/SemAudioThumbnail;->sendErrorMessage(Lcom/samsung/android/media/mir/SemAudioThumbnail$ResultListener;I)V

    .line 423
    goto :goto_0

    .line 419
    :sswitch_1
    invoke-direct {p0, p2, v0}, Lcom/samsung/android/media/mir/SemAudioThumbnail;->sendErrorMessage(Lcom/samsung/android/media/mir/SemAudioThumbnail$ResultListener;I)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 420
    goto :goto_0

    .line 431
    :catch_0
    move-exception v0

    goto :goto_1

    .line 429
    :catch_1
    move-exception v0

    .line 430
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    invoke-direct {p0, p2, v2}, Lcom/samsung/android/media/mir/SemAudioThumbnail;->sendErrorMessage(Lcom/samsung/android/media/mir/SemAudioThumbnail$ResultListener;I)V

    .line 433
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    nop

    .line 434
    :goto_1
    return-void

    .line 339
    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "listener is null."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_data_0
    .sparse-switch
        -0x7 -> :sswitch_1
        -0x3 -> :sswitch_0
    .end sparse-switch
.end method

.method public whitelist extract(Ljava/lang/String;ILcom/samsung/android/media/mir/SemAudioThumbnail$ResultListener;)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "duration"    # I
    .param p3, "listener"    # Lcom/samsung/android/media/mir/SemAudioThumbnail$ResultListener;

    .line 115
    if-eqz p3, :cond_5

    .line 119
    const/4 v0, -0x7

    if-nez p1, :cond_0

    .line 120
    invoke-direct {p0, p3, v0}, Lcom/samsung/android/media/mir/SemAudioThumbnail;->sendErrorMessage(Lcom/samsung/android/media/mir/SemAudioThumbnail$ResultListener;I)V

    .line 121
    return-void

    .line 124
    :cond_0
    sget-boolean v1, Lcom/samsung/android/media/mir/SemAudioThumbnail;->isNativeLibraryReady:Z

    const/4 v2, -0x1

    if-nez v1, :cond_1

    .line 125
    invoke-direct {p0, p3, v2}, Lcom/samsung/android/media/mir/SemAudioThumbnail;->sendErrorMessage(Lcom/samsung/android/media/mir/SemAudioThumbnail$ResultListener;I)V

    .line 126
    return-void

    .line 129
    :cond_1
    if-gez p2, :cond_2

    .line 130
    const/4 v0, -0x4

    invoke-direct {p0, p3, v0}, Lcom/samsung/android/media/mir/SemAudioThumbnail;->sendErrorMessage(Lcom/samsung/android/media/mir/SemAudioThumbnail$ResultListener;I)V

    .line 131
    return-void

    .line 135
    :cond_2
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/media/mir/SemAudioThumbnail;->init(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/media/mir/SemAudioThumbnail;->mHandle:I

    .line 136
    iput-object p3, p0, Lcom/samsung/android/media/mir/SemAudioThumbnail;->mListener:Lcom/samsung/android/media/mir/SemAudioThumbnail$ResultListener;

    .line 137
    if-ltz v1, :cond_4

    .line 138
    invoke-direct {p0, v1}, Lcom/samsung/android/media/mir/SemAudioThumbnail;->extract(I)I

    move-result v0

    if-nez v0, :cond_3

    .line 139
    new-instance v0, Lcom/samsung/android/media/mir/SemAudioThumbnail$1;

    const-string v1, "SemAudioThumbnail thread"

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/media/mir/SemAudioThumbnail$1;-><init>(Lcom/samsung/android/media/mir/SemAudioThumbnail;Ljava/lang/String;)V

    .line 193
    invoke-virtual {v0}, Lcom/samsung/android/media/mir/SemAudioThumbnail$1;->start()V

    goto :goto_0

    .line 195
    :cond_3
    invoke-direct {p0, p3, v2}, Lcom/samsung/android/media/mir/SemAudioThumbnail;->sendErrorMessage(Lcom/samsung/android/media/mir/SemAudioThumbnail$ResultListener;I)V

    goto :goto_0

    .line 198
    :cond_4
    iput v1, p0, Lcom/samsung/android/media/mir/SemAudioThumbnail;->lastError:I

    .line 199
    sparse-switch v1, :sswitch_data_0

    .line 207
    invoke-direct {p0, p3, v2}, Lcom/samsung/android/media/mir/SemAudioThumbnail;->sendErrorMessage(Lcom/samsung/android/media/mir/SemAudioThumbnail$ResultListener;I)V

    goto :goto_0

    .line 204
    :sswitch_0
    const/4 v0, -0x3

    invoke-direct {p0, p3, v0}, Lcom/samsung/android/media/mir/SemAudioThumbnail;->sendErrorMessage(Lcom/samsung/android/media/mir/SemAudioThumbnail$ResultListener;I)V

    .line 205
    goto :goto_0

    .line 201
    :sswitch_1
    invoke-direct {p0, p3, v0}, Lcom/samsung/android/media/mir/SemAudioThumbnail;->sendErrorMessage(Lcom/samsung/android/media/mir/SemAudioThumbnail$ResultListener;I)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    goto :goto_0

    .line 213
    :catch_0
    move-exception v0

    goto :goto_1

    .line 211
    :catch_1
    move-exception v0

    .line 212
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    invoke-direct {p0, p3, v2}, Lcom/samsung/android/media/mir/SemAudioThumbnail;->sendErrorMessage(Lcom/samsung/android/media/mir/SemAudioThumbnail$ResultListener;I)V

    .line 215
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    nop

    .line 216
    :goto_1
    return-void

    .line 116
    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "listener is null."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_data_0
    .sparse-switch
        -0x7 -> :sswitch_1
        -0x3 -> :sswitch_0
    .end sparse-switch
.end method

.method public whitelist extract(Ljava/lang/String;Lcom/samsung/android/media/mir/SemAudioThumbnail$ResultListener;)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/samsung/android/media/mir/SemAudioThumbnail$ResultListener;

    .line 229
    if-eqz p2, :cond_4

    .line 233
    const/4 v0, -0x7

    if-nez p1, :cond_0

    .line 234
    invoke-direct {p0, p2, v0}, Lcom/samsung/android/media/mir/SemAudioThumbnail;->sendErrorMessage(Lcom/samsung/android/media/mir/SemAudioThumbnail$ResultListener;I)V

    .line 235
    return-void

    .line 238
    :cond_0
    sget-boolean v1, Lcom/samsung/android/media/mir/SemAudioThumbnail;->isNativeLibraryReady:Z

    const/4 v2, -0x1

    if-nez v1, :cond_1

    .line 239
    invoke-direct {p0, p2, v2}, Lcom/samsung/android/media/mir/SemAudioThumbnail;->sendErrorMessage(Lcom/samsung/android/media/mir/SemAudioThumbnail$ResultListener;I)V

    .line 240
    return-void

    .line 244
    :cond_1
    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/media/mir/SemAudioThumbnail;->init(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/media/mir/SemAudioThumbnail;->mHandle:I

    .line 245
    iput-object p2, p0, Lcom/samsung/android/media/mir/SemAudioThumbnail;->mListener:Lcom/samsung/android/media/mir/SemAudioThumbnail$ResultListener;

    .line 246
    if-ltz v1, :cond_3

    .line 247
    invoke-direct {p0, v1}, Lcom/samsung/android/media/mir/SemAudioThumbnail;->extract(I)I

    move-result v0

    if-nez v0, :cond_2

    .line 248
    new-instance v0, Lcom/samsung/android/media/mir/SemAudioThumbnail$2;

    const-string v1, "SemAudioThumbnail thread"

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/media/mir/SemAudioThumbnail$2;-><init>(Lcom/samsung/android/media/mir/SemAudioThumbnail;Ljava/lang/String;)V

    .line 302
    invoke-virtual {v0}, Lcom/samsung/android/media/mir/SemAudioThumbnail$2;->start()V

    goto :goto_0

    .line 304
    :cond_2
    invoke-direct {p0, p2, v2}, Lcom/samsung/android/media/mir/SemAudioThumbnail;->sendErrorMessage(Lcom/samsung/android/media/mir/SemAudioThumbnail$ResultListener;I)V

    goto :goto_0

    .line 307
    :cond_3
    iput v1, p0, Lcom/samsung/android/media/mir/SemAudioThumbnail;->lastError:I

    .line 308
    sparse-switch v1, :sswitch_data_0

    .line 316
    invoke-direct {p0, p2, v2}, Lcom/samsung/android/media/mir/SemAudioThumbnail;->sendErrorMessage(Lcom/samsung/android/media/mir/SemAudioThumbnail$ResultListener;I)V

    goto :goto_0

    .line 313
    :sswitch_0
    const/4 v0, -0x3

    invoke-direct {p0, p2, v0}, Lcom/samsung/android/media/mir/SemAudioThumbnail;->sendErrorMessage(Lcom/samsung/android/media/mir/SemAudioThumbnail$ResultListener;I)V

    .line 314
    goto :goto_0

    .line 310
    :sswitch_1
    invoke-direct {p0, p2, v0}, Lcom/samsung/android/media/mir/SemAudioThumbnail;->sendErrorMessage(Lcom/samsung/android/media/mir/SemAudioThumbnail$ResultListener;I)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 311
    goto :goto_0

    .line 322
    :catch_0
    move-exception v0

    goto :goto_1

    .line 320
    :catch_1
    move-exception v0

    .line 321
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    invoke-direct {p0, p2, v2}, Lcom/samsung/android/media/mir/SemAudioThumbnail;->sendErrorMessage(Lcom/samsung/android/media/mir/SemAudioThumbnail$ResultListener;I)V

    .line 324
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    nop

    .line 325
    :goto_1
    return-void

    .line 230
    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "listener is null."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_data_0
    .sparse-switch
        -0x7 -> :sswitch_1
        -0x3 -> :sswitch_0
    .end sparse-switch
.end method
