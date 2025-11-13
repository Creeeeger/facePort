.class Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;
.super Ljava/lang/Object;
.source "SemIndexScrollView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/widget/SemIndexScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IndexScroll"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;
    }
.end annotation


# static fields
.field public static final blacklist FIRST_LETTER_NOT_RELEVANT_NOT_MULTI_LANGUAGE:I = -0x1

.field public static final blacklist GRAVITY_INDEX_BAR_LEFT:I = 0x0

.field public static final blacklist GRAVITY_INDEX_BAR_RIGHT:I = 0x1

.field public static final blacklist LAST_LETTER_NOT_RELEVANT_NOT_MULTI_LANGUAGE:I = -0x1

.field public static final blacklist NO_SELECTED_INDEX:I = -0x1

.field private static final blacklist TAG:Ljava/lang/String; = "IndexScroll"


# instance fields
.field private final blacklist debug:Z

.field private blacklist mAdditionalSpace:I

.field private blacklist mAlphabetArray:[Ljava/lang/String;

.field private blacklist mAlphabetArrayFirstLetterIndex:I

.field private blacklist mAlphabetArrayLastLetterIndex:I

.field private blacklist mAlphabetArrayToDraw:[Ljava/lang/String;

.field private blacklist mAlphabetSize:I

.field private blacklist mAlphabetToDrawSize:I

.field private blacklist mBgDrawableDefault:Landroid/graphics/drawable/Drawable;

.field private blacklist mBgRect:Landroid/graphics/Rect;

.field private blacklist mBgRectParamsSet:Z

.field private blacklist mBgRectWidth:I

.field private blacklist mBgTintColor:I

.field private blacklist mBigText:Ljava/lang/String;

.field private blacklist mContentMinHeight:F

.field private blacklist mContentPadding:I

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mDotHeight:I

.field blacklist mFirstLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

.field private blacklist mHeight:I

.field private blacklist mIndexScrollPreviewRadius:F

.field private blacklist mIsAlphabetInit:Z

.field private blacklist mIsSetDimensions:Z

.field private blacklist mItemHeight:F

.field private blacklist mItemWidth:I

.field private blacklist mItemWidthGap:I

.field private blacklist mPaint:Landroid/graphics/Paint;

.field private blacklist mPosition:I

.field private blacklist mPreviewLimitY:F

.field private blacklist mScreenHeight:I

.field private blacklist mScrollBottom:I

.field private blacklist mScrollBottomMargin:I

.field private blacklist mScrollThumbAdditionalHeight:I

.field private blacklist mScrollThumbBgDrawable:Landroid/graphics/drawable/Drawable;

.field private blacklist mScrollThumbBgRect:Landroid/graphics/Rect;

.field private blacklist mScrollThumbBgRectHeight:I

.field private blacklist mScrollThumbBgRectPadding:I

.field private blacklist mScrollTop:I

.field private blacklist mScrollTopMargin:I

.field blacklist mSecondLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

.field private blacklist mSelectedIndex:I

.field private blacklist mSeparatorHeight:F

.field private blacklist mSmallText:Ljava/lang/String;

.field private blacklist mTextBounds:Landroid/graphics/Rect;

.field private blacklist mTextColorDimmed:I

.field private blacklist mTextSize:I

.field private blacklist mThumbColor:I

.field private blacklist mWidth:I

.field private blacklist mWidthShift:I

.field final synthetic blacklist this$0:Lcom/samsung/android/widget/SemIndexScrollView;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmScrollThumbBgDrawable(Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollThumbBgDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmThumbColor(Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mThumbColor:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmBgDrawableDefault(Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmTextColorDimmed(Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mTextColorDimmed:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmThumbColor(Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mThumbColor:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mgetColorWithAlpha(Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;IF)I
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->getColorWithAlpha(IF)I

    move-result p0

    return p0
.end method

.method public constructor blacklist <init>(Lcom/samsung/android/widget/SemIndexScrollView;Landroid/content/Context;II)V
    .locals 3
    .param p1, "this$0"    # Lcom/samsung/android/widget/SemIndexScrollView;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "height"    # I
    .param p4, "width"    # I

    .line 906
    iput-object p1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->this$0:Lcom/samsung/android/widget/SemIndexScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 754
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->debug:Z

    .line 778
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetArray:[Ljava/lang/String;

    .line 785
    const/4 v2, -0x1

    iput v2, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetArrayFirstLetterIndex:I

    .line 794
    iput v2, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetArrayLastLetterIndex:I

    .line 831
    iput v2, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSelectedIndex:I

    .line 849
    iput v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mPosition:I

    .line 852
    iput-object v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    .line 859
    iput-object v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollThumbBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 874
    iput v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mThumbColor:I

    .line 881
    iput-boolean v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mIsAlphabetInit:Z

    .line 907
    iput p3, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mHeight:I

    .line 908
    iput p4, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mWidth:I

    .line 909
    iput v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mWidthShift:I

    .line 910
    iput v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollTop:I

    .line 911
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mTextBounds:Landroid/graphics/Rect;

    .line 912
    iput-boolean v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mBgRectParamsSet:Z

    .line 913
    iput-object p2, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mContext:Landroid/content/Context;

    .line 914
    invoke-direct {p0}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->init()V

    .line 915
    return-void
.end method

.method public constructor blacklist <init>(Lcom/samsung/android/widget/SemIndexScrollView;Landroid/content/Context;III)V
    .locals 3
    .param p1, "this$0"    # Lcom/samsung/android/widget/SemIndexScrollView;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "height"    # I
    .param p4, "width"    # I
    .param p5, "position"    # I

    .line 924
    iput-object p1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->this$0:Lcom/samsung/android/widget/SemIndexScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 754
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->debug:Z

    .line 778
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetArray:[Ljava/lang/String;

    .line 785
    const/4 v2, -0x1

    iput v2, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetArrayFirstLetterIndex:I

    .line 794
    iput v2, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetArrayLastLetterIndex:I

    .line 831
    iput v2, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSelectedIndex:I

    .line 849
    iput v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mPosition:I

    .line 852
    iput-object v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    .line 859
    iput-object v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollThumbBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 874
    iput v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mThumbColor:I

    .line 881
    iput-boolean v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mIsAlphabetInit:Z

    .line 925
    iput p3, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mHeight:I

    .line 926
    iput p4, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mWidth:I

    .line 927
    iput p5, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mPosition:I

    .line 928
    iput v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mWidthShift:I

    .line 929
    iput v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollTop:I

    .line 930
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mTextBounds:Landroid/graphics/Rect;

    .line 931
    iput-boolean v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mBgRectParamsSet:Z

    .line 932
    iput-object p2, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mContext:Landroid/content/Context;

    .line 933
    invoke-direct {p0}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->init()V

    .line 934
    return-void
.end method

.method private blacklist adjustSeparatorHeight()V
    .locals 6

    .line 1143
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->this$0:Lcom/samsung/android/widget/SemIndexScrollView;

    invoke-static {v0}, Lcom/samsung/android/widget/SemIndexScrollView;->-$$Nest$fgetmNumberOfLanguages(Lcom/samsung/android/widget/SemIndexScrollView;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1144
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mHeight:I

    iget v2, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mDotHeight:I

    iget v3, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    mul-int/2addr v2, v3

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget v2, v2, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->separatorHeight:F

    .line 1145
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mHeight:I

    int-to-float v1, v1

    iput v1, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    goto/16 :goto_1

    .line 1150
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget v0, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    iget v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mHeight:I

    int-to-float v2, v1

    const v3, 0x3f19999a    # 0.6f

    mul-float/2addr v2, v3

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    .line 1151
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    int-to-float v1, v1

    mul-float/2addr v1, v3

    iget v2, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mDotHeight:I

    iget v4, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    mul-int/2addr v2, v4

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget v2, v2, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->separatorHeight:F

    .line 1152
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSecondLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mHeight:I

    int-to-float v1, v1

    const v2, 0x3ecccccd    # 0.4f

    mul-float/2addr v1, v2

    iget v4, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mDotHeight:I

    iget v5, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    mul-int/2addr v4, v5

    int-to-float v4, v4

    sub-float/2addr v1, v4

    iget-object v4, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSecondLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget v4, v4, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    int-to-float v4, v4

    div-float/2addr v1, v4

    iput v1, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->separatorHeight:F

    .line 1153
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mHeight:I

    int-to-float v1, v1

    mul-float/2addr v1, v3

    iput v1, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    .line 1154
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSecondLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mHeight:I

    int-to-float v1, v1

    mul-float/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    goto :goto_0

    .line 1155
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget v0, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    iget v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mHeight:I

    int-to-float v2, v1

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v2, v3

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_2

    .line 1156
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    int-to-float v1, v1

    mul-float/2addr v1, v3

    iget v2, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mDotHeight:I

    iget v4, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    mul-int/2addr v2, v4

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget v2, v2, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->separatorHeight:F

    .line 1157
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSecondLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mHeight:I

    int-to-float v1, v1

    mul-float/2addr v1, v3

    iget v2, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mDotHeight:I

    iget v4, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    mul-int/2addr v2, v4

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSecondLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget v2, v2, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->separatorHeight:F

    .line 1158
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget-object v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSecondLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget v2, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mHeight:I

    int-to-float v2, v2

    mul-float/2addr v2, v3

    iput v2, v1, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    iput v2, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    goto :goto_0

    .line 1160
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget v1, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    iget v2, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mDotHeight:I

    iget-object v3, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget v3, v3, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    mul-int/2addr v2, v3

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget v2, v2, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->separatorHeight:F

    .line 1161
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSecondLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget v1, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    iget v2, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mDotHeight:I

    iget-object v3, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSecondLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget v3, v3, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    mul-int/2addr v2, v3

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSecondLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget v2, v2, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->separatorHeight:F

    .line 1165
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSecondLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget v0, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    const/4 v1, 0x0

    if-nez v0, :cond_3

    .line 1166
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget v2, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mHeight:I

    iget v3, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mDotHeight:I

    iget v4, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    mul-int/2addr v3, v4

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget v3, v3, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->separatorHeight:F

    .line 1167
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget v2, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mHeight:I

    int-to-float v2, v2

    iput v2, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    .line 1168
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSecondLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iput v1, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->separatorHeight:F

    .line 1169
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSecondLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iput v1, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    goto :goto_1

    .line 1170
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget v0, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    if-nez v0, :cond_4

    .line 1171
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSecondLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget v2, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mHeight:I

    iget v3, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mDotHeight:I

    iget v4, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    mul-int/2addr v3, v4

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSecondLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget v3, v3, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->separatorHeight:F

    .line 1172
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSecondLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget v2, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mHeight:I

    int-to-float v2, v2

    iput v2, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    .line 1173
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iput v1, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->separatorHeight:F

    .line 1174
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iput v1, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    .line 1177
    :cond_4
    :goto_1
    return-void
.end method

.method private blacklist allocateBgRectangle()V
    .locals 10

    .line 1659
    const/4 v0, 0x0

    .line 1660
    .local v0, "left":I
    const/4 v1, 0x0

    .line 1661
    .local v1, "right":I
    const/4 v2, 0x0

    .line 1662
    .local v2, "top":I
    const/4 v3, 0x0

    .line 1664
    .local v3, "bottom":I
    iget v4, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mPosition:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 1665
    iget v4, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mWidth:I

    iget v5, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mWidthShift:I

    sub-int/2addr v4, v5

    .line 1666
    .end local v1    # "right":I
    .local v4, "right":I
    iget v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mBgRectWidth:I

    sub-int v0, v4, v1

    goto :goto_0

    .line 1668
    .end local v4    # "right":I
    .restart local v1    # "right":I
    :cond_0
    iget v4, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mWidthShift:I

    iget v5, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mBgRectWidth:I

    add-int/2addr v4, v5

    .line 1669
    .end local v1    # "right":I
    .restart local v4    # "right":I
    iget v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mWidthShift:I

    .line 1672
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    if-nez v1, :cond_1

    .line 1673
    new-instance v1, Landroid/graphics/Rect;

    iget v5, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollTop:I

    iget v6, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollTopMargin:I

    add-int v7, v5, v6

    iget v8, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mContentPadding:I

    sub-int/2addr v7, v8

    iget v9, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mHeight:I

    add-int/2addr v9, v5

    add-int/2addr v9, v6

    add-int/2addr v9, v8

    invoke-direct {v1, v0, v7, v4, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    goto :goto_1

    .line 1675
    :cond_1
    iget v5, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollTop:I

    iget v6, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollTopMargin:I

    add-int v7, v5, v6

    iget v8, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mContentPadding:I

    sub-int/2addr v7, v8

    iget v9, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mHeight:I

    add-int/2addr v9, v5

    add-int/2addr v9, v6

    add-int/2addr v9, v8

    invoke-virtual {v1, v0, v7, v4, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 1678
    :goto_1
    iget v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mContentMinHeight:F

    const/high16 v5, 0x40400000    # 3.0f

    mul-float/2addr v1, v5

    float-to-int v1, v1

    iget v5, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollThumbAdditionalHeight:I

    add-int/2addr v1, v5

    iput v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollThumbBgRectHeight:I

    .line 1679
    iget v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollThumbBgRectPadding:I

    add-int/2addr v0, v1

    .line 1680
    sub-int/2addr v4, v1

    .line 1681
    iget-object v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->this$0:Lcom/samsung/android/widget/SemIndexScrollView;

    invoke-static {v1}, Lcom/samsung/android/widget/SemIndexScrollView;->-$$Nest$fgetmTouchY(Lcom/samsung/android/widget/SemIndexScrollView;)F

    move-result v1

    iget v5, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollThumbBgRectHeight:I

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sub-float/2addr v1, v5

    float-to-int v1, v1

    .line 1682
    .end local v2    # "top":I
    .local v1, "top":I
    iget-object v2, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->this$0:Lcom/samsung/android/widget/SemIndexScrollView;

    invoke-static {v2}, Lcom/samsung/android/widget/SemIndexScrollView;->-$$Nest$fgetmTouchY(Lcom/samsung/android/widget/SemIndexScrollView;)F

    move-result v2

    iget v5, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollThumbBgRectHeight:I

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    add-float/2addr v2, v5

    float-to-int v2, v2

    .line 1684
    .end local v3    # "bottom":I
    .local v2, "bottom":I
    iget-object v3, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget v5, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollThumbBgRectPadding:I

    add-int/2addr v3, v5

    if-ge v1, v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget v5, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollThumbBgRectPadding:I

    sub-int/2addr v3, v5

    if-gt v2, v3, :cond_3

    :cond_2
    iget v3, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollThumbBgRectHeight:I

    iget-object v5, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    iget-object v6, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollThumbBgRectPadding:I

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    if-lt v3, v5, :cond_4

    .line 1686
    :cond_3
    iget-object v3, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget v5, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollThumbBgRectPadding:I

    add-int v1, v3, v5

    .line 1687
    iget-object v3, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget v5, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollThumbBgRectPadding:I

    sub-int v2, v3, v5

    goto :goto_2

    .line 1688
    :cond_4
    iget-object v3, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget v5, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollThumbBgRectPadding:I

    add-int/2addr v3, v5

    if-ge v1, v3, :cond_5

    .line 1689
    iget-object v3, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget v5, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollThumbBgRectPadding:I

    add-int v1, v3, v5

    .line 1690
    iget v3, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollThumbBgRectHeight:I

    add-int v2, v1, v3

    goto :goto_2

    .line 1691
    :cond_5
    iget-object v3, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget v5, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollThumbBgRectPadding:I

    sub-int/2addr v3, v5

    if-le v2, v3, :cond_6

    .line 1692
    iget-object v3, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget v5, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollThumbBgRectPadding:I

    sub-int v2, v3, v5

    .line 1693
    iget v3, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollThumbBgRectHeight:I

    sub-int v1, v2, v3

    .line 1696
    :cond_6
    :goto_2
    iget-object v3, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollThumbBgRect:Landroid/graphics/Rect;

    if-nez v3, :cond_7

    .line 1697
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v0, v1, v4, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v3, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollThumbBgRect:Landroid/graphics/Rect;

    goto :goto_3

    .line 1699
    :cond_7
    invoke-virtual {v3, v0, v1, v4, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 1701
    :goto_3
    return-void
.end method

.method private blacklist calcDotPosition(Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;III)V
    .locals 22
    .param p1, "language"    # Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;
    .param p2, "specialIndexCount"    # I
    .param p3, "startIndexPosition"    # I
    .param p4, "digitIndexCount"    # I

    .line 1244
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    iget v3, v1, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    sub-int v3, v3, p2

    .line 1245
    .local v3, "earlyLangCount":I
    const/4 v4, 0x0

    .line 1246
    .local v4, "numberOfMissingElements":I
    iget v5, v1, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    add-int/2addr v5, v2

    .line 1247
    .local v5, "endIndexPosition":I
    const/4 v6, 0x0

    .line 1250
    .local v6, "isFullCountState":Z
    iget-object v7, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetArray:[Ljava/lang/String;

    iget-object v8, v1, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->alphabetArray:[Ljava/lang/String;

    sub-int v9, v5, v2

    const/4 v10, 0x0

    invoke-static {v7, v2, v8, v10, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v7, v4

    move v8, v6

    move/from16 v4, p2

    move/from16 v6, p4

    .line 1256
    .end local p2    # "specialIndexCount":I
    .end local p4    # "digitIndexCount":I
    .local v4, "specialIndexCount":I
    .local v6, "digitIndexCount":I
    .local v7, "numberOfMissingElements":I
    .local v8, "isFullCountState":Z
    :goto_0
    iget v9, v1, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->separatorHeight:F

    iget v11, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mContentMinHeight:F

    cmpg-float v9, v9, v11

    if-gez v9, :cond_17

    iget-object v9, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetArrayToDraw:[Ljava/lang/String;

    array-length v9, v9

    if-lez v9, :cond_17

    .line 1257
    sub-int v9, v3, v6

    .line 1258
    .local v9, "langCount":I
    div-int/lit8 v11, v9, 0x2

    const/4 v12, 0x1

    sub-int/2addr v11, v12

    .line 1261
    .local v11, "fullDotCount":I
    iget v13, v1, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    const-string v14, "."

    if-ge v13, v11, :cond_8

    if-nez v8, :cond_8

    .line 1262
    iget v13, v1, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    new-array v13, v13, [Ljava/lang/String;

    .line 1264
    .local v13, "alphabetArrWithDots":[Ljava/lang/String;
    iget v15, v1, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    add-int/2addr v15, v12

    iput v15, v1, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    .line 1265
    iget v15, v1, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    sub-int/2addr v15, v12

    iput v15, v1, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    .line 1266
    add-int/lit8 v7, v7, 0x1

    .line 1268
    iget v15, v1, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    add-int/2addr v15, v12

    div-int v15, v9, v15

    add-int/2addr v15, v12

    .line 1271
    .local v15, "gapOfDot":I
    iget v12, v1, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    if-ne v12, v11, :cond_0

    .line 1272
    const/4 v15, 0x2

    .line 1274
    :cond_0
    iget v12, v1, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    .line 1276
    .local v12, "remainDotCount":I
    const/16 v16, 0x0

    .line 1278
    .local v16, "indexShift":I
    :goto_1
    if-eqz v12, :cond_7

    .line 1279
    iget v10, v1, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    if-eq v12, v10, :cond_1

    .line 1280
    iget v12, v1, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    .line 1283
    :cond_1
    iget-object v10, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetArray:[Ljava/lang/String;

    move/from16 v17, v3

    .end local v3    # "earlyLangCount":I
    .local v17, "earlyLangCount":I
    sub-int v3, v5, v2

    move/from16 v18, v5

    const/4 v5, 0x0

    .end local v5    # "endIndexPosition":I
    .local v18, "endIndexPosition":I
    invoke-static {v10, v2, v13, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1285
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_2
    iget v5, v1, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    const/4 v10, 0x1

    add-int/2addr v5, v10

    if-ge v3, v5, :cond_6

    .line 1286
    mul-int v5, v15, v3

    mul-int v19, v16, v3

    sub-int v5, v5, v19

    .line 1288
    .local v5, "targetIndex":I
    if-le v4, v10, :cond_2

    .line 1289
    add-int/lit8 v10, v4, -0x1

    add-int/2addr v5, v10

    .line 1292
    :cond_2
    if-lez v5, :cond_3

    if-ge v5, v9, :cond_3

    .line 1293
    aput-object v14, v13, v5

    .line 1294
    add-int/lit8 v12, v12, -0x1

    goto :goto_3

    .line 1295
    :cond_3
    if-lt v5, v9, :cond_5

    if-lez v12, :cond_5

    .line 1296
    div-int/lit8 v10, v15, 0x2

    sub-int v10, v5, v10

    if-ge v10, v9, :cond_4

    .line 1297
    div-int/lit8 v10, v15, 0x2

    sub-int v10, v5, v10

    aput-object v14, v13, v10

    .line 1298
    add-int/lit8 v12, v12, -0x1

    goto :goto_3

    .line 1300
    :cond_4
    const/16 v16, 0x1

    .line 1285
    .end local v5    # "targetIndex":I
    :cond_5
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_6
    move/from16 v3, v17

    move/from16 v5, v18

    const/4 v10, 0x0

    .end local v3    # "i":I
    goto :goto_1

    .line 1305
    .end local v17    # "earlyLangCount":I
    .end local v18    # "endIndexPosition":I
    .local v3, "earlyLangCount":I
    .local v5, "endIndexPosition":I
    :cond_7
    move/from16 v17, v3

    move/from16 v18, v5

    .end local v3    # "earlyLangCount":I
    .end local v5    # "endIndexPosition":I
    .restart local v17    # "earlyLangCount":I
    .restart local v18    # "endIndexPosition":I
    iput-object v13, v1, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->alphabetArray:[Ljava/lang/String;

    .line 1306
    .end local v12    # "remainDotCount":I
    .end local v13    # "alphabetArrWithDots":[Ljava/lang/String;
    .end local v15    # "gapOfDot":I
    .end local v16    # "indexShift":I
    move/from16 v20, v9

    goto/16 :goto_8

    .line 1261
    .end local v17    # "earlyLangCount":I
    .end local v18    # "endIndexPosition":I
    .restart local v3    # "earlyLangCount":I
    .restart local v5    # "endIndexPosition":I
    :cond_8
    move/from16 v17, v3

    move/from16 v18, v5

    .line 1308
    .end local v3    # "earlyLangCount":I
    .end local v5    # "endIndexPosition":I
    .restart local v17    # "earlyLangCount":I
    .restart local v18    # "endIndexPosition":I
    const/4 v3, 0x1

    .line 1310
    .end local v8    # "isFullCountState":Z
    .local v3, "isFullCountState":Z
    const/4 v5, 0x0

    .line 1311
    .local v5, "isDotPosition":Z
    const/4 v8, 0x0

    .line 1314
    .local v8, "dotCount":I
    iget v10, v1, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    sub-int/2addr v10, v4

    sub-int/2addr v10, v6

    packed-switch v10, :pswitch_data_0

    .line 1354
    iget v10, v1, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    iget v12, v1, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    sub-int/2addr v10, v12

    sub-int/2addr v10, v4

    sub-int/2addr v10, v6

    const/4 v12, 0x1

    if-ne v10, v12, :cond_e

    .line 1355
    iget v10, v1, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    sub-int/2addr v10, v12

    iput v10, v1, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    .line 1356
    iget v10, v1, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    sub-int/2addr v10, v12

    iput v10, v1, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    goto :goto_5

    .line 1316
    :pswitch_0
    iget v10, v1, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    const/4 v12, 0x1

    sub-int/2addr v10, v12

    iput v10, v1, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    .line 1317
    iget v10, v1, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    sub-int/2addr v10, v12

    iput v10, v1, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    .line 1318
    add-int/lit8 v7, v7, 0x1

    .line 1319
    goto :goto_5

    .line 1321
    :pswitch_1
    const/4 v12, 0x1

    iget v10, v1, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    sub-int/2addr v10, v12

    iput v10, v1, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    .line 1322
    iget v10, v1, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    sub-int/2addr v10, v12

    iput v10, v1, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    .line 1323
    goto :goto_5

    .line 1326
    :pswitch_2
    const/4 v12, 0x1

    if-eqz v4, :cond_9

    iget v10, v1, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    if-nez v10, :cond_9

    .line 1327
    iget v10, v1, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    sub-int/2addr v10, v12

    iput v10, v1, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    .line 1328
    iget v10, v1, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    add-int/2addr v10, v12

    iput v10, v1, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    .line 1329
    const/4 v5, 0x1

    goto :goto_4

    .line 1332
    :cond_9
    if-eqz v4, :cond_a

    iget v10, v1, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    const/4 v12, 0x1

    if-ne v10, v12, :cond_b

    .line 1333
    iget v10, v1, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    sub-int/2addr v10, v12

    iput v10, v1, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    .line 1334
    iget v10, v1, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    sub-int/2addr v10, v12

    iput v10, v1, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    goto :goto_4

    .line 1332
    :cond_a
    const/4 v12, 0x1

    .line 1338
    :cond_b
    iget v10, v1, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    sub-int/2addr v10, v12

    iput v10, v1, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    .line 1339
    iget v10, v1, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    sub-int/2addr v10, v12

    iput v10, v1, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    .line 1341
    :goto_4
    add-int/lit8 v7, v7, 0x1

    .line 1342
    goto :goto_5

    .line 1344
    :pswitch_3
    if-lez v6, :cond_c

    .line 1345
    add-int/lit8 v6, v6, -0x1

    .line 1346
    goto :goto_5

    .line 1348
    :cond_c
    if-lez v4, :cond_d

    .line 1349
    add-int/lit8 v4, v4, -0x1

    goto :goto_5

    .line 1348
    :cond_d
    const/4 v12, 0x1

    goto :goto_5

    .line 1358
    :cond_e
    iget v10, v1, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    sub-int/2addr v10, v12

    iput v10, v1, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    .line 1359
    iget v10, v1, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    sub-int/2addr v10, v12

    iput v10, v1, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    .line 1360
    add-int/lit8 v7, v7, 0x1

    .line 1365
    :goto_5
    iget v10, v1, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    if-lez v10, :cond_16

    iget v10, v1, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    if-ltz v10, :cond_16

    iget v10, v1, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    if-gez v10, :cond_f

    move/from16 p4, v3

    move/from16 v16, v4

    move/from16 v19, v7

    move/from16 v20, v9

    goto/16 :goto_9

    .line 1370
    :cond_f
    iget v10, v1, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    new-array v10, v10, [Ljava/lang/String;

    .line 1373
    .local v10, "alphabetArrWithDots":[Ljava/lang/String;
    const/4 v12, 0x0

    .line 1374
    .local v12, "averageElementsEachDot":I
    const/4 v13, 0x0

    .line 1376
    .local v13, "extraMissingElements":I
    iget v15, v1, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    if-lez v15, :cond_10

    .line 1377
    iget v15, v1, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    div-int v12, v7, v15

    .line 1378
    iget v15, v1, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    rem-int v13, v7, v15

    .line 1381
    :cond_10
    iget-object v15, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetArray:[Ljava/lang/String;

    move/from16 p4, v3

    const/4 v3, 0x0

    .end local v3    # "isFullCountState":Z
    .local p4, "isFullCountState":Z
    invoke-static {v15, v3, v10, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1384
    move v15, v4

    .line 1385
    .local v15, "targetIndex":I
    iget v3, v1, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    sub-int/2addr v3, v6

    .line 1387
    .local v3, "indexCount":I
    move/from16 v16, v4

    move/from16 v21, v16

    move/from16 v4, v21

    .local v4, "index":I
    .local v16, "specialIndexCount":I
    :goto_6
    if-ge v4, v3, :cond_14

    .line 1388
    move/from16 v19, v7

    .end local v7    # "numberOfMissingElements":I
    .local v19, "numberOfMissingElements":I
    iget-object v7, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetArray:[Ljava/lang/String;

    move/from16 v20, v9

    .end local v9    # "langCount":I
    .local v20, "langCount":I
    array-length v9, v7

    sub-int/2addr v9, v6

    if-ge v15, v9, :cond_13

    .line 1389
    if-nez v5, :cond_11

    .line 1390
    add-int v9, v15, v2

    aget-object v7, v7, v9

    aput-object v7, v10, v4

    .line 1392
    add-int/lit8 v15, v15, 0x1

    .line 1393
    iget v7, v1, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    if-ge v8, v7, :cond_13

    .line 1394
    const/4 v5, 0x1

    goto :goto_7

    .line 1397
    :cond_11
    aput-object v14, v10, v4

    .line 1398
    add-int/lit8 v8, v8, 0x1

    .line 1400
    add-int/2addr v15, v12

    .line 1402
    if-lez v13, :cond_12

    .line 1403
    add-int/lit8 v13, v13, -0x1

    .line 1404
    add-int/lit8 v15, v15, 0x1

    .line 1406
    :cond_12
    const/4 v5, 0x0

    .line 1387
    :cond_13
    :goto_7
    add-int/lit8 v4, v4, 0x1

    move/from16 v7, v19

    move/from16 v9, v20

    goto :goto_6

    .end local v19    # "numberOfMissingElements":I
    .end local v20    # "langCount":I
    .restart local v7    # "numberOfMissingElements":I
    .restart local v9    # "langCount":I
    :cond_14
    move/from16 v19, v7

    move/from16 v20, v9

    .line 1411
    .end local v4    # "index":I
    .end local v7    # "numberOfMissingElements":I
    .end local v9    # "langCount":I
    .restart local v19    # "numberOfMissingElements":I
    .restart local v20    # "langCount":I
    if-lez v6, :cond_15

    .line 1412
    iget-object v4, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetArray:[Ljava/lang/String;

    array-length v7, v4

    const/4 v9, 0x1

    sub-int/2addr v7, v9

    aget-object v4, v4, v7

    aput-object v4, v10, v3

    .line 1415
    :cond_15
    iput-object v10, v1, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->alphabetArray:[Ljava/lang/String;

    move/from16 v8, p4

    move/from16 v4, v16

    move/from16 v7, v19

    .line 1417
    .end local v3    # "indexCount":I
    .end local v5    # "isDotPosition":Z
    .end local v10    # "alphabetArrWithDots":[Ljava/lang/String;
    .end local v12    # "averageElementsEachDot":I
    .end local v13    # "extraMissingElements":I
    .end local v15    # "targetIndex":I
    .end local v16    # "specialIndexCount":I
    .end local v19    # "numberOfMissingElements":I
    .end local p4    # "isFullCountState":Z
    .local v4, "specialIndexCount":I
    .restart local v7    # "numberOfMissingElements":I
    .local v8, "isFullCountState":Z
    :goto_8
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->adjustSeparatorHeight()V

    .line 1418
    .end local v11    # "fullDotCount":I
    .end local v20    # "langCount":I
    move/from16 v3, v17

    move/from16 v5, v18

    const/4 v10, 0x0

    goto/16 :goto_0

    .line 1365
    .local v3, "isFullCountState":Z
    .restart local v5    # "isDotPosition":Z
    .local v8, "dotCount":I
    .restart local v9    # "langCount":I
    .restart local v11    # "fullDotCount":I
    :cond_16
    move/from16 p4, v3

    move/from16 v16, v4

    move/from16 v19, v7

    move/from16 v20, v9

    .line 1366
    .end local v3    # "isFullCountState":Z
    .end local v4    # "specialIndexCount":I
    .end local v7    # "numberOfMissingElements":I
    .end local v9    # "langCount":I
    .restart local v16    # "specialIndexCount":I
    .restart local v19    # "numberOfMissingElements":I
    .restart local v20    # "langCount":I
    .restart local p4    # "isFullCountState":Z
    :goto_9
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->adjustSeparatorHeight()V

    .line 1367
    return-void

    .line 1256
    .end local v11    # "fullDotCount":I
    .end local v16    # "specialIndexCount":I
    .end local v17    # "earlyLangCount":I
    .end local v18    # "endIndexPosition":I
    .end local v19    # "numberOfMissingElements":I
    .end local v20    # "langCount":I
    .end local p4    # "isFullCountState":Z
    .local v3, "earlyLangCount":I
    .restart local v4    # "specialIndexCount":I
    .local v5, "endIndexPosition":I
    .restart local v7    # "numberOfMissingElements":I
    .local v8, "isFullCountState":Z
    :cond_17
    move/from16 v17, v3

    move/from16 v18, v5

    .line 1419
    .end local v3    # "earlyLangCount":I
    .end local v5    # "endIndexPosition":I
    .restart local v17    # "earlyLangCount":I
    .restart local v18    # "endIndexPosition":I
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist drawAlphabetCharacters(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 1733
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mTextColorDimmed:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1734
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1735
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetArrayToDraw:[Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget v0, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    if-eqz v0, :cond_2

    .line 1736
    iget v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollTop:I

    iget v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollTopMargin:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    .line 1737
    .local v0, "startPosY":F
    iget-object v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget v1, v1, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    iget-object v2, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSecondLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget v2, v2, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    add-int/2addr v1, v2

    .line 1738
    .local v1, "indexCount":I
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 1742
    iget-object v3, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget v3, v3, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    if-ge v2, v3, :cond_0

    .line 1743
    iget-object v3, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget-object v3, v3, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->alphabetArray:[Ljava/lang/String;

    aget-object v3, v3, v2

    .line 1744
    .local v3, "text":Ljava/lang/String;
    iget-object v4, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget v4, v4, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->separatorHeight:F

    .local v4, "separatorHeight":F
    goto :goto_1

    .line 1746
    .end local v3    # "text":Ljava/lang/String;
    .end local v4    # "separatorHeight":F
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSecondLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget-object v3, v3, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->alphabetArray:[Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget v4, v4, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    sub-int v4, v2, v4

    aget-object v3, v3, v4

    .line 1747
    .restart local v3    # "text":Ljava/lang/String;
    iget-object v4, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSecondLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget v4, v4, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->separatorHeight:F

    .line 1749
    .restart local v4    # "separatorHeight":F
    :goto_1
    iget-object v5, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mPaint:Landroid/graphics/Paint;

    const/4 v6, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    iget-object v8, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v5, v3, v6, v7, v8}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 1750
    iget-object v5, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    .line 1751
    .local v5, "width":F
    iget-object v6, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->centerX()I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x3f000000    # 0.5f

    mul-float v8, v5, v7

    sub-float/2addr v6, v8

    .line 1754
    .local v6, "textPosX":F
    const-string v8, "."

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1755
    iget v8, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mDotHeight:I

    int-to-float v8, v8

    mul-float/2addr v8, v7

    iget-object v9, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mTextBounds:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    int-to-float v9, v9

    mul-float/2addr v9, v7

    sub-float/2addr v8, v9

    add-float/2addr v8, v0

    .line 1756
    .local v8, "textPosY":F
    iget v7, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mDotHeight:I

    int-to-float v7, v7

    add-float/2addr v0, v7

    goto :goto_2

    .line 1758
    .end local v8    # "textPosY":F
    :cond_1
    mul-float v8, v4, v7

    iget-object v9, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mTextBounds:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    int-to-float v9, v9

    mul-float/2addr v9, v7

    sub-float/2addr v8, v9

    add-float/2addr v8, v0

    .line 1759
    .restart local v8    # "textPosY":F
    add-float/2addr v0, v4

    .line 1761
    :goto_2
    iget-object v7, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v6, v8, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1738
    .end local v3    # "text":Ljava/lang/String;
    .end local v4    # "separatorHeight":F
    .end local v5    # "width":F
    .end local v6    # "textPosX":F
    .end local v8    # "textPosY":F
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1764
    .end local v0    # "startPosY":F
    .end local v1    # "indexCount":I
    .end local v2    # "index":I
    :cond_2
    return-void
.end method

.method private blacklist drawBgRectangle(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 1708
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mBgRectParamsSet:Z

    if-nez v0, :cond_0

    .line 1709
    invoke-direct {p0}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->setBgRectParams()V

    .line 1710
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mBgRectParamsSet:Z

    .line 1712
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1713
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->this$0:Lcom/samsung/android/widget/SemIndexScrollView;

    invoke-static {v0}, Lcom/samsung/android/widget/SemIndexScrollView;->-$$Nest$fgetmTouchY(Lcom/samsung/android/widget/SemIndexScrollView;)F

    move-result v0

    const v1, -0x39e3c400    # -9999.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    .line 1714
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollThumbBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1716
    :cond_1
    return-void
.end method

.method private blacklist getColorWithAlpha(IF)I
    .locals 5
    .param p1, "color"    # I
    .param p2, "ratio"    # F

    .line 1101
    const/4 v0, 0x0

    .line 1102
    .local v0, "newColor":I
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 1103
    .local v1, "alpha":I
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v2

    .line 1104
    .local v2, "r":I
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v3

    .line 1105
    .local v3, "g":I
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    .line 1106
    .local v4, "b":I
    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    .line 1108
    return v0
.end method

.method private blacklist getIndex(I)I
    .locals 4
    .param p1, "y"    # I

    .line 1493
    iget v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetSize:I

    iget v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetArrayLastLetterIndex:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    .line 1496
    .local v0, "firstLangCount":F
    int-to-float v1, p1

    iget v2, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollTop:I

    iget v3, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollTopMargin:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget v3, v3, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    add-float/2addr v2, v3

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 1497
    iget-object v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget v1, v1, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    div-float/2addr v1, v0

    .line 1498
    .local v1, "indexTouchBoundary":F
    iget v2, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollTop:I

    sub-int v2, p1, v2

    iget v3, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollTopMargin:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr v2, v1

    float-to-int v2, v2

    .local v2, "index":I
    goto :goto_0

    .line 1500
    .end local v1    # "indexTouchBoundary":F
    .end local v2    # "index":I
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSecondLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget v1, v1, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    iget v2, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetArrayLastLetterIndex:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 1501
    .restart local v1    # "indexTouchBoundary":F
    iget v2, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollTop:I

    sub-int v2, p1, v2

    iget v3, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollTopMargin:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget v3, v3, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    sub-float/2addr v2, v3

    div-float/2addr v2, v1

    float-to-int v2, v2

    .line 1502
    .restart local v2    # "index":I
    int-to-float v3, v2

    add-float/2addr v3, v0

    float-to-int v2, v3

    .line 1505
    :goto_0
    if-gez v2, :cond_1

    .line 1506
    const/4 v2, 0x0

    goto :goto_1

    .line 1507
    :cond_1
    iget v3, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetToDrawSize:I

    if-lt v2, v3, :cond_2

    .line 1508
    add-int/lit8 v2, v3, -0x1

    .line 1511
    :cond_2
    :goto_1
    return v2
.end method

.method private blacklist getIndexByY(I)Ljava/lang/String;
    .locals 5
    .param p1, "y"    # I

    .line 1524
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAdditionalSpace:I

    sub-int/2addr v0, v1

    const-string v1, ""

    if-le p1, v0, :cond_8

    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAdditionalSpace:I

    add-int/2addr v0, v2

    if-lt p1, v0, :cond_0

    goto :goto_2

    .line 1526
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    if-ge p1, v0, :cond_1

    .line 1527
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSelectedIndex:I

    goto :goto_0

    .line 1528
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    if-le p1, v0, :cond_2

    .line 1529
    iget v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetToDrawSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSelectedIndex:I

    goto :goto_0

    .line 1531
    :cond_2
    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->getIndex(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSelectedIndex:I

    .line 1532
    iget v2, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetToDrawSize:I

    if-ne v0, v2, :cond_3

    .line 1533
    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSelectedIndex:I

    .line 1538
    :cond_3
    :goto_0
    iget v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSelectedIndex:I

    iget v2, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetToDrawSize:I

    if-eq v0, v2, :cond_4

    add-int/lit8 v3, v2, 0x1

    if-ne v0, v3, :cond_5

    .line 1539
    :cond_4
    add-int/lit8 v0, v2, -0x1

    iput v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSelectedIndex:I

    .line 1542
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetArrayToDraw:[Ljava/lang/String;

    if-eqz v0, :cond_7

    iget v3, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSelectedIndex:I

    const/4 v4, -0x1

    if-le v3, v4, :cond_7

    if-le v3, v2, :cond_6

    goto :goto_1

    .line 1545
    :cond_6
    aget-object v0, v0, v3

    return-object v0

    .line 1543
    :cond_7
    :goto_1
    return-object v1

    .line 1525
    :cond_8
    :goto_2
    return-object v1
.end method

.method private blacklist init()V
    .locals 13

    .line 1036
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 1037
    .local v7, "rsrc":Landroid/content/res/Resources;
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mPaint:Landroid/graphics/Paint;

    .line 1038
    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1040
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->this$0:Lcom/samsung/android/widget/SemIndexScrollView;

    invoke-static {v0}, Lcom/samsung/android/widget/SemIndexScrollView;->-$$Nest$fgetmSECRobotoLightRegularFont(Lcom/samsung/android/widget/SemIndexScrollView;)Landroid/graphics/Typeface;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1041
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->this$0:Lcom/samsung/android/widget/SemIndexScrollView;

    const-string/jumbo v2, "sec-roboto-light"

    invoke-static {v2, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/widget/SemIndexScrollView;->-$$Nest$fputmSECRobotoLightRegularFont(Lcom/samsung/android/widget/SemIndexScrollView;Landroid/graphics/Typeface;)V

    .line 1044
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->this$0:Lcom/samsung/android/widget/SemIndexScrollView;

    invoke-static {v2}, Lcom/samsung/android/widget/SemIndexScrollView;->-$$Nest$fgetmSECRobotoLightRegularFont(Lcom/samsung/android/widget/SemIndexScrollView;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1047
    iput v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollTopMargin:I

    .line 1048
    iput v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollBottomMargin:I

    .line 1051
    iput v8, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mItemWidth:I

    .line 1052
    iput v8, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mItemWidthGap:I

    .line 1055
    const v0, 0x1050400

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mBgRectWidth:I

    .line 1056
    const v0, 0x10503fc

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mTextSize:I

    .line 1057
    const v0, 0x10503ff

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollTop:I

    .line 1058
    const v0, 0x10503f6

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollBottom:I

    .line 1059
    const v0, 0x10503fa

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mWidthShift:I

    .line 1060
    const v0, 0x10503f8

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mContentPadding:I

    .line 1061
    const v0, 0x10503f7

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mContentMinHeight:F

    .line 1062
    const v0, 0x10503f5

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAdditionalSpace:I

    .line 1063
    const v0, 0x10503f1

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mIndexScrollPreviewRadius:F

    .line 1064
    const v0, 0x10503f4

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mPreviewLimitY:F

    .line 1066
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    move-object v9, v0

    .line 1067
    .local v9, "outValue":Landroid/util/TypedValue;
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const v1, 0x1010433

    invoke-virtual {v0, v1, v9, v8}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1068
    iget v0, v9, Landroid/util/TypedValue;->resourceId:I

    const/4 v10, 0x0

    if-eqz v0, :cond_1

    iget v0, v9, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v7, v0, v10}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    goto :goto_0

    :cond_1
    iget v0, v9, Landroid/util/TypedValue;->data:I

    :goto_0
    move v11, v0

    .line 1070
    .local v11, "colorPrimary":I
    new-instance v12, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v12

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;-><init>(Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;IIIFF)V

    iput-object v12, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    .line 1071
    new-instance v12, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    move-object v0, v12

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;-><init>(Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;IIIFF)V

    iput-object v12, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSecondLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    .line 1072
    const v0, 0x10503fe

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollThumbBgRectPadding:I

    .line 1073
    const v0, 0x10503fd

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollThumbAdditionalHeight:I

    .line 1074
    const v0, 0x10503f9

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mDotHeight:I

    .line 1075
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->this$0:Lcom/samsung/android/widget/SemIndexScrollView;

    invoke-static {v0}, Lcom/samsung/android/widget/SemIndexScrollView;->-$$Nest$fgetmIndexScrollPreview(Lcom/samsung/android/widget/SemIndexScrollView;)Lcom/samsung/android/widget/SemIndexScrollView$IndexScrollPreview;

    move-result-object v0

    const v1, 0x3f4ccccd    # 0.8f

    invoke-direct {p0, v11, v1}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->getColorWithAlpha(IF)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScrollPreview;->setBackgroundColor(I)V

    .line 1077
    const v0, 0x1080935

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollThumbBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 1078
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v11, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1079
    iput v11, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mThumbColor:I

    .line 1081
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const v1, 0x1010590

    invoke-virtual {v0, v1, v9, v8}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1082
    iget v0, v9, Landroid/util/TypedValue;->data:I

    if-eqz v0, :cond_2

    .line 1083
    const v0, 0x1060335

    invoke-virtual {v7, v0, v10}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mTextColorDimmed:I

    .line 1084
    const v0, 0x1060333

    invoke-virtual {v7, v0, v10}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mBgTintColor:I

    goto :goto_1

    .line 1086
    :cond_2
    const v0, 0x1060336

    invoke-virtual {v7, v0, v10}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mTextColorDimmed:I

    .line 1087
    const v0, 0x1060334

    invoke-virtual {v7, v0, v10}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mBgTintColor:I

    .line 1089
    :goto_1
    const v0, 0x1080934

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    .line 1090
    iget v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mBgTintColor:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1092
    invoke-direct {p0}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->setBgRectParams()V

    .line 1093
    return-void
.end method

.method private blacklist isInSelectedIndexRect(I)Z
    .locals 7
    .param p1, "y"    # I

    .line 1555
    iget v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSelectedIndex:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    iget v2, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetToDrawSize:I

    if-lt v0, v2, :cond_0

    goto :goto_0

    .line 1558
    :cond_0
    iget v2, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollTop:I

    iget v3, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollTopMargin:I

    add-int v4, v2, v3

    int-to-float v4, v4

    iget v5, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSeparatorHeight:F

    int-to-float v6, v0

    mul-float/2addr v6, v5

    add-float/2addr v4, v6

    float-to-int v4, v4

    const/4 v6, 0x1

    if-lt p1, v4, :cond_1

    add-int/2addr v2, v3

    int-to-float v2, v2

    add-int/2addr v0, v6

    int-to-float v0, v0

    mul-float/2addr v5, v0

    add-float/2addr v2, v5

    float-to-int v0, v2

    if-gt p1, v0, :cond_1

    move v1, v6

    :cond_1
    return v1

    .line 1556
    :cond_2
    :goto_0
    return v1
.end method

.method private blacklist manageIndexScrollHeight()V
    .locals 5

    .line 1184
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mIsAlphabetInit:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->this$0:Lcom/samsung/android/widget/SemIndexScrollView;

    invoke-static {v0}, Lcom/samsung/android/widget/SemIndexScrollView;->-$$Nest$fgetmNumberOfLanguages(Lcom/samsung/android/widget/SemIndexScrollView;)I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    goto/16 :goto_1

    .line 1189
    :cond_0
    iget v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetArrayFirstLetterIndex:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 1190
    iput v2, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetArrayFirstLetterIndex:I

    .line 1193
    :cond_1
    iget v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetArrayLastLetterIndex:I

    if-ne v0, v1, :cond_2

    .line 1194
    iput v2, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetArrayLastLetterIndex:I

    .line 1198
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetSize:I

    iget v3, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetArrayLastLetterIndex:I

    sub-int/2addr v1, v3

    iput v1, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    .line 1199
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget v1, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    iput v1, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    .line 1200
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget v1, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->alphabetArray:[Ljava/lang/String;

    .line 1201
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iput v2, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    .line 1202
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSecondLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetSize:I

    iget-object v3, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget v3, v3, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    sub-int/2addr v1, v3

    iput v1, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    .line 1203
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSecondLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget v1, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    iput v1, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    .line 1204
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSecondLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget v1, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->alphabetArray:[Ljava/lang/String;

    .line 1205
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSecondLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iput v2, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    .line 1207
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget v1, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    int-to-float v1, v1

    iget v3, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mContentMinHeight:F

    mul-float/2addr v1, v3

    iput v1, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    .line 1208
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSecondLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mHeight:I

    int-to-float v1, v1

    iget-object v3, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget v3, v3, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    sub-float/2addr v1, v3

    iput v1, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    .line 1210
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetArray:[Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetArrayToDraw:[Ljava/lang/String;

    .line 1211
    iget v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetSize:I

    iput v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetToDrawSize:I

    .line 1213
    invoke-direct {p0}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->adjustSeparatorHeight()V

    .line 1215
    const/4 v0, 0x0

    .line 1218
    .local v0, "digitIndexCount":I
    iget v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetArrayFirstLetterIndex:I

    if-lez v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->this$0:Lcom/samsung/android/widget/SemIndexScrollView;

    invoke-static {v1}, Lcom/samsung/android/widget/SemIndexScrollView;->-$$Nest$fgetmIndexer(Lcom/samsung/android/widget/SemIndexScrollView;)Lcom/samsung/android/widget/SemAbstractIndexer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemAbstractIndexer;->isUseDigitIndex()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1219
    const/4 v0, 0x1

    .line 1224
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->this$0:Lcom/samsung/android/widget/SemIndexScrollView;

    invoke-static {v1}, Lcom/samsung/android/widget/SemIndexScrollView;->-$$Nest$fgetmNumberOfLanguages(Lcom/samsung/android/widget/SemIndexScrollView;)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_4

    .line 1225
    iget-object v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget v3, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetArrayFirstLetterIndex:I

    invoke-direct {p0, v1, v3, v2, v0}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->calcDotPosition(Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;III)V

    goto :goto_0

    .line 1227
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget v3, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetArrayFirstLetterIndex:I

    invoke-direct {p0, v1, v3, v2, v2}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->calcDotPosition(Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;III)V

    .line 1228
    iget-object v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSecondLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget v3, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetSize:I

    iget v4, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetArrayLastLetterIndex:I

    sub-int/2addr v3, v4

    invoke-direct {p0, v1, v2, v3, v0}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->calcDotPosition(Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;III)V

    .line 1230
    :goto_0
    return-void

    .line 1185
    .end local v0    # "digitIndexCount":I
    :cond_5
    :goto_1
    return-void
.end method

.method private blacklist setBgRectParams()V
    .locals 2

    .line 1723
    invoke-direct {p0}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->allocateBgRectangle()V

    .line 1724
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 1725
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollThumbBgDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollThumbBgRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 1726
    return-void
.end method


# virtual methods
.method public blacklist draw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 1576
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mIsAlphabetInit:Z

    if-nez v0, :cond_0

    .line 1577
    return-void

    .line 1579
    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->drawScroll(Landroid/graphics/Canvas;)V

    .line 1580
    return-void
.end method

.method public blacklist drawEffect(F)V
    .locals 8
    .param p1, "effectPositionY"    # F

    .line 1616
    iget v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSelectedIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4

    .line 1617
    iget-object v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetArrayToDraw:[Ljava/lang/String;

    aget-object v0, v1, v0

    iput-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSmallText:Ljava/lang/String;

    .line 1618
    iget-object v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 1622
    iget v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollTopMargin:I

    int-to-float v1, v0

    iget v2, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mPreviewLimitY:F

    add-float/2addr v1, v2

    iget v3, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mIndexScrollPreviewRadius:F

    add-float/2addr v1, v3

    .line 1623
    .local v1, "topDrawY":F
    iget v4, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScreenHeight:I

    int-to-float v5, v4

    iget v6, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollBottomMargin:I

    int-to-float v7, v6

    sub-float/2addr v5, v7

    sub-float/2addr v5, v2

    sub-float/2addr v5, v3

    .line 1626
    .local v5, "bottomDrawY":F
    int-to-float v4, v4

    const/high16 v7, 0x40000000    # 2.0f

    mul-float/2addr v3, v7

    add-float/2addr v3, v2

    int-to-float v2, v0

    add-float/2addr v3, v2

    int-to-float v2, v6

    add-float/2addr v3, v2

    cmpg-float v2, v4, v3

    if-gtz v2, :cond_0

    .line 1627
    iget v2, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollTop:I

    int-to-float v2, v2

    int-to-float v0, v0

    add-float/2addr v2, v0

    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget v0, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->separatorHeight:F

    float-to-double v3, v0

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v3, v6

    double-to-float v0, v3

    add-float v1, v2, v0

    .line 1628
    iget v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollTop:I

    int-to-float v0, v0

    iget v2, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollTopMargin:I

    int-to-float v2, v2

    add-float/2addr v0, v2

    iget v2, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollBottomMargin:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    iget-object v2, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget v2, v2, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    add-float/2addr v0, v2

    iget-object v2, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSecondLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget v2, v2, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    add-float/2addr v0, v2

    iget-object v2, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget v2, v2, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->separatorHeight:F

    float-to-double v2, v2

    mul-double/2addr v2, v6

    double-to-float v2, v2

    sub-float v5, v0, v2

    .line 1632
    :cond_0
    const v0, -0x39e3c400    # -9999.0f

    .line 1634
    .local v0, "drawY":F
    cmpl-float v2, p1, v1

    if-lez v2, :cond_1

    cmpg-float v2, p1, v5

    if-gez v2, :cond_1

    .line 1635
    move v0, p1

    goto :goto_0

    .line 1636
    :cond_1
    cmpg-float v2, p1, v1

    if-gtz v2, :cond_2

    .line 1638
    move v0, v1

    goto :goto_0

    .line 1639
    :cond_2
    cmpl-float v2, p1, v5

    if-ltz v2, :cond_3

    .line 1641
    move v0, v5

    .line 1644
    :cond_3
    :goto_0
    const v2, -0x39e3c400    # -9999.0f

    cmpl-float v2, v0, v2

    if-eqz v2, :cond_4

    .line 1645
    iget-object v2, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->this$0:Lcom/samsung/android/widget/SemIndexScrollView;

    invoke-static {v2}, Lcom/samsung/android/widget/SemIndexScrollView;->-$$Nest$fgetmIndexScrollPreview(Lcom/samsung/android/widget/SemIndexScrollView;)Lcom/samsung/android/widget/SemIndexScrollView$IndexScrollPreview;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mBigText:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScrollPreview;->open(FLjava/lang/String;)V

    .line 1647
    iget-object v2, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->this$0:Lcom/samsung/android/widget/SemIndexScrollView;

    invoke-static {v2}, Lcom/samsung/android/widget/SemIndexScrollView;->-$$Nest$fgetmOnIndexBarEventListener(Lcom/samsung/android/widget/SemIndexScrollView;)Lcom/samsung/android/widget/SemIndexScrollView$OnIndexBarEventListener;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 1648
    iget-object v2, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->this$0:Lcom/samsung/android/widget/SemIndexScrollView;

    invoke-static {v2}, Lcom/samsung/android/widget/SemIndexScrollView;->-$$Nest$fgetmOnIndexBarEventListener(Lcom/samsung/android/widget/SemIndexScrollView;)Lcom/samsung/android/widget/SemIndexScrollView$OnIndexBarEventListener;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/samsung/android/widget/SemIndexScrollView$OnIndexBarEventListener;->onPressed(F)V

    .line 1652
    .end local v0    # "drawY":F
    .end local v1    # "topDrawY":F
    .end local v5    # "bottomDrawY":F
    :cond_4
    return-void
.end method

.method public blacklist drawScroll(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 1588
    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->drawBgRectangle(Landroid/graphics/Canvas;)V

    .line 1589
    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->drawAlphabetCharacters(Landroid/graphics/Canvas;)V

    .line 1590
    iget v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSelectedIndex:I

    if-ltz v0, :cond_0

    iget v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetSize:I

    if-lt v0, v1, :cond_2

    .line 1591
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->this$0:Lcom/samsung/android/widget/SemIndexScrollView;

    invoke-static {v0}, Lcom/samsung/android/widget/SemIndexScrollView;->-$$Nest$fgetmIndexScrollPreview(Lcom/samsung/android/widget/SemIndexScrollView;)Lcom/samsung/android/widget/SemIndexScrollView$IndexScrollPreview;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1592
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->this$0:Lcom/samsung/android/widget/SemIndexScrollView;

    invoke-static {v0}, Lcom/samsung/android/widget/SemIndexScrollView;->-$$Nest$fgetmIndexScrollPreview(Lcom/samsung/android/widget/SemIndexScrollView;)Lcom/samsung/android/widget/SemIndexScrollView$IndexScrollPreview;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScrollPreview;->close()V

    .line 1595
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->this$0:Lcom/samsung/android/widget/SemIndexScrollView;

    invoke-static {v0}, Lcom/samsung/android/widget/SemIndexScrollView;->-$$Nest$fgetmOnIndexBarEventListener(Lcom/samsung/android/widget/SemIndexScrollView;)Lcom/samsung/android/widget/SemIndexScrollView$OnIndexBarEventListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1596
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->this$0:Lcom/samsung/android/widget/SemIndexScrollView;

    invoke-static {v0}, Lcom/samsung/android/widget/SemIndexScrollView;->-$$Nest$fgetmOnIndexBarEventListener(Lcom/samsung/android/widget/SemIndexScrollView;)Lcom/samsung/android/widget/SemIndexScrollView$OnIndexBarEventListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/samsung/android/widget/SemIndexScrollView$OnIndexBarEventListener;->onReleased(F)V

    .line 1599
    :cond_2
    return-void
.end method

.method public blacklist getHeight()I
    .locals 1

    .line 971
    iget v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mHeight:I

    return v0
.end method

.method public blacklist getIndexByPosition(II)Ljava/lang/String;
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 1449
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    const-string v1, ""

    if-eqz v0, :cond_e

    iget-boolean v2, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mIsAlphabetInit:Z

    if-nez v2, :cond_0

    goto/16 :goto_2

    .line 1453
    :cond_0
    iget v2, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mPosition:I

    if-nez v2, :cond_1

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAdditionalSpace:I

    sub-int/2addr v0, v2

    if-lt p1, v0, :cond_2

    :cond_1
    iget v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mPosition:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget v3, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAdditionalSpace:I

    add-int/2addr v0, v3

    if-le p1, v0, :cond_3

    .line 1455
    :cond_2
    return-object v1

    .line 1456
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget v3, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAdditionalSpace:I

    sub-int/2addr v0, v3

    if-lt p1, v0, :cond_7

    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget v3, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAdditionalSpace:I

    add-int/2addr v0, v3

    if-gt p1, v0, :cond_7

    .line 1458
    invoke-direct {p0, p2}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->isInSelectedIndexRect(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1460
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetArrayToDraw:[Ljava/lang/String;

    if-eqz v0, :cond_5

    iget v2, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSelectedIndex:I

    if-ltz v2, :cond_5

    array-length v0, v0

    if-lt v2, v0, :cond_4

    goto :goto_0

    .line 1463
    :cond_4
    invoke-direct {p0, p2}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->getIndexByY(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1461
    :cond_5
    :goto_0
    return-object v1

    .line 1465
    :cond_6
    invoke-direct {p0, p2}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->getIndexByY(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1468
    :cond_7
    iget v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mPosition:I

    if-nez v0, :cond_8

    iget v3, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mWidthShift:I

    iget v4, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mItemWidth:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mItemWidthGap:I

    add-int/2addr v3, v4

    if-ge p1, v3, :cond_9

    :cond_8
    if-ne v0, v2, :cond_a

    iget v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mWidth:I

    iget v2, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mWidthShift:I

    sub-int/2addr v0, v2

    iget v2, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mItemWidth:I

    iget v3, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mItemWidthGap:I

    add-int/2addr v2, v3

    sub-int/2addr v0, v2

    if-gt p1, v0, :cond_a

    .line 1470
    :cond_9
    const/4 v0, 0x0

    return-object v0

    .line 1472
    :cond_a
    invoke-direct {p0, p2}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->isInSelectedIndexRect(I)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1474
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetArrayToDraw:[Ljava/lang/String;

    if-eqz v0, :cond_c

    iget v2, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSelectedIndex:I

    if-ltz v2, :cond_c

    array-length v3, v0

    if-lt v2, v3, :cond_b

    goto :goto_1

    .line 1477
    :cond_b
    aget-object v0, v0, v2

    return-object v0

    .line 1475
    :cond_c
    :goto_1
    return-object v1

    .line 1479
    :cond_d
    invoke-direct {p0, p2}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->getIndexByY(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1450
    :cond_e
    :goto_2
    return-object v1
.end method

.method public blacklist getPosition()I
    .locals 1

    .line 949
    iget v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mPosition:I

    return v0
.end method

.method public blacklist getSelectedIndex()I
    .locals 1

    .line 963
    iget v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSelectedIndex:I

    return v0
.end method

.method public blacklist isAlphabetInit()Z
    .locals 1

    .line 941
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mIsAlphabetInit:Z

    return v0
.end method

.method public blacklist resetSelectedIndex()V
    .locals 1

    .line 1567
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSelectedIndex:I

    .line 1568
    return-void
.end method

.method public blacklist setAlphabetArray([Ljava/lang/String;II)V
    .locals 2
    .param p1, "alphabetArray"    # [Ljava/lang/String;
    .param p2, "alphabetArrayFirstLetterIndex"    # I
    .param p3, "alphabetArrayLastLetterIndex"    # I

    .line 1120
    if-nez p1, :cond_0

    .line 1121
    return-void

    .line 1123
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetArray:[Ljava/lang/String;

    .line 1124
    array-length v0, p1

    iput v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetSize:I

    .line 1125
    iput p2, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetArrayFirstLetterIndex:I

    .line 1126
    iput p3, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetArrayLastLetterIndex:I

    .line 1130
    iget v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mHeight:I

    int-to-float v1, v1

    int-to-float v0, v0

    div-float/2addr v1, v0

    iput v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mItemHeight:F

    .line 1131
    iget v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mContentMinHeight:F

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSeparatorHeight:F

    .line 1133
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mIsAlphabetInit:Z

    .line 1134
    iput-boolean v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mIsSetDimensions:Z

    .line 1135
    return-void
.end method

.method public blacklist setDimensions(II)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 1014
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mIsAlphabetInit:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mWidth:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mHeight:I

    if-ne v0, p2, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mIsSetDimensions:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 1017
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mIsSetDimensions:Z

    .line 1018
    iput p1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mWidth:I

    .line 1019
    iget v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollTop:I

    iget v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollBottom:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollTopMargin:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollBottomMargin:I

    add-int/2addr v0, v1

    sub-int v0, p2, v0

    iput v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mHeight:I

    .line 1021
    iput p2, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScreenHeight:I

    .line 1022
    int-to-float v0, v0

    iget v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mAlphabetSize:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mItemHeight:F

    .line 1023
    iget v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mContentMinHeight:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSeparatorHeight:F

    .line 1024
    invoke-direct {p0}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->setBgRectParams()V

    .line 1025
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mFirstLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSecondLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    if-eqz v1, :cond_1

    .line 1026
    iget v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mContentMinHeight:F

    iput v1, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->separatorHeight:F

    .line 1027
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mSecondLang:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;

    iget v1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mContentMinHeight:F

    iput v1, v0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->separatorHeight:F

    .line 1028
    invoke-direct {p0}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->manageIndexScrollHeight()V

    .line 1030
    :cond_1
    return-void

    .line 1015
    :cond_2
    :goto_0
    return-void
.end method

.method public blacklist setEffectText(Ljava/lang/String;)V
    .locals 0
    .param p1, "effectText"    # Ljava/lang/String;

    .line 1608
    iput-object p1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mBigText:Ljava/lang/String;

    .line 1609
    return-void
.end method

.method public blacklist setIndexScrollBgMargin(II)V
    .locals 0
    .param p1, "topMargin"    # I
    .param p2, "bottomMargin"    # I

    .line 995
    iput p1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollTopMargin:I

    .line 996
    iput p2, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mScrollBottomMargin:I

    .line 997
    return-void
.end method

.method public blacklist setPosition(I)V
    .locals 0
    .param p1, "position"    # I

    .line 1004
    iput p1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mPosition:I

    .line 1005
    invoke-direct {p0}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->setBgRectParams()V

    .line 1006
    return-void
.end method

.method public blacklist setSimpleIndexScrollWidth(I)V
    .locals 0
    .param p1, "itemWidth"    # I

    .line 980
    if-gtz p1, :cond_0

    .line 981
    return-void

    .line 984
    :cond_0
    iput p1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mItemWidth:I

    .line 985
    iput p1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->mBgRectWidth:I

    .line 986
    invoke-direct {p0}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;->allocateBgRectangle()V

    .line 987
    return-void
.end method
