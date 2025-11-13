.class public Lcom/samsung/android/settings/homepage/HomepageUtils;
.super Ljava/lang/Object;
.source "HomepageUtils.java"


# static fields
.field public static final FULL_SCREEN_KEY_LIST:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mLastSupportMultiPaneLayoutCheckTime:J

.field private static mLastSupportMultiPaneLayoutCheckValue:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 28
    new-instance v0, Landroid/util/ArraySet;

    const-string v1, "top_level_user_manual"

    const-string v2, "top_level_remote_support"

    .line 29
    invoke-static {v1, v2}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/samsung/android/settings/homepage/HomepageUtils;->FULL_SCREEN_KEY_LIST:Ljava/util/Set;

    const-wide/16 v0, 0x0

    .line 31
    sput-wide v0, Lcom/samsung/android/settings/homepage/HomepageUtils;->mLastSupportMultiPaneLayoutCheckTime:J

    const/4 v0, 0x0

    .line 32
    sput-object v0, Lcom/samsung/android/settings/homepage/HomepageUtils;->mLastSupportMultiPaneLayoutCheckValue:Ljava/lang/Boolean;

    return-void
.end method

.method public static getPopOverBundle(Landroid/content/Context;)Landroid/os/Bundle;
    .locals 19

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 124
    :cond_0
    invoke-static/range {p0 .. p0}, Lcom/samsung/android/settings/homepage/HomepageUtils;->isSupportMultiPaneLayout(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    .line 128
    :cond_1
    invoke-static/range {p0 .. p0}, Lcom/samsung/android/settings/homepage/HomepageUtils;->getPopOverWidthRatio(Landroid/content/Context;)F

    move-result v0

    const/4 v1, 0x2

    new-array v9, v1, [I

    .line 130
    fill-array-data v9, :array_0

    new-array v10, v1, [I

    .line 133
    fill-array-data v10, :array_1

    new-array v11, v1, [Landroid/graphics/Point;

    .line 137
    new-instance v2, Landroid/graphics/Point;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3}, Landroid/graphics/Point;-><init>(II)V

    const/4 v4, 0x1

    aput-object v2, v11, v4

    aput-object v2, v11, v3

    new-array v12, v1, [I

    .line 139
    fill-array-data v12, :array_2

    new-array v13, v1, [F

    aput v0, v13, v4

    aput v0, v13, v3

    new-array v0, v1, [F

    .line 146
    fill-array-data v0, :array_3

    const/4 v14, 0x1

    const/4 v15, 0x1

    const/16 v16, 0x1

    const/16 v17, 0x1

    .line 154
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v18

    .line 155
    sget v7, Lcom/android/settings/R$anim;->sec_popvoer_open_enter:I

    sget v8, Lcom/android/settings/R$anim;->sec_popvoer_close_exit:I

    move-object/from16 v1, v18

    move-object/from16 v2, p0

    move v3, v7

    move v4, v8

    move v5, v7

    move v6, v8

    invoke-virtual/range {v1 .. v8}, Landroid/app/ActivityOptions;->setPopOverAnimation(Landroid/content/Context;IIIIII)Landroid/app/ActivityOptions;

    move-object/from16 v2, v18

    move-object v3, v9

    move-object v4, v10

    move-object v5, v11

    move-object v6, v12

    move-object v7, v13

    move-object v8, v0

    move v9, v14

    move v10, v15

    move/from16 v11, v16

    move/from16 v12, v17

    .line 159
    invoke-virtual/range {v2 .. v12}, Landroid/app/ActivityOptions;->setPopOverOptions([I[I[Landroid/graphics/Point;[I[F[FZZZZ)Landroid/app/ActivityOptions;

    .line 161
    invoke-virtual/range {v18 .. v18}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :array_0
    .array-data 4
        0x1
        0x1
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x1
    .end array-data

    :array_2
    .array-data 4
        0x204
        0x204
    .end array-data

    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static getPopOverWidthRatio(Landroid/content/Context;)F
    .locals 2

    .line 113
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$integer;->sec_preferences_primary_pane_weight:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 115
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/settings/R$integer;->sec_preferences_secondary_pane_weight:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    int-to-float v1, p0

    add-int/2addr v0, p0

    int-to-float p0, v0

    div-float/2addr v1, p0

    return v1
.end method

.method public static isActivityEmbedded(Landroid/app/Activity;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method private static isLockTaskModeLocked(Landroid/content/Context;)Z
    .locals 1

    .line 180
    const-class v0, Landroid/app/ActivityManager;

    .line 181
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 182
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getLockTaskModeState()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isNeededOpenFullScreen(Ljava/lang/String;)Z
    .locals 1

    .line 186
    sget-object v0, Lcom/samsung/android/settings/homepage/HomepageUtils;->FULL_SCREEN_KEY_LIST:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isShowingMultiPaneLayout(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 104
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/settings/homepage/HomepageUtils;->isSupportMultiPaneLayout(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    .line 108
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v1, 0x258

    if-lt p0, v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public static isSupportMultiPaneLayout(Landroid/content/Context;)Z
    .locals 8

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 44
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 45
    sget-object v3, Lcom/samsung/android/settings/homepage/HomepageUtils;->mLastSupportMultiPaneLayoutCheckValue:Ljava/lang/Boolean;

    if-eqz v3, :cond_1

    sget-wide v4, Lcom/samsung/android/settings/homepage/HomepageUtils;->mLastSupportMultiPaneLayoutCheckTime:J

    sub-long v4, v1, v4

    const-wide/16 v6, 0x64

    cmp-long v4, v4, v6

    if-gez v4, :cond_1

    .line 47
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    .line 49
    :cond_1
    sput-wide v1, Lcom/samsung/android/settings/homepage/HomepageUtils;->mLastSupportMultiPaneLayoutCheckTime:J

    .line 52
    invoke-static {}, Lcom/samsung/android/settings/homepage/HomepageUtils;->isTablet()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/samsung/android/settings/homepage/HomepageUtils;->supportFoldableDualDisplay()Z

    move-result v1

    if-nez v1, :cond_2

    .line 53
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object p0, Lcom/samsung/android/settings/homepage/HomepageUtils;->mLastSupportMultiPaneLayoutCheckValue:Ljava/lang/Boolean;

    return v0

    .line 57
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "device_provisioned"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_3

    move v1, v2

    goto :goto_0

    :cond_3
    move v1, v0

    :goto_0
    if-eqz v1, :cond_4

    .line 60
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object p0, Lcom/samsung/android/settings/homepage/HomepageUtils;->mLastSupportMultiPaneLayoutCheckValue:Ljava/lang/Boolean;

    return v0

    .line 64
    :cond_4
    invoke-static {p0}, Lcom/samsung/android/settings/homepage/HomepageUtils;->isLockTaskModeLocked(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 65
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object p0, Lcom/samsung/android/settings/homepage/HomepageUtils;->mLastSupportMultiPaneLayoutCheckValue:Ljava/lang/Boolean;

    return v0

    .line 70
    :cond_5
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result p0

    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result p0

    if-eqz p0, :cond_6

    .line 71
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object p0, Lcom/samsung/android/settings/homepage/HomepageUtils;->mLastSupportMultiPaneLayoutCheckValue:Ljava/lang/Boolean;

    return v0

    .line 78
    :cond_6
    invoke-static {}, Lcom/samsung/android/knox/custom/ProKioskManager;->getInstance()Lcom/samsung/android/knox/custom/ProKioskManager;

    move-result-object p0

    if-eqz p0, :cond_7

    .line 79
    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/ProKioskManager;->getProKioskState()Z

    move-result p0

    if-eqz p0, :cond_7

    .line 80
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object p0, Lcom/samsung/android/settings/homepage/HomepageUtils;->mLastSupportMultiPaneLayoutCheckValue:Ljava/lang/Boolean;

    return v0

    .line 86
    :cond_7
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sput-object p0, Lcom/samsung/android/settings/homepage/HomepageUtils;->mLastSupportMultiPaneLayoutCheckValue:Ljava/lang/Boolean;

    return v2
.end method

.method private static isTablet()Z
    .locals 2

    const-string v0, "ro.build.characteristics"

    .line 165
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "tablet"

    .line 166
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static supportFoldableDualDisplay()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
