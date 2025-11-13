.class public final Landroid/accessibilityservice/AccessibilityShortcutInfo;
.super Ljava/lang/Object;
.source "AccessibilityShortcutInfo.java"


# static fields
.field public static final blacklist META_DATA:Ljava/lang/String; = "android.accessibilityshortcut.target"

.field private static final blacklist TAG_ACCESSIBILITY_SHORTCUT:Ljava/lang/String; = "accessibility-shortcut-target"


# instance fields
.field private final blacklist mActivityInfo:Landroid/content/pm/ActivityInfo;

.field private final blacklist mAnimatedImageRes:I

.field private final blacklist mComponentName:Landroid/content/ComponentName;

.field private final blacklist mDescriptionResId:I

.field private final blacklist mHtmlDescriptionRes:I

.field private final blacklist mIntroResId:I

.field private blacklist mSettingsActivityName:Ljava/lang/String;

.field private final blacklist mSummaryResId:I

.field private blacklist mTileServiceName:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;Landroid/content/pm/ActivityInfo;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "activityInfo"    # Landroid/content/pm/ActivityInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 127
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {p2}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    iput-object v1, p0, Landroid/accessibilityservice/AccessibilityShortcutInfo;->mComponentName:Landroid/content/ComponentName;

    .line 128
    iput-object p2, p0, Landroid/accessibilityservice/AccessibilityShortcutInfo;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 130
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 131
    .local v2, "startTime":J
    :try_start_0
    const-string v4, "android.accessibilityshortcut.target"

    invoke-virtual {p2, v0, v4}, Landroid/content/pm/ActivityInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v4
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    .local v4, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sub-long/2addr v5, v2

    .line 135
    .local v5, "elapsedTime":J
    const-wide/16 v7, 0x64

    cmp-long v7, v5, v7

    if-lez v7, :cond_0

    .line 136
    const-string v7, "AccessibilityShortcutInfo"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "took more than 100ms mComponentName : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, ", elapsedTime : "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    .end local v5    # "elapsedTime":J
    :cond_0
    if-eqz v4, :cond_4

    .line 145
    const/4 v1, 0x0

    .line 146
    .local v1, "type":I
    :goto_0
    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq v1, v6, :cond_1

    if-eq v1, v5, :cond_1

    .line 147
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v5

    move v1, v5

    goto :goto_0

    .line 150
    :cond_1
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 151
    .local v7, "nodeName":Ljava/lang/String;
    const-string v8, "accessibility-shortcut-target"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 156
    invoke-static {v4}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v8

    .line 157
    .local v8, "allAttributes":Landroid/util/AttributeSet;
    iget-object v9, p0, Landroid/accessibilityservice/AccessibilityShortcutInfo;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v9}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v9

    .line 159
    .local v9, "resources":Landroid/content/res/Resources;
    sget-object v10, Lcom/android/internal/R$styleable;->AccessibilityShortcutTarget:[I

    invoke-virtual {v9, v8, v10}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v10

    .line 163
    .local v10, "asAttributes":Landroid/content/res/TypedArray;
    const/4 v11, 0x0

    invoke-virtual {v10, v11, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v12

    iput v12, p0, Landroid/accessibilityservice/AccessibilityShortcutInfo;->mDescriptionResId:I

    .line 166
    invoke-virtual {v10, v6, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, p0, Landroid/accessibilityservice/AccessibilityShortcutInfo;->mSummaryResId:I

    .line 169
    const/4 v6, 0x3

    invoke-virtual {v10, v6, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, p0, Landroid/accessibilityservice/AccessibilityShortcutInfo;->mAnimatedImageRes:I

    .line 173
    const/4 v6, 0x4

    invoke-virtual {v10, v6, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, p0, Landroid/accessibilityservice/AccessibilityShortcutInfo;->mHtmlDescriptionRes:I

    .line 177
    invoke-virtual {v10, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/accessibilityservice/AccessibilityShortcutInfo;->mSettingsActivityName:Ljava/lang/String;

    .line 180
    const/4 v5, 0x5

    invoke-virtual {v10, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/accessibilityservice/AccessibilityShortcutInfo;->mTileServiceName:Ljava/lang/String;

    .line 183
    const/4 v5, 0x6

    invoke-virtual {v10, v5, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Landroid/accessibilityservice/AccessibilityShortcutInfo;->mIntroResId:I

    .line 185
    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 186
    .end local v1    # "type":I
    .end local v7    # "nodeName":Ljava/lang/String;
    .end local v8    # "allAttributes":Landroid/util/AttributeSet;
    .end local v9    # "resources":Landroid/content/res/Resources;
    .end local v10    # "asAttributes":Landroid/content/res/TypedArray;
    if-eqz v4, :cond_2

    :try_start_2
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    .line 189
    .end local v4    # "parser":Landroid/content/res/XmlResourceParser;
    :cond_2
    nop

    .line 190
    return-void

    .line 152
    .restart local v1    # "type":I
    .restart local v4    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v7    # "nodeName":Ljava/lang/String;
    :cond_3
    :try_start_3
    new-instance v5, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v6, "Meta-data does not start withaccessibility-shortcut-target tag"

    invoke-direct {v5, v6}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .end local v0    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v2    # "startTime":J
    .end local v4    # "parser":Landroid/content/res/XmlResourceParser;
    .end local p0    # "this":Landroid/accessibilityservice/AccessibilityShortcutInfo;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "activityInfo":Landroid/content/pm/ActivityInfo;
    throw v5

    .line 141
    .end local v1    # "type":I
    .end local v7    # "nodeName":Ljava/lang/String;
    .restart local v0    # "packageManager":Landroid/content/pm/PackageManager;
    .restart local v2    # "startTime":J
    .restart local v4    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local p0    # "this":Landroid/accessibilityservice/AccessibilityShortcutInfo;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "activityInfo":Landroid/content/pm/ActivityInfo;
    :cond_4
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v5, "Meta-data accessibility-shortcut-target does not exist"

    invoke-direct {v1, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .end local v0    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v2    # "startTime":J
    .end local v4    # "parser":Landroid/content/res/XmlResourceParser;
    .end local p0    # "this":Landroid/accessibilityservice/AccessibilityShortcutInfo;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "activityInfo":Landroid/content/pm/ActivityInfo;
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 131
    .restart local v0    # "packageManager":Landroid/content/pm/PackageManager;
    .restart local v2    # "startTime":J
    .restart local v4    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local p0    # "this":Landroid/accessibilityservice/AccessibilityShortcutInfo;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "activityInfo":Landroid/content/pm/ActivityInfo;
    :catchall_0
    move-exception v1

    if-eqz v4, :cond_5

    :try_start_4
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v5

    :try_start_5
    invoke-virtual {v1, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v2    # "startTime":J
    .end local p0    # "this":Landroid/accessibilityservice/AccessibilityShortcutInfo;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "activityInfo":Landroid/content/pm/ActivityInfo;
    :cond_5
    :goto_1
    throw v1
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_0

    .line 186
    .end local v4    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v0    # "packageManager":Landroid/content/pm/PackageManager;
    .restart local v2    # "startTime":J
    .restart local p0    # "this":Landroid/accessibilityservice/AccessibilityShortcutInfo;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "activityInfo":Landroid/content/pm/ActivityInfo;
    :catch_0
    move-exception v1

    .line 187
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v4, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to create context for: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/accessibilityservice/AccessibilityShortcutInfo;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private blacklist loadResourceString(Landroid/content/pm/PackageManager;Landroid/content/pm/ActivityInfo;I)Ljava/lang/String;
    .locals 3
    .param p1, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p2, "activityInfo"    # Landroid/content/pm/ActivityInfo;
    .param p3, "resId"    # I

    .line 316
    const/4 v0, 0x0

    if-nez p3, :cond_0

    .line 317
    return-object v0

    .line 319
    :cond_0
    iget-object v1, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v2, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1, v1, p3, v2}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 321
    .local v1, "text":Ljava/lang/CharSequence;
    if-eqz v1, :cond_1

    .line 322
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 324
    :cond_1
    return-object v0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 340
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 341
    return v0

    .line 343
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 344
    return v1

    .line 346
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    .line 347
    return v1

    .line 349
    :cond_2
    move-object v2, p1

    check-cast v2, Landroid/accessibilityservice/AccessibilityShortcutInfo;

    .line 350
    .local v2, "other":Landroid/accessibilityservice/AccessibilityShortcutInfo;
    iget-object v3, p0, Landroid/accessibilityservice/AccessibilityShortcutInfo;->mComponentName:Landroid/content/ComponentName;

    if-nez v3, :cond_3

    .line 351
    iget-object v3, v2, Landroid/accessibilityservice/AccessibilityShortcutInfo;->mComponentName:Landroid/content/ComponentName;

    if-eqz v3, :cond_4

    .line 352
    return v1

    .line 354
    :cond_3
    iget-object v4, v2, Landroid/accessibilityservice/AccessibilityShortcutInfo;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 355
    return v1

    .line 357
    :cond_4
    return v0
.end method

.method public blacklist getActivityInfo()Landroid/content/pm/ActivityInfo;
    .locals 1

    .line 199
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityShortcutInfo;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    return-object v0
.end method

.method public blacklist getAnimatedImageRes()I
    .locals 1

    .line 251
    iget v0, p0, Landroid/accessibilityservice/AccessibilityShortcutInfo;->mAnimatedImageRes:I

    return v0
.end method

.method public blacklist getComponentName()Landroid/content/ComponentName;
    .locals 1

    .line 209
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityShortcutInfo;->mComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method public blacklist getSettingsActivityName()Ljava/lang/String;
    .locals 1

    .line 296
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityShortcutInfo;->mSettingsActivityName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getTileServiceName()Ljava/lang/String;
    .locals 1

    .line 307
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityShortcutInfo;->mTileServiceName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 1

    .line 332
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityShortcutInfo;->mComponentName:Landroid/content/ComponentName;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/content/ComponentName;->hashCode()I

    move-result v0

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    return v0
.end method

.method public blacklist loadAnimatedImage(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 264
    iget v0, p0, Landroid/accessibilityservice/AccessibilityShortcutInfo;->mAnimatedImageRes:I

    if-nez v0, :cond_0

    .line 265
    const/4 v0, 0x0

    return-object v0

    .line 268
    :cond_0
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityShortcutInfo;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, p0, Landroid/accessibilityservice/AccessibilityShortcutInfo;->mAnimatedImageRes:I

    invoke-static {p1, v0, v1}, Landroid/accessibilityservice/util/AccessibilityUtils;->loadSafeAnimatedImage(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public blacklist loadDescription(Landroid/content/pm/PackageManager;)Ljava/lang/String;
    .locals 2
    .param p1, "packageManager"    # Landroid/content/pm/PackageManager;

    .line 240
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityShortcutInfo;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget v1, p0, Landroid/accessibilityservice/AccessibilityShortcutInfo;->mDescriptionResId:I

    invoke-direct {p0, p1, v0, v1}, Landroid/accessibilityservice/AccessibilityShortcutInfo;->loadResourceString(Landroid/content/pm/PackageManager;Landroid/content/pm/ActivityInfo;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist loadHtmlDescription(Landroid/content/pm/PackageManager;)Ljava/lang/String;
    .locals 2
    .param p1, "packageManager"    # Landroid/content/pm/PackageManager;

    .line 281
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityShortcutInfo;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget v1, p0, Landroid/accessibilityservice/AccessibilityShortcutInfo;->mHtmlDescriptionRes:I

    invoke-direct {p0, p1, v0, v1}, Landroid/accessibilityservice/AccessibilityShortcutInfo;->loadResourceString(Landroid/content/pm/PackageManager;Landroid/content/pm/ActivityInfo;I)Ljava/lang/String;

    move-result-object v0

    .line 283
    .local v0, "htmlDescription":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 284
    invoke-static {v0}, Landroid/accessibilityservice/util/AccessibilityUtils;->getFilteredHtmlText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 286
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public blacklist loadIntro(Landroid/content/pm/PackageManager;)Ljava/lang/String;
    .locals 2
    .param p1, "packageManager"    # Landroid/content/pm/PackageManager;

    .line 230
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityShortcutInfo;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget v1, p0, Landroid/accessibilityservice/AccessibilityShortcutInfo;->mIntroResId:I

    invoke-direct {p0, p1, v0, v1}, Landroid/accessibilityservice/AccessibilityShortcutInfo;->loadResourceString(Landroid/content/pm/PackageManager;Landroid/content/pm/ActivityInfo;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist loadSummary(Landroid/content/pm/PackageManager;)Ljava/lang/String;
    .locals 2
    .param p1, "packageManager"    # Landroid/content/pm/PackageManager;

    .line 220
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityShortcutInfo;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget v1, p0, Landroid/accessibilityservice/AccessibilityShortcutInfo;->mSummaryResId:I

    invoke-direct {p0, p1, v0, v1}, Landroid/accessibilityservice/AccessibilityShortcutInfo;->loadResourceString(Landroid/content/pm/PackageManager;Landroid/content/pm/ActivityInfo;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    .line 365
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 366
    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    const-string v1, "AccessibilityShortcutInfo["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    const-string v1, "activityInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/accessibilityservice/AccessibilityShortcutInfo;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 368
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
