.class Lcom/samsung/android/wallpaper/utils/DlsStateShot;
.super Ljava/lang/Object;
.source "SemWallpaperProperties.java"


# static fields
.field private static final blacklist STATE_DATA_CLEAR:I = 0x8000

.field private static final blacklist STATE_DRESS_ROOM:I = 0x1

.field private static final blacklist STATE_FRESH_PACK:I = 0x4

.field private static final blacklist STATE_LOCK_STAR:I = 0x40

.field private static final blacklist STATE_MAIN_MASK:I = 0x7ff

.field private static final blacklist STATE_MGS:I = 0x20

.field private static final blacklist STATE_REGION_SERVICES:I = 0x8

.field private static final blacklist STATE_SGG:I = 0x10

.field private static final blacklist STATE_SUB_DRESS_ROOM:I = 0x800

.field private static final blacklist STATE_SUB_FRESH_PACK:I = 0x1000

.field private static final blacklist STATE_SUB_LOCK_STAR:I = 0x2000

.field private static final blacklist STATE_SUB_MASK:I = 0x7800

.field private static final blacklist STATE_SUB_SGG:I = 0x4000

.field private static final blacklist STATE_WALLPAPER_SERVICES:I = 0x2

.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mDlsStateShot:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/wallpaper/utils/DlsStateShot;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/wallpaper/utils/DlsStateShot;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/wallpaper/utils/DlsStateShot;->mContext:Landroid/content/Context;

    invoke-direct {p0, p2}, Lcom/samsung/android/wallpaper/utils/DlsStateShot;->getDlsState(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/wallpaper/utils/DlsStateShot;->mDlsStateShot:I

    return-void
.end method

.method private blacklist getDlsState(I)I
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/wallpaper/utils/DlsStateShot;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dls_state"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2, p1}, Landroid/provider/Settings$System;->semGetIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    sget-object v1, Lcom/samsung/android/wallpaper/utils/DlsStateShot;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDlsState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", userId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private static blacklist hasFlag(II)Z
    .locals 1

    and-int v0, p0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public blacklist getStateCode()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/wallpaper/utils/DlsStateShot;->mDlsStateShot:I

    return v0
.end method

.method public blacklist isDlsEnabled(I)Z
    .locals 5

    invoke-static {p1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSystem(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Lcom/samsung/android/wallpaper/utils/DlsStateShot;->mDlsStateShot:I

    and-int/lit16 v0, v0, -0x2844

    sget-object v2, Lcom/samsung/android/wallpaper/utils/DlsStateShot;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isDlsEnabled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isPhone(I)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_2

    invoke-static {p1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSubDisplay(I)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    move v2, v1

    goto :goto_1

    :cond_2
    :goto_0
    move v2, v3

    :goto_1
    if-eqz v2, :cond_3

    const/16 v4, 0x10

    invoke-static {v0, v4}, Lcom/samsung/android/wallpaper/utils/DlsStateShot;->hasFlag(II)Z

    move-result v4

    if-eqz v4, :cond_3

    return v3

    :cond_3
    invoke-static {p1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isPhone(I)Z

    move-result v4

    if-eqz v4, :cond_5

    and-int/lit16 v4, v0, 0x7ff

    if-eqz v4, :cond_4

    move v1, v3

    :cond_4
    return v1

    :cond_5
    invoke-static {p1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSubDisplay(I)Z

    move-result v4

    if-eqz v4, :cond_7

    and-int/lit16 v4, v0, 0x7800

    if-eqz v4, :cond_6

    move v1, v3

    :cond_6
    return v1

    :cond_7
    return v1
.end method

.method public blacklist isSggEnabled(I)Z
    .locals 5

    invoke-static {p1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSystem(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {p1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isPhone(I)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    invoke-static {p1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSubDisplay(I)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v2

    :goto_1
    if-eqz v0, :cond_3

    iget v3, p0, Lcom/samsung/android/wallpaper/utils/DlsStateShot;->mDlsStateShot:I

    const/16 v4, 0x10

    invoke-static {v3, v4}, Lcom/samsung/android/wallpaper/utils/DlsStateShot;->hasFlag(II)Z

    move-result v3

    if-eqz v3, :cond_3

    move v1, v2

    :cond_3
    return v1
.end method
