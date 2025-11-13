.class public abstract Landroid/graphics/drawable/Drawable;
.super Ljava/lang/Object;
.source "Drawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/drawable/Drawable$ConstantState;,
        Landroid/graphics/drawable/Drawable$Callback;
    }
.end annotation


# static fields
.field static final blacklist DEFAULT_BLEND_MODE:Landroid/graphics/BlendMode;

.field static final greylist-max-o DEFAULT_TINT_MODE:Landroid/graphics/PorterDuff$Mode;

.field private static blacklist SprClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static blacklist SprCreateFromStream:Ljava/lang/reflect/Method;

.field private static final greylist-max-o ZERO_BOUNDS_RECT:Landroid/graphics/Rect;


# instance fields
.field private greylist-max-o mBounds:Landroid/graphics/Rect;

.field private greylist mCallback:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/graphics/drawable/Drawable$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mChangingConfigurations:I

.field private greylist-max-o mLayoutDirection:I

.field private greylist-max-o mLevel:I

.field private blacklist mSetBlendModeInvoked:Z

.field private blacklist mSetTintModeInvoked:Z

.field protected greylist mSrcDensityOverride:I

.field private greylist-max-o mStateSet:[I

.field private greylist-max-o mVisible:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 185
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Landroid/graphics/drawable/Drawable;->ZERO_BOUNDS_RECT:Landroid/graphics/Rect;

    .line 187
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    sput-object v0, Landroid/graphics/drawable/Drawable;->DEFAULT_TINT_MODE:Landroid/graphics/PorterDuff$Mode;

    .line 188
    sget-object v0, Landroid/graphics/BlendMode;->SRC_IN:Landroid/graphics/BlendMode;

    sput-object v0, Landroid/graphics/drawable/Drawable;->DEFAULT_BLEND_MODE:Landroid/graphics/BlendMode;

    .line 190
    const/4 v0, 0x0

    sput-object v0, Landroid/graphics/drawable/Drawable;->SprClass:Ljava/lang/Class;

    .line 191
    sput-object v0, Landroid/graphics/drawable/Drawable;->SprCreateFromStream:Ljava/lang/reflect/Method;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 2

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 193
    sget-object v0, Landroid/util/StateSet;->WILD_CARD:[I

    iput-object v0, p0, Landroid/graphics/drawable/Drawable;->mStateSet:[I

    .line 194
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/drawable/Drawable;->mLevel:I

    .line 195
    iput v0, p0, Landroid/graphics/drawable/Drawable;->mChangingConfigurations:I

    .line 196
    sget-object v1, Landroid/graphics/drawable/Drawable;->ZERO_BOUNDS_RECT:Landroid/graphics/Rect;

    iput-object v1, p0, Landroid/graphics/drawable/Drawable;->mBounds:Landroid/graphics/Rect;

    .line 197
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/graphics/drawable/Drawable;->mCallback:Ljava/lang/ref/WeakReference;

    .line 199
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/graphics/drawable/Drawable;->mVisible:Z

    .line 216
    iput v0, p0, Landroid/graphics/drawable/Drawable;->mSrcDensityOverride:I

    .line 226
    iput-boolean v0, p0, Landroid/graphics/drawable/Drawable;->mSetBlendModeInvoked:Z

    .line 235
    iput-boolean v0, p0, Landroid/graphics/drawable/Drawable;->mSetTintModeInvoked:Z

    return-void
.end method

.method public static whitelist createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p0, "pathName"    # Ljava/lang/String;

    .line 1440
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 1441
    return-object v0

    .line 1444
    :cond_0
    const-wide/16 v1, 0x2000

    invoke-static {v1, v2, p0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1445
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1446
    .local v3, "stream":Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {v0, v0, v3}, Landroid/graphics/drawable/Drawable;->getBitmapDrawable(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;)Landroid/graphics/drawable/Drawable;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1447
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1450
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1446
    return-object v4

    .line 1445
    :catchall_0
    move-exception v4

    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v5

    :try_start_4
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "pathName":Ljava/lang/String;
    :goto_0
    throw v4
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1450
    .end local v3    # "stream":Ljava/io/FileInputStream;
    .restart local p0    # "pathName":Ljava/lang/String;
    :catchall_2
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1451
    throw v0

    .line 1447
    :catch_0
    move-exception v3

    .line 1450
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1451
    nop

    .line 1453
    return-object v0
.end method

.method public static whitelist createFromResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "value"    # Landroid/util/TypedValue;
    .param p2, "is"    # Ljava/io/InputStream;
    .param p3, "srcName"    # Ljava/lang/String;

    .line 1228
    if-eqz p3, :cond_0

    move-object v0, p3

    goto :goto_0

    :cond_0
    const-string v0, "Unknown drawable"

    :goto_0
    const-wide/16 v1, 0x2000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1230
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0, p1, p2, p3, v0}, Landroid/graphics/drawable/Drawable;->createFromResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1232
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1230
    return-object v0

    .line 1232
    :catchall_0
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1233
    throw v0
.end method

.method public static whitelist createFromResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/drawable/Drawable;
    .locals 10
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "value"    # Landroid/util/TypedValue;
    .param p2, "is"    # Ljava/io/InputStream;
    .param p3, "srcName"    # Ljava/lang/String;
    .param p4, "opts"    # Landroid/graphics/BitmapFactory$Options;

    .line 1245
    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 1246
    return-object v0

    .line 1250
    :cond_0
    const/4 v1, 0x0

    if-eqz p3, :cond_1

    :try_start_0
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, ".bmp"

    invoke-virtual {p3, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, ".spr"

    invoke-virtual {p3, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1251
    :cond_1
    invoke-virtual {p2}, Ljava/io/InputStream;->markSupported()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1252
    const/4 v2, 0x3

    new-array v3, v2, [B

    .line 1253
    .local v3, "b":[B
    invoke-virtual {p2, v3, v1, v2}, Ljava/io/InputStream;->read([BII)I

    .line 1254
    invoke-virtual {p2}, Ljava/io/InputStream;->reset()V

    .line 1256
    aget-byte v4, v3, v1

    const/16 v5, 0x53

    if-ne v4, v5, :cond_4

    const/4 v4, 0x1

    aget-byte v5, v3, v4

    const/16 v6, 0x50

    if-ne v5, v6, :cond_4

    const/4 v5, 0x2

    aget-byte v6, v3, v5

    const/16 v7, 0x52

    if-ne v6, v7, :cond_4

    .line 1257
    sget-object v6, Landroid/graphics/drawable/Drawable;->SprClass:Ljava/lang/Class;

    if-nez v6, :cond_2

    .line 1258
    const-string v6, "com.samsung.android.graphics.spr.SemPathRenderingDrawable"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    sput-object v6, Landroid/graphics/drawable/Drawable;->SprClass:Ljava/lang/Class;

    .line 1260
    :cond_2
    sget-object v6, Landroid/graphics/drawable/Drawable;->SprCreateFromStream:Ljava/lang/reflect/Method;

    if-nez v6, :cond_3

    .line 1261
    sget-object v6, Landroid/graphics/drawable/Drawable;->SprClass:Ljava/lang/Class;

    const-string v7, "createFromStream"

    new-array v8, v2, [Ljava/lang/Class;

    const-class v9, Ljava/lang/String;

    aput-object v9, v8, v1

    const-class v9, Ljava/io/InputStream;

    aput-object v9, v8, v4

    const-class v9, Landroid/content/res/Resources;

    aput-object v9, v8, v5

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    sput-object v6, Landroid/graphics/drawable/Drawable;->SprCreateFromStream:Ljava/lang/reflect/Method;

    .line 1264
    :cond_3
    sget-object v6, Landroid/graphics/drawable/Drawable;->SprCreateFromStream:Ljava/lang/reflect/Method;

    sget-object v7, Landroid/graphics/drawable/Drawable;->SprClass:Ljava/lang/Class;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p3, v2, v1

    aput-object p2, v2, v4

    aput-object p0, v2, v5

    invoke-virtual {v6, v7, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 1270
    .end local v3    # "b":[B
    :cond_4
    goto :goto_0

    .line 1268
    :catch_0
    move-exception v2

    .line 1269
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 1272
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    if-nez p4, :cond_5

    .line 1273
    invoke-static {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->getBitmapDrawable(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 1282
    :cond_5
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 1291
    .local v2, "pad":Landroid/graphics/Rect;
    invoke-static {p0, v1}, Landroid/graphics/drawable/Drawable;->resolveDensity(Landroid/content/res/Resources;I)I

    move-result v1

    iput v1, p4, Landroid/graphics/BitmapFactory$Options;->inScreenDensity:I

    .line 1292
    invoke-static {p0, p1, p2, v2, p4}, Landroid/graphics/BitmapFactory;->decodeResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1293
    .local v1, "bm":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_8

    .line 1294
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v0

    .line 1295
    .local v0, "np":[B
    if-eqz v0, :cond_6

    invoke-static {v0}, Landroid/graphics/NinePatch;->isNinePatchChunk([B)Z

    move-result v3

    if-nez v3, :cond_7

    .line 1296
    :cond_6
    const/4 v0, 0x0

    .line 1297
    const/4 v2, 0x0

    .line 1300
    :cond_7
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    move-object v9, v3

    .line 1301
    .local v9, "opticalInsets":Landroid/graphics/Rect;
    invoke-virtual {v1, v9}, Landroid/graphics/Bitmap;->getOpticalInsets(Landroid/graphics/Rect;)V

    .line 1302
    move-object v3, p0

    move-object v4, v1

    move-object v5, v0

    move-object v6, v2

    move-object v7, v9

    move-object v8, p3

    invoke-static/range {v3 .. v8}, Landroid/graphics/drawable/Drawable;->drawableFromBitmap(Landroid/content/res/Resources;Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Landroid/graphics/Rect;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    return-object v3

    .line 1304
    .end local v0    # "np":[B
    .end local v9    # "opticalInsets":Landroid/graphics/Rect;
    :cond_8
    return-object v0
.end method

.method public static whitelist createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "srcName"    # Ljava/lang/String;

    .line 1214
    if-eqz p1, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    const-string v0, "Unknown drawable"

    :goto_0
    const-wide/16 v1, 0x2000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1216
    const/4 v0, 0x0

    :try_start_0
    invoke-static {v0, v0, p0, p1}, Landroid/graphics/drawable/Drawable;->createFromResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1218
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1216
    return-object v0

    .line 1218
    :catchall_0
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1219
    throw v0
.end method

.method public static whitelist createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "r"    # Landroid/content/res/Resources;
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1346
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/graphics/drawable/Drawable;->createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "r"    # Landroid/content/res/Resources;
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1357
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Landroid/graphics/drawable/Drawable;->createFromXmlForDensity(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o createFromXmlForDensity(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p0, "r"    # Landroid/content/res/Resources;
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "density"    # I
    .param p3, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1369
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    .line 1373
    .local v0, "attrs":Landroid/util/AttributeSet;
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    move v2, v1

    .local v2, "type":I
    const/4 v3, 0x2

    if-eq v1, v3, :cond_0

    const/4 v1, 0x1

    if-eq v2, v1, :cond_0

    goto :goto_0

    .line 1378
    :cond_0
    if-ne v2, v3, :cond_2

    .line 1382
    invoke-static {p0, p1, v0, p2, p3}, Landroid/graphics/drawable/Drawable;->createFromXmlInnerForDensity(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1384
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_1

    .line 1388
    return-object v1

    .line 1385
    :cond_1
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown initial tag: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1379
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_2
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v3, "No start tag found"

    invoke-direct {v1, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static blacklist createFromXmlForOverrideDensity(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p0, "r"    # Landroid/content/res/Resources;
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "overrideDensity"    # I
    .param p4, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1431
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDrawableInflater()Landroid/graphics/drawable/DrawableInflater;

    move-result-object v0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/drawable/DrawableInflater;->inflateFromXmlForOverrideDensity(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "r"    # Landroid/content/res/Resources;
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1399
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/graphics/drawable/Drawable;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "r"    # Landroid/content/res/Resources;
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1411
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, p3}, Landroid/graphics/drawable/Drawable;->createFromXmlInnerForDensity(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method static greylist-max-o createFromXmlInnerForDensity(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p0, "r"    # Landroid/content/res/Resources;
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "density"    # I
    .param p4, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1421
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDrawableInflater()Landroid/graphics/drawable/DrawableInflater;

    move-result-object v0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/drawable/DrawableInflater;->inflateFromXmlForDensity(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private static greylist-max-o drawableFromBitmap(Landroid/content/res/Resources;Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Landroid/graphics/Rect;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 8
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "bm"    # Landroid/graphics/Bitmap;
    .param p2, "np"    # [B
    .param p3, "pad"    # Landroid/graphics/Rect;
    .param p4, "layoutBounds"    # Landroid/graphics/Rect;
    .param p5, "srcName"    # Ljava/lang/String;

    .line 1601
    if-eqz p2, :cond_0

    .line 1602
    new-instance v7, Landroid/graphics/drawable/NinePatchDrawable;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Landroid/graphics/Rect;Ljava/lang/String;)V

    return-object v7

    .line 1605
    :cond_0
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method private static greylist-max-o getBitmapDrawable(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "value"    # Landroid/util/TypedValue;
    .param p2, "is"    # Ljava/io/InputStream;

    .line 1310
    const/4 v0, 0x0

    .line 1311
    .local v0, "source":Landroid/graphics/ImageDecoder$Source;
    if-eqz p1, :cond_2

    .line 1312
    const/4 v1, 0x0

    .line 1313
    .local v1, "density":I
    :try_start_0
    iget v2, p1, Landroid/util/TypedValue;->density:I

    if-nez v2, :cond_0

    .line 1314
    const/16 v1, 0xa0

    goto :goto_0

    .line 1315
    :cond_0
    iget v2, p1, Landroid/util/TypedValue;->density:I

    const v3, 0xffff

    if-eq v2, v3, :cond_1

    .line 1316
    iget v2, p1, Landroid/util/TypedValue;->density:I

    move v1, v2

    .line 1318
    :cond_1
    :goto_0
    invoke-static {p0, p2, v1}, Landroid/graphics/ImageDecoder;->createSource(Landroid/content/res/Resources;Ljava/io/InputStream;I)Landroid/graphics/ImageDecoder$Source;

    move-result-object v2

    move-object v0, v2

    .line 1319
    .end local v1    # "density":I
    goto :goto_1

    .line 1320
    :cond_2
    invoke-static {p0, p2}, Landroid/graphics/ImageDecoder;->createSource(Landroid/content/res/Resources;Ljava/io/InputStream;)Landroid/graphics/ImageDecoder$Source;

    move-result-object v1

    move-object v0, v1

    .line 1323
    :goto_1
    new-instance v1, Landroid/graphics/drawable/Drawable$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/graphics/drawable/Drawable$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0, v1}, Landroid/graphics/ImageDecoder;->decodeDrawable(Landroid/graphics/ImageDecoder$Source;Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;)Landroid/graphics/drawable/Drawable;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 1329
    .end local v0    # "source":Landroid/graphics/ImageDecoder$Source;
    :catch_0
    move-exception v0

    .line 1333
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to decode stream: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Drawable"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1335
    .end local v0    # "e":Ljava/io/IOException;
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic blacklist lambda$getBitmapDrawable$0(Landroid/graphics/ImageDecoder$DecodeException;)Z
    .locals 2
    .param p0, "e"    # Landroid/graphics/ImageDecoder$DecodeException;

    .line 1326
    invoke-virtual {p0}, Landroid/graphics/ImageDecoder$DecodeException;->getError()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic blacklist lambda$getBitmapDrawable$1(Landroid/graphics/ImageDecoder;Landroid/graphics/ImageDecoder$ImageInfo;Landroid/graphics/ImageDecoder$Source;)V
    .locals 1
    .param p0, "decoder"    # Landroid/graphics/ImageDecoder;
    .param p1, "info"    # Landroid/graphics/ImageDecoder$ImageInfo;
    .param p2, "src"    # Landroid/graphics/ImageDecoder$Source;

    .line 1324
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/graphics/ImageDecoder;->setAllocator(I)V

    .line 1325
    new-instance v0, Landroid/graphics/drawable/Drawable$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroid/graphics/drawable/Drawable$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {p0, v0}, Landroid/graphics/ImageDecoder;->setOnPartialImageListener(Landroid/graphics/ImageDecoder$OnPartialImageListener;)V

    .line 1328
    return-void
.end method

.method protected static greylist-max-o obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
    .locals 1
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;
    .param p2, "set"    # Landroid/util/AttributeSet;
    .param p3, "attrs"    # [I

    .line 1649
    if-nez p1, :cond_0

    .line 1650
    invoke-virtual {p0, p2, p3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    return-object v0

    .line 1652
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, v0, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-r parseBlendMode(ILandroid/graphics/BlendMode;)Landroid/graphics/BlendMode;
    .locals 1
    .param p0, "value"    # I
    .param p1, "defaultMode"    # Landroid/graphics/BlendMode;

    .line 1753
    sparse-switch p0, :sswitch_data_0

    .line 1762
    return-object p1

    .line 1761
    :sswitch_0
    sget-object v0, Landroid/graphics/BlendMode;->PLUS:Landroid/graphics/BlendMode;

    return-object v0

    .line 1760
    :sswitch_1
    sget-object v0, Landroid/graphics/BlendMode;->SCREEN:Landroid/graphics/BlendMode;

    return-object v0

    .line 1759
    :sswitch_2
    sget-object v0, Landroid/graphics/BlendMode;->MODULATE:Landroid/graphics/BlendMode;

    return-object v0

    .line 1756
    :sswitch_3
    sget-object v0, Landroid/graphics/BlendMode;->SRC_ATOP:Landroid/graphics/BlendMode;

    return-object v0

    .line 1755
    :sswitch_4
    sget-object v0, Landroid/graphics/BlendMode;->SRC_IN:Landroid/graphics/BlendMode;

    return-object v0

    .line 1754
    :sswitch_5
    sget-object v0, Landroid/graphics/BlendMode;->SRC_OVER:Landroid/graphics/BlendMode;

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_5
        0x5 -> :sswitch_4
        0x9 -> :sswitch_3
        0xe -> :sswitch_2
        0xf -> :sswitch_1
        0x10 -> :sswitch_0
    .end sparse-switch
.end method

.method public static greylist parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;
    .locals 1
    .param p0, "value"    # I
    .param p1, "defaultMode"    # Landroid/graphics/PorterDuff$Mode;

    .line 1734
    sparse-switch p0, :sswitch_data_0

    .line 1741
    return-object p1

    .line 1740
    :sswitch_0
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->ADD:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    .line 1739
    :sswitch_1
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    .line 1738
    :sswitch_2
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    .line 1737
    :sswitch_3
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    .line 1736
    :sswitch_4
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    .line 1735
    :sswitch_5
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_5
        0x5 -> :sswitch_4
        0x9 -> :sswitch_3
        0xe -> :sswitch_2
        0xf -> :sswitch_1
        0x10 -> :sswitch_0
    .end sparse-switch
.end method

.method static greylist-max-o resolveDensity(Landroid/content/res/Resources;I)I
    .locals 2
    .param p0, "r"    # Landroid/content/res/Resources;
    .param p1, "parentDensity"    # I

    .line 1708
    if-nez p0, :cond_0

    move v0, p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 1709
    .local v0, "densityDpi":I
    :goto_0
    if-nez v0, :cond_1

    const/16 v1, 0xa0

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_1
    return v1
.end method

.method public static whitelist resolveOpacity(II)I
    .locals 1
    .param p0, "op1"    # I
    .param p1, "op2"    # I

    .line 1021
    if-ne p0, p1, :cond_0

    .line 1022
    return p0

    .line 1024
    :cond_0
    if-eqz p0, :cond_6

    if-nez p1, :cond_1

    goto :goto_2

    .line 1027
    :cond_1
    const/4 v0, -0x3

    if-eq p0, v0, :cond_5

    if-ne p1, v0, :cond_2

    goto :goto_1

    .line 1030
    :cond_2
    const/4 v0, -0x2

    if-eq p0, v0, :cond_4

    if-ne p1, v0, :cond_3

    goto :goto_0

    .line 1033
    :cond_3
    const/4 v0, -0x1

    return v0

    .line 1031
    :cond_4
    :goto_0
    return v0

    .line 1028
    :cond_5
    :goto_1
    return v0

    .line 1025
    :cond_6
    :goto_2
    const/4 v0, 0x0

    return v0
.end method

.method static greylist-max-o rethrowAsRuntimeException(Ljava/lang/Exception;)V
    .locals 2
    .param p0, "cause"    # Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 1721
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 1722
    .local v0, "e":Ljava/lang/RuntimeException;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/StackTraceElement;

    invoke-virtual {v0, v1}, Ljava/lang/RuntimeException;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 1723
    throw v0
.end method

.method static greylist-max-o scaleFromDensity(FII)F
    .locals 2
    .param p0, "pixels"    # F
    .param p1, "sourceDensity"    # I
    .param p2, "targetDensity"    # I

    .line 1665
    int-to-float v0, p2

    mul-float/2addr v0, p0

    int-to-float v1, p1

    div-float/2addr v0, v1

    return v0
.end method

.method static greylist-max-o scaleFromDensity(IIIZ)I
    .locals 3
    .param p0, "pixels"    # I
    .param p1, "sourceDensity"    # I
    .param p2, "targetDensity"    # I
    .param p3, "isSize"    # Z

    .line 1688
    if-eqz p0, :cond_4

    if-ne p1, p2, :cond_0

    goto :goto_0

    .line 1692
    :cond_0
    mul-int v0, p0, p2

    int-to-float v0, v0

    int-to-float v1, p1

    div-float/2addr v0, v1

    .line 1693
    .local v0, "result":F
    if-nez p3, :cond_1

    .line 1694
    float-to-int v1, v0

    return v1

    .line 1697
    :cond_1
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 1698
    .local v1, "rounded":I
    if-eqz v1, :cond_2

    .line 1699
    return v1

    .line 1700
    :cond_2
    if-lez p0, :cond_3

    .line 1701
    const/4 v2, 0x1

    return v2

    .line 1703
    :cond_3
    const/4 v2, -0x1

    return v2

    .line 1689
    .end local v0    # "result":F
    .end local v1    # "rounded":I
    :cond_4
    :goto_0
    return p0
.end method


# virtual methods
.method public whitelist applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 0
    .param p1, "t"    # Landroid/content/res/Resources$Theme;

    .line 958
    return-void
.end method

.method public whitelist canApplyTheme()Z
    .locals 1

    .line 961
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist clearColorFilter()V
    .locals 1

    .line 742
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 743
    return-void
.end method

.method public greylist-max-o clearMutated()V
    .locals 0

    .line 1207
    return-void
.end method

.method public final whitelist copyBounds()Landroid/graphics/Rect;
    .locals 2

    .line 296
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/graphics/drawable/Drawable;->mBounds:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    return-object v0
.end method

.method public final whitelist copyBounds(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 284
    iget-object v0, p0, Landroid/graphics/drawable/Drawable;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 285
    return-void
.end method

.method public abstract whitelist draw(Landroid/graphics/Canvas;)V
.end method

.method public whitelist getAlpha()I
    .locals 1

    .line 573
    const/16 v0, 0xff

    return v0
.end method

.method public final whitelist getBounds()Landroid/graphics/Rect;
    .locals 2

    .line 315
    iget-object v0, p0, Landroid/graphics/drawable/Drawable;->mBounds:Landroid/graphics/Rect;

    sget-object v1, Landroid/graphics/drawable/Drawable;->ZERO_BOUNDS_RECT:Landroid/graphics/Rect;

    if-ne v0, v1, :cond_0

    .line 316
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/Drawable;->mBounds:Landroid/graphics/Rect;

    .line 319
    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/Drawable;->mBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public whitelist getCallback()Landroid/graphics/drawable/Drawable$Callback;
    .locals 1

    .line 462
    iget-object v0, p0, Landroid/graphics/drawable/Drawable;->mCallback:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable$Callback;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public whitelist getChangingConfigurations()I
    .locals 1

    .line 363
    iget v0, p0, Landroid/graphics/drawable/Drawable;->mChangingConfigurations:I

    return v0
.end method

.method public whitelist getColorFilter()Landroid/graphics/ColorFilter;
    .locals 1

    .line 735
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 1

    .line 1595
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getCurrent()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 870
    return-object p0
.end method

.method public whitelist getDirtyBounds()Landroid/graphics/Rect;
    .locals 1

    .line 333
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getHotspotBounds(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "outRect"    # Landroid/graphics/Rect;

    .line 772
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 773
    return-void
.end method

.method public whitelist getIntrinsicHeight()I
    .locals 1

    .line 1108
    const/4 v0, -0x1

    return v0
.end method

.method public whitelist getIntrinsicWidth()I
    .locals 1

    .line 1095
    const/4 v0, -0x1

    return v0
.end method

.method public whitelist getLayoutDirection()I
    .locals 1

    .line 522
    iget v0, p0, Landroid/graphics/drawable/Drawable;->mLayoutDirection:I

    return v0
.end method

.method public final whitelist getLevel()I
    .locals 1

    .line 903
    iget v0, p0, Landroid/graphics/drawable/Drawable;->mLevel:I

    return v0
.end method

.method public whitelist getMinimumHeight()I
    .locals 2

    .line 1135
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 1136
    .local v0, "intrinsicHeight":I
    if-lez v0, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public whitelist getMinimumWidth()I
    .locals 2

    .line 1121
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 1122
    .local v0, "intrinsicWidth":I
    if-lez v0, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public abstract whitelist getOpacity()I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public whitelist getOpticalInsets()Landroid/graphics/Insets;
    .locals 1

    .line 1158
    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    return-object v0
.end method

.method public whitelist getOutline(Landroid/graphics/Outline;)V
    .locals 1
    .param p1, "outline"    # Landroid/graphics/Outline;

    .line 1173
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Outline;->setRect(Landroid/graphics/Rect;)V

    .line 1174
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/Outline;->setAlpha(F)V

    .line 1175
    return-void
.end method

.method public whitelist getPadding(Landroid/graphics/Rect;)Z
    .locals 1
    .param p1, "padding"    # Landroid/graphics/Rect;

    .line 1148
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 1149
    return v0
.end method

.method public whitelist getState()[I
    .locals 1

    .line 853
    iget-object v0, p0, Landroid/graphics/drawable/Drawable;->mStateSet:[I

    return-object v0
.end method

.method public whitelist getTransparentRegion()Landroid/graphics/Region;
    .locals 1

    .line 1050
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist hasFocusStateSpecified()Z
    .locals 1

    .line 812
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "r"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1463
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 1464
    return-void
.end method

.method public whitelist inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 3
    .param p1, "r"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1481
    sget-object v0, Lcom/android/internal/R$styleable;->Drawable:[I

    invoke-static {p1, p4, p3, v0}, Landroid/graphics/drawable/Drawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1482
    .local v0, "a":Landroid/content/res/TypedArray;
    iget-boolean v1, p0, Landroid/graphics/drawable/Drawable;->mVisible:Z

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroid/graphics/drawable/Drawable;->mVisible:Z

    .line 1483
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1484
    return-void
.end method

.method greylist inflateWithAttributes(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/TypedArray;I)V
    .locals 1
    .param p1, "r"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "attrs"    # Landroid/content/res/TypedArray;
    .param p4, "visibleAttr"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1496
    iget-boolean v0, p0, Landroid/graphics/drawable/Drawable;->mVisible:Z

    invoke-virtual {p3, p4, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Landroid/graphics/drawable/Drawable;->mVisible:Z

    .line 1497
    return-void
.end method

.method public whitelist invalidateSelf()V
    .locals 1

    .line 475
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    .line 476
    .local v0, "callback":Landroid/graphics/drawable/Drawable$Callback;
    if-eqz v0, :cond_0

    .line 477
    invoke-interface {v0, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 479
    :cond_0
    return-void
.end method

.method public whitelist isAutoMirrored()Z
    .locals 1

    .line 949
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isFilterBitmap()Z
    .locals 1

    .line 393
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isProjected()Z
    .locals 1

    .line 783
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isStateful()Z
    .locals 1

    .line 796
    const/4 v0, 0x0

    return v0
.end method

.method public final whitelist isVisible()Z
    .locals 1

    .line 930
    iget-boolean v0, p0, Landroid/graphics/drawable/Drawable;->mVisible:Z

    return v0
.end method

.method public whitelist jumpToCurrentState()V
    .locals 0

    .line 861
    return-void
.end method

.method public whitelist mutate()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1192
    return-object p0
.end method

.method protected whitelist onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 1083
    return-void
.end method

.method public whitelist onLayoutDirectionChanged(I)Z
    .locals 1
    .param p1, "layoutDirection"    # I

    .line 556
    const/4 v0, 0x0

    return v0
.end method

.method protected whitelist onLevelChange(I)Z
    .locals 1
    .param p1, "level"    # I

    .line 1074
    const/4 v0, 0x0

    return v0
.end method

.method protected whitelist onStateChange([I)Z
    .locals 1
    .param p1, "state"    # [I

    .line 1063
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist scheduleSelf(Ljava/lang/Runnable;J)V
    .locals 1
    .param p1, "what"    # Ljava/lang/Runnable;
    .param p2, "when"    # J

    .line 492
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    .line 493
    .local v0, "callback":Landroid/graphics/drawable/Drawable$Callback;
    if-eqz v0, :cond_0

    .line 494
    invoke-interface {v0, p0, p1, p2, p3}, Landroid/graphics/drawable/Drawable$Callback;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    .line 496
    :cond_0
    return-void
.end method

.method public abstract whitelist setAlpha(I)V
.end method

.method public whitelist setAutoMirrored(Z)V
    .locals 0
    .param p1, "mirrored"    # Z

    .line 940
    return-void
.end method

.method public whitelist setBounds(IIII)V
    .locals 2
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 250
    iget-object v0, p0, Landroid/graphics/drawable/Drawable;->mBounds:Landroid/graphics/Rect;

    .line 252
    .local v0, "oldBounds":Landroid/graphics/Rect;
    sget-object v1, Landroid/graphics/drawable/Drawable;->ZERO_BOUNDS_RECT:Landroid/graphics/Rect;

    if-ne v0, v1, :cond_0

    .line 253
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/graphics/drawable/Drawable;->mBounds:Landroid/graphics/Rect;

    move-object v0, v1

    .line 256
    :cond_0
    iget v1, v0, Landroid/graphics/Rect;->left:I

    if-ne v1, p1, :cond_1

    iget v1, v0, Landroid/graphics/Rect;->top:I

    if-ne v1, p2, :cond_1

    iget v1, v0, Landroid/graphics/Rect;->right:I

    if-ne v1, p3, :cond_1

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    if-eq v1, p4, :cond_3

    .line 258
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 260
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 262
    :cond_2
    iget-object v1, p0, Landroid/graphics/drawable/Drawable;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 263
    iget-object v1, p0, Landroid/graphics/drawable/Drawable;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 265
    :cond_3
    return-void
.end method

.method public whitelist setBounds(Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 272
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 273
    return-void
.end method

.method public final whitelist setCallback(Landroid/graphics/drawable/Drawable$Callback;)V
    .locals 1
    .param p1, "cb"    # Landroid/graphics/drawable/Drawable$Callback;

    .line 450
    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Landroid/graphics/drawable/Drawable;->mCallback:Ljava/lang/ref/WeakReference;

    .line 451
    return-void
.end method

.method public whitelist setChangingConfigurations(I)V
    .locals 0
    .param p1, "configs"    # I

    .line 346
    iput p1, p0, Landroid/graphics/drawable/Drawable;->mChangingConfigurations:I

    .line 347
    return-void
.end method

.method public whitelist setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V
    .locals 2
    .param p1, "color"    # I
    .param p2, "mode"    # Landroid/graphics/PorterDuff$Mode;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 625
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/PorterDuffColorFilter;

    if-eqz v0, :cond_0

    .line 626
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    check-cast v0, Landroid/graphics/PorterDuffColorFilter;

    .line 627
    .local v0, "existing":Landroid/graphics/PorterDuffColorFilter;
    invoke-virtual {v0}, Landroid/graphics/PorterDuffColorFilter;->getColor()I

    move-result v1

    if-ne v1, p1, :cond_0

    invoke-virtual {v0}, Landroid/graphics/PorterDuffColorFilter;->getMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    if-ne v1, p2, :cond_0

    .line 628
    return-void

    .line 631
    .end local v0    # "existing":Landroid/graphics/PorterDuffColorFilter;
    :cond_0
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {v0, p1, p2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 632
    return-void
.end method

.method public abstract whitelist setColorFilter(Landroid/graphics/ColorFilter;)V
.end method

.method public whitelist setDither(Z)V
    .locals 0
    .param p1, "dither"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 374
    return-void
.end method

.method public whitelist setFilterBitmap(Z)V
    .locals 0
    .param p1, "filter"    # Z

    .line 386
    return-void
.end method

.method public whitelist setHotspot(FF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 751
    return-void
.end method

.method public whitelist setHotspotBounds(IIII)V
    .locals 0
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 763
    return-void
.end method

.method public final whitelist setLayoutDirection(I)Z
    .locals 1
    .param p1, "layoutDirection"    # I

    .line 539
    iget v0, p0, Landroid/graphics/drawable/Drawable;->mLayoutDirection:I

    if-eq v0, p1, :cond_0

    .line 540
    iput p1, p0, Landroid/graphics/drawable/Drawable;->mLayoutDirection:I

    .line 541
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->onLayoutDirectionChanged(I)Z

    move-result v0

    return v0

    .line 543
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final whitelist setLevel(I)Z
    .locals 1
    .param p1, "level"    # I

    .line 890
    iget v0, p0, Landroid/graphics/drawable/Drawable;->mLevel:I

    if-eq v0, p1, :cond_0

    .line 891
    iput p1, p0, Landroid/graphics/drawable/Drawable;->mLevel:I

    .line 892
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->onLevelChange(I)Z

    move-result v0

    return v0

    .line 894
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method final greylist-max-o setSrcDensityOverride(I)V
    .locals 0
    .param p1, "density"    # I

    .line 1506
    iput p1, p0, Landroid/graphics/drawable/Drawable;->mSrcDensityOverride:I

    .line 1507
    return-void
.end method

.method public whitelist setState([I)Z
    .locals 1
    .param p1, "stateSet"    # [I

    .line 838
    iget-object v0, p0, Landroid/graphics/drawable/Drawable;->mStateSet:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 839
    iput-object p1, p0, Landroid/graphics/drawable/Drawable;->mStateSet:[I

    .line 840
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->onStateChange([I)Z

    move-result v0

    return v0

    .line 842
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist setTint(I)V
    .locals 1
    .param p1, "tintColor"    # I

    .line 656
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 657
    return-void
.end method

.method public whitelist setTintBlendMode(Landroid/graphics/BlendMode;)V
    .locals 2
    .param p1, "blendMode"    # Landroid/graphics/BlendMode;

    .line 721
    iget-boolean v0, p0, Landroid/graphics/drawable/Drawable;->mSetBlendModeInvoked:Z

    if-nez v0, :cond_1

    .line 722
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/Drawable;->mSetBlendModeInvoked:Z

    .line 723
    invoke-static {p1}, Landroid/graphics/BlendMode;->blendModeToPorterDuffMode(Landroid/graphics/BlendMode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    .line 724
    .local v0, "mode":Landroid/graphics/PorterDuff$Mode;
    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    sget-object v1, Landroid/graphics/drawable/Drawable;->DEFAULT_TINT_MODE:Landroid/graphics/PorterDuff$Mode;

    :goto_0
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 725
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/graphics/drawable/Drawable;->mSetBlendModeInvoked:Z

    .line 727
    .end local v0    # "mode":Landroid/graphics/PorterDuff$Mode;
    :cond_1
    return-void
.end method

.method public whitelist setTintList(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .line 677
    return-void
.end method

.method public whitelist setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .line 697
    iget-boolean v0, p0, Landroid/graphics/drawable/Drawable;->mSetTintModeInvoked:Z

    if-nez v0, :cond_2

    .line 698
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/Drawable;->mSetTintModeInvoked:Z

    .line 699
    if-eqz p1, :cond_0

    iget v0, p1, Landroid/graphics/PorterDuff$Mode;->nativeInt:I

    invoke-static {v0}, Landroid/graphics/BlendMode;->fromValue(I)Landroid/graphics/BlendMode;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 700
    .local v0, "mode":Landroid/graphics/BlendMode;
    :goto_0
    if-eqz v0, :cond_1

    move-object v1, v0

    goto :goto_1

    :cond_1
    sget-object v1, Landroid/graphics/drawable/Drawable;->DEFAULT_BLEND_MODE:Landroid/graphics/BlendMode;

    :goto_1
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->setTintBlendMode(Landroid/graphics/BlendMode;)V

    .line 701
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/graphics/drawable/Drawable;->mSetTintModeInvoked:Z

    .line 703
    .end local v0    # "mode":Landroid/graphics/BlendMode;
    :cond_2
    return-void
.end method

.method public whitelist setVisible(ZZ)Z
    .locals 1
    .param p1, "visible"    # Z
    .param p2, "restart"    # Z

    .line 921
    iget-boolean v0, p0, Landroid/graphics/drawable/Drawable;->mVisible:Z

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 922
    .local v0, "changed":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 923
    iput-boolean p1, p0, Landroid/graphics/drawable/Drawable;->mVisible:Z

    .line 924
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 926
    :cond_1
    return v0
.end method

.method public greylist-max-o setXfermode(Landroid/graphics/Xfermode;)V
    .locals 0
    .param p1, "mode"    # Landroid/graphics/Xfermode;

    .line 587
    return-void
.end method

.method public whitelist unscheduleSelf(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "what"    # Ljava/lang/Runnable;

    .line 508
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    .line 509
    .local v0, "callback":Landroid/graphics/drawable/Drawable$Callback;
    if-eqz v0, :cond_0

    .line 510
    invoke-interface {v0, p0, p1}, Landroid/graphics/drawable/Drawable$Callback;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    .line 512
    :cond_0
    return-void
.end method

.method blacklist updateBlendModeFilter(Landroid/graphics/BlendModeColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/BlendMode;)Landroid/graphics/BlendModeColorFilter;
    .locals 2
    .param p1, "blendFilter"    # Landroid/graphics/BlendModeColorFilter;
    .param p2, "tint"    # Landroid/content/res/ColorStateList;
    .param p3, "blendMode"    # Landroid/graphics/BlendMode;

    .line 1630
    if-eqz p2, :cond_3

    if-nez p3, :cond_0

    goto :goto_1

    .line 1634
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 1635
    .local v0, "color":I
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/graphics/BlendModeColorFilter;->getColor()I

    move-result v1

    if-ne v1, v0, :cond_2

    .line 1636
    invoke-virtual {p1}, Landroid/graphics/BlendModeColorFilter;->getMode()Landroid/graphics/BlendMode;

    move-result-object v1

    if-eq v1, p3, :cond_1

    goto :goto_0

    .line 1639
    :cond_1
    return-object p1

    .line 1637
    :cond_2
    :goto_0
    new-instance v1, Landroid/graphics/BlendModeColorFilter;

    invoke-direct {v1, v0, p3}, Landroid/graphics/BlendModeColorFilter;-><init>(ILandroid/graphics/BlendMode;)V

    return-object v1

    .line 1631
    .end local v0    # "color":I
    :cond_3
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method greylist updateTintFilter(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
    .locals 2
    .param p1, "tintFilter"    # Landroid/graphics/PorterDuffColorFilter;
    .param p2, "tint"    # Landroid/content/res/ColorStateList;
    .param p3, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .line 1615
    if-eqz p2, :cond_3

    if-nez p3, :cond_0

    goto :goto_1

    .line 1619
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 1620
    .local v0, "color":I
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/graphics/PorterDuffColorFilter;->getColor()I

    move-result v1

    if-ne v1, v0, :cond_2

    .line 1621
    invoke-virtual {p1}, Landroid/graphics/PorterDuffColorFilter;->getMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    if-eq v1, p3, :cond_1

    goto :goto_0

    .line 1625
    :cond_1
    return-object p1

    .line 1622
    :cond_2
    :goto_0
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {v1, v0, p3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    return-object v1

    .line 1616
    .end local v0    # "color":I
    :cond_3
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method
