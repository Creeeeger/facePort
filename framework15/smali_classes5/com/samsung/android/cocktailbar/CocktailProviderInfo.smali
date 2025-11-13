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

    new-instance v0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo$1;

    invoke-direct {v0}, Lcom/samsung/android/cocktailbar/CocktailProviderInfo$1;-><init>()V

    sput-object v0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->permitVisibilityChanged:Z

    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/res/Resources;Landroid/content/ComponentName;Landroid/content/res/XmlResourceParser;Landroid/content/pm/ResolveInfo;I)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v4, 0x0

    iput-boolean v4, v0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->permitVisibilityChanged:Z

    iput-object v2, v0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->provider:Landroid/content/ComponentName;

    const-string/jumbo v5, "icon"

    const/4 v6, 0x0

    invoke-interface {v3, v6, v5, v4}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v5

    iput v5, v0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->icon:I

    const-string/jumbo v5, "label"

    invoke-interface {v3, v6, v5, v4}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v5

    iput v5, v0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->label:I

    const-string v5, "description"

    invoke-interface {v3, v6, v5, v4}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v5

    iput v5, v0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->description:I

    const-string v5, "category"

    const-string/jumbo v7, "normal"

    invoke-direct {p0, v3, v1, v5, v7}, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->loadXmlString(Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_0

    iput v8, v0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->category:I

    goto :goto_2

    :cond_0
    new-instance v7, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v9, 0x7c

    invoke-direct {v7, v9}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    invoke-virtual {v7, v5}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v7}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v7}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->getCategoryId(Ljava/lang/String;)I

    move-result v10

    const/4 v11, 0x0

    sparse-switch v10, :sswitch_data_0

    iget v12, v0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->category:I

    or-int/2addr v12, v10

    iput v12, v0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->category:I

    goto :goto_1

    :sswitch_0
    iput v10, v0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->category:I

    goto :goto_1

    :sswitch_1
    iput v10, v0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->category:I

    const/4 v11, 0x1

    goto :goto_1

    :sswitch_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Provider: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " specified an invalid catetory of "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "CocktailProviderInfo"

    invoke-static {v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, -0x1

    iput v4, v0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->category:I

    return-void

    :goto_1
    if-eqz v11, :cond_1

    goto :goto_2

    :cond_1
    goto :goto_0

    :cond_2
    :goto_2
    const/16 v7, 0xa0

    move/from16 v9, p7

    if-le v9, v8, :cond_3

    const-string v10, "cocktailWidth"

    invoke-direct {p0, v3, v1, v10, v7}, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->loadXmlDimension(Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;Ljava/lang/String;I)I

    move-result v7

    iput v7, v0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->cocktailWidth:I

    const-string/jumbo v7, "launchOnClick"

    invoke-direct {p0, v3, v1, v7, v6}, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->loadXmlString(Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->launchOnClick:Ljava/lang/String;

    const-string v7, "autoScale"

    invoke-direct {p0, v3, v1, v7, v8}, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->loadXmlBoolean(Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, v0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->autoScale:Z

    const-string/jumbo v7, "logoResourceId"

    invoke-interface {v3, v6, v7, v4}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v7

    iput v7, v0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->logoResourceId:I

    const-string v7, "dateTimeEnabled"

    invoke-direct {p0, v3, v1, v7, v4}, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->loadXmlBoolean(Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, v0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->isDateTimeEnabled:Z

    const-string/jumbo v7, "labelhide"

    invoke-direct {p0, v3, v1, v7, v4}, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->loadXmlBoolean(Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, v0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->labelHide:Z

    const-string/jumbo v7, "landlayout"

    invoke-direct {p0, v3, v1, v7, v4}, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->loadXmlBoolean(Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, v0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->landLayout:Z

    goto :goto_3

    :cond_3
    iput v7, v0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->cocktailWidth:I

    :goto_3
    const-string/jumbo v7, "privateMode"

    invoke-direct {p0, v3, v1, v7, v6}, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->loadXmlString(Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->privateMode:Ljava/lang/String;

    const-string/jumbo v7, "previewImage"

    invoke-interface {v3, v6, v7, v4}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v7

    iput v7, v0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->previewImage:I

    const-string/jumbo v7, "updatePeriodMillis"

    invoke-direct {p0, v3, v1, v7, v4}, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->loadXmlInt(Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;Ljava/lang/String;I)I

    move-result v7

    iput v7, v0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->updatePeriodMillis:I

    const-string/jumbo v7, "permitVisibilityChanged"

    invoke-direct {p0, v3, v1, v7, v4}, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->loadXmlBoolean(Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, v0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->permitVisibilityChanged:Z

    const-string/jumbo v7, "pullToRefresh"

    invoke-direct {p0, v3, v1, v7, v4}, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->loadXmlBoolean(Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, v0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->pullToRefresh:Z

    const-string v7, "configure"

    invoke-direct {p0, v3, v1, v7, v6}, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->loadXmlString(Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_4

    new-instance v8, Landroid/content/ComponentName;

    invoke-virtual/range {p4 .. p4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v8, v0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->configure:Landroid/content/ComponentName;

    :cond_4
    const-string v8, "cscPreviewImage"

    invoke-direct {p0, v3, v1, v8, v4}, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->loadXmlBoolean(Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->cscPreviewImage:Z

    iget v4, v0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->category:I

    const/16 v8, 0x200

    if-ne v4, v8, :cond_5

    const-string/jumbo v4, "whisper"

    invoke-direct {p0, v3, v1, v4, v6}, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->loadXmlString(Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->whisper:Ljava/lang/String;

    :cond_5
    return-void

    nop

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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->permitVisibilityChanged:Z

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

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->updatePeriodMillis:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->label:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->description:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->icon:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->previewImage:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->category:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->cocktailWidth:I

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

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-ne v1, v3, :cond_3

    move v1, v3

    goto :goto_3

    :cond_3
    move v1, v0

    :goto_3
    iput-boolean v1, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->pullToRefresh:Z

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

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    :cond_5
    iput-object v2, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->launchOnClick:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-ne v1, v3, :cond_6

    move v1, v3

    goto :goto_5

    :cond_6
    move v1, v0

    :goto_5
    iput-boolean v1, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->cscPreviewImage:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-ne v1, v3, :cond_7

    move v1, v3

    goto :goto_6

    :cond_7
    move v1, v0

    :goto_6
    iput-boolean v1, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->autoScale:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->logoResourceId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-ne v1, v3, :cond_8

    move v1, v3

    goto :goto_7

    :cond_8
    move v1, v0

    :goto_7
    iput-boolean v1, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->isDateTimeEnabled:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-ne v1, v3, :cond_9

    move v1, v3

    goto :goto_8

    :cond_9
    move v1, v0

    :goto_8
    iput-boolean v1, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->labelHide:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-ne v1, v3, :cond_a

    move v0, v3

    :cond_a
    iput-boolean v0, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->landLayout:Z

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Lcom/samsung/android/cocktailbar/CocktailProviderInfo-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static blacklist create(Landroid/content/Context;Landroid/content/pm/ResolveInfo;Landroid/content/ComponentName;Landroid/content/res/XmlResourceParser;II)Lcom/samsung/android/cocktailbar/CocktailProviderInfo;
    .locals 15

    const-string v1, "CocktailProviderInfo"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v11

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

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-virtual {v10, v0, v2}, Landroid/content/pm/PackageManager;->getResourcesForApplicationAsUser(Ljava/lang/String;I)Landroid/content/res/Resources;

    move-result-object v5
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

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

    :cond_0
    return-object v0

    :cond_1
    :goto_0
    return-object v13

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    move/from16 v2, p4

    :goto_1
    const-string v3, "IllegalArgumentException"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :catch_3
    move-exception v0

    move/from16 v2, p4

    :goto_2
    const-string v3, "XML resources failed"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    nop

    :goto_3
    return-object v13

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_4
    move-exception v0

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object/from16 v14, p1

    :goto_4
    move/from16 v2, p4

    goto :goto_6

    :catch_5
    move-exception v0

    move-object/from16 v14, p1

    :goto_5
    move/from16 v2, p4

    :try_start_4
    const-string/jumbo v3, "failed to load find package"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    nop

    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v13

    :catchall_2
    move-exception v0

    :goto_6
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method private static blacklist enforceValidCategory(ILcom/samsung/android/cocktailbar/CocktailProviderInfo;)Z
    .locals 3

    const/4 v0, 0x1

    if-nez p0, :cond_0

    const-string v1, "CocktailProviderInfo"

    const-string v2, "enforceValidCategory: there is no category filters"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    iget-object v1, p1, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->privateMode:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    return v2

    :cond_1
    iget v1, p1, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->category:I

    and-int/2addr v1, p0

    if-eqz v1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method private static blacklist getCategoryId(Ljava/lang/String;)I
    .locals 1

    const-string/jumbo v0, "normal"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const-string v0, "contextual"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/high16 v0, 0x10000

    return v0

    :cond_1
    const-string/jumbo v0, "homescreen"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x8

    return v0

    :cond_2
    const-string/jumbo v0, "feeds"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x100

    return v0

    :cond_3
    const-string/jumbo v0, "whisper"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x200

    return v0

    :cond_4
    const-string/jumbo v0, "quicktool"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x4

    return v0

    :cond_5
    const-string/jumbo v0, "tablemode"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v0, 0x20

    return v0

    :cond_6
    const-string/jumbo v0, "nightmode"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x80

    return v0

    :cond_7
    const-string/jumbo v0, "lockscreen"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x10

    return v0

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

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

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

    invoke-static {v2}, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->getCategoryId(Ljava/lang/String;)I

    move-result v3

    or-int/2addr v0, v3

    goto :goto_0

    :cond_1
    return v0

    :cond_2
    :goto_1
    return v0
.end method

.method private blacklist loadXmlBoolean(Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;Ljava/lang/String;Z)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-interface {p1, v1, p3, v0}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v1

    move v1, p4

    goto :goto_0

    :cond_0
    invoke-interface {p1, v1, p3, p4}, Landroid/content/res/XmlResourceParser;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    :goto_1
    return v1
.end method

.method private blacklist loadXmlDimension(Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;Ljava/lang/String;I)I
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-interface {p1, v1, p3, v0}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v1

    move v1, p4

    goto :goto_0

    :cond_0
    invoke-interface {p1, v1, p3, p4}, Landroid/content/res/XmlResourceParser;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    :goto_1
    return v1
.end method

.method private blacklist loadXmlInt(Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;Ljava/lang/String;I)I
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-interface {p1, v1, p3, v0}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v1

    move v1, p4

    goto :goto_0

    :cond_0
    invoke-interface {p1, v1, p3, p4}, Landroid/content/res/XmlResourceParser;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    :goto_1
    return v1
.end method

.method private blacklist loadXmlString(Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-interface {p1, v1, p3, v0}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v1

    move-object v1, p4

    goto :goto_0

    :cond_0
    invoke-interface {p1, v1, p3}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    move-object v1, p4

    :cond_1
    :goto_1
    return-object v1
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->provider:Landroid/content/ComponentName;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v0, p1, p2}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    iget v0, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->updatePeriodMillis:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->label:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->description:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->icon:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->previewImage:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->category:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->cocktailWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->privateMode:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->privateMode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    iget-boolean v0, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->permitVisibilityChanged:Z

    if-eqz v0, :cond_2

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_2

    :cond_2
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    :goto_2
    iget-boolean v0, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->pullToRefresh:Z

    if-eqz v0, :cond_3

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_3

    :cond_3
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    :goto_3
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->configure:Landroid/content/ComponentName;

    if-eqz v0, :cond_4

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->configure:Landroid/content/ComponentName;

    invoke-virtual {v0, p1, p2}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_4

    :cond_4
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_4
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->launchOnClick:Ljava/lang/String;

    if-eqz v0, :cond_5

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->launchOnClick:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_5

    :cond_5
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_5
    iget-boolean v0, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->cscPreviewImage:Z

    if-eqz v0, :cond_6

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_6

    :cond_6
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    :goto_6
    iget-boolean v0, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->autoScale:Z

    if-eqz v0, :cond_7

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_7

    :cond_7
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    :goto_7
    iget v0, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->logoResourceId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->isDateTimeEnabled:Z

    if-eqz v0, :cond_8

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_8

    :cond_8
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    :goto_8
    iget-boolean v0, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->labelHide:Z

    if-eqz v0, :cond_9

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_9

    :cond_9
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    :goto_9
    iget-boolean v0, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->landLayout:Z

    if-eqz v0, :cond_a

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_a

    :cond_a
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    :goto_a
    return-void
.end method
