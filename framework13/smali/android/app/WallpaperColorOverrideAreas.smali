.class public Landroid/app/WallpaperColorOverrideAreas;
.super Ljava/lang/Object;
.source "WallpaperColorOverrideAreas.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/WallpaperColorOverrideAreas$ROTATION;,
        Landroid/app/WallpaperColorOverrideAreas$DISPLAY_TYPE;
    }
.end annotation


# static fields
.field public static final blacklist DISPLAY_TYPE_PHONE:I = 0x0

.field public static final blacklist DISPLAY_TYPE_SUB:I = 0x2

.field public static final blacklist DISPLAY_TYPE_TABLET:I = 0x1

.field public static final blacklist DISPLAY_TYPE_VIRTUAL:I = 0x4

.field public static final blacklist DISPLAY_TYPE_WATCHFACE:I = 0x3

.field private static final blacklist FIRST_DELIMITER:Ljava/lang/String; = ";"

.field public static final blacklist KEY_CUSTOM_WALLPAPER_COLOR_AREAS_HOME:Ljava/lang/String; = "custom_wallpaper_color_areas_home"

.field public static final blacklist KEY_CUSTOM_WALLPAPER_COLOR_AREAS_LOCK:Ljava/lang/String; = "custom_wallpaper_color_areas_lock"

.field public static final blacklist ROTATION_270:I = 0x2

.field public static final blacklist ROTATION_90:I = 0x1

.field public static final blacklist ROTATION_ALL:I = 0x4

.field public static final blacklist ROTATION_LANDSCAPE:I = 0x3

.field public static final blacklist ROTATION_PORTRAIT:I = 0x0

.field private static final blacklist SECOND_DELIMITER:Ljava/lang/String; = "-"

.field public static final blacklist TAG:Ljava/lang/String;

.field private static final blacklist THIRD_DELIMITER:Ljava/lang/String; = ":"


# instance fields
.field private blacklist mAreaMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mSettingsKey:Ljava/lang/String;

.field private blacklist mWhich:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 26
    const-class v0, Landroid/app/WallpaperColorOverrideAreas;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/app/WallpaperColorOverrideAreas;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "which"    # I

    .line 75
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/app/WallpaperColorOverrideAreas;-><init>(Landroid/content/Context;ILandroid/app/WallpaperColorOverrideAreas;)V

    .line 76
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;ILandroid/app/WallpaperColorOverrideAreas;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "which"    # I
    .param p3, "base"    # Landroid/app/WallpaperColorOverrideAreas;

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/WallpaperColorOverrideAreas;->mAreaMap:Ljava/util/HashMap;

    .line 82
    iput-object p1, p0, Landroid/app/WallpaperColorOverrideAreas;->mContext:Landroid/content/Context;

    .line 83
    iput p2, p0, Landroid/app/WallpaperColorOverrideAreas;->mWhich:I

    .line 84
    invoke-direct {p0}, Landroid/app/WallpaperColorOverrideAreas;->bindSettingsKey()V

    .line 86
    if-eqz p3, :cond_0

    .line 87
    iget-object v0, p0, Landroid/app/WallpaperColorOverrideAreas;->mAreaMap:Ljava/util/HashMap;

    invoke-direct {p3, v0}, Landroid/app/WallpaperColorOverrideAreas;->fill(Ljava/util/HashMap;)V

    .line 88
    sget-object v0, Landroid/app/WallpaperColorOverrideAreas;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Init with base info. Copied = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :cond_0
    return-void
.end method

.method private blacklist bindSettingsKey()V
    .locals 4

    .line 93
    iget v0, p0, Landroid/app/WallpaperColorOverrideAreas;->mWhich:I

    and-int/lit8 v1, v0, 0x2

    const-string v2, "custom_wallpaper_color_areas_lock"

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    .line 94
    iput-object v2, p0, Landroid/app/WallpaperColorOverrideAreas;->mSettingsKey:Ljava/lang/String;

    goto :goto_0

    .line 95
    :cond_0
    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 96
    const-string v0, "custom_wallpaper_color_areas_home"

    iput-object v0, p0, Landroid/app/WallpaperColorOverrideAreas;->mSettingsKey:Ljava/lang/String;

    goto :goto_0

    .line 98
    :cond_1
    iput-object v2, p0, Landroid/app/WallpaperColorOverrideAreas;->mSettingsKey:Ljava/lang/String;

    .line 100
    :goto_0
    return-void
.end method

.method private blacklist combineKey(IIJ)Ljava/lang/String;
    .locals 2
    .param p1, "displayType"    # I
    .param p2, "rotation"    # I
    .param p3, "area"    # J

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist combineValue(Landroid/graphics/RectF;)Ljava/lang/String;
    .locals 3
    .param p1, "bounds"    # Landroid/graphics/RectF;

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p1, Landroid/graphics/RectF;->left:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p1, Landroid/graphics/RectF;->right:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist fill(Ljava/util/HashMap;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/graphics/RectF;",
            ">;)V"
        }
    .end annotation

    .line 213
    .local p1, "areaMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/graphics/RectF;>;"
    if-nez p1, :cond_0

    .line 214
    return-void

    .line 217
    :cond_0
    iget-object v0, p0, Landroid/app/WallpaperColorOverrideAreas;->mAreaMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 218
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/graphics/RectF;>;"
    if-nez v1, :cond_1

    .line 219
    goto :goto_0

    .line 222
    :cond_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v3, Landroid/graphics/RectF;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/RectF;

    invoke-direct {v3, v4}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    invoke-virtual {p1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/graphics/RectF;>;"
    goto :goto_0

    .line 224
    :cond_2
    return-void
.end method

.method private blacklist parse(Ljava/lang/String;)V
    .locals 13
    .param p1, "settingsString"    # Ljava/lang/String;

    .line 160
    sget-object v0, Landroid/app/WallpaperColorOverrideAreas;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Parsing color area : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    return-void

    .line 166
    :cond_0
    const-string v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 168
    .local v0, "areaStringList":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_6

    aget-object v4, v0, v3

    .line 169
    .local v4, "areaString":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 170
    goto :goto_1

    .line 173
    :cond_1
    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 174
    .local v5, "keyValueList":[Ljava/lang/String;
    array-length v6, v5

    const/4 v7, 0x2

    if-eq v6, v7, :cond_2

    .line 175
    goto :goto_1

    .line 178
    :cond_2
    aget-object v6, v5, v2

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    const/4 v6, 0x1

    aget-object v8, v5, v6

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 179
    goto :goto_1

    .line 182
    :cond_3
    aget-object v8, v5, v6

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 183
    .local v8, "valueList":[Ljava/lang/String;
    array-length v9, v8

    const/4 v10, 0x4

    if-eq v9, v10, :cond_4

    .line 184
    goto :goto_1

    .line 189
    :cond_4
    :try_start_0
    new-instance v9, Landroid/graphics/RectF;

    aget-object v10, v8, v2

    .line 190
    invoke-static {v10}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v10

    aget-object v11, v8, v6

    .line 191
    invoke-static {v11}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v11

    aget-object v7, v8, v7

    .line 192
    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    const/4 v12, 0x3

    aget-object v12, v8, v12

    .line 193
    invoke-static {v12}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v12

    invoke-direct {v9, v10, v11, v7, v12}, Landroid/graphics/RectF;-><init>(FFFF)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v6, v9

    .line 198
    .local v6, "areaRect":Landroid/graphics/RectF;
    nop

    .line 200
    iget-object v7, p0, Landroid/app/WallpaperColorOverrideAreas;->mAreaMap:Ljava/util/HashMap;

    aget-object v9, v5, v2

    invoke-virtual {v7, v9, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 195
    .end local v6    # "areaRect":Landroid/graphics/RectF;
    :catch_0
    move-exception v7

    .line 196
    .local v7, "e":Ljava/lang/RuntimeException;
    sget-object v9, Landroid/app/WallpaperColorOverrideAreas;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Cannot parsing area rect : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget-object v6, v5, v6

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    nop

    .line 168
    .end local v4    # "areaString":Ljava/lang/String;
    .end local v5    # "keyValueList":[Ljava/lang/String;
    .end local v7    # "e":Ljava/lang/RuntimeException;
    .end local v8    # "valueList":[Ljava/lang/String;
    :cond_5
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 202
    :cond_6
    return-void
.end method


# virtual methods
.method public blacklist add(IIJLandroid/graphics/RectF;)V
    .locals 6
    .param p1, "displayType"    # I
    .param p2, "rotation"    # I
    .param p3, "area"    # J
    .param p5, "bounds"    # Landroid/graphics/RectF;

    .line 103
    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-ne p2, v2, :cond_0

    .line 104
    iget-object v2, p0, Landroid/app/WallpaperColorOverrideAreas;->mAreaMap:Ljava/util/HashMap;

    invoke-direct {p0, p1, v1, p3, p4}, Landroid/app/WallpaperColorOverrideAreas;->combineKey(IIJ)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3, p5}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    iget-object v1, p0, Landroid/app/WallpaperColorOverrideAreas;->mAreaMap:Ljava/util/HashMap;

    invoke-direct {p0, p1, v0, p3, p4}, Landroid/app/WallpaperColorOverrideAreas;->combineKey(IIJ)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, p5}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 106
    :cond_0
    const/4 v3, 0x4

    if-ne p2, v3, :cond_1

    .line 107
    iget-object v3, p0, Landroid/app/WallpaperColorOverrideAreas;->mAreaMap:Ljava/util/HashMap;

    const/4 v4, 0x0

    invoke-direct {p0, p1, v4, p3, p4}, Landroid/app/WallpaperColorOverrideAreas;->combineKey(IIJ)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5, p5}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    iget-object v3, p0, Landroid/app/WallpaperColorOverrideAreas;->mAreaMap:Ljava/util/HashMap;

    invoke-direct {p0, p1, v1, p3, p4}, Landroid/app/WallpaperColorOverrideAreas;->combineKey(IIJ)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, p5}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    iget-object v1, p0, Landroid/app/WallpaperColorOverrideAreas;->mAreaMap:Ljava/util/HashMap;

    invoke-direct {p0, p1, v0, p3, p4}, Landroid/app/WallpaperColorOverrideAreas;->combineKey(IIJ)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3, p5}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    invoke-virtual {v1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    iget-object v0, p0, Landroid/app/WallpaperColorOverrideAreas;->mAreaMap:Ljava/util/HashMap;

    invoke-direct {p0, p1, v2, p3, p4}, Landroid/app/WallpaperColorOverrideAreas;->combineKey(IIJ)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, p5}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/app/WallpaperColorOverrideAreas;->mAreaMap:Ljava/util/HashMap;

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/app/WallpaperColorOverrideAreas;->combineKey(IIJ)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, p5}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    return-void
.end method

.method public blacklist get(IIJ)Landroid/graphics/RectF;
    .locals 2
    .param p1, "displayType"    # I
    .param p2, "rotation"    # I
    .param p3, "area"    # J

    .line 130
    iget-object v0, p0, Landroid/app/WallpaperColorOverrideAreas;->mAreaMap:Ljava/util/HashMap;

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/app/WallpaperColorOverrideAreas;->combineKey(IIJ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    return-object v0
.end method

.method public blacklist load()V
    .locals 2

    .line 205
    iget-object v0, p0, Landroid/app/WallpaperColorOverrideAreas;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Landroid/app/WallpaperColorOverrideAreas;->mSettingsKey:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/WallpaperColorOverrideAreas;->parse(Ljava/lang/String;)V

    .line 206
    return-void
.end method

.method public blacklist remove(IIJ)V
    .locals 5
    .param p1, "displayType"    # I
    .param p2, "rotation"    # I
    .param p3, "area"    # J

    .line 116
    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-ne p2, v2, :cond_0

    .line 117
    iget-object v2, p0, Landroid/app/WallpaperColorOverrideAreas;->mAreaMap:Ljava/util/HashMap;

    invoke-direct {p0, p1, v1, p3, p4}, Landroid/app/WallpaperColorOverrideAreas;->combineKey(IIJ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    iget-object v1, p0, Landroid/app/WallpaperColorOverrideAreas;->mAreaMap:Ljava/util/HashMap;

    invoke-direct {p0, p1, v0, p3, p4}, Landroid/app/WallpaperColorOverrideAreas;->combineKey(IIJ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 119
    :cond_0
    const/4 v3, 0x4

    if-ne p2, v3, :cond_1

    .line 120
    iget-object v3, p0, Landroid/app/WallpaperColorOverrideAreas;->mAreaMap:Ljava/util/HashMap;

    const/4 v4, 0x0

    invoke-direct {p0, p1, v4, p3, p4}, Landroid/app/WallpaperColorOverrideAreas;->combineKey(IIJ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    iget-object v3, p0, Landroid/app/WallpaperColorOverrideAreas;->mAreaMap:Ljava/util/HashMap;

    invoke-direct {p0, p1, v1, p3, p4}, Landroid/app/WallpaperColorOverrideAreas;->combineKey(IIJ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    iget-object v1, p0, Landroid/app/WallpaperColorOverrideAreas;->mAreaMap:Ljava/util/HashMap;

    invoke-direct {p0, p1, v0, p3, p4}, Landroid/app/WallpaperColorOverrideAreas;->combineKey(IIJ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    iget-object v0, p0, Landroid/app/WallpaperColorOverrideAreas;->mAreaMap:Ljava/util/HashMap;

    invoke-direct {p0, p1, v2, p3, p4}, Landroid/app/WallpaperColorOverrideAreas;->combineKey(IIJ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/app/WallpaperColorOverrideAreas;->mAreaMap:Ljava/util/HashMap;

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/app/WallpaperColorOverrideAreas;->combineKey(IIJ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    return-void
.end method

.method public blacklist store()V
    .locals 3

    .line 209
    iget-object v0, p0, Landroid/app/WallpaperColorOverrideAreas;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Landroid/app/WallpaperColorOverrideAreas;->mSettingsKey:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/WallpaperColorOverrideAreas;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 210
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 5

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 145
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v1, p0, Landroid/app/WallpaperColorOverrideAreas;->mAreaMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 146
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/graphics/RectF;>;"
    if-nez v2, :cond_0

    .line 147
    goto :goto_0

    .line 150
    :cond_0
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 151
    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 152
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/RectF;

    invoke-direct {p0, v4}, Landroid/app/WallpaperColorOverrideAreas;->combineValue(Landroid/graphics/RectF;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 153
    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/graphics/RectF;>;"
    goto :goto_0

    .line 156
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
