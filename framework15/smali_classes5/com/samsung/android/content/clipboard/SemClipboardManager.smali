.class public Lcom/samsung/android/content/clipboard/SemClipboardManager;
.super Ljava/lang/Object;
.source "SemClipboardManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/content/clipboard/SemClipboardManager$OnPasteListener;,
        Lcom/samsung/android/content/clipboard/SemClipboardManager$InnerOnClipboardEventListener;,
        Lcom/samsung/android/content/clipboard/SemClipboardManager$Type;,
        Lcom/samsung/android/content/clipboard/SemClipboardManager$OnAddClipResultListener;,
        Lcom/samsung/android/content/clipboard/SemClipboardManager$ClipboardEvent;
    }
.end annotation


# static fields
.field public static final whitelist ACTION_ADD_CLIP:Ljava/lang/String; = "com.samsung.android.content.clipboard.action.ADD_CLIP"

.field public static final whitelist ACTION_CLIPBOARD_CLOSED:Ljava/lang/String; = "com.samsung.android.content.clipboard.action.CLIPBOARD_CLOSED"
    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
        since = "13.0"
    .end annotation
.end field

.field public static final whitelist ACTION_CLIPBOARD_OPENED:Ljava/lang/String; = "com.samsung.android.content.clipboard.action.CLIPBOARD_OPENED"
    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
        since = "13.0"
    .end annotation
.end field

.field public static final whitelist ACTION_DISMISS_CLIPBOARD:Ljava/lang/String; = "com.samsung.android.content.clipboard.action.DISMISS_CLIPBOARD"
    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
        since = "13.0"
    .end annotation
.end field

.field public static final blacklist ACTION_INTRODUCE_EDGE:Ljava/lang/String; = "com.samsung.android.content.clipboard.action.INTRODUCE_EDGE"

.field public static final blacklist ACTION_REMOVE_CLIP:Ljava/lang/String; = "com.samsung.android.content.clipboard.action.REMOVE_CLIP"

.field public static final blacklist CLIPBOARD_TYPE_FILTER:I = 0xff

.field public static final whitelist EXTRA_DARK_THEME:Ljava/lang/String; = "darkTheme"

.field public static final whitelist EXTRA_EXTRA_PATH:Ljava/lang/String; = "extra_path"

.field public static final whitelist EXTRA_NO_TOAST:Ljava/lang/String; = "noToast"

.field public static final whitelist EXTRA_PATH:Ljava/lang/String; = "path"

.field public static final whitelist EXTRA_TYPE:Ljava/lang/String; = "type"

.field private static final blacklist KEY_DATA:Ljava/lang/String; = "data"

.field private static final blacklist KEY_FILTER:Ljava/lang/String; = "filter"

.field private static final blacklist TAG:Ljava/lang/String; = "SemClipboardManager"

.field private static blacklist mSemService:Landroid/sec/clipboard/IClipboardService;


# instance fields
.field private final blacklist FAIL_SET_DATA:I

.field private final blacklist PROTECTED_DATA_MAX:I

.field private final blacklist SUCCESS_AND_SAVE_BITMAP:I

.field private final blacklist SUCCESS_SET_DATA:I

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mHandler:Landroid/os/Handler;

.field private final blacklist mInnerOnClipboardEventServiceListener:Lcom/samsung/android/content/clipboard/SemClipboardManager$InnerOnClipboardEventListener;

.field private blacklist mIsMaximumSize:Z

.field private blacklist mOnClipboardEventServiceListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/content/clipboard/SemClipboardEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mOnPasteServiceListener:Landroid/sec/clipboard/IClipboardDataPasteEvent$Stub;

.field private blacklist mPasteListener:Lcom/samsung/android/content/clipboard/SemClipboardManager$OnPasteListener;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mnotifyEvent(Lcom/samsung/android/content/clipboard/SemClipboardManager;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->notifyEvent(Landroid/os/Message;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mrequestPaste(Lcom/samsung/android/content/clipboard/SemClipboardManager;Lcom/samsung/android/content/clipboard/data/SemClipData;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->requestPaste(Lcom/samsung/android/content/clipboard/data/SemClipData;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mSemService:Landroid/sec/clipboard/IClipboardService;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->SUCCESS_SET_DATA:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->FAIL_SET_DATA:I

    const/4 v1, 0x2

    iput v1, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->SUCCESS_AND_SAVE_BITMAP:I

    const/4 v1, 0x3

    iput v1, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->PROTECTED_DATA_MAX:I

    iput-boolean v0, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mIsMaximumSize:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mPasteListener:Lcom/samsung/android/content/clipboard/SemClipboardManager$OnPasteListener;

    new-instance v0, Lcom/samsung/android/content/clipboard/SemClipboardManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/content/clipboard/SemClipboardManager$1;-><init>(Lcom/samsung/android/content/clipboard/SemClipboardManager;)V

    iput-object v0, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mOnPasteServiceListener:Landroid/sec/clipboard/IClipboardDataPasteEvent$Stub;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mOnClipboardEventServiceListeners:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/samsung/android/content/clipboard/SemClipboardManager$2;

    iget-object v1, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/content/clipboard/SemClipboardManager$2;-><init>(Lcom/samsung/android/content/clipboard/SemClipboardManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/samsung/android/content/clipboard/SemClipboardManager$InnerOnClipboardEventListener;

    iget-object v1, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Lcom/samsung/android/content/clipboard/SemClipboardManager$InnerOnClipboardEventListener;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mInnerOnClipboardEventServiceListener:Lcom/samsung/android/content/clipboard/SemClipboardManager$InnerOnClipboardEventListener;

    return-void
.end method

.method private static blacklist getSemService()Landroid/sec/clipboard/IClipboardService;
    .locals 2

    sget-object v0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mSemService:Landroid/sec/clipboard/IClipboardService;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mSemService:Landroid/sec/clipboard/IClipboardService;

    return-object v0

    :cond_0
    const-string/jumbo v0, "semclipboard"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/sec/clipboard/IClipboardService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/sec/clipboard/IClipboardService;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mSemService:Landroid/sec/clipboard/IClipboardService;

    sget-object v0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mSemService:Landroid/sec/clipboard/IClipboardService;

    if-nez v0, :cond_1

    const-string v0, "SemClipboardManager"

    const-string v1, "Failed to get semclipboard service."

    invoke-static {v0, v1}, Landroid/sec/clipboard/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    sget-object v0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mSemService:Landroid/sec/clipboard/IClipboardService;

    return-object v0
.end method

.method private blacklist isEnabled(Ljava/lang/String;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "not enabled! from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemClipboardManager"

    invoke-static {v1, v0}, Landroid/sec/clipboard/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private blacklist makeFileDescriptor(Lcom/samsung/android/content/clipboard/data/SemClipData;)Z
    .locals 12

    invoke-static {}, Landroid/sec/clipboard/util/FileHelper;->getInstance()Landroid/sec/clipboard/util/FileHelper;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getClipType()I

    move-result v1

    const-string/jumbo v2, "it\'s not file."

    const-string v3, "/data/semclipboard"

    const-string/jumbo v4, "it\'s /data/semclipdata/.. path file"

    const/high16 v5, 0x38000000

    const/4 v6, 0x1

    const/4 v7, 0x0

    const-string v8, "SemClipboardManager"

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_5

    :sswitch_0
    move-object v1, p1

    check-cast v1, Lcom/samsung/android/content/clipboard/data/SemUriClipData;

    invoke-virtual {v1}, Lcom/samsung/android/content/clipboard/data/SemUriClipData;->getThumbnailPath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-virtual {v0, v1}, Landroid/sec/clipboard/util/FileHelper;->setThumbnailImagePathFromUriData(Lcom/samsung/android/content/clipboard/data/SemUriClipData;)Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-virtual {v1}, Lcom/samsung/android/content/clipboard/data/SemUriClipData;->getThumbnailPath()Ljava/lang/String;

    move-result-object v9

    :cond_0
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_3

    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v0, v10}, Landroid/sec/clipboard/util/FileHelper;->checkFile(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_1

    :try_start_0
    invoke-static {v10, v5}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/content/clipboard/data/SemUriClipData;->setParcelFileDescriptor(Landroid/os/ParcelFileDescriptor;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    goto :goto_0

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "makeFileDescriptor(4) Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/sec/clipboard/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_1
    invoke-static {v8, v2}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_2
    invoke-static {v8, v4}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_3
    const-string/jumbo v2, "no preview image file"

    invoke-static {v8, v2}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    goto/16 :goto_5

    :sswitch_1
    move-object v1, p1

    check-cast v1, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;

    invoke-virtual {v1}, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->getThumbnailImagePath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-virtual {v0, v1}, Landroid/sec/clipboard/util/FileHelper;->setFirstImagePathFromHtmlData(Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;)Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-virtual {v1}, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->getThumbnailImagePath()Ljava/lang/String;

    move-result-object v9

    :cond_4
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_7

    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {v0, v10}, Landroid/sec/clipboard/util/FileHelper;->checkFile(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_5

    :try_start_1
    invoke-static {v10, v5}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->setParcelFileDescriptor(Landroid/os/ParcelFileDescriptor;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    nop

    goto :goto_1

    :catch_1
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "makeFileDescriptor(3) Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/sec/clipboard/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_5
    invoke-static {v8, v2}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_6
    invoke-static {v8, v4}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_7
    const-string/jumbo v2, "no first image file"

    invoke-static {v8, v2}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    goto/16 :goto_5

    :sswitch_2
    move-object v1, p1

    check-cast v1, Lcom/samsung/android/content/clipboard/data/SemImageClipData;

    invoke-virtual {v1}, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->getBitmapPath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_a

    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_9

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    invoke-virtual {v0, v10}, Landroid/sec/clipboard/util/FileHelper;->checkFile(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_8

    :try_start_2
    invoke-static {v10, v5}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->setParcelFileDescriptor(Landroid/os/ParcelFileDescriptor;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    nop

    goto :goto_2

    :catch_2
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "makeFileDescriptor(1) Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/sec/clipboard/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_8
    invoke-static {v8, v2}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_9
    invoke-static {v8, v4}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_a
    const-string/jumbo v2, "no bitmap file"

    invoke-static {v8, v2}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    invoke-virtual {v1}, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->hasExtraData()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-virtual {v1}, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->getExtraDataPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_c

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/sec/clipboard/util/FileHelper;->checkFile(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_b

    :try_start_3
    invoke-static {v3, v5}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->setExtraParcelFileDescriptor(Landroid/os/ParcelFileDescriptor;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "makeFileDescriptor(2) Exception : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/sec/clipboard/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "it\'s not file. : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_c
    :goto_3
    goto :goto_4

    :cond_d
    const-string/jumbo v2, "no extra bitmap file"

    invoke-static {v8, v2}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    nop

    :goto_5
    return v6

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_2
        0x4 -> :sswitch_1
        0x10 -> :sswitch_0
    .end sparse-switch
.end method

.method private blacklist notifyEvent(Landroid/os/Message;)V
    .locals 8

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    goto :goto_2

    :sswitch_0
    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string/jumbo v2, "filter"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mOnClipboardEventServiceListeners:Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mOnClipboardEventServiceListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gtz v3, :cond_1

    monitor-exit v2

    return-void

    :cond_1
    iget-object v4, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mOnClipboardEventServiceListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x0

    :goto_0
    array-length v6, v4

    if-ge v5, v6, :cond_2

    aget-object v6, v4, v5

    check-cast v6, Lcom/samsung/android/content/clipboard/SemClipboardEventListener;

    invoke-interface {v6, v0}, Lcom/samsung/android/content/clipboard/SemClipboardEventListener;->onFilterUpdated(I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    monitor-exit v2

    goto :goto_2

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :sswitch_1
    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v2, "data"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/samsung/android/content/clipboard/data/SemClipData;

    :cond_3
    iget-object v2, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mOnClipboardEventServiceListeners:Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_1
    iget-object v3, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mOnClipboardEventServiceListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gtz v3, :cond_4

    monitor-exit v2

    return-void

    :cond_4
    iget-object v4, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mOnClipboardEventServiceListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x0

    :goto_1
    array-length v6, v4

    if-ge v5, v6, :cond_5

    aget-object v6, v4, v5

    check-cast v6, Lcom/samsung/android/content/clipboard/SemClipboardEventListener;

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-interface {v6, v7, v0}, Lcom/samsung/android/content/clipboard/SemClipboardEventListener;->onClipboardUpdated(ILcom/samsung/android/content/clipboard/data/SemClipData;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_5
    monitor-exit v2

    goto :goto_2

    :catchall_1
    move-exception v3

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v3

    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5 -> :sswitch_0
        0x7 -> :sswitch_1
        0x8 -> :sswitch_1
        0x10 -> :sswitch_1
        0x100 -> :sswitch_1
    .end sparse-switch
.end method

.method private blacklist requestPaste(Lcom/samsung/android/content/clipboard/data/SemClipData;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mPasteListener:Lcom/samsung/android/content/clipboard/SemClipboardManager$OnPasteListener;

    const-string v1, "SemClipboardManager"

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mPasteListener:Lcom/samsung/android/content/clipboard/SemClipboardManager$OnPasteListener;

    invoke-interface {v0, p1}, Lcom/samsung/android/content/clipboard/SemClipboardManager$OnPasteListener;->onPaste(Lcom/samsung/android/content/clipboard/data/SemClipData;)V

    goto :goto_0

    :cond_0
    const-string v0, "clipdata is null"

    invoke-static {v1, v0}, Landroid/sec/clipboard/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "no app clipboard listener!"

    invoke-static {v1, v0}, Landroid/sec/clipboard/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public whitelist addClip(Landroid/content/Context;Lcom/samsung/android/content/clipboard/data/SemClipData;Lcom/samsung/android/content/clipboard/SemClipboardManager$OnAddClipResultListener;)V
    .locals 1

    const-string v0, "addClip"

    invoke-direct {p0, v0}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->isEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p2}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->setPrimarySemClip(Lcom/samsung/android/content/clipboard/data/SemClipData;)V

    return-void
.end method

.method public whitelist dismissDialog()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
        since = "13.0"
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deprecated dismissDialog, calling package : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemClipboardManager"

    invoke-static {v1, v0}, Landroid/sec/clipboard/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public whitelist filterClip(ILcom/samsung/android/content/clipboard/SemClipboardManager$OnPasteListener;)V
    .locals 4

    const-string v0, "SemClipboardManager"

    const-string/jumbo v1, "filterClip"

    invoke-direct {p0, v1}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->isEnabled(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->getSemService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->getSemService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mOnPasteServiceListener:Landroid/sec/clipboard/IClipboardDataPasteEvent$Stub;

    invoke-interface {v1, p1, v2}, Landroid/sec/clipboard/IClipboardService;->updateFilter(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateFilter - Format("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "), "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/sec/clipboard/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException in filterClip, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/sec/clipboard/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iput-object p2, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mPasteListener:Lcom/samsung/android/content/clipboard/SemClipboardManager$OnPasteListener;

    :cond_1
    return-void
.end method

.method public whitelist getClip(Ljava/lang/String;)Lcom/samsung/android/content/clipboard/data/SemClipData;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
        since = "13.0"
    .end annotation

    const-string/jumbo v0, "getClip"

    invoke-direct {p0, v0}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->isEnabled(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-static {}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->getSemService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->getSemService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/sec/clipboard/IClipboardService;->getPrimarySemClip(Ljava/lang/String;I)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException in getClip, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SemClipboardManager"

    invoke-static {v3, v2}, Landroid/sec/clipboard/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object v1
.end method

.method public whitelist getClips()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/content/clipboard/data/SemClipData;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
        since = "13.0"
    .end annotation

    const-string/jumbo v0, "getClips"

    invoke-direct {p0, v0}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->isEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->getSemService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v1

    if-eqz v1, :cond_2

    :try_start_0
    invoke-static {}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->getSemService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/sec/clipboard/IClipboardService;->getPrimarySemClip(Ljava/lang/String;I)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException in getClips, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SemClipboardManager"

    invoke-static {v3, v2}, Landroid/sec/clipboard/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-object v0
.end method

.method public whitelist getCount()I
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
        since = "13.0"
    .end annotation

    const-string/jumbo v0, "getCount"

    invoke-direct {p0, v0}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->isEnabled(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->getSemService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->getSemService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/sec/clipboard/IClipboardService;->hasPrimaryClip(Ljava/lang/String;I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException in getCount, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SemClipboardManager"

    invoke-static {v3, v2}, Landroid/sec/clipboard/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v1
.end method

.method public whitelist getLatestClip(I)Lcom/samsung/android/content/clipboard/data/SemClipData;
    .locals 4

    const-string/jumbo v0, "getLatestClip"

    invoke-direct {p0, v0}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->isEnabled(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-static {}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->getSemService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->getSemService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/sec/clipboard/IClipboardService;->getPrimarySemClip(Ljava/lang/String;I)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException in getLatestClip, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SemClipboardManager"

    invoke-static {v3, v2}, Landroid/sec/clipboard/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object v1
.end method

.method public whitelist isEnabled()Z
    .locals 3

    invoke-static {}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->getSemService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->getSemService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/sec/clipboard/IClipboardService;->isEnabled(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteException in isEnabled, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SemClipboardManager"

    invoke-static {v2, v1}, Landroid/sec/clipboard/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isShowing()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
        since = "13.0"
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deprecated isShowing, calling package : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemClipboardManager"

    invoke-static {v1, v0}, Landroid/sec/clipboard/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist paste(Landroid/content/ClipData;)Z
    .locals 4

    const-string/jumbo v0, "paste(ClipData)"

    invoke-direct {p0, v0}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->isEnabled(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->getSemService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->getSemService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    invoke-interface {v0, p1, v2, v3}, Landroid/sec/clipboard/IClipboardService;->pasteClipData(Landroid/content/ClipData;Ljava/lang/String;I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException in paste(ClipData), "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SemClipboardManager"

    invoke-static {v3, v2}, Landroid/sec/clipboard/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v1
.end method

.method public whitelist paste(Ljava/lang/String;)Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
        since = "13.0"
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deprecated paste(String id), calling package : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemClipboardManager"

    invoke-static {v1, v0}, Landroid/sec/clipboard/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist registerClipboardEventListener(Lcom/samsung/android/content/clipboard/SemClipboardEventListener;)V
    .locals 4

    const-string/jumbo v0, "registerClipboardEventListener"

    invoke-direct {p0, v0}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->isEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->getSemService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "SemClipboardManager"

    const-string/jumbo v1, "registerClipboardUIInterface: Service is null."

    invoke-static {v0, v1}, Landroid/sec/clipboard/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mOnClipboardEventServiceListeners:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mOnClipboardEventServiceListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_2

    :try_start_1
    invoke-static {}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->getSemService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mInnerOnClipboardEventServiceListener:Lcom/samsung/android/content/clipboard/SemClipboardManager$InnerOnClipboardEventListener;

    iget-object v3, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/sec/clipboard/IClipboardService;->addClipboardEventListener(Lcom/samsung/android/content/clipboard/IOnClipboardEventListener;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    :cond_2
    :goto_0
    if-eqz p1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mOnClipboardEventServiceListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mOnClipboardEventServiceListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public blacklist setDataWithoutNoti(Landroid/content/Context;Lcom/samsung/android/content/clipboard/data/SemClipData;)I
    .locals 1

    invoke-virtual {p0, p2}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->setPrimarySemClip(Lcom/samsung/android/content/clipboard/data/SemClipData;)V

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setDataWithoutSendingOrginalClipboard(Landroid/content/Context;Lcom/samsung/android/content/clipboard/data/SemClipData;)I
    .locals 1

    invoke-virtual {p0, p2}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->setPrimarySemClip(Lcom/samsung/android/content/clipboard/data/SemClipData;)V

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setPrimarySemClip(Lcom/samsung/android/content/clipboard/data/SemClipData;)V
    .locals 4

    invoke-static {}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->getSemService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->makeFileDescriptor(Lcom/samsung/android/content/clipboard/data/SemClipData;)Z

    move-result v0

    const-string v1, "SemClipboardManager"

    if-nez v0, :cond_0

    const-string/jumbo v0, "failed making file descriptor!"

    invoke-static {v1, v0}, Landroid/sec/clipboard/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->getSemService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    invoke-interface {v0, p1, v2, v3}, Landroid/sec/clipboard/IClipboardService;->setPrimarySemClip(Lcom/samsung/android/content/clipboard/data/SemClipData;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException in setPrimarySemClip, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/sec/clipboard/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-virtual {p1}, Lcom/samsung/android/content/clipboard/data/SemClipData;->closeParcelFileDescriptor()V

    :cond_1
    return-void
.end method

.method public whitelist showDialog()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
        since = "13.0"
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deprecated showDialog, calling package : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemClipboardManager"

    invoke-static {v1, v0}, Landroid/sec/clipboard/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public whitelist unregisterClipboardEventListener(Lcom/samsung/android/content/clipboard/SemClipboardEventListener;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mOnClipboardEventServiceListeners:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mOnClipboardEventServiceListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mOnClipboardEventServiceListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    :try_start_1
    invoke-static {}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->getSemService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager;->mInnerOnClipboardEventServiceListener:Lcom/samsung/android/content/clipboard/SemClipboardManager$InnerOnClipboardEventListener;

    invoke-interface {v2, v3}, Landroid/sec/clipboard/IClipboardService;->removeClipboardEventListener(Lcom/samsung/android/content/clipboard/IOnClipboardEventListener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_2
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
