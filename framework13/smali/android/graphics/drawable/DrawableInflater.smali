.class public final Landroid/graphics/drawable/DrawableInflater;
.super Ljava/lang/Object;
.source "DrawableInflater.java"


# static fields
.field private static final greylist-max-o CONSTRUCTOR_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Constructor<",
            "+",
            "Landroid/graphics/drawable/Drawable;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final greylist-max-r mClassLoader:Ljava/lang/ClassLoader;

.field private final greylist-max-o mRes:Landroid/content/res/Resources;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/graphics/drawable/DrawableInflater;->CONSTRUCTOR_MAP:Ljava/util/HashMap;

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/res/Resources;Ljava/lang/ClassLoader;)V
    .locals 0
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "classLoader"    # Ljava/lang/ClassLoader;

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p1, p0, Landroid/graphics/drawable/DrawableInflater;->mRes:Landroid/content/res/Resources;

    .line 92
    iput-object p2, p0, Landroid/graphics/drawable/DrawableInflater;->mClassLoader:Ljava/lang/ClassLoader;

    .line 93
    return-void
.end method

.method private greylist-max-o inflateFromClass(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p1, "className"    # Ljava/lang/String;

    .line 225
    :try_start_0
    sget-object v0, Landroid/graphics/drawable/DrawableInflater;->CONSTRUCTOR_MAP:Ljava/util/HashMap;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    :try_start_1
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Constructor;

    .line 227
    .local v1, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Landroid/graphics/drawable/Drawable;>;"
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 228
    iget-object v3, p0, Landroid/graphics/drawable/DrawableInflater;->mClassLoader:Ljava/lang/ClassLoader;

    .line 229
    invoke-virtual {v3, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-class v4, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v3

    .line 230
    .local v3, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/graphics/drawable/Drawable;>;"
    new-array v4, v2, [Ljava/lang/Class;

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    move-object v1, v4

    .line 231
    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    .end local v3    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/graphics/drawable/Drawable;>;"
    :cond_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 234
    :try_start_2
    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object v0

    .line 233
    .end local v1    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Landroid/graphics/drawable/Drawable;>;"
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local p0    # "this":Landroid/graphics/drawable/DrawableInflater;
    .end local p1    # "className":Ljava/lang/String;
    :try_start_4
    throw v1
    :try_end_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 252
    .restart local p0    # "this":Landroid/graphics/drawable/DrawableInflater;
    .restart local p1    # "className":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 253
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Landroid/view/InflateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error inflating class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    .line 255
    .local v1, "ie":Landroid/view/InflateException;
    invoke-virtual {v1, v0}, Landroid/view/InflateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 256
    throw v1

    .line 246
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "ie":Landroid/view/InflateException;
    :catch_1
    move-exception v0

    .line 248
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v1, Landroid/view/InflateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Class not found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    .line 250
    .restart local v1    # "ie":Landroid/view/InflateException;
    invoke-virtual {v1, v0}, Landroid/view/InflateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 251
    throw v1

    .line 240
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    .end local v1    # "ie":Landroid/view/InflateException;
    :catch_2
    move-exception v0

    .line 242
    .local v0, "e":Ljava/lang/ClassCastException;
    new-instance v1, Landroid/view/InflateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Class is not a Drawable "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    .line 244
    .restart local v1    # "ie":Landroid/view/InflateException;
    invoke-virtual {v1, v0}, Landroid/view/InflateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 245
    throw v1

    .line 235
    .end local v0    # "e":Ljava/lang/ClassCastException;
    .end local v1    # "ie":Landroid/view/InflateException;
    :catch_3
    move-exception v0

    .line 236
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    new-instance v1, Landroid/view/InflateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error inflating class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    .line 238
    .restart local v1    # "ie":Landroid/view/InflateException;
    invoke-virtual {v1, v0}, Landroid/view/InflateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 239
    throw v1
.end method

.method private greylist-max-o inflateFromTag(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 176
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    goto/16 :goto_0

    :sswitch_0
    const-string v0, "animated-vector"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "animated-rotate"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xe

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "animated-image"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x13

    goto/16 :goto_1

    :sswitch_3
    const-string/jumbo v0, "selector"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto/16 :goto_1

    :sswitch_4
    const-string v0, "level-list"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto/16 :goto_1

    :sswitch_5
    const-string/jumbo v0, "shape"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto/16 :goto_1

    :sswitch_6
    const-string/jumbo v0, "scale"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    goto/16 :goto_1

    :sswitch_7
    const-string v0, "inset"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x10

    goto/16 :goto_1

    :sswitch_8
    const-string v0, "color"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto/16 :goto_1

    :sswitch_9
    const-string v0, "clip"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    goto/16 :goto_1

    :sswitch_a
    const-string v0, "layer-list"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_b
    const-string v0, "animated-selector"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_c
    const-string/jumbo v0, "vector"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto :goto_1

    :sswitch_d
    const-string/jumbo v0, "rotate"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xd

    goto :goto_1

    :sswitch_e
    const-string/jumbo v0, "ripple"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_f
    const-string v0, "bitmap"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x11

    goto :goto_1

    :sswitch_10
    const-string v0, "animation-list"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xf

    goto :goto_1

    :sswitch_11
    const-string/jumbo v0, "nine-patch"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x12

    goto :goto_1

    :sswitch_12
    const-string/jumbo v0, "transition"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_13
    const-string v0, "adaptive-icon"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 218
    const/4 v0, 0x0

    return-object v0

    .line 216
    :pswitch_0
    new-instance v0, Landroid/graphics/drawable/AnimatedImageDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/AnimatedImageDrawable;-><init>()V

    return-object v0

    .line 214
    :pswitch_1
    new-instance v0, Landroid/graphics/drawable/NinePatchDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/NinePatchDrawable;-><init>()V

    return-object v0

    .line 212
    :pswitch_2
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    return-object v0

    .line 210
    :pswitch_3
    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/InsetDrawable;-><init>()V

    return-object v0

    .line 208
    :pswitch_4
    new-instance v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    return-object v0

    .line 206
    :pswitch_5
    new-instance v0, Landroid/graphics/drawable/AnimatedRotateDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/AnimatedRotateDrawable;-><init>()V

    return-object v0

    .line 204
    :pswitch_6
    new-instance v0, Landroid/graphics/drawable/RotateDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/RotateDrawable;-><init>()V

    return-object v0

    .line 202
    :pswitch_7
    new-instance v0, Landroid/graphics/drawable/ClipDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/ClipDrawable;-><init>()V

    return-object v0

    .line 200
    :pswitch_8
    new-instance v0, Landroid/graphics/drawable/ScaleDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/ScaleDrawable;-><init>()V

    return-object v0

    .line 198
    :pswitch_9
    new-instance v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;-><init>()V

    return-object v0

    .line 196
    :pswitch_a
    new-instance v0, Landroid/graphics/drawable/VectorDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/VectorDrawable;-><init>()V

    return-object v0

    .line 194
    :pswitch_b
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    return-object v0

    .line 192
    :pswitch_c
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    return-object v0

    .line 190
    :pswitch_d
    new-instance v0, Landroid/graphics/drawable/AdaptiveIconDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/AdaptiveIconDrawable;-><init>()V

    return-object v0

    .line 188
    :pswitch_e
    new-instance v0, Landroid/graphics/drawable/RippleDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/RippleDrawable;-><init>()V

    return-object v0

    .line 186
    :pswitch_f
    new-instance v0, Landroid/graphics/drawable/TransitionDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/TransitionDrawable;-><init>()V

    return-object v0

    .line 184
    :pswitch_10
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/LayerDrawable;-><init>()V

    return-object v0

    .line 182
    :pswitch_11
    new-instance v0, Landroid/graphics/drawable/LevelListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/LevelListDrawable;-><init>()V

    return-object v0

    .line 180
    :pswitch_12
    new-instance v0, Landroid/graphics/drawable/AnimatedStateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/AnimatedStateListDrawable;-><init>()V

    return-object v0

    .line 178
    :pswitch_13
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x78aade90 -> :sswitch_13
        -0x66c492ab -> :sswitch_12
        -0x63a70093 -> :sswitch_11
        -0x5905b6b9 -> :sswitch_10
        -0x52c70ed1 -> :sswitch_f
        -0x377b49d0 -> :sswitch_e
        -0x372522a5 -> :sswitch_d
        -0x30e61ebd -> :sswitch_c
        -0x1e6b8b37 -> :sswitch_b
        -0x59d5866 -> :sswitch_a
        0x2ea350 -> :sswitch_9
        0x5a72f63 -> :sswitch_8
        0x5fb611d -> :sswitch_7
        0x683094a -> :sswitch_6
        0x6854fa1 -> :sswitch_5
        0x993c947 -> :sswitch_4
        0x4705f3df -> :sswitch_3
        0x55f3e0b1 -> :sswitch_2
        0x780890c5 -> :sswitch_1
        0x7e4794ad -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist inflateSpr(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/graphics/drawable/Drawable;
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 264
    const/4 v0, 0x0

    .line 265
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    const-string v1, "bitmap"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 266
    const/4 v1, 0x0

    .line 268
    .local v1, "isSpr":Z
    const-string v2, "http://schemas.android.com/apk/res/android"

    const-string/jumbo v3, "src"

    const/4 v4, 0x0

    invoke-interface {p3, v2, v3, v4}, Landroid/util/AttributeSet;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    .line 269
    .local v2, "id":I
    if-eqz v2, :cond_3

    .line 270
    const/4 v3, 0x0

    .line 272
    .local v3, "is":Ljava/io/InputStream;
    const/4 v5, 0x3

    new-array v6, v5, [B

    .line 274
    .local v6, "b":[B
    :try_start_0
    iget-object v7, p0, Landroid/graphics/drawable/DrawableInflater;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v7, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v7

    move-object v3, v7

    .line 275
    invoke-virtual {v3, v6, v4, v5}, Ljava/io/InputStream;->read([BII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 277
    if-eqz v3, :cond_0

    .line 278
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 282
    :cond_0
    aget-byte v5, v6, v4

    const/16 v7, 0x53

    const/4 v8, 0x1

    if-ne v5, v7, :cond_1

    aget-byte v5, v6, v8

    const/16 v7, 0x50

    if-ne v5, v7, :cond_1

    const/4 v5, 0x2

    aget-byte v5, v6, v5

    const/16 v7, 0x52

    if-ne v5, v7, :cond_1

    move v4, v8

    :cond_1
    move v1, v4

    goto :goto_0

    .line 277
    :catchall_0
    move-exception v4

    if-eqz v3, :cond_2

    .line 278
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 280
    :cond_2
    throw v4

    .line 285
    .end local v3    # "is":Ljava/io/InputStream;
    .end local v6    # "b":[B
    :cond_3
    :goto_0
    if-eqz v1, :cond_4

    .line 287
    :try_start_1
    const-string v3, "com.samsung.android.graphics.spr.SemPathRenderingDrawable"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 288
    .local v3, "spr":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v4

    .line 292
    .end local v3    # "spr":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_1

    .line 289
    :catch_0
    move-exception v3

    .line 290
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 291
    new-instance v4, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": unable to load spr."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 296
    .end local v1    # "isSpr":Z
    .end local v2    # "id":I
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_4
    :goto_1
    return-object v0
.end method

.method public static greylist-max-o loadDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I

    .line 66
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/graphics/drawable/DrawableInflater;->loadDrawable(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o loadDrawable(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;
    .param p2, "id"    # I

    .line 79
    invoke-virtual {p0, p2, p1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public greylist-max-o inflateFromXml(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 116
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/drawable/DrawableInflater;->inflateFromXmlForDensity(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method greylist-max-o inflateFromXmlForDensity(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "density"    # I
    .param p5, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 130
    const-string v0, "drawable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 131
    const/4 v0, 0x0

    const-string v1, "class"

    invoke-interface {p3, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 132
    if-eqz p1, :cond_0

    goto :goto_0

    .line 133
    :cond_0
    new-instance v0, Landroid/view/InflateException;

    const-string v1, "<drawable> tag must specify class attribute"

    invoke-direct {v0, v1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 137
    :cond_1
    :goto_0
    invoke-direct {p0, p1, p2, p3}, Landroid/graphics/drawable/DrawableInflater;->inflateSpr(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 138
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_2

    .line 139
    invoke-direct {p0, p1}, Landroid/graphics/drawable/DrawableInflater;->inflateFromTag(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 141
    :cond_2
    if-nez v0, :cond_3

    .line 142
    invoke-direct {p0, p1}, Landroid/graphics/drawable/DrawableInflater;->inflateFromClass(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 144
    :cond_3
    invoke-virtual {v0, p4}, Landroid/graphics/drawable/Drawable;->setSrcDensityOverride(I)V

    .line 145
    iget-object v1, p0, Landroid/graphics/drawable/DrawableInflater;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v0, v1, p2, p3, p5}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 146
    return-object v0
.end method

.method blacklist inflateFromXmlForOverrideDensity(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "overrideDensity"    # I
    .param p5, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 155
    const-string v0, "drawable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 156
    const/4 v0, 0x0

    const-string v1, "class"

    invoke-interface {p3, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 157
    if-eqz p1, :cond_0

    goto :goto_0

    .line 158
    :cond_0
    new-instance v0, Landroid/view/InflateException;

    const-string v1, "<drawable> tag must specify class attribute"

    invoke-direct {v0, v1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 162
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Landroid/graphics/drawable/DrawableInflater;->inflateFromTag(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 163
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_2

    .line 164
    invoke-direct {p0, p1}, Landroid/graphics/drawable/DrawableInflater;->inflateFromClass(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 166
    :cond_2
    instance-of v1, v0, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v1, :cond_3

    if-lez p4, :cond_3

    .line 167
    move-object v1, v0

    check-cast v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v1, p4}, Landroid/graphics/drawable/GradientDrawable;->setOverrideDensity(I)V

    .line 169
    :cond_3
    iget-object v1, p0, Landroid/graphics/drawable/DrawableInflater;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v0, v1, p2, p3, p5}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 170
    return-object v0
.end method
