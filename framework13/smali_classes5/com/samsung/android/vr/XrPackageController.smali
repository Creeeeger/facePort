.class public Lcom/samsung/android/vr/XrPackageController;
.super Ljava/lang/Object;
.source "XrPackageController.java"


# static fields
.field public static final blacklist CATEGORY_DEFAULT:Ljava/lang/String; = "com.samsung.android.xr.category.DEFAULT"

.field public static final blacklist CATEGORY_HOME:Ljava/lang/String; = "com.samsung.android.xr.category.HOME"

.field public static final blacklist CATEGORY_MS_AR:Ljava/lang/String; = "com.microsoft.intent.category.AR"

.field public static final blacklist CATEGORY_MS_SCENE:Ljava/lang/String; = "com.microsoft.intent.category.SCENE"

.field public static final blacklist METADATA_SXR_ACTIVITY_TYPE:Ljava/lang/String; = "com.samsung.android.sxr.activity.type"

.field public static final blacklist METADATA_SXR_APPLICATION_TYPE:Ljava/lang/String; = "com.samsung.android.sxr.application.type"

.field public static final blacklist METADATA_SXR_TYPE_AR:Ljava/lang/String; = "ar"

.field public static final blacklist METADATA_SXR_TYPE_DUAL:Ljava/lang/String; = "dual"

.field public static final blacklist METADATA_SXR_TYPE_VR:Ljava/lang/String; = "vr"

.field public static final blacklist METADATA_SXR_TYPE_XR:Ljava/lang/String; = "xr"

.field private static final blacklist METADATA_VR_ACTIVITY:Ljava/lang/String; = "com.samsung.android.vr.activity"

.field private static final blacklist METADATA_VR_APPLICATION_MODE:Ljava/lang/String; = "com.samsung.android.vr.application.mode"

.field private static final blacklist METADATA_VR_MODE_DUAL:Ljava/lang/String; = "dual"

.field private static final blacklist METADATA_VR_MODE_VR_ONLY:Ljava/lang/String; = "vr_only"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist parseXrActivityCategoryFlags(Ljava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/content/IntentFilter;",
            ">(",
            "Ljava/util/List<",
            "TT;>;)I"
        }
    .end annotation

    .line 194
    .local p0, "intents":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v0, 0x0

    .line 195
    .local v0, "xrFlags":I
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/IntentFilter;

    .line 196
    .local v2, "intent":Landroid/content/IntentFilter;, "TT;"
    invoke-static {v2}, Lcom/samsung/android/vr/XrPackageController;->parseXrFlagsIntentFilter(Landroid/content/IntentFilter;)I

    move-result v3

    or-int/2addr v0, v3

    .line 197
    .end local v2    # "intent":Landroid/content/IntentFilter;, "TT;"
    goto :goto_0

    .line 198
    :cond_0
    return v0
.end method

.method private static blacklist parseXrActivityMetaDataFlags(Landroid/os/Bundle;Landroid/os/Bundle;)I
    .locals 8
    .param p0, "activityMetaData"    # Landroid/os/Bundle;
    .param p1, "appMetaData"    # Landroid/os/Bundle;

    .line 137
    const/4 v0, 0x0

    .line 138
    .local v0, "xrFlags":I
    if-eqz p1, :cond_7

    .line 140
    const-string v1, "com.samsung.android.vr.application.mode"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 141
    .local v1, "vrApplicationMode":Ljava/lang/String;
    const-string v2, "dual"

    if-eqz v1, :cond_1

    .line 142
    const-string/jumbo v3, "vr_only"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 143
    or-int/lit16 v0, v0, 0x1000

    .line 144
    or-int/lit8 v0, v0, 0x1

    .line 145
    or-int/lit16 v0, v0, 0x100

    goto :goto_0

    .line 146
    :cond_0
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 147
    or-int/lit8 v0, v0, 0x10

    .line 148
    if-eqz p0, :cond_1

    const-string v3, "com.samsung.android.vr.activity"

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 149
    or-int/lit16 v0, v0, 0x1000

    .line 150
    or-int/lit8 v0, v0, 0x1

    .line 151
    or-int/lit16 v0, v0, 0x100

    .line 157
    :cond_1
    :goto_0
    const-string v3, "com.samsung.android.sxr.application.type"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 158
    .local v3, "sxrApplicationType":Ljava/lang/String;
    const-string/jumbo v4, "vr"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 159
    or-int/lit16 v0, v0, 0x2000

    .line 160
    or-int/lit8 v0, v0, 0x1

    .line 161
    or-int/lit16 v0, v0, 0x100

    .line 163
    :cond_2
    const-string v5, "ar"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 164
    or-int/lit16 v0, v0, 0x2000

    .line 165
    or-int/lit8 v0, v0, 0x2

    .line 167
    :cond_3
    const-string/jumbo v6, "xr"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 168
    or-int/lit16 v0, v0, 0x2000

    .line 169
    or-int/lit8 v0, v0, 0x3

    .line 172
    :cond_4
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 173
    or-int/lit8 v0, v0, 0x10

    .line 174
    if-eqz p0, :cond_7

    .line 175
    const-string v2, "com.samsung.android.sxr.activity.type"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 176
    .local v2, "sxrActivityType":Ljava/lang/String;
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 177
    or-int/lit16 v0, v0, 0x2000

    .line 178
    or-int/lit8 v0, v0, 0x1

    .line 179
    or-int/lit16 v0, v0, 0x100

    goto :goto_1

    .line 180
    :cond_5
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 181
    or-int/lit16 v0, v0, 0x2000

    .line 182
    or-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 183
    :cond_6
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 184
    or-int/lit16 v0, v0, 0x2000

    .line 185
    or-int/lit8 v0, v0, 0x3

    .line 190
    .end local v1    # "vrApplicationMode":Ljava/lang/String;
    .end local v2    # "sxrActivityType":Ljava/lang/String;
    .end local v3    # "sxrApplicationType":Ljava/lang/String;
    :cond_7
    :goto_1
    return v0
.end method

.method public static blacklist parseXrFlags(Landroid/content/pm/PackageParser$Package;)V
    .locals 5
    .param p0, "packageParserPackage"    # Landroid/content/pm/PackageParser$Package;

    .line 112
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$Activity;

    .line 113
    .local v1, "activity":Landroid/content/pm/PackageParser$Activity;
    const/4 v2, 0x0

    .line 114
    .local v2, "xrFlags":I
    iget-object v3, v1, Landroid/content/pm/PackageParser$Activity;->metaData:Landroid/os/Bundle;

    iget-object v4, p0, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    invoke-static {v3, v4}, Lcom/samsung/android/vr/XrPackageController;->parseXrActivityMetaDataFlags(Landroid/os/Bundle;Landroid/os/Bundle;)I

    move-result v3

    or-int/2addr v2, v3

    .line 115
    iget-object v3, v1, Landroid/content/pm/PackageParser$Activity;->intents:Ljava/util/ArrayList;

    invoke-static {v3}, Lcom/samsung/android/vr/XrPackageController;->parseXrActivityCategoryFlags(Ljava/util/List;)I

    move-result v3

    or-int/2addr v2, v3

    .line 116
    iget-object v3, v1, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iput v2, v3, Landroid/content/pm/ActivityInfo;->xrFlags:I

    .line 117
    .end local v1    # "activity":Landroid/content/pm/PackageParser$Activity;
    .end local v2    # "xrFlags":I
    goto :goto_0

    .line 118
    :cond_0
    return-void
.end method

.method private static blacklist parseXrFlagsIntentFilter(Landroid/content/IntentFilter;)I
    .locals 2
    .param p0, "filter"    # Landroid/content/IntentFilter;

    .line 202
    const/4 v0, 0x0

    .line 203
    .local v0, "xrFlags":I
    const-string v1, "com.samsung.android.xr.category.HOME"

    invoke-virtual {p0, v1}, Landroid/content/IntentFilter;->hasCategory(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 204
    or-int/lit16 v0, v0, 0x4000

    goto :goto_0

    .line 205
    :cond_0
    const-string v1, "com.samsung.android.xr.category.DEFAULT"

    invoke-virtual {p0, v1}, Landroid/content/IntentFilter;->hasCategory(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 206
    const v1, 0x8000

    or-int/2addr v0, v1

    goto :goto_0

    .line 208
    :cond_1
    const-string v1, "com.microsoft.intent.category.SCENE"

    invoke-virtual {p0, v1}, Landroid/content/IntentFilter;->hasCategory(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 209
    const/high16 v1, 0x200000

    or-int/2addr v0, v1

    goto :goto_0

    .line 210
    :cond_2
    const-string v1, "com.microsoft.intent.category.AR"

    invoke-virtual {p0, v1}, Landroid/content/IntentFilter;->hasCategory(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 211
    const/high16 v1, 0x100000

    or-int/2addr v0, v1

    .line 213
    :cond_3
    :goto_0
    return v0
.end method
