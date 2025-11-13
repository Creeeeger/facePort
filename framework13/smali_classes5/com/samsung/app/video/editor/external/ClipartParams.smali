.class public Lcom/samsung/app/video/editor/external/ClipartParams;
.super Ljava/lang/Object;
.source "ClipartParams.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final blacklist TAG:Ljava/lang/String;

.field private static final whitelist serialVersionUID:J = 0x38ae5b706ff705f7L


# instance fields
.field private blacklist Filepath:Ljava/lang/String;

.field private blacklist clipartType:I

.field private blacklist clipart_height:I

.field private blacklist clipart_width:I

.field private blacklist clipart_x_pos:I

.field private blacklist clipart_y_pos:I

.field private blacklist mAnimationList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/app/video/editor/external/TextAnimationData;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mClipartType:Lcom/samsung/app/video/editor/external/ClipartType;

.field private blacklist mDefaultAlpha:F

.field private blacklist mDefaultRotate:F

.field private blacklist mDefaultScale:F

.field private blacklist mDefaultTranslateX:F

.field private blacklist mDefaultTranslateY:F

.field private blacklist mElementEndTime:I

.field private blacklist mElementStartTime:I

.field private blacklist mOrderLayer:I

.field private blacklist mPivotX:F

.field private blacklist mPivotY:F

.field private blacklist mScaleFactor:F

.field private blacklist mStoryboardEndFrame:I

.field private blacklist mStoryboardEndTime:I

.field private blacklist mStoryboardStartFrame:I

.field private blacklist mStoryboardStartTime:I

.field private blacklist mTransX:F

.field private blacklist mTransY:F


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 21
    const-class v0, Lcom/samsung/app/video/editor/external/ClipartParams;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/app/video/editor/external/ClipartParams;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 2

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    sget-object v0, Lcom/samsung/app/video/editor/external/ClipartType;->CLIP_TEXT:Lcom/samsung/app/video/editor/external/ClipartType;

    iput-object v0, p0, Lcom/samsung/app/video/editor/external/ClipartParams;->mClipartType:Lcom/samsung/app/video/editor/external/ClipartType;

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/app/video/editor/external/ClipartParams;->clipartType:I

    .line 46
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p0, Lcom/samsung/app/video/editor/external/ClipartParams;->mTransX:F

    .line 48
    iput v0, p0, Lcom/samsung/app/video/editor/external/ClipartParams;->mTransY:F

    .line 50
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/samsung/app/video/editor/external/ClipartParams;->mScaleFactor:F

    .line 62
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lcom/samsung/app/video/editor/external/ClipartParams;->mAnimationList:Ljava/util/List;

    .line 63
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/app/video/editor/external/ClipartParams;->mDefaultTranslateX:F

    .line 64
    iput v1, p0, Lcom/samsung/app/video/editor/external/ClipartParams;->mDefaultTranslateY:F

    .line 65
    iput v0, p0, Lcom/samsung/app/video/editor/external/ClipartParams;->mDefaultAlpha:F

    .line 66
    iput v0, p0, Lcom/samsung/app/video/editor/external/ClipartParams;->mDefaultScale:F

    .line 67
    iput v1, p0, Lcom/samsung/app/video/editor/external/ClipartParams;->mDefaultRotate:F

    .line 68
    sget-object v0, Lcom/samsung/app/video/editor/external/ClipartType;->CLIP_TEXT:Lcom/samsung/app/video/editor/external/ClipartType;

    iput-object v0, p0, Lcom/samsung/app/video/editor/external/ClipartParams;->mClipartType:Lcom/samsung/app/video/editor/external/ClipartType;

    .line 69
    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/ClipartType;->getValue()I

    move-result v0

    iput v0, p0, Lcom/samsung/app/video/editor/external/ClipartParams;->clipartType:I

    .line 70
    return-void
.end method

.method public constructor blacklist <init>(Lcom/samsung/app/video/editor/external/ClipartParams;)V
    .locals 1
    .param p1, "clipartParams"    # Lcom/samsung/app/video/editor/external/ClipartParams;

    .line 77
    invoke-direct {p0}, Lcom/samsung/app/video/editor/external/ClipartParams;-><init>()V

    .line 78
    const/4 v0, 0x0

    invoke-static {p1, p0, v0}, Lcom/samsung/app/video/editor/external/ClipartParams;->makeCopy(Lcom/samsung/app/video/editor/external/ClipartParams;Lcom/samsung/app/video/editor/external/ClipartParams;Z)V

    .line 79
    return-void
.end method

.method private static blacklist makeCopy(Lcom/samsung/app/video/editor/external/ClipartParams;Lcom/samsung/app/video/editor/external/ClipartParams;Z)V
    .locals 5
    .param p0, "orgParams"    # Lcom/samsung/app/video/editor/external/ClipartParams;
    .param p1, "newParams"    # Lcom/samsung/app/video/editor/external/ClipartParams;
    .param p2, "deepCopy"    # Z

    .line 88
    iget v0, p0, Lcom/samsung/app/video/editor/external/ClipartParams;->clipart_height:I

    iput v0, p1, Lcom/samsung/app/video/editor/external/ClipartParams;->clipart_height:I

    .line 89
    iget v0, p0, Lcom/samsung/app/video/editor/external/ClipartParams;->clipart_width:I

    iput v0, p1, Lcom/samsung/app/video/editor/external/ClipartParams;->clipart_width:I

    .line 90
    iget v0, p0, Lcom/samsung/app/video/editor/external/ClipartParams;->clipart_x_pos:I

    iput v0, p1, Lcom/samsung/app/video/editor/external/ClipartParams;->clipart_x_pos:I

    .line 91
    iget v0, p0, Lcom/samsung/app/video/editor/external/ClipartParams;->clipart_y_pos:I

    iput v0, p1, Lcom/samsung/app/video/editor/external/ClipartParams;->clipart_y_pos:I

    .line 93
    iget v0, p0, Lcom/samsung/app/video/editor/external/ClipartParams;->mDefaultTranslateX:F

    iput v0, p1, Lcom/samsung/app/video/editor/external/ClipartParams;->mDefaultTranslateX:F

    .line 94
    iget v0, p0, Lcom/samsung/app/video/editor/external/ClipartParams;->mDefaultTranslateY:F

    iput v0, p1, Lcom/samsung/app/video/editor/external/ClipartParams;->mDefaultTranslateY:F

    .line 95
    iget v0, p0, Lcom/samsung/app/video/editor/external/ClipartParams;->mDefaultAlpha:F

    iput v0, p1, Lcom/samsung/app/video/editor/external/ClipartParams;->mDefaultAlpha:F

    .line 96
    iget v0, p0, Lcom/samsung/app/video/editor/external/ClipartParams;->mDefaultScale:F

    iput v0, p1, Lcom/samsung/app/video/editor/external/ClipartParams;->mDefaultScale:F

    .line 97
    iget v0, p0, Lcom/samsung/app/video/editor/external/ClipartParams;->mDefaultRotate:F

    iput v0, p1, Lcom/samsung/app/video/editor/external/ClipartParams;->mDefaultRotate:F

    .line 98
    iget v0, p0, Lcom/samsung/app/video/editor/external/ClipartParams;->mPivotX:F

    iput v0, p1, Lcom/samsung/app/video/editor/external/ClipartParams;->mPivotX:F

    .line 99
    iget v0, p0, Lcom/samsung/app/video/editor/external/ClipartParams;->mPivotY:F

    iput v0, p1, Lcom/samsung/app/video/editor/external/ClipartParams;->mPivotY:F

    .line 100
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/ClipartParams;->mClipartType:Lcom/samsung/app/video/editor/external/ClipartType;

    iput-object v0, p1, Lcom/samsung/app/video/editor/external/ClipartParams;->mClipartType:Lcom/samsung/app/video/editor/external/ClipartType;

    .line 101
    iget v0, p0, Lcom/samsung/app/video/editor/external/ClipartParams;->clipartType:I

    iput v0, p1, Lcom/samsung/app/video/editor/external/ClipartParams;->clipartType:I

    .line 103
    iget v0, p0, Lcom/samsung/app/video/editor/external/ClipartParams;->mStoryboardStartFrame:I

    iput v0, p1, Lcom/samsung/app/video/editor/external/ClipartParams;->mStoryboardStartFrame:I

    .line 104
    iget v0, p0, Lcom/samsung/app/video/editor/external/ClipartParams;->mStoryboardEndFrame:I

    iput v0, p1, Lcom/samsung/app/video/editor/external/ClipartParams;->mStoryboardEndFrame:I

    .line 107
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/ClipartParams;->mAnimationList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 108
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p1, Lcom/samsung/app/video/editor/external/ClipartParams;->mAnimationList:Ljava/util/List;

    .line 109
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/ClipartParams;->mAnimationList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 110
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 111
    iget-object v2, p1, Lcom/samsung/app/video/editor/external/ClipartParams;->mAnimationList:Ljava/util/List;

    new-instance v3, Lcom/samsung/app/video/editor/external/TextAnimationData;

    iget-object v4, p0, Lcom/samsung/app/video/editor/external/ClipartParams;->mAnimationList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/app/video/editor/external/TextAnimationData;

    invoke-direct {v3, v4}, Lcom/samsung/app/video/editor/external/TextAnimationData;-><init>(Lcom/samsung/app/video/editor/external/TextAnimationData;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 114
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_0
    if-nez p2, :cond_1

    .line 115
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/ClipartParams;->Filepath:Ljava/lang/String;

    iput-object v0, p1, Lcom/samsung/app/video/editor/external/ClipartParams;->Filepath:Ljava/lang/String;

    .line 117
    :cond_1
    iget v0, p0, Lcom/samsung/app/video/editor/external/ClipartParams;->mOrderLayer:I

    iput v0, p1, Lcom/samsung/app/video/editor/external/ClipartParams;->mOrderLayer:I

    .line 118
    iget v0, p0, Lcom/samsung/app/video/editor/external/ClipartParams;->mTransX:F

    iput v0, p1, Lcom/samsung/app/video/editor/external/ClipartParams;->mTransX:F

    .line 119
    iget v0, p0, Lcom/samsung/app/video/editor/external/ClipartParams;->mTransY:F

    iput v0, p1, Lcom/samsung/app/video/editor/external/ClipartParams;->mTransY:F

    .line 120
    iget v0, p0, Lcom/samsung/app/video/editor/external/ClipartParams;->mScaleFactor:F

    iput v0, p1, Lcom/samsung/app/video/editor/external/ClipartParams;->mScaleFactor:F

    .line 122
    iget v0, p0, Lcom/samsung/app/video/editor/external/ClipartParams;->mStoryboardStartTime:I

    iput v0, p1, Lcom/samsung/app/video/editor/external/ClipartParams;->mStoryboardStartTime:I

    .line 123
    iget v0, p0, Lcom/samsung/app/video/editor/external/ClipartParams;->mStoryboardEndTime:I

    iput v0, p1, Lcom/samsung/app/video/editor/external/ClipartParams;->mStoryboardEndTime:I

    .line 124
    iget v0, p0, Lcom/samsung/app/video/editor/external/ClipartParams;->mElementStartTime:I

    iput v0, p1, Lcom/samsung/app/video/editor/external/ClipartParams;->mElementStartTime:I

    .line 125
    iget v0, p0, Lcom/samsung/app/video/editor/external/ClipartParams;->mElementEndTime:I

    iput v0, p1, Lcom/samsung/app/video/editor/external/ClipartParams;->mElementEndTime:I

    .line 126
    return-void
.end method


# virtual methods
.method public blacklist addAnimation(Lcom/samsung/app/video/editor/external/TextAnimationData;)V
    .locals 1
    .param p1, "animationData"    # Lcom/samsung/app/video/editor/external/TextAnimationData;

    .line 268
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/ClipartParams;->mAnimationList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 269
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/samsung/app/video/editor/external/ClipartParams;->mAnimationList:Ljava/util/List;

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/ClipartParams;->mAnimationList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 271
    return-void
.end method

.method public blacklist getAnimationList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/app/video/editor/external/TextAnimationData;",
            ">;"
        }
    .end annotation

    .line 274
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/ClipartParams;->mAnimationList:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getClipartHeight()I
    .locals 1

    .line 196
    iget v0, p0, Lcom/samsung/app/video/editor/external/ClipartParams;->clipart_height:I

    return v0
.end method

.method public blacklist getClipartType()Lcom/samsung/app/video/editor/external/ClipartType;
    .locals 1

    .line 300
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/ClipartParams;->mClipartType:Lcom/samsung/app/video/editor/external/ClipartType;

    return-object v0
.end method

.method public blacklist getClipartWidth()I
    .locals 1

    .line 200
    iget v0, p0, Lcom/samsung/app/video/editor/external/ClipartParams;->clipart_width:I

    return v0
.end method

.method public blacklist getClipartXPosition()I
    .locals 1

    .line 204
    iget v0, p0, Lcom/samsung/app/video/editor/external/ClipartParams;->clipart_x_pos:I

    return v0
.end method

.method public blacklist getClipartYPosition()I
    .locals 1

    .line 208
    iget v0, p0, Lcom/samsung/app/video/editor/external/ClipartParams;->clipart_y_pos:I

    return v0
.end method

.method public blacklist getDefaultAlpha()F
    .locals 1

    .line 226
    iget v0, p0, Lcom/samsung/app/video/editor/external/ClipartParams;->mDefaultAlpha:F

    return v0
.end method

.method public blacklist getDefaultRotate()F
    .locals 1

    .line 242
    iget v0, p0, Lcom/samsung/app/video/editor/external/ClipartParams;->mDefaultRotate:F

    return v0
.end method

.method public blacklist getDefaultScale()F
    .locals 1

    .line 234
    iget v0, p0, Lcom/samsung/app/video/editor/external/ClipartParams;->mDefaultScale:F

    return v0
.end method

.method public blacklist getDefaultTranslateX()F
    .locals 1

    .line 218
    iget v0, p0, Lcom/samsung/app/video/editor/external/ClipartParams;->mDefaultTranslateX:F

    return v0
.end method

.method public blacklist getDefaultTranslateY()F
    .locals 1

    .line 222
    iget v0, p0, Lcom/samsung/app/video/editor/external/ClipartParams;->mDefaultTranslateY:F

    return v0
.end method

.method public blacklist getElementEndTime()I
    .locals 1

    .line 331
    iget v0, p0, Lcom/samsung/app/video/editor/external/ClipartParams;->mElementEndTime:I

    return v0
.end method

.method public blacklist getElementStartTime()I
    .locals 1

    .line 317
    iget v0, p0, Lcom/samsung/app/video/editor/external/ClipartParams;->mElementStartTime:I

    return v0
.end method

.method public blacklist getFilePath()Ljava/lang/String;
    .locals 1

    .line 290
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/ClipartParams;->Filepath:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getOrderLayer()I
    .locals 1

    .line 309
    iget v0, p0, Lcom/samsung/app/video/editor/external/ClipartParams;->mOrderLayer:I

    return v0
.end method

.method public blacklist getPivotX()F
    .locals 1

    .line 255
    iget v0, p0, Lcom/samsung/app/video/editor/external/ClipartParams;->mPivotX:F

    return v0
.end method

.method public blacklist getPivotY()F
    .locals 1

    .line 259
    iget v0, p0, Lcom/samsung/app/video/editor/external/ClipartParams;->mPivotY:F

    return v0
.end method

.method public blacklist getStoryBoardEndTime()I
    .locals 1

    .line 360
    iget v0, p0, Lcom/samsung/app/video/editor/external/ClipartParams;->mStoryboardEndTime:I

    return v0
.end method

.method public blacklist getStoryBoardStartTime()I
    .locals 1

    .line 346
    iget v0, p0, Lcom/samsung/app/video/editor/external/ClipartParams;->mStoryboardStartTime:I

    return v0
.end method

.method public blacklist getStoryboardEndFrame()I
    .locals 1

    .line 182
    iget v0, p0, Lcom/samsung/app/video/editor/external/ClipartParams;->mStoryboardEndFrame:I

    return v0
.end method

.method public blacklist getStoryboardStartFrame()I
    .locals 1

    .line 168
    iget v0, p0, Lcom/samsung/app/video/editor/external/ClipartParams;->mStoryboardStartFrame:I

    return v0
.end method

.method public blacklist setClipartPosition(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 191
    iput p1, p0, Lcom/samsung/app/video/editor/external/ClipartParams;->clipart_x_pos:I

    .line 192
    iput p2, p0, Lcom/samsung/app/video/editor/external/ClipartParams;->clipart_y_pos:I

    .line 193
    return-void
.end method

.method public blacklist setClipartSize(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 186
    iput p1, p0, Lcom/samsung/app/video/editor/external/ClipartParams;->clipart_width:I

    .line 187
    iput p2, p0, Lcom/samsung/app/video/editor/external/ClipartParams;->clipart_height:I

    .line 188
    return-void
.end method

.method public blacklist setClipartType(Lcom/samsung/app/video/editor/external/ClipartType;)V
    .locals 2
    .param p1, "type"    # Lcom/samsung/app/video/editor/external/ClipartType;

    .line 294
    iput-object p1, p0, Lcom/samsung/app/video/editor/external/ClipartParams;->mClipartType:Lcom/samsung/app/video/editor/external/ClipartType;

    .line 295
    invoke-virtual {p1}, Lcom/samsung/app/video/editor/external/ClipartType;->getValue()I

    move-result v0

    iput v0, p0, Lcom/samsung/app/video/editor/external/ClipartParams;->clipartType:I

    .line 296
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " setClipartType : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/app/video/editor/external/ClipartParams;->mClipartType:Lcom/samsung/app/video/editor/external/ClipartType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ClipartParams"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    return-void
.end method

.method public blacklist setDefaultAlpha(F)V
    .locals 0
    .param p1, "defaultAlpha"    # F

    .line 230
    iput p1, p0, Lcom/samsung/app/video/editor/external/ClipartParams;->mDefaultAlpha:F

    .line 231
    return-void
.end method

.method public blacklist setDefaultRotate(F)V
    .locals 0
    .param p1, "defaultRotate"    # F

    .line 246
    iput p1, p0, Lcom/samsung/app/video/editor/external/ClipartParams;->mDefaultRotate:F

    .line 247
    return-void
.end method

.method public blacklist setDefaultScale(F)V
    .locals 0
    .param p1, "defaultScale"    # F

    .line 238
    iput p1, p0, Lcom/samsung/app/video/editor/external/ClipartParams;->mDefaultScale:F

    .line 239
    return-void
.end method

.method public blacklist setDefaultTransformations(FFFFFFF)V
    .locals 0
    .param p1, "alpha"    # F
    .param p2, "scale"    # F
    .param p3, "translateX"    # F
    .param p4, "translateY"    # F
    .param p5, "rotate"    # F
    .param p6, "pivotX"    # F
    .param p7, "pivotY"    # F

    .line 148
    iput p1, p0, Lcom/samsung/app/video/editor/external/ClipartParams;->mDefaultAlpha:F

    .line 149
    iput p5, p0, Lcom/samsung/app/video/editor/external/ClipartParams;->mDefaultRotate:F

    .line 150
    iput p2, p0, Lcom/samsung/app/video/editor/external/ClipartParams;->mDefaultScale:F

    .line 151
    iput p3, p0, Lcom/samsung/app/video/editor/external/ClipartParams;->mDefaultTranslateX:F

    .line 152
    iput p4, p0, Lcom/samsung/app/video/editor/external/ClipartParams;->mDefaultTranslateY:F

    .line 153
    iput p6, p0, Lcom/samsung/app/video/editor/external/ClipartParams;->mPivotX:F

    .line 154
    iput p7, p0, Lcom/samsung/app/video/editor/external/ClipartParams;->mPivotY:F

    .line 155
    return-void
.end method

.method public blacklist setDefaultTranslate(FF)V
    .locals 0
    .param p1, "defaultTranslateX"    # F
    .param p2, "defaultTranslateY"    # F

    .line 213
    iput p1, p0, Lcom/samsung/app/video/editor/external/ClipartParams;->mDefaultTranslateX:F

    .line 214
    iput p2, p0, Lcom/samsung/app/video/editor/external/ClipartParams;->mDefaultTranslateY:F

    .line 215
    return-void
.end method

.method public blacklist setElementEndTime(I)V
    .locals 0
    .param p1, "elementEndTime"    # I

    .line 338
    iput p1, p0, Lcom/samsung/app/video/editor/external/ClipartParams;->mElementEndTime:I

    .line 339
    return-void
.end method

.method public blacklist setElementStartTime(I)V
    .locals 0
    .param p1, "elementStartTime"    # I

    .line 324
    iput p1, p0, Lcom/samsung/app/video/editor/external/ClipartParams;->mElementStartTime:I

    .line 325
    return-void
.end method

.method public blacklist setFilepath(Ljava/lang/String;)V
    .locals 0
    .param p1, "filepath"    # Ljava/lang/String;

    .line 283
    iput-object p1, p0, Lcom/samsung/app/video/editor/external/ClipartParams;->Filepath:Ljava/lang/String;

    .line 284
    return-void
.end method

.method public blacklist setOrderLayer(I)V
    .locals 3
    .param p1, "orderLayer"    # I

    .line 304
    sget-object v0, Lcom/samsung/app/video/editor/external/ClipartParams;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setOrderLayer : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    iput p1, p0, Lcom/samsung/app/video/editor/external/ClipartParams;->mOrderLayer:I

    .line 306
    return-void
.end method

.method public blacklist setPivot(FF)V
    .locals 0
    .param p1, "pivotX"    # F
    .param p2, "pivotY"    # F

    .line 250
    iput p1, p0, Lcom/samsung/app/video/editor/external/ClipartParams;->mPivotX:F

    .line 251
    iput p2, p0, Lcom/samsung/app/video/editor/external/ClipartParams;->mPivotY:F

    .line 252
    return-void
.end method

.method public blacklist setStoryBoardEndTime(I)V
    .locals 0
    .param p1, "storyBoardEndTime"    # I

    .line 367
    iput p1, p0, Lcom/samsung/app/video/editor/external/ClipartParams;->mStoryboardEndTime:I

    .line 368
    return-void
.end method

.method public blacklist setStoryBoardStartTime(I)V
    .locals 0
    .param p1, "storyBoardStartTime"    # I

    .line 353
    iput p1, p0, Lcom/samsung/app/video/editor/external/ClipartParams;->mStoryboardStartTime:I

    .line 354
    return-void
.end method

.method public blacklist setStoryboardEndFrame(I)V
    .locals 0
    .param p1, "endFrame"    # I

    .line 175
    iput p1, p0, Lcom/samsung/app/video/editor/external/ClipartParams;->mStoryboardEndFrame:I

    .line 176
    return-void
.end method

.method public blacklist setStoryboardStartFrame(I)V
    .locals 0
    .param p1, "startFrame"    # I

    .line 161
    iput p1, p0, Lcom/samsung/app/video/editor/external/ClipartParams;->mStoryboardStartFrame:I

    .line 162
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 131
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0xa4

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 132
    .local v0, "strBuf":Ljava/lang/StringBuffer;
    const-string v1, "ClipartParams: ----->\nclipart_width: 10\nclipart_height: 10\nitext_start_time: 0\nitext_end_time: 90\nstoryboardStartTime: 100\nstoryboardEndTime: 100\nFilepath: filepath\n<---------\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 135
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
