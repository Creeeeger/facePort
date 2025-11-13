.class public Landroid/graphics/drawable/LayerDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "LayerDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/drawable/LayerDrawable$LayerState;,
        Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    }
.end annotation


# static fields
.field public static final whitelist INSET_UNDEFINED:I = -0x80000000

.field private static final greylist-max-o LOG_TAG:Ljava/lang/String; = "LayerDrawable"

.field public static final whitelist PADDING_MODE_NEST:I = 0x0

.field public static final whitelist PADDING_MODE_STACK:I = 0x1


# instance fields
.field private greylist-max-o mChildRequestedInvalidation:Z

.field private greylist-max-o mHotspotBounds:Landroid/graphics/Rect;

.field greylist mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

.field private greylist-max-o mMutated:Z

.field private blacklist mOverrideDensity:I

.field private greylist-max-o mPaddingB:[I

.field private greylist-max-o mPaddingL:[I

.field private greylist-max-o mPaddingR:[I

.field private greylist-max-o mPaddingT:[I

.field private greylist-max-o mSuspendChildInvalidation:Z

.field private final greylist-max-o mTmpContainer:Landroid/graphics/Rect;

.field private final greylist-max-o mTmpOutRect:Landroid/graphics/Rect;

.field private final greylist-max-o mTmpRect:Landroid/graphics/Rect;


# direct methods
.method constructor greylist-max-o <init>()V
    .locals 2

    .line 166
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Landroid/graphics/drawable/LayerDrawable$LayerState;

    invoke-direct {p0, v0, v0}, Landroid/graphics/drawable/LayerDrawable;-><init>(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/content/res/Resources;)V

    .line 167
    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/content/res/Resources;)V
    .locals 1
    .param p1, "state"    # Landroid/graphics/drawable/LayerDrawable$LayerState;
    .param p2, "res"    # Landroid/content/res/Resources;

    .line 173
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 110
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mTmpRect:Landroid/graphics/Rect;

    .line 111
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mTmpOutRect:Landroid/graphics/Rect;

    .line 112
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mTmpContainer:Landroid/graphics/Rect;

    .line 120
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/drawable/LayerDrawable;->mOverrideDensity:I

    .line 174
    invoke-virtual {p0, p1, p2}, Landroid/graphics/drawable/LayerDrawable;->createConstantState(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/content/res/Resources;)Landroid/graphics/drawable/LayerDrawable$LayerState;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    .line 175
    iget v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    if-lez v0, :cond_0

    .line 176
    invoke-virtual {p0}, Landroid/graphics/drawable/LayerDrawable;->ensurePadding()V

    .line 177
    invoke-virtual {p0}, Landroid/graphics/drawable/LayerDrawable;->refreshPadding()V

    .line 179
    :cond_0
    return-void
.end method

.method public constructor whitelist <init>([Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "layers"    # [Landroid/graphics/drawable/Drawable;

    .line 130
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/LayerDrawable$LayerState;)V

    .line 131
    return-void
.end method

.method constructor greylist-max-o <init>([Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/LayerDrawable$LayerState;)V
    .locals 7
    .param p1, "layers"    # [Landroid/graphics/drawable/Drawable;
    .param p2, "state"    # Landroid/graphics/drawable/LayerDrawable$LayerState;

    .line 141
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Landroid/graphics/drawable/LayerDrawable;-><init>(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/content/res/Resources;)V

    .line 143
    if-eqz p1, :cond_2

    .line 147
    array-length v0, p1

    .line 148
    .local v0, "length":I
    new-array v1, v0, [Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 149
    .local v1, "r":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 150
    new-instance v3, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v4, v4, Landroid/graphics/drawable/LayerDrawable$LayerState;->mDensity:I

    invoke-direct {v3, v4}, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;-><init>(I)V

    aput-object v3, v1, v2

    .line 151
    aget-object v3, p1, v2

    .line 152
    .local v3, "child":Landroid/graphics/drawable/Drawable;
    aget-object v4, v1, v2

    iput-object v3, v4, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 153
    if-eqz v3, :cond_0

    .line 154
    invoke-virtual {v3, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 155
    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v5, v4, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildrenChangingConfigurations:I

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v6

    or-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildrenChangingConfigurations:I

    .line 149
    .end local v3    # "child":Landroid/graphics/drawable/Drawable;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 158
    .end local v2    # "i":I
    :cond_1
    iget-object v2, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iput v0, v2, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    .line 159
    iget-object v2, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iput-object v1, v2, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 161
    invoke-virtual {p0}, Landroid/graphics/drawable/LayerDrawable;->ensurePadding()V

    .line 162
    invoke-virtual {p0}, Landroid/graphics/drawable/LayerDrawable;->refreshPadding()V

    .line 163
    return-void

    .line 144
    .end local v0    # "length":I
    .end local v1    # "r":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "layers must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o computeNestedPadding(Landroid/graphics/Rect;)V
    .locals 5
    .param p1, "padding"    # Landroid/graphics/Rect;

    .line 1289
    const/4 v0, 0x0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 1290
    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 1291
    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 1292
    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 1295
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 1296
    .local v0, "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v1, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    .line 1297
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 1298
    aget-object v3, v0, v2

    invoke-direct {p0, v2, v3}, Landroid/graphics/drawable/LayerDrawable;->refreshChildPadding(ILandroid/graphics/drawable/LayerDrawable$ChildDrawable;)Z

    .line 1300
    iget v3, p1, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingL:[I

    aget v4, v4, v2

    add-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Rect;->left:I

    .line 1301
    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingT:[I

    aget v4, v4, v2

    add-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Rect;->top:I

    .line 1302
    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingR:[I

    aget v4, v4, v2

    add-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Rect;->right:I

    .line 1303
    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingB:[I

    aget v4, v4, v2

    add-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Rect;->bottom:I

    .line 1297
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1305
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method private greylist-max-o computeStackedPadding(Landroid/graphics/Rect;)V
    .locals 5
    .param p1, "padding"    # Landroid/graphics/Rect;

    .line 1308
    const/4 v0, 0x0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 1309
    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 1310
    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 1311
    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 1314
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 1315
    .local v0, "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v1, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    .line 1316
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 1317
    aget-object v3, v0, v2

    invoke-direct {p0, v2, v3}, Landroid/graphics/drawable/LayerDrawable;->refreshChildPadding(ILandroid/graphics/drawable/LayerDrawable$ChildDrawable;)Z

    .line 1319
    iget v3, p1, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingL:[I

    aget v4, v4, v2

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p1, Landroid/graphics/Rect;->left:I

    .line 1320
    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingT:[I

    aget v4, v4, v2

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p1, Landroid/graphics/Rect;->top:I

    .line 1321
    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingR:[I

    aget v4, v4, v2

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p1, Landroid/graphics/Rect;->right:I

    .line 1322
    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingB:[I

    aget v4, v4, v2

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p1, Landroid/graphics/Rect;->bottom:I

    .line 1316
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1324
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method public static blacklist createForDensity(Landroid/content/res/Resources;II)Landroid/graphics/drawable/LayerDrawable;
    .locals 7
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "rid"    # I
    .param p2, "density"    # I

    .line 189
    const-string/jumbo v0, "parser error"

    const-string v1, "LayerDrawable"

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v2

    .line 190
    .local v2, "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-static {v2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v3

    .line 192
    .local v3, "attrs":Landroid/util/AttributeSet;
    :goto_0
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    move v5, v4

    .local v5, "type":I
    const/4 v6, 0x2

    if-eq v4, v6, :cond_0

    const/4 v4, 0x1

    if-eq v5, v4, :cond_0

    goto :goto_0

    .line 196
    :cond_0
    if-ne v5, v6, :cond_1

    .line 200
    new-instance v4, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/LayerDrawable;-><init>()V

    .line 201
    .local v4, "drawable":Landroid/graphics/drawable/LayerDrawable;
    iput p2, v4, Landroid/graphics/drawable/LayerDrawable;->mOverrideDensity:I

    .line 202
    invoke-virtual {v4, p0, v2, v3}, Landroid/graphics/drawable/LayerDrawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V

    .line 204
    return-object v4

    .line 197
    .end local v4    # "drawable":Landroid/graphics/drawable/LayerDrawable;
    :cond_1
    new-instance v4, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v6, "No start tag found"

    invoke-direct {v4, v6}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .end local p0    # "resources":Landroid/content/res/Resources;
    .end local p1    # "rid":I
    .end local p2    # "density":I
    throw v4
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v3    # "attrs":Landroid/util/AttributeSet;
    .end local v5    # "type":I
    .restart local p0    # "resources":Landroid/content/res/Resources;
    .restart local p1    # "rid":I
    .restart local p2    # "density":I
    :catch_0
    move-exception v2

    .line 208
    .local v2, "e":Ljava/io/IOException;
    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 205
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 206
    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 209
    .end local v2    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    nop

    .line 210
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private greylist-max-o createLayer(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    .locals 2
    .param p1, "dr"    # Landroid/graphics/drawable/Drawable;

    .line 543
    new-instance v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v1, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mDensity:I

    invoke-direct {v0, v1}, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;-><init>(I)V

    .line 544
    .local v0, "layer":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iput-object p1, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 545
    return-object v0
.end method

.method private greylist-max-o getFirstNonNullDrawable()Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 1471
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 1472
    .local v0, "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v1, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    .line 1473
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1474
    aget-object v3, v0, v2

    iget-object v3, v3, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 1475
    .local v3, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_0

    .line 1476
    return-object v3

    .line 1473
    .end local v3    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1479
    .end local v2    # "i":I
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method private greylist-max-o inflateLayers(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 10
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

    .line 299
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    .line 301
    .local v0, "state":Landroid/graphics/drawable/LayerDrawable$LayerState;
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    .line 304
    .local v1, "innerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    move v4, v3

    .local v4, "type":I
    if-eq v3, v2, :cond_9

    .line 305
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    move v5, v3

    .local v5, "depth":I
    if-ge v3, v1, :cond_1

    const/4 v3, 0x3

    if-eq v4, v3, :cond_9

    .line 306
    :cond_1
    const/4 v3, 0x2

    if-eq v4, v3, :cond_2

    .line 307
    goto :goto_0

    .line 310
    :cond_2
    if-gt v5, v1, :cond_0

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "item"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 311
    goto :goto_0

    .line 314
    :cond_3
    new-instance v6, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    iget v7, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mDensity:I

    invoke-direct {v6, v7}, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;-><init>(I)V

    .line 315
    .local v6, "layer":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    sget-object v7, Lcom/android/internal/R$styleable;->LayerDrawableItem:[I

    invoke-static {p1, p4, p3, v7}, Landroid/graphics/drawable/LayerDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 316
    .local v7, "a":Landroid/content/res/TypedArray;
    invoke-direct {p0, v6, v7}, Landroid/graphics/drawable/LayerDrawable;->updateLayerFromTypedArray(Landroid/graphics/drawable/LayerDrawable$ChildDrawable;Landroid/content/res/TypedArray;)V

    .line 317
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 323
    iget-object v8, v6, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v8, :cond_8

    iget-object v8, v6, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mThemeAttrs:[I

    const/4 v9, 0x4

    if-eqz v8, :cond_4

    iget-object v8, v6, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mThemeAttrs:[I

    aget v8, v8, v9

    if-nez v8, :cond_8

    .line 325
    :cond_4
    :goto_1
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    move v4, v8

    if-ne v8, v9, :cond_5

    goto :goto_1

    .line 327
    :cond_5
    if-ne v4, v3, :cond_7

    .line 335
    iget v3, p0, Landroid/graphics/drawable/LayerDrawable;->mOverrideDensity:I

    if-lez v3, :cond_6

    .line 336
    invoke-static {p1, p2, p3, v3, p4}, Landroid/graphics/drawable/Drawable;->createFromXmlForOverrideDensity(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, v6, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    .line 338
    :cond_6
    invoke-static {p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, v6, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 340
    :goto_2
    iget-object v3, v6, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 341
    iget v3, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildrenChangingConfigurations:I

    iget-object v8, v6, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 342
    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v8

    or-int/2addr v3, v8

    iput v3, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildrenChangingConfigurations:I

    goto :goto_3

    .line 328
    :cond_7
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, ": <item> tag requires a \'drawable\' attribute or child tag defining a drawable"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 345
    :cond_8
    :goto_3
    invoke-virtual {p0, v6}, Landroid/graphics/drawable/LayerDrawable;->addLayer(Landroid/graphics/drawable/LayerDrawable$ChildDrawable;)I

    .line 346
    .end local v6    # "layer":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    .end local v7    # "a":Landroid/content/res/TypedArray;
    goto/16 :goto_0

    .line 347
    .end local v5    # "depth":I
    :cond_9
    return-void
.end method

.method private greylist-max-o refreshChildPadding(ILandroid/graphics/drawable/LayerDrawable$ChildDrawable;)Z
    .locals 3
    .param p1, "i"    # I
    .param p2, "r"    # Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 1785
    iget-object v0, p2, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 1786
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mTmpRect:Landroid/graphics/Rect;

    .line 1787
    .local v0, "rect":Landroid/graphics/Rect;
    iget-object v1, p2, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1788
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingL:[I

    aget v2, v2, p1

    if-ne v1, v2, :cond_0

    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingT:[I

    aget v2, v2, p1

    if-ne v1, v2, :cond_0

    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingR:[I

    aget v2, v2, p1

    if-ne v1, v2, :cond_0

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingB:[I

    aget v2, v2, p1

    if-eq v1, v2, :cond_1

    .line 1790
    :cond_0
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingL:[I

    iget v2, v0, Landroid/graphics/Rect;->left:I

    aput v2, v1, p1

    .line 1791
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingT:[I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    aput v2, v1, p1

    .line 1792
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingR:[I

    iget v2, v0, Landroid/graphics/Rect;->right:I

    aput v2, v1, p1

    .line 1793
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingB:[I

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    aput v2, v1, p1

    .line 1794
    const/4 v1, 0x1

    return v1

    .line 1797
    .end local v0    # "rect":Landroid/graphics/Rect;
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private static greylist-max-o resolveGravity(IIIII)I
    .locals 1
    .param p0, "gravity"    # I
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "intrinsicWidth"    # I
    .param p4, "intrinsicHeight"    # I

    .line 1674
    invoke-static {p0}, Landroid/view/Gravity;->isHorizontal(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1675
    if-gez p1, :cond_0

    .line 1676
    or-int/lit8 p0, p0, 0x7

    goto :goto_0

    .line 1678
    :cond_0
    const v0, 0x800003

    or-int/2addr p0, v0

    .line 1682
    :cond_1
    :goto_0
    invoke-static {p0}, Landroid/view/Gravity;->isVertical(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1683
    if-gez p2, :cond_2

    .line 1684
    or-int/lit8 p0, p0, 0x70

    goto :goto_1

    .line 1686
    :cond_2
    or-int/lit8 p0, p0, 0x30

    .line 1693
    :cond_3
    :goto_1
    if-gez p1, :cond_4

    if-gez p3, :cond_4

    .line 1694
    or-int/lit8 p0, p0, 0x7

    .line 1697
    :cond_4
    if-gez p2, :cond_5

    if-gez p4, :cond_5

    .line 1698
    or-int/lit8 p0, p0, 0x70

    .line 1701
    :cond_5
    return p0
.end method

.method private greylist-max-o resumeChildInvalidation()V
    .locals 2

    .line 1034
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/drawable/LayerDrawable;->mSuspendChildInvalidation:Z

    .line 1036
    iget-boolean v1, p0, Landroid/graphics/drawable/LayerDrawable;->mChildRequestedInvalidation:Z

    if-eqz v1, :cond_0

    .line 1037
    iput-boolean v0, p0, Landroid/graphics/drawable/LayerDrawable;->mChildRequestedInvalidation:Z

    .line 1038
    invoke-virtual {p0}, Landroid/graphics/drawable/LayerDrawable;->invalidateSelf()V

    .line 1040
    :cond_0
    return-void
.end method

.method private greylist-max-o setLayerInsetInternal(IIIIIII)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I
    .param p6, "s"    # I
    .param p7, "e"    # I

    .line 978
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    aget-object v0, v0, p1

    .line 979
    .local v0, "childDrawable":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iput p2, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetL:I

    .line 980
    iput p3, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetT:I

    .line 981
    iput p4, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetR:I

    .line 982
    iput p5, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetB:I

    .line 983
    iput p6, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetS:I

    .line 984
    iput p7, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetE:I

    .line 985
    return-void
.end method

.method private greylist-max-o suspendChildInvalidation()V
    .locals 1

    .line 1024
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/LayerDrawable;->mSuspendChildInvalidation:Z

    .line 1025
    return-void
.end method

.method private greylist-max-o updateLayerBounds(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 1595
    :try_start_0
    invoke-direct {p0}, Landroid/graphics/drawable/LayerDrawable;->suspendChildInvalidation()V

    .line 1596
    invoke-direct {p0, p1}, Landroid/graphics/drawable/LayerDrawable;->updateLayerBoundsInternal(Landroid/graphics/Rect;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1598
    invoke-direct {p0}, Landroid/graphics/drawable/LayerDrawable;->resumeChildInvalidation()V

    .line 1599
    nop

    .line 1600
    return-void

    .line 1598
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Landroid/graphics/drawable/LayerDrawable;->resumeChildInvalidation()V

    .line 1599
    throw v0
.end method

.method private greylist-max-o updateLayerBoundsInternal(Landroid/graphics/Rect;)V
    .locals 32
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 1603
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 1604
    .local v2, "paddingL":I
    const/4 v3, 0x0

    .line 1605
    .local v3, "paddingT":I
    const/4 v4, 0x0

    .line 1606
    .local v4, "paddingR":I
    const/4 v5, 0x0

    .line 1608
    .local v5, "paddingB":I
    iget-object v12, v0, Landroid/graphics/drawable/LayerDrawable;->mTmpOutRect:Landroid/graphics/Rect;

    .line 1609
    .local v12, "outRect":Landroid/graphics/Rect;
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/LayerDrawable;->getLayoutDirection()I

    move-result v13

    .line 1610
    .local v13, "layoutDirection":I
    const/4 v6, 0x0

    const/4 v7, 0x1

    if-ne v13, v7, :cond_0

    move v8, v7

    goto :goto_0

    :cond_0
    move v8, v6

    :goto_0
    move v14, v8

    .line 1611
    .local v14, "isLayoutRtl":Z
    iget-object v8, v0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    invoke-static {v8}, Landroid/graphics/drawable/LayerDrawable$LayerState;->-$$Nest$fgetmPaddingMode(Landroid/graphics/drawable/LayerDrawable$LayerState;)I

    move-result v8

    if-nez v8, :cond_1

    move v6, v7

    :cond_1
    move v15, v6

    .line 1612
    .local v15, "isPaddingNested":Z
    iget-object v6, v0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v11, v6, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 1614
    .local v11, "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    const/4 v6, 0x0

    .local v6, "i":I
    iget-object v7, v0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v10, v7, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    move v9, v6

    .end local v6    # "i":I
    .local v9, "i":I
    .local v10, "count":I
    :goto_1
    if-ge v9, v10, :cond_a

    .line 1615
    aget-object v6, v11, v9

    .line 1616
    .local v6, "r":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget-object v8, v6, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 1617
    .local v8, "d":Landroid/graphics/drawable/Drawable;
    if-nez v8, :cond_2

    .line 1618
    move/from16 v17, v9

    move/from16 v18, v10

    move-object/from16 v19, v11

    move/from16 v25, v14

    move/from16 v16, v15

    goto/16 :goto_8

    .line 1621
    :cond_2
    iget v7, v6, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetT:I

    .line 1622
    .local v7, "insetT":I
    move/from16 v16, v15

    .end local v15    # "isPaddingNested":Z
    .local v16, "isPaddingNested":Z
    iget v15, v6, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetB:I

    .line 1626
    .local v15, "insetB":I
    if-eqz v14, :cond_3

    move/from16 v17, v9

    .end local v9    # "i":I
    .local v17, "i":I
    iget v9, v6, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetE:I

    goto :goto_2

    .end local v17    # "i":I
    .restart local v9    # "i":I
    :cond_3
    move/from16 v17, v9

    .end local v9    # "i":I
    .restart local v17    # "i":I
    iget v9, v6, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetS:I

    .line 1627
    .local v9, "insetRtlL":I
    :goto_2
    if-eqz v14, :cond_4

    move/from16 v18, v10

    .end local v10    # "count":I
    .local v18, "count":I
    iget v10, v6, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetS:I

    goto :goto_3

    .end local v18    # "count":I
    .restart local v10    # "count":I
    :cond_4
    move/from16 v18, v10

    .end local v10    # "count":I
    .restart local v18    # "count":I
    iget v10, v6, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetE:I

    .line 1628
    .local v10, "insetRtlR":I
    :goto_3
    move-object/from16 v19, v11

    .end local v11    # "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    .local v19, "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    const/high16 v11, -0x80000000

    if-ne v9, v11, :cond_5

    iget v11, v6, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetL:I

    goto :goto_4

    :cond_5
    move v11, v9

    :goto_4
    move/from16 v21, v11

    .line 1629
    .local v21, "insetL":I
    const/high16 v11, -0x80000000

    if-ne v10, v11, :cond_6

    iget v11, v6, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetR:I

    goto :goto_5

    :cond_6
    move v11, v10

    :goto_5
    move/from16 v20, v11

    .line 1633
    .local v20, "insetR":I
    iget-object v11, v0, Landroid/graphics/drawable/LayerDrawable;->mTmpContainer:Landroid/graphics/Rect;

    .line 1634
    .local v11, "container":Landroid/graphics/Rect;
    move/from16 v22, v9

    .end local v9    # "insetRtlL":I
    .local v22, "insetRtlL":I
    iget v9, v1, Landroid/graphics/Rect;->left:I

    add-int v9, v9, v21

    add-int/2addr v9, v2

    move/from16 v23, v10

    .end local v10    # "insetRtlR":I
    .local v23, "insetRtlR":I
    iget v10, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v10, v7

    add-int/2addr v10, v3

    move/from16 v24, v7

    .end local v7    # "insetT":I
    .local v24, "insetT":I
    iget v7, v1, Landroid/graphics/Rect;->right:I

    sub-int v7, v7, v20

    sub-int/2addr v7, v4

    move/from16 v25, v14

    .end local v14    # "isLayoutRtl":Z
    .local v25, "isLayoutRtl":Z
    iget v14, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v14, v15

    sub-int/2addr v14, v5

    invoke-virtual {v11, v9, v10, v7, v14}, Landroid/graphics/Rect;->set(IIII)V

    .line 1639
    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v14

    .line 1640
    .local v14, "intrinsicW":I
    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v10

    .line 1641
    .local v10, "intrinsicH":I
    iget v9, v6, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mWidth:I

    .line 1642
    .local v9, "layerW":I
    iget v7, v6, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mHeight:I

    .line 1643
    .local v7, "layerH":I
    iget v1, v6, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mGravity:I

    invoke-static {v1, v9, v7, v14, v10}, Landroid/graphics/drawable/LayerDrawable;->resolveGravity(IIIII)I

    move-result v1

    .line 1646
    .local v1, "gravity":I
    if-gez v9, :cond_7

    move/from16 v26, v14

    goto :goto_6

    :cond_7
    move/from16 v26, v9

    :goto_6
    move/from16 v27, v7

    .end local v7    # "layerH":I
    .local v27, "layerH":I
    move/from16 v7, v26

    .line 1647
    .local v7, "resolvedW":I
    if-gez v27, :cond_8

    move/from16 v26, v10

    goto :goto_7

    :cond_8
    move/from16 v26, v27

    :goto_7
    move/from16 v28, v14

    move-object v14, v8

    .end local v8    # "d":Landroid/graphics/drawable/Drawable;
    .local v14, "d":Landroid/graphics/drawable/Drawable;
    .local v28, "intrinsicW":I
    move/from16 v8, v26

    .line 1648
    .local v8, "resolvedH":I
    move-object/from16 v26, v6

    .end local v6    # "r":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    .local v26, "r":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    move v6, v1

    move/from16 v29, v9

    .end local v9    # "layerW":I
    .local v29, "layerW":I
    move-object v9, v11

    move/from16 v30, v10

    .end local v10    # "intrinsicH":I
    .local v30, "intrinsicH":I
    move-object v10, v12

    move-object/from16 v31, v11

    .end local v11    # "container":Landroid/graphics/Rect;
    .local v31, "container":Landroid/graphics/Rect;
    move v11, v13

    invoke-static/range {v6 .. v11}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    .line 1649
    invoke-virtual {v14, v12}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 1651
    if-eqz v16, :cond_9

    .line 1652
    iget-object v6, v0, Landroid/graphics/drawable/LayerDrawable;->mPaddingL:[I

    aget v6, v6, v17

    add-int/2addr v2, v6

    .line 1653
    iget-object v6, v0, Landroid/graphics/drawable/LayerDrawable;->mPaddingR:[I

    aget v6, v6, v17

    add-int/2addr v4, v6

    .line 1654
    iget-object v6, v0, Landroid/graphics/drawable/LayerDrawable;->mPaddingT:[I

    aget v6, v6, v17

    add-int/2addr v3, v6

    .line 1655
    iget-object v6, v0, Landroid/graphics/drawable/LayerDrawable;->mPaddingB:[I

    aget v6, v6, v17

    add-int/2addr v5, v6

    .line 1614
    .end local v1    # "gravity":I
    .end local v7    # "resolvedW":I
    .end local v8    # "resolvedH":I
    .end local v14    # "d":Landroid/graphics/drawable/Drawable;
    .end local v15    # "insetB":I
    .end local v20    # "insetR":I
    .end local v21    # "insetL":I
    .end local v22    # "insetRtlL":I
    .end local v23    # "insetRtlR":I
    .end local v24    # "insetT":I
    .end local v26    # "r":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    .end local v27    # "layerH":I
    .end local v28    # "intrinsicW":I
    .end local v29    # "layerW":I
    .end local v30    # "intrinsicH":I
    .end local v31    # "container":Landroid/graphics/Rect;
    :cond_9
    :goto_8
    add-int/lit8 v9, v17, 0x1

    move-object/from16 v1, p1

    move/from16 v15, v16

    move/from16 v10, v18

    move-object/from16 v11, v19

    move/from16 v14, v25

    .end local v17    # "i":I
    .local v9, "i":I
    goto/16 :goto_1

    .line 1658
    .end local v9    # "i":I
    .end local v16    # "isPaddingNested":Z
    .end local v18    # "count":I
    .end local v19    # "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    .end local v25    # "isLayoutRtl":Z
    .local v11, "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    .local v14, "isLayoutRtl":Z
    .local v15, "isPaddingNested":Z
    :cond_a
    return-void
.end method

.method private greylist-max-o updateLayerFromTypedArray(Landroid/graphics/drawable/LayerDrawable$ChildDrawable;Landroid/content/res/TypedArray;)V
    .locals 5
    .param p1, "layer"    # Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    .param p2, "a"    # Landroid/content/res/TypedArray;

    .line 397
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    .line 400
    .local v0, "state":Landroid/graphics/drawable/LayerDrawable$LayerState;
    iget v1, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildrenChangingConfigurations:I

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v2

    or-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildrenChangingConfigurations:I

    .line 403
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    move-result-object v1

    iput-object v1, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mThemeAttrs:[I

    .line 405
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v1

    .line 406
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 407
    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    .line 408
    .local v3, "attr":I
    packed-switch v3, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    .line 425
    :pswitch_1
    iget v4, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetE:I

    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    iput v4, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetE:I

    .line 426
    goto :goto_1

    .line 422
    :pswitch_2
    iget v4, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetS:I

    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    iput v4, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetS:I

    .line 423
    goto :goto_1

    .line 419
    :pswitch_3
    iget v4, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetB:I

    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    iput v4, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetB:I

    .line 420
    goto :goto_1

    .line 416
    :pswitch_4
    iget v4, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetR:I

    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    iput v4, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetR:I

    .line 417
    goto :goto_1

    .line 413
    :pswitch_5
    iget v4, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetT:I

    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    iput v4, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetT:I

    .line 414
    goto :goto_1

    .line 410
    :pswitch_6
    iget v4, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetL:I

    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    iput v4, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetL:I

    .line 411
    goto :goto_1

    .line 428
    :pswitch_7
    iget v4, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mWidth:I

    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mWidth:I

    .line 429
    goto :goto_1

    .line 431
    :pswitch_8
    iget v4, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mHeight:I

    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mHeight:I

    .line 432
    goto :goto_1

    .line 437
    :pswitch_9
    iget v4, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mId:I

    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mId:I

    goto :goto_1

    .line 434
    :pswitch_a
    iget v4, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mGravity:I

    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v4

    iput v4, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mGravity:I

    .line 435
    nop

    .line 406
    .end local v3    # "attr":I
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 442
    .end local v2    # "i":I
    :cond_0
    const/4 v2, 0x4

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 443
    .local v2, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_2

    .line 444
    iget-object v3, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_1

    .line 449
    iget-object v3, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 453
    :cond_1
    iput-object v2, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 454
    iget-object v3, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 455
    iget v3, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildrenChangingConfigurations:I

    iget-object v4, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 456
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v4

    or-int/2addr v3, v4

    iput v3, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildrenChangingConfigurations:I

    .line 458
    :cond_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private greylist-max-o updateStateFromTypedArray(Landroid/content/res/TypedArray;)V
    .locals 5
    .param p1, "a"    # Landroid/content/res/TypedArray;

    .line 353
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    .line 356
    .local v0, "state":Landroid/graphics/drawable/LayerDrawable$LayerState;
    iget v1, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChangingConfigurations:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v2

    or-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChangingConfigurations:I

    .line 359
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    move-result-object v1

    invoke-static {v0, v1}, Landroid/graphics/drawable/LayerDrawable$LayerState;->-$$Nest$fputmThemeAttrs(Landroid/graphics/drawable/LayerDrawable$LayerState;[I)V

    .line 361
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v1

    .line 362
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 363
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    .line 364
    .local v3, "attr":I
    packed-switch v3, :pswitch_data_0

    goto :goto_1

    .line 390
    :pswitch_0
    invoke-static {v0}, Landroid/graphics/drawable/LayerDrawable$LayerState;->-$$Nest$fgetmPaddingMode(Landroid/graphics/drawable/LayerDrawable$LayerState;)I

    move-result v4

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v4

    invoke-static {v0, v4}, Landroid/graphics/drawable/LayerDrawable$LayerState;->-$$Nest$fputmPaddingMode(Landroid/graphics/drawable/LayerDrawable$LayerState;I)V

    goto :goto_1

    .line 387
    :pswitch_1
    invoke-static {v0}, Landroid/graphics/drawable/LayerDrawable$LayerState;->-$$Nest$fgetmAutoMirrored(Landroid/graphics/drawable/LayerDrawable$LayerState;)Z

    move-result v4

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    invoke-static {v0, v4}, Landroid/graphics/drawable/LayerDrawable$LayerState;->-$$Nest$fputmAutoMirrored(Landroid/graphics/drawable/LayerDrawable$LayerState;Z)V

    .line 388
    goto :goto_1

    .line 384
    :pswitch_2
    iget v4, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingEnd:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    iput v4, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingEnd:I

    .line 385
    goto :goto_1

    .line 381
    :pswitch_3
    iget v4, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingStart:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    iput v4, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingStart:I

    .line 382
    goto :goto_1

    .line 366
    :pswitch_4
    iget v4, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mOpacityOverride:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mOpacityOverride:I

    .line 367
    goto :goto_1

    .line 372
    :pswitch_5
    iget v4, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingBottom:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    iput v4, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingBottom:I

    .line 373
    goto :goto_1

    .line 378
    :pswitch_6
    iget v4, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingRight:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    iput v4, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingRight:I

    .line 379
    goto :goto_1

    .line 369
    :pswitch_7
    iget v4, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingTop:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    iput v4, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingTop:I

    .line 370
    goto :goto_1

    .line 375
    :pswitch_8
    iget v4, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingLeft:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    iput v4, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingLeft:I

    .line 376
    nop

    .line 362
    .end local v3    # "attr":I
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 394
    .end local v2    # "i":I
    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
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


# virtual methods
.method public whitelist addLayer(Landroid/graphics/drawable/Drawable;)I
    .locals 2
    .param p1, "dr"    # Landroid/graphics/drawable/Drawable;

    .line 556
    invoke-direct {p0, p1}, Landroid/graphics/drawable/LayerDrawable;->createLayer(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    move-result-object v0

    .line 557
    .local v0, "layer":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/LayerDrawable;->addLayer(Landroid/graphics/drawable/LayerDrawable$ChildDrawable;)I

    move-result v1

    .line 558
    .local v1, "index":I
    invoke-virtual {p0}, Landroid/graphics/drawable/LayerDrawable;->ensurePadding()V

    .line 559
    invoke-direct {p0, v1, v0}, Landroid/graphics/drawable/LayerDrawable;->refreshChildPadding(ILandroid/graphics/drawable/LayerDrawable$ChildDrawable;)Z

    .line 560
    return v1
.end method

.method greylist-max-r addLayer(Landroid/graphics/drawable/LayerDrawable$ChildDrawable;)I
    .locals 6
    .param p1, "layer"    # Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 494
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    .line 495
    .local v0, "st":Landroid/graphics/drawable/LayerDrawable$LayerState;
    iget-object v1, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    array-length v1, v1

    goto :goto_0

    :cond_0
    move v1, v2

    .line 496
    .local v1, "N":I
    :goto_0
    iget v3, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    .line 497
    .local v3, "i":I
    if-lt v3, v1, :cond_2

    .line 498
    add-int/lit8 v4, v1, 0xa

    new-array v4, v4, [Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 499
    .local v4, "nu":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    if-lez v3, :cond_1

    .line 500
    iget-object v5, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    invoke-static {v5, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 503
    :cond_1
    iput-object v4, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 506
    .end local v4    # "nu":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    :cond_2
    iget-object v2, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    aput-object p1, v2, v3

    .line 507
    iget v2, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    .line 508
    invoke-virtual {v0}, Landroid/graphics/drawable/LayerDrawable$LayerState;->invalidateCache()V

    .line 509
    return v3
.end method

.method greylist-max-o addLayer(Landroid/graphics/drawable/Drawable;[IIIIII)Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    .locals 4
    .param p1, "dr"    # Landroid/graphics/drawable/Drawable;
    .param p2, "themeAttrs"    # [I
    .param p3, "id"    # I
    .param p4, "left"    # I
    .param p5, "top"    # I
    .param p6, "right"    # I
    .param p7, "bottom"    # I

    .line 525
    invoke-direct {p0, p1}, Landroid/graphics/drawable/LayerDrawable;->createLayer(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    move-result-object v0

    .line 526
    .local v0, "childDrawable":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iput p3, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mId:I

    .line 527
    iput-object p2, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mThemeAttrs:[I

    .line 528
    iget-object v1, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/LayerDrawable;->isAutoMirrored()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    .line 529
    iput p4, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetL:I

    .line 530
    iput p5, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetT:I

    .line 531
    iput p6, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetR:I

    .line 532
    iput p7, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetB:I

    .line 534
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/LayerDrawable;->addLayer(Landroid/graphics/drawable/LayerDrawable$ChildDrawable;)I

    .line 536
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v2, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildrenChangingConfigurations:I

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v3

    or-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildrenChangingConfigurations:I

    .line 537
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 539
    return-object v0
.end method

.method public whitelist applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 9
    .param p1, "t"    # Landroid/content/res/Resources$Theme;

    .line 251
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->applyTheme(Landroid/content/res/Resources$Theme;)V

    .line 253
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    .line 256
    .local v0, "state":Landroid/graphics/drawable/LayerDrawable$LayerState;
    iget v1, p0, Landroid/graphics/drawable/LayerDrawable;->mOverrideDensity:I

    if-lez v1, :cond_0

    .line 257
    iget v1, p0, Landroid/graphics/drawable/LayerDrawable;->mOverrideDensity:I

    .local v1, "density":I
    goto :goto_0

    .line 259
    .end local v1    # "density":I
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/Resources$Theme;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/graphics/drawable/Drawable;->resolveDensity(Landroid/content/res/Resources;I)I

    move-result v1

    .line 261
    .restart local v1    # "density":I
    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable$LayerState;->setDensity(I)V

    .line 263
    invoke-static {v0}, Landroid/graphics/drawable/LayerDrawable$LayerState;->-$$Nest$fgetmThemeAttrs(Landroid/graphics/drawable/LayerDrawable$LayerState;)[I

    move-result-object v2

    if-eqz v2, :cond_1

    .line 264
    invoke-static {v0}, Landroid/graphics/drawable/LayerDrawable$LayerState;->-$$Nest$fgetmThemeAttrs(Landroid/graphics/drawable/LayerDrawable$LayerState;)[I

    move-result-object v2

    sget-object v3, Lcom/android/internal/R$styleable;->LayerDrawable:[I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 266
    .local v2, "a":Landroid/content/res/TypedArray;
    invoke-direct {p0, v2}, Landroid/graphics/drawable/LayerDrawable;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    .line 267
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 270
    .end local v2    # "a":Landroid/content/res/TypedArray;
    :cond_1
    iget-object v2, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 271
    .local v2, "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget v3, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    .line 272
    .local v3, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v3, :cond_4

    .line 273
    aget-object v5, v2, v4

    .line 274
    .local v5, "layer":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    invoke-virtual {v5, v1}, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->setDensity(I)V

    .line 276
    iget-object v6, v5, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mThemeAttrs:[I

    if-eqz v6, :cond_2

    .line 277
    iget-object v6, v5, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mThemeAttrs:[I

    sget-object v7, Lcom/android/internal/R$styleable;->LayerDrawableItem:[I

    invoke-virtual {p1, v6, v7}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 279
    .local v6, "a":Landroid/content/res/TypedArray;
    invoke-direct {p0, v5, v6}, Landroid/graphics/drawable/LayerDrawable;->updateLayerFromTypedArray(Landroid/graphics/drawable/LayerDrawable$ChildDrawable;Landroid/content/res/TypedArray;)V

    .line 280
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 283
    .end local v6    # "a":Landroid/content/res/TypedArray;
    :cond_2
    iget-object v6, v5, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 284
    .local v6, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v6, :cond_3

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->canApplyTheme()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 285
    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->applyTheme(Landroid/content/res/Resources$Theme;)V

    .line 288
    iget v7, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildrenChangingConfigurations:I

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v8

    or-int/2addr v7, v8

    iput v7, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildrenChangingConfigurations:I

    .line 272
    .end local v5    # "layer":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    .end local v6    # "d":Landroid/graphics/drawable/Drawable;
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 291
    .end local v4    # "i":I
    :cond_4
    return-void
.end method

.method public whitelist canApplyTheme()Z
    .locals 1

    .line 462
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    invoke-virtual {v0}, Landroid/graphics/drawable/LayerDrawable$LayerState;->canApplyTheme()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->canApplyTheme()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public greylist-max-o clearMutated()V
    .locals 4

    .line 1854
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->clearMutated()V

    .line 1856
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 1857
    .local v0, "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v1, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    .line 1858
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1859
    aget-object v3, v0, v2

    iget-object v3, v3, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 1860
    .local v3, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_0

    .line 1861
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->clearMutated()V

    .line 1858
    .end local v3    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1864
    .end local v2    # "i":I
    :cond_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/graphics/drawable/LayerDrawable;->mMutated:Z

    .line 1865
    return-void
.end method

.method greylist-max-o createConstantState(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/content/res/Resources;)Landroid/graphics/drawable/LayerDrawable$LayerState;
    .locals 1
    .param p1, "state"    # Landroid/graphics/drawable/LayerDrawable$LayerState;
    .param p2, "res"    # Landroid/content/res/Resources;

    .line 182
    new-instance v0, Landroid/graphics/drawable/LayerDrawable$LayerState;

    invoke-direct {v0, p1, p0, p2}, Landroid/graphics/drawable/LayerDrawable$LayerState;-><init>(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/graphics/drawable/LayerDrawable;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method public whitelist draw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 1068
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 1069
    .local v0, "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v1, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    .line 1070
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1071
    aget-object v3, v0, v2

    iget-object v3, v3, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 1072
    .local v3, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_0

    .line 1073
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1070
    .end local v3    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1076
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method greylist ensurePadding()V
    .locals 2

    .line 1805
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    .line 1806
    .local v0, "N":I
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingL:[I

    if-eqz v1, :cond_0

    array-length v1, v1

    if-lt v1, v0, :cond_0

    .line 1807
    return-void

    .line 1810
    :cond_0
    new-array v1, v0, [I

    iput-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingL:[I

    .line 1811
    new-array v1, v0, [I

    iput-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingT:[I

    .line 1812
    new-array v1, v0, [I

    iput-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingR:[I

    .line 1813
    new-array v1, v0, [I

    iput-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingB:[I

    .line 1814
    return-void
.end method

.method public whitelist findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "id"    # I

    .line 574
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 575
    .local v0, "layers":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v1, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 576
    aget-object v2, v0, v1

    iget v2, v2, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mId:I

    if-ne v2, p1, :cond_0

    .line 577
    aget-object v2, v0, v1

    iget-object v2, v2, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-object v2

    .line 575
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 581
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist findIndexByLayerId(I)I
    .locals 5
    .param p1, "id"    # I

    .line 653
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 654
    .local v0, "layers":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v1, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    .line 655
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 656
    aget-object v3, v0, v2

    .line 657
    .local v3, "childDrawable":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget v4, v3, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mId:I

    if-ne v4, p1, :cond_0

    .line 658
    return v2

    .line 655
    .end local v3    # "childDrawable":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 662
    .end local v2    # "i":I
    :cond_1
    const/4 v2, -0x1

    return v2
.end method

.method public whitelist getAlpha()I
    .locals 2

    .line 1426
    invoke-direct {p0}, Landroid/graphics/drawable/LayerDrawable;->getFirstNonNullDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1427
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 1428
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v1

    return v1

    .line 1430
    :cond_0
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v1

    return v1
.end method

.method public whitelist getBottomPadding()I
    .locals 1

    .line 1285
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingBottom:I

    return v0
.end method

.method public whitelist getChangingConfigurations()I
    .locals 2

    .line 1080
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    invoke-virtual {v1}, Landroid/graphics/drawable/LayerDrawable$LayerState;->getChangingConfigurations()I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public whitelist getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 2

    .line 1826
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    invoke-virtual {v0}, Landroid/graphics/drawable/LayerDrawable$LayerState;->canConstantState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1827
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    invoke-virtual {p0}, Landroid/graphics/drawable/LayerDrawable;->getChangingConfigurations()I

    move-result v1

    iput v1, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChangingConfigurations:I

    .line 1828
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    return-object v0

    .line 1830
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "index"    # I

    .line 712
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    if-ge p1, v0, :cond_0

    .line 715
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    aget-object v0, v0, p1

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0

    .line 713
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public whitelist getEndPadding()I
    .locals 1

    .line 1251
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingEnd:I

    return v0
.end method

.method public whitelist getHotspotBounds(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "outRect"    # Landroid/graphics/Rect;

    .line 1378
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    .line 1379
    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 1381
    :cond_0
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->getHotspotBounds(Landroid/graphics/Rect;)V

    .line 1383
    :goto_0
    return-void
.end method

.method public whitelist getId(I)I
    .locals 1
    .param p1, "index"    # I

    .line 610
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    if-ge p1, v0, :cond_0

    .line 613
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    aget-object v0, v0, p1

    iget v0, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mId:I

    return v0

    .line 611
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public whitelist getIntrinsicHeight()I
    .locals 11

    .line 1749
    const/4 v0, -0x1

    .line 1750
    .local v0, "height":I
    const/4 v1, 0x0

    .line 1751
    .local v1, "padT":I
    const/4 v2, 0x0

    .line 1753
    .local v2, "padB":I
    iget-object v3, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    invoke-static {v3}, Landroid/graphics/drawable/LayerDrawable$LayerState;->-$$Nest$fgetmPaddingMode(Landroid/graphics/drawable/LayerDrawable$LayerState;)I

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 1754
    .local v3, "nest":Z
    :goto_0
    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v4, v4, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 1755
    .local v4, "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget-object v5, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v5, v5, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    .line 1756
    .local v5, "N":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v6, v5, :cond_6

    .line 1757
    aget-object v7, v4, v6

    .line 1758
    .local v7, "r":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget-object v8, v7, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v8, :cond_1

    .line 1759
    goto :goto_4

    .line 1764
    :cond_1
    iget v8, v7, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mHeight:I

    if-gez v8, :cond_2

    iget-object v8, v7, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    goto :goto_2

    :cond_2
    iget v8, v7, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mHeight:I

    .line 1765
    .local v8, "minHeight":I
    :goto_2
    if-gez v8, :cond_3

    const/4 v9, -0x1

    goto :goto_3

    :cond_3
    iget v9, v7, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetT:I

    add-int/2addr v9, v8

    iget v10, v7, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetB:I

    add-int/2addr v9, v10

    add-int/2addr v9, v1

    add-int/2addr v9, v2

    .line 1766
    .local v9, "h":I
    :goto_3
    if-le v9, v0, :cond_4

    .line 1767
    move v0, v9

    .line 1770
    :cond_4
    if-eqz v3, :cond_5

    .line 1771
    iget-object v10, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingT:[I

    aget v10, v10, v6

    add-int/2addr v1, v10

    .line 1772
    iget-object v10, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingB:[I

    aget v10, v10, v6

    add-int/2addr v2, v10

    .line 1756
    .end local v7    # "r":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    .end local v8    # "minHeight":I
    .end local v9    # "h":I
    :cond_5
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1776
    .end local v6    # "i":I
    :cond_6
    return v0
.end method

.method public whitelist getIntrinsicWidth()I
    .locals 17

    .line 1706
    move-object/from16 v0, p0

    const/4 v1, -0x1

    .line 1707
    .local v1, "width":I
    const/4 v2, 0x0

    .line 1708
    .local v2, "padL":I
    const/4 v3, 0x0

    .line 1710
    .local v3, "padR":I
    iget-object v4, v0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    invoke-static {v4}, Landroid/graphics/drawable/LayerDrawable$LayerState;->-$$Nest$fgetmPaddingMode(Landroid/graphics/drawable/LayerDrawable$LayerState;)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v4, :cond_0

    move v4, v6

    goto :goto_0

    :cond_0
    move v4, v5

    .line 1711
    .local v4, "nest":Z
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/LayerDrawable;->getLayoutDirection()I

    move-result v7

    if-ne v7, v6, :cond_1

    move v5, v6

    .line 1712
    .local v5, "isLayoutRtl":Z
    :cond_1
    iget-object v6, v0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v6, v6, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 1713
    .local v6, "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget-object v7, v0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v7, v7, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    .line 1714
    .local v7, "N":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-ge v8, v7, :cond_b

    .line 1715
    aget-object v9, v6, v8

    .line 1716
    .local v9, "r":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget-object v10, v9, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v10, :cond_2

    .line 1717
    goto :goto_8

    .line 1725
    :cond_2
    if-eqz v5, :cond_3

    iget v10, v9, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetE:I

    goto :goto_2

    :cond_3
    iget v10, v9, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetS:I

    .line 1726
    .local v10, "insetRtlL":I
    :goto_2
    if-eqz v5, :cond_4

    iget v11, v9, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetS:I

    goto :goto_3

    :cond_4
    iget v11, v9, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetE:I

    .line 1727
    .local v11, "insetRtlR":I
    :goto_3
    const/high16 v12, -0x80000000

    if-ne v10, v12, :cond_5

    iget v13, v9, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetL:I

    goto :goto_4

    :cond_5
    move v13, v10

    .line 1728
    .local v13, "insetL":I
    :goto_4
    if-ne v11, v12, :cond_6

    iget v12, v9, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetR:I

    goto :goto_5

    :cond_6
    move v12, v11

    .line 1732
    .local v12, "insetR":I
    :goto_5
    iget v14, v9, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mWidth:I

    if-gez v14, :cond_7

    iget-object v14, v9, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v14}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v14

    goto :goto_6

    :cond_7
    iget v14, v9, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mWidth:I

    .line 1733
    .local v14, "minWidth":I
    :goto_6
    if-gez v14, :cond_8

    const/4 v15, -0x1

    goto :goto_7

    :cond_8
    add-int v15, v14, v13

    add-int/2addr v15, v12

    add-int/2addr v15, v2

    add-int/2addr v15, v3

    .line 1734
    .local v15, "w":I
    :goto_7
    if-le v15, v1, :cond_9

    .line 1735
    move v1, v15

    .line 1738
    :cond_9
    if-eqz v4, :cond_a

    .line 1739
    move/from16 v16, v1

    .end local v1    # "width":I
    .local v16, "width":I
    iget-object v1, v0, Landroid/graphics/drawable/LayerDrawable;->mPaddingL:[I

    aget v1, v1, v8

    add-int/2addr v2, v1

    .line 1740
    iget-object v1, v0, Landroid/graphics/drawable/LayerDrawable;->mPaddingR:[I

    aget v1, v1, v8

    add-int/2addr v3, v1

    move/from16 v1, v16

    goto :goto_8

    .line 1738
    .end local v16    # "width":I
    .restart local v1    # "width":I
    :cond_a
    move/from16 v16, v1

    .line 1714
    .end local v9    # "r":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    .end local v10    # "insetRtlL":I
    .end local v11    # "insetRtlR":I
    .end local v12    # "insetR":I
    .end local v13    # "insetL":I
    .end local v14    # "minWidth":I
    .end local v15    # "w":I
    :goto_8
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1744
    .end local v8    # "i":I
    :cond_b
    return v1
.end method

.method public whitelist getLayerGravity(I)I
    .locals 2
    .param p1, "index"    # I

    .line 814
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    aget-object v0, v0, p1

    .line 815
    .local v0, "childDrawable":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget v1, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mGravity:I

    return v1
.end method

.method public whitelist getLayerHeight(I)I
    .locals 2
    .param p1, "index"    # I

    .line 777
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    aget-object v0, v0, p1

    .line 778
    .local v0, "childDrawable":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget v1, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mHeight:I

    return v1
.end method

.method public whitelist getLayerInsetBottom(I)I
    .locals 2
    .param p1, "index"    # I

    .line 931
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    aget-object v0, v0, p1

    .line 932
    .local v0, "childDrawable":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget v1, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetB:I

    return v1
.end method

.method public whitelist getLayerInsetEnd(I)I
    .locals 2
    .param p1, "index"    # I

    .line 973
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    aget-object v0, v0, p1

    .line 974
    .local v0, "childDrawable":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget v1, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetE:I

    return v1
.end method

.method public whitelist getLayerInsetLeft(I)I
    .locals 2
    .param p1, "index"    # I

    .line 871
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    aget-object v0, v0, p1

    .line 872
    .local v0, "childDrawable":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget v1, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetL:I

    return v1
.end method

.method public whitelist getLayerInsetRight(I)I
    .locals 2
    .param p1, "index"    # I

    .line 891
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    aget-object v0, v0, p1

    .line 892
    .local v0, "childDrawable":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget v1, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetR:I

    return v1
.end method

.method public whitelist getLayerInsetStart(I)I
    .locals 2
    .param p1, "index"    # I

    .line 952
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    aget-object v0, v0, p1

    .line 953
    .local v0, "childDrawable":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget v1, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetS:I

    return v1
.end method

.method public whitelist getLayerInsetTop(I)I
    .locals 2
    .param p1, "index"    # I

    .line 911
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    aget-object v0, v0, p1

    .line 912
    .local v0, "childDrawable":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget v1, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetT:I

    return v1
.end method

.method public whitelist getLayerWidth(I)I
    .locals 2
    .param p1, "index"    # I

    .line 756
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    aget-object v0, v0, p1

    .line 757
    .local v0, "childDrawable":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget v1, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mWidth:I

    return v1
.end method

.method public whitelist getLeftPadding()I
    .locals 1

    .line 1203
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingLeft:I

    return v0
.end method

.method public whitelist getNumberOfLayers()I
    .locals 1

    .line 622
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    return v0
.end method

.method public whitelist getOpacity()I
    .locals 1

    .line 1499
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mOpacityOverride:I

    if-eqz v0, :cond_0

    .line 1500
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mOpacityOverride:I

    return v0

    .line 1502
    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    invoke-virtual {v0}, Landroid/graphics/drawable/LayerDrawable$LayerState;->getOpacity()I

    move-result v0

    return v0
.end method

.method public whitelist getOutline(Landroid/graphics/Outline;)V
    .locals 5
    .param p1, "outline"    # Landroid/graphics/Outline;

    .line 1333
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 1334
    .local v0, "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v1, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    .line 1335
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1336
    aget-object v3, v0, v2

    iget-object v3, v3, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 1337
    .local v3, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_0

    .line 1338
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->getOutline(Landroid/graphics/Outline;)V

    .line 1339
    invoke-virtual {p1}, Landroid/graphics/Outline;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1340
    return-void

    .line 1335
    .end local v3    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1344
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method public whitelist getPadding(Landroid/graphics/Rect;)Z
    .locals 11
    .param p1, "padding"    # Landroid/graphics/Rect;

    .line 1085
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    .line 1086
    .local v0, "layerState":Landroid/graphics/drawable/LayerDrawable$LayerState;
    invoke-static {v0}, Landroid/graphics/drawable/LayerDrawable$LayerState;->-$$Nest$fgetmPaddingMode(Landroid/graphics/drawable/LayerDrawable$LayerState;)I

    move-result v1

    if-nez v1, :cond_0

    .line 1087
    invoke-direct {p0, p1}, Landroid/graphics/drawable/LayerDrawable;->computeNestedPadding(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 1089
    :cond_0
    invoke-direct {p0, p1}, Landroid/graphics/drawable/LayerDrawable;->computeStackedPadding(Landroid/graphics/Rect;)V

    .line 1092
    :goto_0
    iget v1, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingTop:I

    .line 1093
    .local v1, "paddingT":I
    iget v2, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingBottom:I

    .line 1097
    .local v2, "paddingB":I
    invoke-virtual {p0}, Landroid/graphics/drawable/LayerDrawable;->getLayoutDirection()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v3, v5, :cond_1

    move v3, v5

    goto :goto_1

    :cond_1
    move v3, v4

    .line 1098
    .local v3, "isLayoutRtl":Z
    :goto_1
    if-eqz v3, :cond_2

    iget v6, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingEnd:I

    goto :goto_2

    :cond_2
    iget v6, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingStart:I

    .line 1099
    .local v6, "paddingRtlL":I
    :goto_2
    if-eqz v3, :cond_3

    iget v7, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingStart:I

    goto :goto_3

    :cond_3
    iget v7, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingEnd:I

    .line 1100
    .local v7, "paddingRtlR":I
    :goto_3
    if-ltz v6, :cond_4

    move v8, v6

    goto :goto_4

    :cond_4
    iget v8, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingLeft:I

    .line 1101
    .local v8, "paddingL":I
    :goto_4
    if-ltz v7, :cond_5

    move v9, v7

    goto :goto_5

    :cond_5
    iget v9, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingRight:I

    .line 1105
    .local v9, "paddingR":I
    :goto_5
    if-ltz v8, :cond_6

    .line 1106
    iput v8, p1, Landroid/graphics/Rect;->left:I

    .line 1109
    :cond_6
    if-ltz v1, :cond_7

    .line 1110
    iput v1, p1, Landroid/graphics/Rect;->top:I

    .line 1113
    :cond_7
    if-ltz v9, :cond_8

    .line 1114
    iput v9, p1, Landroid/graphics/Rect;->right:I

    .line 1117
    :cond_8
    if-ltz v2, :cond_9

    .line 1118
    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    .line 1121
    :cond_9
    iget v10, p1, Landroid/graphics/Rect;->left:I

    if-nez v10, :cond_a

    iget v10, p1, Landroid/graphics/Rect;->top:I

    if-nez v10, :cond_a

    iget v10, p1, Landroid/graphics/Rect;->right:I

    if-nez v10, :cond_a

    iget v10, p1, Landroid/graphics/Rect;->bottom:I

    if-eqz v10, :cond_b

    :cond_a
    move v4, v5

    :cond_b
    return v4
.end method

.method public whitelist getPaddingMode()I
    .locals 1

    .line 1015
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    invoke-static {v0}, Landroid/graphics/drawable/LayerDrawable$LayerState;->-$$Nest$fgetmPaddingMode(Landroid/graphics/drawable/LayerDrawable$LayerState;)I

    move-result v0

    return v0
.end method

.method public whitelist getRightPadding()I
    .locals 1

    .line 1219
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingRight:I

    return v0
.end method

.method public whitelist getStartPadding()I
    .locals 1

    .line 1235
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingStart:I

    return v0
.end method

.method public whitelist getTopPadding()I
    .locals 1

    .line 1268
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingTop:I

    return v0
.end method

.method public whitelist hasFocusStateSpecified()Z
    .locals 1

    .line 1543
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    invoke-virtual {v0}, Landroid/graphics/drawable/LayerDrawable$LayerState;->hasFocusStateSpecified()Z

    move-result v0

    return v0
.end method

.method public whitelist inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 7
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

    .line 218
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 222
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    .line 225
    .local v0, "state":Landroid/graphics/drawable/LayerDrawable$LayerState;
    iget v1, p0, Landroid/graphics/drawable/LayerDrawable;->mOverrideDensity:I

    if-lez v1, :cond_0

    .line 226
    iget v1, p0, Landroid/graphics/drawable/LayerDrawable;->mOverrideDensity:I

    .local v1, "density":I
    goto :goto_0

    .line 228
    .end local v1    # "density":I
    :cond_0
    const/4 v1, 0x0

    invoke-static {p1, v1}, Landroid/graphics/drawable/Drawable;->resolveDensity(Landroid/content/res/Resources;I)I

    move-result v1

    .line 230
    .restart local v1    # "density":I
    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable$LayerState;->setDensity(I)V

    .line 232
    sget-object v2, Lcom/android/internal/R$styleable;->LayerDrawable:[I

    invoke-static {p1, p4, p3, v2}, Landroid/graphics/drawable/LayerDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 233
    .local v2, "a":Landroid/content/res/TypedArray;
    invoke-direct {p0, v2}, Landroid/graphics/drawable/LayerDrawable;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    .line 234
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 236
    iget-object v3, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 237
    .local v3, "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget v4, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    .line 238
    .local v4, "N":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v4, :cond_1

    .line 239
    aget-object v6, v3, v5

    .line 240
    .local v6, "layer":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    invoke-virtual {v6, v1}, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->setDensity(I)V

    .line 238
    .end local v6    # "layer":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 243
    .end local v5    # "i":I
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/LayerDrawable;->inflateLayers(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 245
    invoke-virtual {p0}, Landroid/graphics/drawable/LayerDrawable;->ensurePadding()V

    .line 246
    invoke-virtual {p0}, Landroid/graphics/drawable/LayerDrawable;->refreshPadding()V

    .line 247
    return-void
.end method

.method public whitelist invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .line 1044
    iget-boolean v0, p0, Landroid/graphics/drawable/LayerDrawable;->mSuspendChildInvalidation:Z

    if-eqz v0, :cond_0

    .line 1045
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/LayerDrawable;->mChildRequestedInvalidation:Z

    goto :goto_0

    .line 1050
    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    invoke-virtual {v0}, Landroid/graphics/drawable/LayerDrawable$LayerState;->invalidateCache()V

    .line 1052
    invoke-virtual {p0}, Landroid/graphics/drawable/LayerDrawable;->invalidateSelf()V

    .line 1054
    :goto_0
    return-void
.end method

.method public whitelist isAutoMirrored()Z
    .locals 1

    .line 1521
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    invoke-static {v0}, Landroid/graphics/drawable/LayerDrawable$LayerState;->-$$Nest$fgetmAutoMirrored(Landroid/graphics/drawable/LayerDrawable$LayerState;)Z

    move-result v0

    return v0
.end method

.method public whitelist isProjected()Z
    .locals 6

    .line 470
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->isProjected()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 471
    return v1

    .line 474
    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 475
    .local v0, "layers":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget-object v2, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v2, v2, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    .line 476
    .local v2, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 477
    aget-object v4, v0, v3

    iget-object v4, v4, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 478
    .local v4, "childDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->isProjected()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 479
    return v1

    .line 476
    .end local v4    # "childDrawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 483
    .end local v3    # "i":I
    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist isStateful()Z
    .locals 1

    .line 1538
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    invoke-virtual {v0}, Landroid/graphics/drawable/LayerDrawable$LayerState;->isStateful()Z

    move-result v0

    return v0
.end method

.method public whitelist jumpToCurrentState()V
    .locals 4

    .line 1526
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 1527
    .local v0, "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v1, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    .line 1528
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1529
    aget-object v3, v0, v2

    iget-object v3, v3, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 1530
    .local v3, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_0

    .line 1531
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 1528
    .end local v3    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1534
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method public whitelist mutate()Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 1835
    iget-boolean v0, p0, Landroid/graphics/drawable/LayerDrawable;->mMutated:Z

    if-nez v0, :cond_2

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_2

    .line 1836
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/graphics/drawable/LayerDrawable;->createConstantState(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/content/res/Resources;)Landroid/graphics/drawable/LayerDrawable$LayerState;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    .line 1837
    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 1838
    .local v0, "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v1, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    .line 1839
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1840
    aget-object v3, v0, v2

    iget-object v3, v3, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 1841
    .local v3, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_0

    .line 1842
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 1839
    .end local v3    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1845
    .end local v2    # "i":I
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/graphics/drawable/LayerDrawable;->mMutated:Z

    .line 1847
    .end local v0    # "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    .end local v1    # "N":I
    :cond_2
    return-object p0
.end method

.method protected whitelist onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 1590
    invoke-direct {p0, p1}, Landroid/graphics/drawable/LayerDrawable;->updateLayerBounds(Landroid/graphics/Rect;)V

    .line 1591
    return-void
.end method

.method public whitelist onLayoutDirectionChanged(I)Z
    .locals 6
    .param p1, "layoutDirection"    # I

    .line 1869
    const/4 v0, 0x0

    .line 1871
    .local v0, "changed":Z
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v1, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 1872
    .local v1, "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget-object v2, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v2, v2, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    .line 1873
    .local v2, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 1874
    aget-object v4, v1, v3

    iget-object v4, v4, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 1875
    .local v4, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_0

    .line 1876
    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    move-result v5

    or-int/2addr v0, v5

    .line 1873
    .end local v4    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1880
    .end local v3    # "i":I
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/LayerDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/graphics/drawable/LayerDrawable;->updateLayerBounds(Landroid/graphics/Rect;)V

    .line 1881
    return v0
.end method

.method protected whitelist onLevelChange(I)Z
    .locals 6
    .param p1, "level"    # I

    .line 1569
    const/4 v0, 0x0

    .line 1571
    .local v0, "changed":Z
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v1, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 1572
    .local v1, "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget-object v2, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v2, v2, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    .line 1573
    .local v2, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 1574
    aget-object v4, v1, v3

    iget-object v4, v4, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 1575
    .local v4, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_0

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1576
    aget-object v5, v1, v3

    invoke-direct {p0, v3, v5}, Landroid/graphics/drawable/LayerDrawable;->refreshChildPadding(ILandroid/graphics/drawable/LayerDrawable$ChildDrawable;)Z

    .line 1577
    const/4 v0, 0x1

    .line 1573
    .end local v4    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1581
    .end local v3    # "i":I
    :cond_1
    if-eqz v0, :cond_2

    .line 1582
    invoke-virtual {p0}, Landroid/graphics/drawable/LayerDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/graphics/drawable/LayerDrawable;->updateLayerBounds(Landroid/graphics/Rect;)V

    .line 1585
    :cond_2
    return v0
.end method

.method protected whitelist onStateChange([I)Z
    .locals 6
    .param p1, "state"    # [I

    .line 1548
    const/4 v0, 0x0

    .line 1550
    .local v0, "changed":Z
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v1, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 1551
    .local v1, "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget-object v2, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v2, v2, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    .line 1552
    .local v2, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 1553
    aget-object v4, v1, v3

    iget-object v4, v4, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 1554
    .local v4, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1555
    aget-object v5, v1, v3

    invoke-direct {p0, v3, v5}, Landroid/graphics/drawable/LayerDrawable;->refreshChildPadding(ILandroid/graphics/drawable/LayerDrawable$ChildDrawable;)Z

    .line 1556
    const/4 v0, 0x1

    .line 1552
    .end local v4    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1560
    .end local v3    # "i":I
    :cond_1
    if-eqz v0, :cond_2

    .line 1561
    invoke-virtual {p0}, Landroid/graphics/drawable/LayerDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/graphics/drawable/LayerDrawable;->updateLayerBounds(Landroid/graphics/Rect;)V

    .line 1564
    :cond_2
    return v0
.end method

.method greylist-max-o refreshPadding()V
    .locals 4

    .line 1817
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    .line 1818
    .local v0, "N":I
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v1, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 1819
    .local v1, "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 1820
    aget-object v3, v1, v2

    invoke-direct {p0, v2, v3}, Landroid/graphics/drawable/LayerDrawable;->refreshChildPadding(ILandroid/graphics/drawable/LayerDrawable$ChildDrawable;)Z

    .line 1819
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1822
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method public whitelist scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 0
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;
    .param p2, "what"    # Ljava/lang/Runnable;
    .param p3, "when"    # J

    .line 1058
    invoke-virtual {p0, p2, p3, p4}, Landroid/graphics/drawable/LayerDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 1059
    return-void
.end method

.method public whitelist setAlpha(I)V
    .locals 4
    .param p1, "alpha"    # I

    .line 1414
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 1415
    .local v0, "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v1, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    .line 1416
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1417
    aget-object v3, v0, v2

    iget-object v3, v3, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 1418
    .local v3, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_0

    .line 1419
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1416
    .end local v3    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1422
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method public whitelist setAutoMirrored(Z)V
    .locals 4
    .param p1, "mirrored"    # Z

    .line 1507
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    invoke-static {v0, p1}, Landroid/graphics/drawable/LayerDrawable$LayerState;->-$$Nest$fputmAutoMirrored(Landroid/graphics/drawable/LayerDrawable$LayerState;Z)V

    .line 1509
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 1510
    .local v0, "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v1, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    .line 1511
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1512
    aget-object v3, v0, v2

    iget-object v3, v3, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 1513
    .local v3, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_0

    .line 1514
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    .line 1511
    .end local v3    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1517
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method public whitelist setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 4
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .line 1436
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 1437
    .local v0, "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v1, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    .line 1438
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1439
    aget-object v3, v0, v2

    iget-object v3, v3, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 1440
    .local v3, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_0

    .line 1441
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1438
    .end local v3    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1444
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method public whitelist setDither(Z)V
    .locals 4
    .param p1, "dither"    # Z

    .line 1402
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 1403
    .local v0, "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v1, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    .line 1404
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1405
    aget-object v3, v0, v2

    iget-object v3, v3, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 1406
    .local v3, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_0

    .line 1407
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 1404
    .end local v3    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1410
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method public whitelist setDrawable(ILandroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 676
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    if-ge p1, v0, :cond_3

    .line 680
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 681
    .local v0, "layers":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    aget-object v1, v0, p1

    .line 682
    .local v1, "childDrawable":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget-object v2, v1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    .line 683
    if-eqz p2, :cond_0

    .line 684
    iget-object v2, v1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 685
    .local v2, "bounds":Landroid/graphics/Rect;
    invoke-virtual {p2, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 688
    .end local v2    # "bounds":Landroid/graphics/Rect;
    :cond_0
    iget-object v2, v1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 691
    :cond_1
    if-eqz p2, :cond_2

    .line 692
    invoke-virtual {p2, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 695
    :cond_2
    iput-object p2, v1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 696
    iget-object v2, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    invoke-virtual {v2}, Landroid/graphics/drawable/LayerDrawable$LayerState;->invalidateCache()V

    .line 698
    invoke-direct {p0, p1, v1}, Landroid/graphics/drawable/LayerDrawable;->refreshChildPadding(ILandroid/graphics/drawable/LayerDrawable$ChildDrawable;)Z

    .line 699
    return-void

    .line 677
    .end local v0    # "layers":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    .end local v1    # "childDrawable":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    :cond_3
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public whitelist setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z
    .locals 2
    .param p1, "id"    # I
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 634
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/LayerDrawable;->findIndexByLayerId(I)I

    move-result v0

    .line 635
    .local v0, "index":I
    if-gez v0, :cond_0

    .line 636
    const/4 v1, 0x0

    return v1

    .line 639
    :cond_0
    invoke-virtual {p0, v0, p2}, Landroid/graphics/drawable/LayerDrawable;->setDrawable(ILandroid/graphics/drawable/Drawable;)V

    .line 640
    const/4 v1, 0x1

    return v1
.end method

.method public whitelist setHotspot(FF)V
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 1348
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 1349
    .local v0, "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v1, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    .line 1350
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1351
    aget-object v3, v0, v2

    iget-object v3, v3, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 1352
    .local v3, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_0

    .line 1353
    invoke-virtual {v3, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 1350
    .end local v3    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1356
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method public whitelist setHotspotBounds(IIII)V
    .locals 4
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 1360
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 1361
    .local v0, "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v1, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    .line 1362
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1363
    aget-object v3, v0, v2

    iget-object v3, v3, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 1364
    .local v3, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_0

    .line 1365
    invoke-virtual {v3, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V

    .line 1362
    .end local v3    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1369
    .end local v2    # "i":I
    :cond_1
    iget-object v2, p0, Landroid/graphics/drawable/LayerDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    if-nez v2, :cond_2

    .line 1370
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, p1, p2, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v2, p0, Landroid/graphics/drawable/LayerDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    goto :goto_1

    .line 1372
    :cond_2
    invoke-virtual {v2, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 1374
    :goto_1
    return-void
.end method

.method public whitelist setId(II)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "id"    # I

    .line 595
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    aget-object v0, v0, p1

    iput p2, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mId:I

    .line 596
    return-void
.end method

.method public whitelist setLayerGravity(II)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "gravity"    # I

    .line 801
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    aget-object v0, v0, p1

    .line 802
    .local v0, "childDrawable":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iput p2, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mGravity:I

    .line 803
    return-void
.end method

.method public whitelist setLayerHeight(II)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "h"    # I

    .line 766
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    aget-object v0, v0, p1

    .line 767
    .local v0, "childDrawable":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iput p2, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mHeight:I

    .line 768
    return-void
.end method

.method public whitelist setLayerInset(IIIII)V
    .locals 8
    .param p1, "index"    # I
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 833
    const/high16 v6, -0x80000000

    const/high16 v7, -0x80000000

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v7}, Landroid/graphics/drawable/LayerDrawable;->setLayerInsetInternal(IIIIIII)V

    .line 834
    return-void
.end method

.method public whitelist setLayerInsetBottom(II)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "b"    # I

    .line 921
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    aget-object v0, v0, p1

    .line 922
    .local v0, "childDrawable":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iput p2, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetB:I

    .line 923
    return-void
.end method

.method public whitelist setLayerInsetEnd(II)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "e"    # I

    .line 963
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    aget-object v0, v0, p1

    .line 964
    .local v0, "childDrawable":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iput p2, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetE:I

    .line 965
    return-void
.end method

.method public whitelist setLayerInsetLeft(II)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "l"    # I

    .line 861
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    aget-object v0, v0, p1

    .line 862
    .local v0, "childDrawable":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iput p2, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetL:I

    .line 863
    return-void
.end method

.method public whitelist setLayerInsetRelative(IIIII)V
    .locals 8
    .param p1, "index"    # I
    .param p2, "s"    # I
    .param p3, "t"    # I
    .param p4, "e"    # I
    .param p5, "b"    # I

    .line 852
    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v3, p3

    move v5, p5

    move v6, p2

    move v7, p4

    invoke-direct/range {v0 .. v7}, Landroid/graphics/drawable/LayerDrawable;->setLayerInsetInternal(IIIIIII)V

    .line 853
    return-void
.end method

.method public whitelist setLayerInsetRight(II)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "r"    # I

    .line 881
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    aget-object v0, v0, p1

    .line 882
    .local v0, "childDrawable":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iput p2, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetR:I

    .line 883
    return-void
.end method

.method public whitelist setLayerInsetStart(II)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "s"    # I

    .line 941
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    aget-object v0, v0, p1

    .line 942
    .local v0, "childDrawable":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iput p2, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetS:I

    .line 943
    return-void
.end method

.method public whitelist setLayerInsetTop(II)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "t"    # I

    .line 901
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    aget-object v0, v0, p1

    .line 902
    .local v0, "childDrawable":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iput p2, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetT:I

    .line 903
    return-void
.end method

.method public whitelist setLayerSize(III)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "w"    # I
    .param p3, "h"    # I

    .line 734
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    aget-object v0, v0, p1

    .line 735
    .local v0, "childDrawable":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iput p2, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mWidth:I

    .line 736
    iput p3, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mHeight:I

    .line 737
    return-void
.end method

.method public whitelist setLayerWidth(II)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "w"    # I

    .line 745
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    aget-object v0, v0, p1

    .line 746
    .local v0, "childDrawable":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iput p2, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mWidth:I

    .line 747
    return-void
.end method

.method public whitelist setOpacity(I)V
    .locals 1
    .param p1, "opacity"    # I

    .line 1494
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iput p1, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mOpacityOverride:I

    .line 1495
    return-void
.end method

.method public whitelist setPadding(IIII)V
    .locals 2
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 1146
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    .line 1147
    .local v0, "layerState":Landroid/graphics/drawable/LayerDrawable$LayerState;
    iput p1, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingLeft:I

    .line 1148
    iput p2, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingTop:I

    .line 1149
    iput p3, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingRight:I

    .line 1150
    iput p4, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingBottom:I

    .line 1153
    const/4 v1, -0x1

    iput v1, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingStart:I

    .line 1154
    iput v1, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingEnd:I

    .line 1155
    return-void
.end method

.method public whitelist setPaddingMode(I)V
    .locals 1
    .param p1, "mode"    # I

    .line 1003
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    invoke-static {v0}, Landroid/graphics/drawable/LayerDrawable$LayerState;->-$$Nest$fgetmPaddingMode(Landroid/graphics/drawable/LayerDrawable$LayerState;)I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 1004
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    invoke-static {v0, p1}, Landroid/graphics/drawable/LayerDrawable$LayerState;->-$$Nest$fputmPaddingMode(Landroid/graphics/drawable/LayerDrawable$LayerState;I)V

    .line 1006
    :cond_0
    return-void
.end method

.method public whitelist setPaddingRelative(IIII)V
    .locals 2
    .param p1, "start"    # I
    .param p2, "top"    # I
    .param p3, "end"    # I
    .param p4, "bottom"    # I

    .line 1179
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    .line 1180
    .local v0, "layerState":Landroid/graphics/drawable/LayerDrawable$LayerState;
    iput p1, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingStart:I

    .line 1181
    iput p2, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingTop:I

    .line 1182
    iput p3, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingEnd:I

    .line 1183
    iput p4, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingBottom:I

    .line 1186
    const/4 v1, -0x1

    iput v1, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingLeft:I

    .line 1187
    iput v1, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingRight:I

    .line 1188
    return-void
.end method

.method public whitelist setTintBlendMode(Landroid/graphics/BlendMode;)V
    .locals 4
    .param p1, "blendMode"    # Landroid/graphics/BlendMode;

    .line 1460
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 1461
    .local v0, "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v1, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    .line 1462
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1463
    aget-object v3, v0, v2

    iget-object v3, v3, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 1464
    .local v3, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_0

    .line 1465
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->setTintBlendMode(Landroid/graphics/BlendMode;)V

    .line 1462
    .end local v3    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1468
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method public whitelist setTintList(Landroid/content/res/ColorStateList;)V
    .locals 4
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .line 1448
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 1449
    .local v0, "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v1, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    .line 1450
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1451
    aget-object v3, v0, v2

    iget-object v3, v3, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 1452
    .local v3, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_0

    .line 1453
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 1450
    .end local v3    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1456
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method public whitelist setVisible(ZZ)Z
    .locals 5
    .param p1, "visible"    # Z
    .param p2, "restart"    # Z

    .line 1387
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v0

    .line 1388
    .local v0, "changed":Z
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v1, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 1389
    .local v1, "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget-object v2, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v2, v2, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    .line 1390
    .local v2, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 1391
    aget-object v4, v1, v3

    iget-object v4, v4, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 1392
    .local v4, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_0

    .line 1393
    invoke-virtual {v4, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 1390
    .end local v4    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1397
    .end local v3    # "i":I
    :cond_1
    return v0
.end method

.method public whitelist unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;
    .param p2, "what"    # Ljava/lang/Runnable;

    .line 1063
    invoke-virtual {p0, p2}, Landroid/graphics/drawable/LayerDrawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 1064
    return-void
.end method
