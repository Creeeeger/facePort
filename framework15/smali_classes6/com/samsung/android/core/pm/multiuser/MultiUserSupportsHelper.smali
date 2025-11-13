.class public Lcom/samsung/android/core/pm/multiuser/MultiUserSupportsHelper;
.super Ljava/lang/Object;
.source "MultiUserSupportsHelper.java"


# static fields
.field public static final blacklist DEFAULT_ENABLE_STATUS:Z

.field public static final blacklist DEFAULT_MAX_USERS:I

.field public static final blacklist IS_TABLET:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    nop

    const-string v0, "ro.build.characteristics"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "tablet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/core/pm/multiuser/MultiUserSupportsHelper;->IS_TABLET:Z

    sget-boolean v0, Lcom/samsung/android/core/pm/multiuser/MultiUserSupportsHelper;->IS_TABLET:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sput v0, Lcom/samsung/android/core/pm/multiuser/MultiUserSupportsHelper;->DEFAULT_MAX_USERS:I

    sget-boolean v0, Lcom/samsung/android/core/pm/multiuser/MultiUserSupportsHelper;->IS_TABLET:Z

    sput-boolean v0, Lcom/samsung/android/core/pm/multiuser/MultiUserSupportsHelper;->DEFAULT_ENABLE_STATUS:Z

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getBmodeIconIfValidUser(Ljava/util/List;ILandroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;I",
            "Landroid/content/Context;",
            ")",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isBMode()Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v1, 0x1

    :cond_1
    iget v5, v4, Landroid/content/pm/UserInfo;->id:I

    if-ne v5, p1, :cond_2

    move-object v2, v4

    :cond_2
    goto :goto_0

    :cond_3
    if-eqz v1, :cond_5

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isPrimary()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isBMode()Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isPrimary()Z

    move-result v3

    invoke-static {v0, v3}, Lcom/samsung/android/core/pm/multiuser/MultiUserSupportsHelper;->getBmodeUserIcon(Landroid/content/res/Resources;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/UserIcons;->convertToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v3

    return-object v3

    :cond_5
    return-object v0
.end method

.method private static blacklist getBmodeUserIcon(Landroid/content/res/Resources;Z)Landroid/graphics/drawable/Drawable;
    .locals 5

    const v0, 0x1060514

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const v3, 0x1080716

    invoke-virtual {p0, v3, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const v0, 0x1060514

    goto :goto_0

    :cond_0
    const v3, 0x1080717

    invoke-virtual {p0, v3, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const v0, 0x1060515

    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-object v1
.end method

.method public static blacklist getConfigMaxMultiUsers()I
    .locals 1

    sget v0, Lcom/samsung/android/core/pm/multiuser/MultiUserSupportsHelper;->DEFAULT_MAX_USERS:I

    return v0
.end method

.method public static blacklist getConfigStatusMultiUser()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/core/pm/multiuser/MultiUserSupportsHelper;->DEFAULT_ENABLE_STATUS:Z

    return v0
.end method

.method public static blacklist getMaxSupportedUsers()I
    .locals 3

    sget-object v0, Landroid/os/Build;->ID:Ljava/lang/String;

    const-string v1, "JVP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lcom/samsung/android/core/pm/multiuser/MultiUserSupportsHelper;->isLduSkuBinary()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    invoke-static {}, Lcom/samsung/android/core/pm/multiuser/MultiUserSupportsHelper;->getConfigMaxMultiUsers()I

    move-result v0

    const-string v1, "persist.sys.max_users"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "fw.max_users"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    return v2
.end method

.method private static blacklist isLduSkuBinary()Z
    .locals 1

    invoke-static {}, Lcom/samsung/android/core/pm/PmUtils;->isLduSkuBinary()Z

    move-result v0

    return v0
.end method

.method public static blacklist supportsMultipleUsers()Z
    .locals 5

    invoke-static {}, Lcom/samsung/android/core/pm/multiuser/MultiUserSupportsHelper;->isLduSkuBinary()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lcom/samsung/android/core/pm/multiuser/MultiUserSupportsHelper;->getConfigStatusMultiUser()Z

    move-result v0

    const-string v2, "persist.sys.show_multiuserui"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {}, Lcom/samsung/android/core/pm/multiuser/MultiUserSupportsHelper;->getMaxSupportedUsers()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    const-string v3, "fw.show_multiuserui"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    move v1, v4

    :cond_1
    return v1
.end method
