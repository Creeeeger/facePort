.class public final Landroid/text/StaticLayout$Builder;
.super Ljava/lang/Object;
.source "StaticLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/StaticLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# static fields
.field private static final greylist-max-o sPool:Landroid/util/Pools$SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$SynchronizedPool<",
            "Landroid/text/StaticLayout$Builder;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private greylist-max-o mAddLastLineLineSpacing:Z

.field private greylist-max-o mAlignment:Landroid/text/Layout$Alignment;

.field private greylist-max-o mBreakStrategy:I

.field private greylist-max-o mEllipsize:Landroid/text/TextUtils$TruncateAt;

.field private greylist-max-o mEllipsizedWidth:I

.field private greylist-max-o mEnd:I

.field private greylist-max-o mFallbackLineSpacing:Z

.field private final greylist-max-o mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

.field private greylist-max-o mHyphenationFrequency:I

.field private greylist-max-o mIncludePad:Z

.field private greylist-max-o mJustificationMode:I

.field private greylist-max-o mLeftIndents:[I

.field private blacklist mLineBreakConfig:Landroid/graphics/text/LineBreakConfig;

.field private greylist-max-o mMaxLines:I

.field private greylist-max-o mPaint:Landroid/text/TextPaint;

.field private greylist-max-o mRightIndents:[I

.field private greylist-max-o mSpacingAdd:F

.field private greylist-max-o mSpacingMult:F

.field private greylist-max-o mStart:I

.field private greylist-max-o mText:Ljava/lang/CharSequence;

.field private greylist-max-o mTextDir:Landroid/text/TextDirectionHeuristic;

.field private greylist-max-o mWidth:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAddLastLineLineSpacing(Landroid/text/StaticLayout$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/text/StaticLayout$Builder;->mAddLastLineLineSpacing:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAlignment(Landroid/text/StaticLayout$Builder;)Landroid/text/Layout$Alignment;
    .locals 0

    iget-object p0, p0, Landroid/text/StaticLayout$Builder;->mAlignment:Landroid/text/Layout$Alignment;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBreakStrategy(Landroid/text/StaticLayout$Builder;)I
    .locals 0

    iget p0, p0, Landroid/text/StaticLayout$Builder;->mBreakStrategy:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmEllipsize(Landroid/text/StaticLayout$Builder;)Landroid/text/TextUtils$TruncateAt;
    .locals 0

    iget-object p0, p0, Landroid/text/StaticLayout$Builder;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmEllipsizedWidth(Landroid/text/StaticLayout$Builder;)I
    .locals 0

    iget p0, p0, Landroid/text/StaticLayout$Builder;->mEllipsizedWidth:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmEnd(Landroid/text/StaticLayout$Builder;)I
    .locals 0

    iget p0, p0, Landroid/text/StaticLayout$Builder;->mEnd:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFallbackLineSpacing(Landroid/text/StaticLayout$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/text/StaticLayout$Builder;->mFallbackLineSpacing:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFontMetricsInt(Landroid/text/StaticLayout$Builder;)Landroid/graphics/Paint$FontMetricsInt;
    .locals 0

    iget-object p0, p0, Landroid/text/StaticLayout$Builder;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHyphenationFrequency(Landroid/text/StaticLayout$Builder;)I
    .locals 0

    iget p0, p0, Landroid/text/StaticLayout$Builder;->mHyphenationFrequency:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIncludePad(Landroid/text/StaticLayout$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/text/StaticLayout$Builder;->mIncludePad:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmJustificationMode(Landroid/text/StaticLayout$Builder;)I
    .locals 0

    iget p0, p0, Landroid/text/StaticLayout$Builder;->mJustificationMode:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLeftIndents(Landroid/text/StaticLayout$Builder;)[I
    .locals 0

    iget-object p0, p0, Landroid/text/StaticLayout$Builder;->mLeftIndents:[I

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLineBreakConfig(Landroid/text/StaticLayout$Builder;)Landroid/graphics/text/LineBreakConfig;
    .locals 0

    iget-object p0, p0, Landroid/text/StaticLayout$Builder;->mLineBreakConfig:Landroid/graphics/text/LineBreakConfig;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMaxLines(Landroid/text/StaticLayout$Builder;)I
    .locals 0

    iget p0, p0, Landroid/text/StaticLayout$Builder;->mMaxLines:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPaint(Landroid/text/StaticLayout$Builder;)Landroid/text/TextPaint;
    .locals 0

    iget-object p0, p0, Landroid/text/StaticLayout$Builder;->mPaint:Landroid/text/TextPaint;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRightIndents(Landroid/text/StaticLayout$Builder;)[I
    .locals 0

    iget-object p0, p0, Landroid/text/StaticLayout$Builder;->mRightIndents:[I

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSpacingAdd(Landroid/text/StaticLayout$Builder;)F
    .locals 0

    iget p0, p0, Landroid/text/StaticLayout$Builder;->mSpacingAdd:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSpacingMult(Landroid/text/StaticLayout$Builder;)F
    .locals 0

    iget p0, p0, Landroid/text/StaticLayout$Builder;->mSpacingMult:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStart(Landroid/text/StaticLayout$Builder;)I
    .locals 0

    iget p0, p0, Landroid/text/StaticLayout$Builder;->mStart:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmText(Landroid/text/StaticLayout$Builder;)Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Landroid/text/StaticLayout$Builder;->mText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTextDir(Landroid/text/StaticLayout$Builder;)Landroid/text/TextDirectionHeuristic;
    .locals 0

    iget-object p0, p0, Landroid/text/StaticLayout$Builder;->mTextDir:Landroid/text/TextDirectionHeuristic;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmWidth(Landroid/text/StaticLayout$Builder;)I
    .locals 0

    iget p0, p0, Landroid/text/StaticLayout$Builder;->mWidth:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smrecycle(Landroid/text/StaticLayout$Builder;)V
    .locals 0

    invoke-static {p0}, Landroid/text/StaticLayout$Builder;->recycle(Landroid/text/StaticLayout$Builder;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 2

    .line 463
    new-instance v0, Landroid/util/Pools$SynchronizedPool;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/util/Pools$SynchronizedPool;-><init>(I)V

    sput-object v0, Landroid/text/StaticLayout$Builder;->sPool:Landroid/util/Pools$SynchronizedPool;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .locals 1

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 459
    sget-object v0, Landroid/graphics/text/LineBreakConfig;->NONE:Landroid/graphics/text/LineBreakConfig;

    iput-object v0, p0, Landroid/text/StaticLayout$Builder;->mLineBreakConfig:Landroid/graphics/text/LineBreakConfig;

    .line 461
    new-instance v0, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v0}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    iput-object v0, p0, Landroid/text/StaticLayout$Builder;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    .line 76
    return-void
.end method

.method public static whitelist obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;
    .locals 3
    .param p0, "source"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "paint"    # Landroid/text/TextPaint;
    .param p4, "width"    # I

    .line 92
    sget-object v0, Landroid/text/StaticLayout$Builder;->sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0}, Landroid/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/StaticLayout$Builder;

    .line 93
    .local v0, "b":Landroid/text/StaticLayout$Builder;
    if-nez v0, :cond_0

    .line 94
    new-instance v1, Landroid/text/StaticLayout$Builder;

    invoke-direct {v1}, Landroid/text/StaticLayout$Builder;-><init>()V

    move-object v0, v1

    .line 98
    :cond_0
    iput-object p0, v0, Landroid/text/StaticLayout$Builder;->mText:Ljava/lang/CharSequence;

    .line 99
    iput p1, v0, Landroid/text/StaticLayout$Builder;->mStart:I

    .line 100
    iput p2, v0, Landroid/text/StaticLayout$Builder;->mEnd:I

    .line 101
    iput-object p3, v0, Landroid/text/StaticLayout$Builder;->mPaint:Landroid/text/TextPaint;

    .line 102
    iput p4, v0, Landroid/text/StaticLayout$Builder;->mWidth:I

    .line 103
    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    iput-object v1, v0, Landroid/text/StaticLayout$Builder;->mAlignment:Landroid/text/Layout$Alignment;

    .line 104
    sget-object v1, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    iput-object v1, v0, Landroid/text/StaticLayout$Builder;->mTextDir:Landroid/text/TextDirectionHeuristic;

    .line 105
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Landroid/text/StaticLayout$Builder;->mSpacingMult:F

    .line 106
    const/4 v1, 0x0

    iput v1, v0, Landroid/text/StaticLayout$Builder;->mSpacingAdd:F

    .line 107
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/text/StaticLayout$Builder;->mIncludePad:Z

    .line 108
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/text/StaticLayout$Builder;->mFallbackLineSpacing:Z

    .line 109
    iput p4, v0, Landroid/text/StaticLayout$Builder;->mEllipsizedWidth:I

    .line 110
    const/4 v2, 0x0

    iput-object v2, v0, Landroid/text/StaticLayout$Builder;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    .line 111
    const v2, 0x7fffffff

    iput v2, v0, Landroid/text/StaticLayout$Builder;->mMaxLines:I

    .line 112
    iput v1, v0, Landroid/text/StaticLayout$Builder;->mBreakStrategy:I

    .line 113
    iput v1, v0, Landroid/text/StaticLayout$Builder;->mHyphenationFrequency:I

    .line 114
    iput v1, v0, Landroid/text/StaticLayout$Builder;->mJustificationMode:I

    .line 115
    sget-object v1, Landroid/graphics/text/LineBreakConfig;->NONE:Landroid/graphics/text/LineBreakConfig;

    iput-object v1, v0, Landroid/text/StaticLayout$Builder;->mLineBreakConfig:Landroid/graphics/text/LineBreakConfig;

    .line 116
    return-object v0
.end method

.method private static greylist-max-o recycle(Landroid/text/StaticLayout$Builder;)V
    .locals 1
    .param p0, "b"    # Landroid/text/StaticLayout$Builder;

    .line 124
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/text/StaticLayout$Builder;->mPaint:Landroid/text/TextPaint;

    .line 125
    iput-object v0, p0, Landroid/text/StaticLayout$Builder;->mText:Ljava/lang/CharSequence;

    .line 126
    iput-object v0, p0, Landroid/text/StaticLayout$Builder;->mLeftIndents:[I

    .line 127
    iput-object v0, p0, Landroid/text/StaticLayout$Builder;->mRightIndents:[I

    .line 128
    sget-object v0, Landroid/text/StaticLayout$Builder;->sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0, p0}, Landroid/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    .line 129
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/text/StaticLayout;
    .locals 2

    .line 434
    new-instance v0, Landroid/text/StaticLayout;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/text/StaticLayout;-><init>(Landroid/text/StaticLayout$Builder;Landroid/text/StaticLayout-IA;)V

    .line 435
    .local v0, "result":Landroid/text/StaticLayout;
    invoke-static {p0}, Landroid/text/StaticLayout$Builder;->recycle(Landroid/text/StaticLayout$Builder;)V

    .line 436
    return-object v0
.end method

.method greylist-max-o finish()V
    .locals 1

    .line 133
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/text/StaticLayout$Builder;->mText:Ljava/lang/CharSequence;

    .line 134
    iput-object v0, p0, Landroid/text/StaticLayout$Builder;->mPaint:Landroid/text/TextPaint;

    .line 135
    iput-object v0, p0, Landroid/text/StaticLayout$Builder;->mLeftIndents:[I

    .line 136
    iput-object v0, p0, Landroid/text/StaticLayout$Builder;->mRightIndents:[I

    .line 137
    return-void
.end method

.method greylist-max-o setAddLastLineLineSpacing(Z)Landroid/text/StaticLayout$Builder;
    .locals 0
    .param p1, "value"    # Z

    .line 403
    iput-boolean p1, p0, Landroid/text/StaticLayout$Builder;->mAddLastLineLineSpacing:Z

    .line 404
    return-object p0
.end method

.method public whitelist setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;
    .locals 0
    .param p1, "alignment"    # Landroid/text/Layout$Alignment;

    .line 202
    iput-object p1, p0, Landroid/text/StaticLayout$Builder;->mAlignment:Landroid/text/Layout$Alignment;

    .line 203
    return-object p0
.end method

.method public whitelist setBreakStrategy(I)Landroid/text/StaticLayout$Builder;
    .locals 0
    .param p1, "breakStrategy"    # I

    .line 335
    iput p1, p0, Landroid/text/StaticLayout$Builder;->mBreakStrategy:I

    .line 336
    return-object p0
.end method

.method public whitelist setEllipsize(Landroid/text/TextUtils$TruncateAt;)Landroid/text/StaticLayout$Builder;
    .locals 0
    .param p1, "ellipsize"    # Landroid/text/TextUtils$TruncateAt;

    .line 299
    iput-object p1, p0, Landroid/text/StaticLayout$Builder;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    .line 300
    return-object p0
.end method

.method public whitelist setEllipsizedWidth(I)Landroid/text/StaticLayout$Builder;
    .locals 0
    .param p1, "ellipsizedWidth"    # I

    .line 282
    iput p1, p0, Landroid/text/StaticLayout$Builder;->mEllipsizedWidth:I

    .line 283
    return-object p0
.end method

.method public whitelist setHyphenationFrequency(I)Landroid/text/StaticLayout$Builder;
    .locals 0
    .param p1, "hyphenationFrequency"    # I

    .line 358
    iput p1, p0, Landroid/text/StaticLayout$Builder;->mHyphenationFrequency:I

    .line 359
    return-object p0
.end method

.method public whitelist setIncludePad(Z)Landroid/text/StaticLayout$Builder;
    .locals 0
    .param p1, "includePad"    # Z

    .line 248
    iput-boolean p1, p0, Landroid/text/StaticLayout$Builder;->mIncludePad:Z

    .line 249
    return-object p0
.end method

.method public whitelist setIndents([I[I)Landroid/text/StaticLayout$Builder;
    .locals 0
    .param p1, "leftIndents"    # [I
    .param p2, "rightIndents"    # [I

    .line 372
    iput-object p1, p0, Landroid/text/StaticLayout$Builder;->mLeftIndents:[I

    .line 373
    iput-object p2, p0, Landroid/text/StaticLayout$Builder;->mRightIndents:[I

    .line 374
    return-object p0
.end method

.method public whitelist setJustificationMode(I)Landroid/text/StaticLayout$Builder;
    .locals 0
    .param p1, "justificationMode"    # I

    .line 391
    iput p1, p0, Landroid/text/StaticLayout$Builder;->mJustificationMode:I

    .line 392
    return-object p0
.end method

.method public whitelist setLineBreakConfig(Landroid/graphics/text/LineBreakConfig;)Landroid/text/StaticLayout$Builder;
    .locals 0
    .param p1, "lineBreakConfig"    # Landroid/graphics/text/LineBreakConfig;

    .line 419
    iput-object p1, p0, Landroid/text/StaticLayout$Builder;->mLineBreakConfig:Landroid/graphics/text/LineBreakConfig;

    .line 420
    return-object p0
.end method

.method public whitelist setLineSpacing(FF)Landroid/text/StaticLayout$Builder;
    .locals 0
    .param p1, "spacingAdd"    # F
    .param p2, "spacingMult"    # F

    .line 232
    iput p1, p0, Landroid/text/StaticLayout$Builder;->mSpacingAdd:F

    .line 233
    iput p2, p0, Landroid/text/StaticLayout$Builder;->mSpacingMult:F

    .line 234
    return-object p0
.end method

.method public whitelist setMaxLines(I)Landroid/text/StaticLayout$Builder;
    .locals 0
    .param p1, "maxLines"    # I

    .line 314
    iput p1, p0, Landroid/text/StaticLayout$Builder;->mMaxLines:I

    .line 315
    return-object p0
.end method

.method public greylist-max-o setPaint(Landroid/text/TextPaint;)Landroid/text/StaticLayout$Builder;
    .locals 0
    .param p1, "paint"    # Landroid/text/TextPaint;

    .line 173
    iput-object p1, p0, Landroid/text/StaticLayout$Builder;->mPaint:Landroid/text/TextPaint;

    .line 174
    return-object p0
.end method

.method public whitelist setText(Ljava/lang/CharSequence;)Landroid/text/StaticLayout$Builder;
    .locals 2
    .param p1, "source"    # Ljava/lang/CharSequence;

    .line 140
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Landroid/text/StaticLayout$Builder;->setText(Ljava/lang/CharSequence;II)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o setText(Ljava/lang/CharSequence;II)Landroid/text/StaticLayout$Builder;
    .locals 0
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 157
    iput-object p1, p0, Landroid/text/StaticLayout$Builder;->mText:Ljava/lang/CharSequence;

    .line 158
    iput p2, p0, Landroid/text/StaticLayout$Builder;->mStart:I

    .line 159
    iput p3, p0, Landroid/text/StaticLayout$Builder;->mEnd:I

    .line 160
    return-object p0
.end method

.method public whitelist setTextDirection(Landroid/text/TextDirectionHeuristic;)Landroid/text/StaticLayout$Builder;
    .locals 0
    .param p1, "textDir"    # Landroid/text/TextDirectionHeuristic;

    .line 216
    iput-object p1, p0, Landroid/text/StaticLayout$Builder;->mTextDir:Landroid/text/TextDirectionHeuristic;

    .line 217
    return-object p0
.end method

.method public whitelist setUseLineSpacingFromFallbacks(Z)Landroid/text/StaticLayout$Builder;
    .locals 0
    .param p1, "useLineSpacingFromFallbacks"    # Z

    .line 267
    iput-boolean p1, p0, Landroid/text/StaticLayout$Builder;->mFallbackLineSpacing:Z

    .line 268
    return-object p0
.end method

.method public greylist-max-o setWidth(I)Landroid/text/StaticLayout$Builder;
    .locals 1
    .param p1, "width"    # I

    .line 187
    iput p1, p0, Landroid/text/StaticLayout$Builder;->mWidth:I

    .line 188
    iget-object v0, p0, Landroid/text/StaticLayout$Builder;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    if-nez v0, :cond_0

    .line 189
    iput p1, p0, Landroid/text/StaticLayout$Builder;->mEllipsizedWidth:I

    .line 191
    :cond_0
    return-object p0
.end method
