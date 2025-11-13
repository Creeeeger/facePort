.class public Landroid/renderscript/Font;
.super Landroid/renderscript/BaseObj;
.source "Font.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/renderscript/Font$Style;,
        Landroid/renderscript/Font$FontFamily;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static greylist-max-o sFontFamilyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/renderscript/Font$FontFamily;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o sMonoNames:[Ljava/lang/String;

.field private static final greylist-max-o sSansNames:[Ljava/lang/String;

.field private static final greylist-max-o sSerifNames:[Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 11

    .line 52
    const-string/jumbo v0, "sans-serif"

    const-string v1, "arial"

    const-string/jumbo v2, "helvetica"

    const-string/jumbo v3, "tahoma"

    const-string/jumbo v4, "verdana"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/renderscript/Font;->sSansNames:[Ljava/lang/String;

    .line 56
    const-string/jumbo v1, "serif"

    const-string/jumbo v2, "times"

    const-string/jumbo v3, "times new roman"

    const-string/jumbo v4, "palatino"

    const-string v5, "georgia"

    const-string v6, "baskerville"

    const-string/jumbo v7, "goudy"

    const-string v8, "fantasy"

    const-string v9, "cursive"

    const-string v10, "ITC Stone Serif"

    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/renderscript/Font;->sSerifNames:[Ljava/lang/String;

    .line 61
    const-string/jumbo v0, "monospace"

    const-string v1, "courier"

    const-string v2, "courier new"

    const-string/jumbo v3, "monaco"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/renderscript/Font;->sMonoNames:[Ljava/lang/String;

    .line 133
    invoke-static {}, Landroid/renderscript/Font;->initFontFamilyMap()V

    .line 134
    return-void
.end method

.method constructor greylist-max-o <init>(JLandroid/renderscript/RenderScript;)V
    .locals 2
    .param p1, "id"    # J
    .param p3, "rs"    # Landroid/renderscript/RenderScript;

    .line 155
    invoke-direct {p0, p1, p2, p3}, Landroid/renderscript/BaseObj;-><init>(JLandroid/renderscript/RenderScript;)V

    .line 156
    iget-object v0, p0, Landroid/renderscript/Font;->guard:Ldalvik/system/CloseGuard;

    const-string v1, "destroy"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 157
    return-void
.end method

.method private static greylist-max-o addFamilyToMap(Landroid/renderscript/Font$FontFamily;)V
    .locals 3
    .param p0, "family"    # Landroid/renderscript/Font$FontFamily;

    .line 99
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/renderscript/Font$FontFamily;->mNames:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 100
    sget-object v1, Landroid/renderscript/Font;->sFontFamilyMap:Ljava/util/Map;

    iget-object v2, p0, Landroid/renderscript/Font$FontFamily;->mNames:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-interface {v1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 102
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public static greylist-max-r create(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;Ljava/lang/String;Landroid/renderscript/Font$Style;F)Landroid/renderscript/Font;
    .locals 4
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "familyName"    # Ljava/lang/String;
    .param p3, "fontStyle"    # Landroid/renderscript/Font$Style;
    .param p4, "pointSize"    # F

    .line 244
    invoke-static {p2, p3}, Landroid/renderscript/Font;->getFontFileName(Ljava/lang/String;Landroid/renderscript/Font$Style;)Ljava/lang/String;

    move-result-object v0

    .line 245
    .local v0, "fileName":Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 246
    .local v1, "fontPath":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/fonts/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 247
    invoke-static {p0, p1, v1, p4}, Landroid/renderscript/Font;->createFromFile(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;Ljava/lang/String;F)Landroid/renderscript/Font;

    move-result-object v2

    return-object v2
.end method

.method public static greylist-max-o createFromAsset(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;Ljava/lang/String;F)Landroid/renderscript/Font;
    .locals 7
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "pointSize"    # F

    .line 187
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 188
    invoke-virtual {p1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 189
    .local v0, "mgr":Landroid/content/res/AssetManager;
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 191
    .local v1, "dpi":I
    invoke-virtual {p0, v0, p2, p3, v1}, Landroid/renderscript/RenderScript;->nFontCreateFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;FI)J

    move-result-wide v2

    .line 192
    .local v2, "fontId":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_0

    .line 195
    new-instance v4, Landroid/renderscript/Font;

    invoke-direct {v4, v2, v3, p0}, Landroid/renderscript/Font;-><init>(JLandroid/renderscript/RenderScript;)V

    .line 196
    .local v4, "rsFont":Landroid/renderscript/Font;
    return-object v4

    .line 193
    .end local v4    # "rsFont":Landroid/renderscript/Font;
    :cond_0
    new-instance v4, Landroid/renderscript/RSRuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to create font from asset "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static greylist-max-o createFromFile(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;Ljava/io/File;F)Landroid/renderscript/Font;
    .locals 1
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "path"    # Ljava/io/File;
    .param p3, "pointSize"    # F

    .line 180
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0, p3}, Landroid/renderscript/Font;->createFromFile(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;Ljava/lang/String;F)Landroid/renderscript/Font;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o createFromFile(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;Ljava/lang/String;F)Landroid/renderscript/Font;
    .locals 6
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "pointSize"    # F

    .line 164
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 165
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 166
    .local v0, "dpi":I
    invoke-virtual {p0, p2, p3, v0}, Landroid/renderscript/RenderScript;->nFontCreateFromFile(Ljava/lang/String;FI)J

    move-result-wide v1

    .line 168
    .local v1, "fontId":J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_0

    .line 171
    new-instance v3, Landroid/renderscript/Font;

    invoke-direct {v3, v1, v2, p0}, Landroid/renderscript/Font;-><init>(JLandroid/renderscript/RenderScript;)V

    .line 173
    .local v3, "rsFont":Landroid/renderscript/Font;
    return-object v3

    .line 169
    .end local v3    # "rsFont":Landroid/renderscript/Font;
    :cond_0
    new-instance v3, Landroid/renderscript/RSRuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to create font from file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static greylist-max-o createFromResource(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;IF)Landroid/renderscript/Font;
    .locals 14
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "id"    # I
    .param p3, "pointSize"    # F

    .line 203
    move/from16 v1, p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "R."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 205
    .local v8, "name":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 206
    const/4 v2, 0x0

    .line 208
    .local v2, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual/range {p1 .. p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    .end local v2    # "is":Ljava/io/InputStream;
    .local v0, "is":Ljava/io/InputStream;
    nop

    .line 213
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v9, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 215
    .local v9, "dpi":I
    const-wide/16 v10, 0x0

    .line 216
    .local v10, "fontId":J
    instance-of v2, v0, Landroid/content/res/AssetManager$AssetInputStream;

    if-eqz v2, :cond_1

    .line 217
    move-object v2, v0

    check-cast v2, Landroid/content/res/AssetManager$AssetInputStream;

    invoke-virtual {v2}, Landroid/content/res/AssetManager$AssetInputStream;->getNativeAsset()J

    move-result-wide v12

    .line 218
    .local v12, "asset":J
    move-object v2, p0

    move-object v3, v8

    move/from16 v4, p3

    move v5, v9

    move-wide v6, v12

    invoke-virtual/range {v2 .. v7}, Landroid/renderscript/RenderScript;->nFontCreateFromAssetStream(Ljava/lang/String;FIJ)J

    move-result-wide v2

    .line 219
    .end local v10    # "fontId":J
    .end local v12    # "asset":J
    .local v2, "fontId":J
    nop

    .line 223
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_0

    .line 226
    new-instance v4, Landroid/renderscript/Font;

    move-object v5, p0

    invoke-direct {v4, v2, v3, p0}, Landroid/renderscript/Font;-><init>(JLandroid/renderscript/RenderScript;)V

    .line 227
    .local v4, "rsFont":Landroid/renderscript/Font;
    return-object v4

    .line 224
    .end local v4    # "rsFont":Landroid/renderscript/Font;
    :cond_0
    move-object v5, p0

    new-instance v4, Landroid/renderscript/RSRuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to create font from resource "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 220
    .end local v2    # "fontId":J
    .restart local v10    # "fontId":J
    :cond_1
    move-object v5, p0

    new-instance v2, Landroid/renderscript/RSRuntimeException;

    const-string v3, "Unsupported asset stream created"

    invoke-direct {v2, v3}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 209
    .end local v0    # "is":Ljava/io/InputStream;
    .end local v9    # "dpi":I
    .end local v10    # "fontId":J
    .local v2, "is":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    move-object v5, p0

    move-object v3, v0

    move-object v0, v3

    .line 210
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Landroid/renderscript/RSRuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to open resource "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method static greylist-max-o getFontFileName(Ljava/lang/String;Landroid/renderscript/Font$Style;)Ljava/lang/String;
    .locals 3
    .param p0, "familyName"    # Ljava/lang/String;
    .param p1, "style"    # Landroid/renderscript/Font$Style;

    .line 137
    sget-object v0, Landroid/renderscript/Font;->sFontFamilyMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/renderscript/Font$FontFamily;

    .line 138
    .local v0, "family":Landroid/renderscript/Font$FontFamily;
    if-eqz v0, :cond_0

    .line 139
    sget-object v1, Landroid/renderscript/Font$1;->$SwitchMap$android$renderscript$Font$Style:[I

    invoke-virtual {p1}, Landroid/renderscript/Font$Style;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 147
    :pswitch_0
    iget-object v1, v0, Landroid/renderscript/Font$FontFamily;->mBoldItalicFileName:Ljava/lang/String;

    return-object v1

    .line 145
    :pswitch_1
    iget-object v1, v0, Landroid/renderscript/Font$FontFamily;->mItalicFileName:Ljava/lang/String;

    return-object v1

    .line 143
    :pswitch_2
    iget-object v1, v0, Landroid/renderscript/Font$FontFamily;->mBoldFileName:Ljava/lang/String;

    return-object v1

    .line 141
    :pswitch_3
    iget-object v1, v0, Landroid/renderscript/Font$FontFamily;->mNormalFileName:Ljava/lang/String;

    return-object v1

    .line 151
    :cond_0
    :goto_0
    const-string v1, "DroidSans.ttf"

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static greylist-max-o initFontFamilyMap()V
    .locals 4

    .line 105
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/renderscript/Font;->sFontFamilyMap:Ljava/util/Map;

    .line 107
    new-instance v0, Landroid/renderscript/Font$FontFamily;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/renderscript/Font$FontFamily;-><init>(Landroid/renderscript/Font$FontFamily-IA;)V

    .line 108
    .local v0, "sansFamily":Landroid/renderscript/Font$FontFamily;
    sget-object v2, Landroid/renderscript/Font;->sSansNames:[Ljava/lang/String;

    iput-object v2, v0, Landroid/renderscript/Font$FontFamily;->mNames:[Ljava/lang/String;

    .line 109
    const-string v2, "Roboto-Regular.ttf"

    iput-object v2, v0, Landroid/renderscript/Font$FontFamily;->mNormalFileName:Ljava/lang/String;

    .line 110
    const-string v2, "Roboto-Bold.ttf"

    iput-object v2, v0, Landroid/renderscript/Font$FontFamily;->mBoldFileName:Ljava/lang/String;

    .line 111
    const-string v2, "Roboto-Italic.ttf"

    iput-object v2, v0, Landroid/renderscript/Font$FontFamily;->mItalicFileName:Ljava/lang/String;

    .line 112
    const-string v2, "Roboto-BoldItalic.ttf"

    iput-object v2, v0, Landroid/renderscript/Font$FontFamily;->mBoldItalicFileName:Ljava/lang/String;

    .line 113
    invoke-static {v0}, Landroid/renderscript/Font;->addFamilyToMap(Landroid/renderscript/Font$FontFamily;)V

    .line 115
    new-instance v2, Landroid/renderscript/Font$FontFamily;

    invoke-direct {v2, v1}, Landroid/renderscript/Font$FontFamily;-><init>(Landroid/renderscript/Font$FontFamily-IA;)V

    .line 116
    .local v2, "serifFamily":Landroid/renderscript/Font$FontFamily;
    sget-object v3, Landroid/renderscript/Font;->sSerifNames:[Ljava/lang/String;

    iput-object v3, v2, Landroid/renderscript/Font$FontFamily;->mNames:[Ljava/lang/String;

    .line 117
    const-string v3, "NotoSerif-Regular.ttf"

    iput-object v3, v2, Landroid/renderscript/Font$FontFamily;->mNormalFileName:Ljava/lang/String;

    .line 118
    const-string v3, "NotoSerif-Bold.ttf"

    iput-object v3, v2, Landroid/renderscript/Font$FontFamily;->mBoldFileName:Ljava/lang/String;

    .line 119
    const-string v3, "NotoSerif-Italic.ttf"

    iput-object v3, v2, Landroid/renderscript/Font$FontFamily;->mItalicFileName:Ljava/lang/String;

    .line 120
    const-string v3, "NotoSerif-BoldItalic.ttf"

    iput-object v3, v2, Landroid/renderscript/Font$FontFamily;->mBoldItalicFileName:Ljava/lang/String;

    .line 121
    invoke-static {v2}, Landroid/renderscript/Font;->addFamilyToMap(Landroid/renderscript/Font$FontFamily;)V

    .line 123
    new-instance v3, Landroid/renderscript/Font$FontFamily;

    invoke-direct {v3, v1}, Landroid/renderscript/Font$FontFamily;-><init>(Landroid/renderscript/Font$FontFamily-IA;)V

    move-object v1, v3

    .line 124
    .local v1, "monoFamily":Landroid/renderscript/Font$FontFamily;
    sget-object v3, Landroid/renderscript/Font;->sMonoNames:[Ljava/lang/String;

    iput-object v3, v1, Landroid/renderscript/Font$FontFamily;->mNames:[Ljava/lang/String;

    .line 125
    const-string v3, "DroidSansMono.ttf"

    iput-object v3, v1, Landroid/renderscript/Font$FontFamily;->mNormalFileName:Ljava/lang/String;

    .line 126
    iput-object v3, v1, Landroid/renderscript/Font$FontFamily;->mBoldFileName:Ljava/lang/String;

    .line 127
    iput-object v3, v1, Landroid/renderscript/Font$FontFamily;->mItalicFileName:Ljava/lang/String;

    .line 128
    iput-object v3, v1, Landroid/renderscript/Font$FontFamily;->mBoldItalicFileName:Ljava/lang/String;

    .line 129
    invoke-static {v1}, Landroid/renderscript/Font;->addFamilyToMap(Landroid/renderscript/Font$FontFamily;)V

    .line 130
    return-void
.end method
