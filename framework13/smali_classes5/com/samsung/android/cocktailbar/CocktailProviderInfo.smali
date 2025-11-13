.class public Lcom/samsung/android/cocktailbar/CocktailProviderInfo;
.super Ljava/lang/Object;
.source "CocktailProviderInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field private static final blacklist COCKTAIL_AUTO_SCALE:Ljava/lang/String; = "autoScale"

.field private static final blacklist COCKTAIL_CATEGORY:Ljava/lang/String; = "category"

.field public static final blacklist COCKTAIL_CATEGORY_CONTEXTUAL:I = 0x10000

.field public static final blacklist COCKTAIL_CATEGORY_EXPRESS_ME:I = 0x40
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist COCKTAIL_CATEGORY_FEEDS:I = 0x100

.field public static final blacklist COCKTAIL_CATEGORY_HOME_SCREEN:I = 0x8

.field public static final blacklist COCKTAIL_CATEGORY_INVALID:I = -0x1

.field public static final blacklist COCKTAIL_CATEGORY_LOCK_SCREEN:I = 0x10

.field public static final blacklist COCKTAIL_CATEGORY_NIGHT_MODE:I = 0x80

.field public static final blacklist COCKTAIL_CATEGORY_NORMAL:I = 0x1

.field public static final blacklist COCKTAIL_CATEGORY_QUICK_TOOL:I = 0x4

.field public static final blacklist COCKTAIL_CATEGORY_TABLE_MODE:I = 0x20

.field public static final blacklist COCKTAIL_CATEGORY_WHISPER:I = 0x200

.field private static final blacklist COCKTAIL_COCKTAIL_WIDTH:Ljava/lang/String; = "cocktailWidth"

.field private static final blacklist COCKTAIL_CONFIGURE:Ljava/lang/String; = "configure"

.field private static final blacklist COCKTAIL_CSC_PREVIEW_IMAGE:Ljava/lang/String; = "cscPreviewImage"

.field private static final blacklist COCKTAIL_DATETIME_ENABLED:Ljava/lang/String; = "dateTimeEnabled"

.field private static final blacklist COCKTAIL_DESCRIPTION:Ljava/lang/String; = "description"

.field private static final blacklist COCKTAIL_ICON:Ljava/lang/String; = "icon"

.field private static final blacklist COCKTAIL_LABEL:Ljava/lang/String; = "label"

.field private static final blacklist COCKTAIL_LABEL_HIDE:Ljava/lang/String; = "labelhide"

.field private static final blacklist COCKTAIL_LAND_LAYOUT:Ljava/lang/String; = "landlayout"

.field private static final blacklist COCKTAIL_LAUNCH_ON_CLICK:Ljava/lang/String; = "launchOnClick"

.field private static final blacklist COCKTAIL_LOGO_ID:Ljava/lang/String; = "logoResourceId"

.field private static final blacklist COCKTAIL_PERMIT_VISIBILITY_CHANGED:Ljava/lang/String; = "permitVisibilityChanged"

.field private static final blacklist COCKTAIL_PREVIEW_IMAGE:Ljava/lang/String; = "previewImage"

.field private static final blacklist COCKTAIL_PRIVATE_MODE:Ljava/lang/String; = "privateMode"

.field private static final blacklist COCKTAIL_PULL_TO_REFRESH:Ljava/lang/String; = "pullToRefresh"

.field private static final blacklist COCKTAIL_UPDATE_TIME:Ljava/lang/String; = "updatePeriodMillis"

.field private static final blacklist COCKTAIL_WHISPER:Ljava/lang/String; = "whisper"

.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/cocktailbar/CocktailProviderInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "CocktailProviderInfo"

.field private static final blacklist VAL_DEFAULT_COCKTAIL_WIDTH:I = 0xa0

.field private static final blacklist XMLVAL_CONTEXTUAL:Ljava/lang/String; = "contextual"

.field private static final blacklist XMLVAL_FEEDS:Ljava/lang/String; = "feeds"

.field private static final blacklist XMLVAL_HOME_SCREEN:Ljava/lang/String; = "homescreen"

.field private static final blacklist XMLVAL_LOCK_SCREEN:Ljava/lang/String; = "lockscreen"

.field private static final blacklist XMLVAL_NIGHT_MODE:Ljava/lang/String; = "nightmode"

.field private static final blacklist XMLVAL_NORMAL:Ljava/lang/String; = "normal"

.field private static final blacklist XMLVAL_QUICK_TOOL:Ljava/lang/String; = "quicktool"

.field private static final blacklist XMLVAL_TABLE_MODE:Ljava/lang/String; = "tablemode"

.field private static final blacklist XMLVAL_WHISPER:Ljava/lang/String; = "whisper"


# instance fields
.field public blacklist autoScale:Z

.field public blacklist category:I

.field public blacklist cocktailWidth:I

.field public blacklist configure:Landroid/content/ComponentName;

.field public blacklist cscPreviewImage:Z

.field public blacklist description:I

.field public blacklist icon:I

.field public blacklist isDateTimeEnabled:Z

.field public blacklist label:I

.field public blacklist labelHide:Z

.field public blacklist landLayout:Z

.field public blacklist launchOnClick:Ljava/lang/String;

.field public blacklist logoResourceId:I

.field public blacklist permitVisibilityChanged:Z

.field public blacklist previewImage:I

.field public blacklist privateMode:Ljava/lang/String;

.field public blacklist provider:Landroid/content/ComponentName;

.field public blacklist pullToRefresh:Z

.field public blacklist updatePeriodMillis:I

.field public blacklist whisper:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 347
    new-instance v0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo$1;

    invoke-direct {v0}, Lcom/samsung/android/cocktailbar/CocktailProviderInfo$1;-><init>()V

    sput-object v0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 1

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->permitVisibilityChanged:Z

    .line 171
    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/res/Resources;Landroid/content/ComponentName;Landroid/content/res/XmlResourceParser;Landroid/content/pm/ResolveInfo;I)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pkgMgr"    # Landroid/content/pm/PackageManager;
    .param p3, "res"    # Landroid/content/res/Resources;
    .param p4, "provider"    # Landroid/content/ComponentName;
    .param p5, "xml"    # Landroid/content/res/XmlResourceParser;
    .param p6, "info"    # Landroid/content/pm/ResolveInfo;
    .param p7, "version"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 207
    move-object v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    const/4 v4, 0x0

    iput-boolean v4, v0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->permitVisibilityChanged:Z

    .line 208
    iput-object v2, v0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->provider:Landroid/content/ComponentName;

    .line 209
    const/4 v5, 0x0

    const-string v6, "icon"

    invoke-interface {v3, v5, v6, v4}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v6

    iput v6, v0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->icon:I

    .line 210
    const-string v6, "label"

    invoke-interface {v3, v5, v6, v4}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v6

    iput v6, v0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->label:I

    .line 211
    const-string v6, "description"

    invoke-interface {v3, v5, v6, v4}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v6

    iput v6, v0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->description:I

    .line 212
    const-string v6, "category"

    const-string v7, "normal"

    invoke-direct {p0, v3, v1, v6, v7}, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->loadXmlString(Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 213
    .local v6, "category":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_0

    .line 214
    iput v8, v0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->category:I

    goto :goto_2

    .line 216
    :cond_0
    new-instance v7, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v9, 0x7c

    invoke-direct {v7, v9}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 217
    .local v7, "categorySplitter":Landroid/text/TextUtils$SimpleStringSplitter;
    invoke-virtual {v7, v6}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 218
    :goto_0
    invoke-virtual {v7}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 219
    invoke-virtual {v7}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 220
    .local v9, "c":Ljava/lang/String;
    invoke-static {v9}, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->getCategoryId(Ljava/lang/String;)I

    move-result v10

    .line 221
    .local v10, "categoryId":I
    const/4 v11, 0x0

    .line 222
    .local v11, "isBreak":Z
    sparse-switch v10, :sswitch_data_0

    .line 239
    iget v12, v0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->category:I

    or-int/2addr v12, v10

    iput v12, v0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->category:I

    goto :goto_1

    .line 226
    :sswitch_0
    iput v10, v0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->category:I

    .line 227
    goto :goto_1

    .line 231
    :sswitch_1
    iput v10, v0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->category:I

    .line 232
    const/4 v11, 0x1

    .line 233
    goto :goto_1

    .line 235
    :sswitch_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Provider: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " specified an invalid catetory of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "CocktailProviderInfo"

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    const/4 v4, -0x1

    iput v4, v0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->category:I

    .line 237
    return-void

    .line 242
    :goto_1
    if-eqz v11, :cond_1

    .line 243
    goto :goto_2

    .line 245
    .end local v9    # "c":Ljava/lang/String;
    .end local v10    # "categoryId":I
    .end local v11    # "isBreak":Z
    :cond_1
    goto :goto_0

    .line 247
    .end local v7    # "categorySplitter":Landroid/text/TextUtils$SimpleStringSplitter;
    :cond_2
    :goto_2
    const/16 v7, 0xa0

    move/from16 v9, p7

    if-le v9, v8, :cond_3

    .line 248
    const-string v10, "cocktailWidth"

    invoke-direct {p0, v3, v1, v10, v7}, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->loadXmlDimension(Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;Ljava/lang/String;I)I

    move-result v7

    iput v7, v0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->cocktailWidth:I

    .line 249
    const-string v7, "launchOnClick"

    invoke-direct {p0, v3, v1, v7, v5}, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->loadXmlString(Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->launchOnClick:Ljava/lang/String;

    .line 250
    const-string v7, "autoScale"

    invoke-direct {p0, v3, v1, v7, v8}, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->loadXmlBoolean(Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, v0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->autoScale:Z

    .line 251
    const-string v7, "logoResourceId"

    invoke-interface {v3, v5, v7, v4}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v7

    iput v7, v0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->logoResourceId:I

    .line 252
    const-string v7, "dateTimeEnabled"

    invoke-direct {p0, v3, v1, v7, v4}, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->loadXmlBoolean(Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, v0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->isDateTimeEnabled:Z

    .line 253
    const-string v7, "labelhide"

    invoke-direct {p0, v3, v1, v7, v4}, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->loadXmlBoolean(Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, v0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->labelHide:Z

    .line 254
    const-string v7, "landlayout"

    invoke-direct {p0, v3, v1, v7, v4}, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->loadXmlBoolean(Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, v0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->landLayout:Z

    goto :goto_3

    .line 256
    :cond_3
    iput v7, v0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->cocktailWidth:I

    .line 258
    :goto_3
    const-string/jumbo v7, "privateMode"

    invoke-direct {p0, v3, v1, v7, v5}, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->loadXmlString(Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->privateMode:Ljava/lang/String;

    .line 259
    const-string/jumbo v7, "previewImage"

    invoke-interface {v3, v5, v7, v4}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v7

    iput v7, v0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->previewImage:I

    .line 260
    const-string/jumbo v7, "updatePeriodMillis"

    invoke-direct {p0, v3, v1, v7, v4}, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->loadXmlInt(Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;Ljava/lang/String;I)I

    move-result v7

    iput v7, v0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->updatePeriodMillis:I

    .line 261
    const-string/jumbo v7, "permitVisibilityChanged"

    invoke-direct {p0, v3, v1, v7, v4}, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->loadXmlBoolean(Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, v0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->permitVisibilityChanged:Z

    .line 262
    const-string/jumbo v7, "pullToRefresh"

    invoke-direct {p0, v3, v1, v7, v4}, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->loadXmlBoolean(Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, v0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->pullToRefresh:Z

    .line 263
    const-string v7, "configure"

    invoke-direct {p0, v3, v1, v7, v5}, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->loadXmlString(Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 264
    .local v7, "configureClassName":Ljava/lang/String;
    if-eqz v7, :cond_4

    .line 265
    new-instance v8, Landroid/content/ComponentName;

    invoke-virtual/range {p4 .. p4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v8, v0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->configure:Landroid/content/ComponentName;

    .line 267
    :cond_4
    const-string v8, "cscPreviewImage"

    invoke-direct {p0, v3, v1, v8, v4}, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->loadXmlBoolean(Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->cscPreviewImage:Z

    .line 268
    iget v4, v0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->category:I

    const/16 v8, 0x200

    if-ne v4, v8, :cond_5

    .line 269
    const-string/jumbo v4, "whisper"

    invoke-direct {p0, v3, v1, v4, v5}, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->loadXmlString(Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->whisper:Ljava/lang/String;

    .line 271
    :cond_5
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_2
        0x4 -> :sswitch_1
        0x8 -> :sswitch_0
        0x10 -> :sswitch_0
        0x20 -> :sswitch_1
        0x80 -> :sswitch_1
        0x100 -> :sswitch_0
    .end sparse-switch
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 322
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->permitVisibilityChanged:Z

    .line 323
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, p1}, Landroid/content/ComponentName;-><init>(Landroid/os/Parcel;)V

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    iput-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->provider:Landroid/content/ComponentName;

    .line 324
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->updatePeriodMillis:I

    .line 325
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->label:I

    .line 326
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->description:I

    .line 327
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->icon:I

    .line 328
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->previewImage:I

    .line 329
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->category:I

    .line 330
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->cocktailWidth:I

    .line 331
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, v2

    :goto_1
    iput-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->privateMode:Ljava/lang/String;

    .line 332
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    move v1, v3

    goto :goto_2

    :cond_2
    move v1, v0

    :goto_2
    iput-boolean v1, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->permitVisibilityChanged:Z

    .line 333
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-ne v1, v3, :cond_3

    move v1, v3

    goto :goto_3

    :cond_3
    move v1, v0

    :goto_3
    iput-boolean v1, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->pullToRefresh:Z

    .line 334
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, p1}, Landroid/content/ComponentName;-><init>(Landroid/os/Parcel;)V

    goto :goto_4

    :cond_4
    move-object v1, v2

    :goto_4
    iput-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->configure:Landroid/content/ComponentName;

    .line 335
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    :cond_5
    iput-object v2, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->launchOnClick:Ljava/lang/String;

    .line 336
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-ne v1, v3, :cond_6

    move v1, v3

    goto :goto_5

    :cond_6
    move v1, v0

    :goto_5
    iput-boolean v1, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->cscPreviewImage:Z

    .line 337
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-ne v1, v3, :cond_7

    move v1, v3

    goto :goto_6

    :cond_7
    move v1, v0

    :goto_6
    iput-boolean v1, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->autoScale:Z

    .line 338
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->logoResourceId:I

    .line 339
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-ne v1, v3, :cond_8

    move v1, v3

    goto :goto_7

    :cond_8
    move v1, v0

    :goto_7
    iput-boolean v1, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->isDateTimeEnabled:Z

    .line 340
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-ne v1, v3, :cond_9

    move v1, v3

    goto :goto_8

    :cond_9
    move v1, v0

    :goto_8
    iput-boolean v1, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->labelHide:Z

    .line 341
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-ne v1, v3, :cond_a

    move v0, v3

    :cond_a
    iput-boolean v0, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->landLayout:Z

    .line 342
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Lcom/samsung/android/cocktailbar/CocktailProviderInfo-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static blacklist create(Landroid/content/Context;Landroid/content/pm/ResolveInfo;Landroid/content/ComponentName;Landroid/content/res/XmlResourceParser;II)Lcom/samsung/android/cocktailbar/CocktailProviderInfo;
    .locals 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ri"    # Landroid/content/pm/ResolveInfo;
    .param p2, "cn"    # Landroid/content/ComponentName;
    .param p3, "xml"    # Landroid/content/res/XmlResourceParser;
    .param p4, "configuredCategoryFilter"    # I
    .param p5, "version"    # I

    .line 178
    const-string v1, "CocktailProviderInfo"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    .line 180
    .local v10, "pkgMgr":Landroid/content/pm/PackageManager;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v11

    .line 182
    .local v11, "identity":J
    const/4 v13, 0x0

    :try_start_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v14, p1

    :try_start_1
    iget-object v2, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 183
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 182
    invoke-virtual {v10, v0, v2}, Landroid/content/pm/PackageManager;->getResourcesForApplicationAsUser(Ljava/lang/String;I)Landroid/content/res/Resources;

    move-result-object v5
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 188
    .local v5, "resources":Landroid/content/res/Resources;
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 189
    nop

    .line 191
    :try_start_2
    new-instance v0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;

    move-object v2, v0

    move-object v3, p0

    move-object v4, v10

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p1

    move/from16 v9, p5

    invoke-direct/range {v2 .. v9}, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/res/Resources;Landroid/content/ComponentName;Landroid/content/res/XmlResourceParser;Landroid/content/pm/ResolveInfo;I)V
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    .line 192
    .local v0, "pInfo":Lcom/samsung/android/cocktailbar/CocktailProviderInfo;
    move/from16 v2, p4

    :try_start_3
    invoke-static {v2, v0}, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->enforceValidCategory(ILcom/samsung/android/cocktailbar/CocktailProviderInfo;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget v1, v0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->category:I
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    goto :goto_0

    .line 195
    :cond_0
    return-object v0

    .line 193
    :cond_1
    :goto_0
    return-object v13

    .line 199
    .end local v0    # "pInfo":Lcom/samsung/android/cocktailbar/CocktailProviderInfo;
    :catch_0
    move-exception v0

    goto :goto_1

    .line 197
    :catch_1
    move-exception v0

    goto :goto_2

    .line 199
    :catch_2
    move-exception v0

    move/from16 v2, p4

    .line 200
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    :goto_1
    const-string v3, "IllegalArgumentException"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 197
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v0

    move/from16 v2, p4

    .line 198
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    :goto_2
    const-string v3, "XML resources failed"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    nop

    .line 202
    :goto_3
    return-object v13

    .line 188
    .end local v5    # "resources":Landroid/content/res/Resources;
    :catchall_0
    move-exception v0

    goto :goto_4

    .line 184
    :catch_4
    move-exception v0

    goto :goto_5

    .line 188
    :catchall_1
    move-exception v0

    move-object/from16 v14, p1

    :goto_4
    move/from16 v2, p4

    goto :goto_6

    .line 184
    :catch_5
    move-exception v0

    move-object/from16 v14, p1

    :goto_5
    move/from16 v2, p4

    .line 185
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_4
    const-string v3, "failed to load find package"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 186
    nop

    .line 188
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 186
    return-object v13

    .line 188
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catchall_2
    move-exception v0

    :goto_6
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 189
    throw v0
.end method

.method private static blacklist enforceValidCategory(ILcom/samsung/android/cocktailbar/CocktailProviderInfo;)Z
    .locals 3
    .param p0, "configuredCategoryFilter"    # I
    .param p1, "pInfo"    # Lcom/samsung/android/cocktailbar/CocktailProviderInfo;

    .line 274
    const/4 v0, 0x1

    if-nez p0, :cond_0

    .line 275
    const-string v1, "CocktailProviderInfo"

    const-string v2, "enforceValidCategory: there is no category filters"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    return v0

    .line 278
    :cond_0
    iget-object v1, p1, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->privateMode:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 279
    return v2

    .line 281
    :cond_1
    iget v1, p1, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->category:I

    and-int/2addr v1, p0

    if-eqz v1, :cond_2

    .line 282
    return v0

    .line 284
    :cond_2
    return v2
.end method

.method private static blacklist getCategoryId(Ljava/lang/String;)I
    .locals 1
    .param p0, "category"    # Ljava/lang/String;

    .line 299
    const-string v0, "normal"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 300
    const/4 v0, 0x1

    return v0

    .line 301
    :cond_0
    const-string v0, "contextual"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 302
    const/high16 v0, 0x10000

    return v0

    .line 303
    :cond_1
    const-string v0, "homescreen"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 304
    const/16 v0, 0x8

    return v0

    .line 305
    :cond_2
    const-string v0, "feeds"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 306
    const/16 v0, 0x100

    return v0

    .line 307
    :cond_3
    const-string/jumbo v0, "whisper"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 308
    const/16 v0, 0x200

    return v0

    .line 309
    :cond_4
    const-string/jumbo v0, "quicktool"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 310
    const/4 v0, 0x4

    return v0

    .line 311
    :cond_5
    const-string/jumbo v0, "tablemode"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 312
    const/16 v0, 0x20

    return v0

    .line 313
    :cond_6
    const-string v0, "nightmode"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 314
    const/16 v0, 0x80

    return v0

    .line 315
    :cond_7
    const-string v0, "lockscreen"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 316
    const/16 v0, 0x10

    return v0

    .line 318
    :cond_8
    const/4 v0, -0x1

    return v0
.end method

.method public static blacklist getCategoryIds(Ljava/util/ArrayList;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 288
    .local p0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 289
    .local v0, "ids":I
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 292
    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 293
    .local v2, "category":Ljava/lang/String;
    invoke-static {v2}, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->getCategoryId(Ljava/lang/String;)I

    move-result v3

    or-int/2addr v0, v3

    .line 294
    .end local v2    # "category":Ljava/lang/String;
    goto :goto_0

    .line 295
    :cond_1
    return v0

    .line 290
    :cond_2
    :goto_1
    return v0
.end method

.method private blacklist loadXmlBoolean(Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;Ljava/lang/String;Z)Z
    .locals 2
    .param p1, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p2, "pkgRes"    # Landroid/content/res/Resources;
    .param p3, "attrName"    # Ljava/lang/String;
    .param p4, "defaultValue"    # Z

    .line 471
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-interface {p1, v0, p3, v1}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    .line 472
    .local v1, "refId":I
    if-eqz v1, :cond_0

    .line 474
    :try_start_0
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 477
    .local v0, "value":Z
    :goto_0
    goto :goto_1

    .line 475
    .end local v0    # "value":Z
    :catch_0
    move-exception v0

    .line 476
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    move v0, p4

    .local v0, "value":Z
    goto :goto_0

    .line 479
    .end local v0    # "value":Z
    :cond_0
    invoke-interface {p1, v0, p3, p4}, Landroid/content/res/XmlResourceParser;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    .line 481
    .restart local v0    # "value":Z
    :goto_1
    return v0
.end method

.method private blacklist loadXmlDimension(Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;Ljava/lang/String;I)I
    .locals 2
    .param p1, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p2, "pkgRes"    # Landroid/content/res/Resources;
    .param p3, "attrName"    # Ljava/lang/String;
    .param p4, "defaultValue"    # I

    .line 486
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-interface {p1, v0, p3, v1}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    .line 487
    .local v1, "refId":I
    if-eqz v1, :cond_0

    .line 489
    :try_start_0
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 492
    .local v0, "value":I
    :goto_0
    goto :goto_1

    .line 490
    .end local v0    # "value":I
    :catch_0
    move-exception v0

    .line 491
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    move v0, p4

    .local v0, "value":I
    goto :goto_0

    .line 494
    .end local v0    # "value":I
    :cond_0
    invoke-interface {p1, v0, p3, p4}, Landroid/content/res/XmlResourceParser;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 496
    .restart local v0    # "value":I
    :goto_1
    return v0
.end method

.method private blacklist loadXmlInt(Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;Ljava/lang/String;I)I
    .locals 2
    .param p1, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p2, "pkgRes"    # Landroid/content/res/Resources;
    .param p3, "attrName"    # Ljava/lang/String;
    .param p4, "defaultValue"    # I

    .line 436
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-interface {p1, v0, p3, v1}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    .line 437
    .local v1, "refId":I
    if-eqz v1, :cond_0

    .line 439
    :try_start_0
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 442
    .local v0, "value":I
    :goto_0
    goto :goto_1

    .line 440
    .end local v0    # "value":I
    :catch_0
    move-exception v0

    .line 441
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    move v0, p4

    .local v0, "value":I
    goto :goto_0

    .line 444
    .end local v0    # "value":I
    :cond_0
    invoke-interface {p1, v0, p3, p4}, Landroid/content/res/XmlResourceParser;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 446
    .restart local v0    # "value":I
    :goto_1
    return v0
.end method

.method private blacklist loadXmlString(Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p2, "pkgRes"    # Landroid/content/res/Resources;
    .param p3, "attrName"    # Ljava/lang/String;
    .param p4, "defaultValue"    # Ljava/lang/String;

    .line 452
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-interface {p1, v0, p3, v1}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    .line 453
    .local v1, "refId":I
    if-eqz v1, :cond_0

    .line 455
    :try_start_0
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 458
    .local v0, "value":Ljava/lang/String;
    :goto_0
    goto :goto_1

    .line 456
    .end local v0    # "value":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 457
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    move-object v0, p4

    .local v0, "value":Ljava/lang/String;
    goto :goto_0

    .line 460
    .end local v0    # "value":Ljava/lang/String;
    :cond_0
    invoke-interface {p1, v0, p3}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 461
    .restart local v0    # "value":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 462
    move-object v0, p4

    .line 465
    :cond_1
    :goto_1
    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 505
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 364
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->provider:Landroid/content/ComponentName;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 365
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 366
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v0, p1, p2}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 368
    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 370
    :goto_0
    iget v0, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->updatePeriodMillis:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 371
    iget v0, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->label:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 372
    iget v0, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->description:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 373
    iget v0, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->icon:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 374
    iget v0, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->previewImage:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 375
    iget v0, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->category:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 376
    iget v0, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->cocktailWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 377
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->privateMode:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 378
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 379
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->privateMode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_1

    .line 381
    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 383
    :goto_1
    iget-boolean v0, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->permitVisibilityChanged:Z

    if-eqz v0, :cond_2

    .line 384
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_2

    .line 386
    :cond_2
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 388
    :goto_2
    iget-boolean v0, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->pullToRefresh:Z

    if-eqz v0, :cond_3

    .line 389
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_3

    .line 391
    :cond_3
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 393
    :goto_3
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->configure:Landroid/content/ComponentName;

    if-eqz v0, :cond_4

    .line 394
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 395
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->configure:Landroid/content/ComponentName;

    invoke-virtual {v0, p1, p2}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_4

    .line 397
    :cond_4
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 399
    :goto_4
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->launchOnClick:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 400
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 401
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->launchOnClick:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_5

    .line 403
    :cond_5
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 405
    :goto_5
    iget-boolean v0, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->cscPreviewImage:Z

    if-eqz v0, :cond_6

    .line 406
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_6

    .line 408
    :cond_6
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 410
    :goto_6
    iget-boolean v0, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->autoScale:Z

    if-eqz v0, :cond_7

    .line 411
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_7

    .line 413
    :cond_7
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 415
    :goto_7
    iget v0, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->logoResourceId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 416
    iget-boolean v0, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->isDateTimeEnabled:Z

    if-eqz v0, :cond_8

    .line 417
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_8

    .line 419
    :cond_8
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 421
    :goto_8
    iget-boolean v0, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->labelHide:Z

    if-eqz v0, :cond_9

    .line 422
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_9

    .line 424
    :cond_9
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 426
    :goto_9
    iget-boolean v0, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->landLayout:Z

    if-eqz v0, :cond_a

    .line 427
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_a

    .line 429
    :cond_a
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 431
    :goto_a
    return-void
.end method
