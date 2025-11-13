.class public Lcom/android/keyguard/SecPasswordTextView;
.super Lcom/android/keyguard/PasswordTextView;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mClickCallback:Lcom/android/keyguard/KeyguardSecPinViewController$$ExternalSyntheticLambda1;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/SecPasswordTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/SecPasswordTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/keyguard/SecPasswordTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/keyguard/PasswordTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iget-object p0, p0, Lcom/android/systemui/widget/SystemUIEditText;->mDrawPaint:Landroid/graphics/Paint;

    const p2, 0x7f130d91

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    const/16 p3, 0x190

    invoke-static {p1, p3, p2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    return-void
.end method


# virtual methods
.method public final getCharBounds()Landroid/graphics/Rect;
    .locals 4

    invoke-virtual {p0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0705ba

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIEditText;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object p0, p0, Lcom/android/systemui/widget/SystemUIEditText;->mDrawPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "0"

    invoke-virtual {p0, v3, v1, v2, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    return-object v0
.end method

.method public final getTextCharsSize()I
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/PasswordTextView;->mTextChars:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public final onAppend(CI)V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView;->mTextChars:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/android/keyguard/BaseSecPasswordTextView;->mMaxLength:I

    if-lt v0, v1, :cond_1

    iget-object p1, p0, Lcom/android/keyguard/SecPasswordTextView;->mClickCallback:Lcom/android/keyguard/KeyguardSecPinViewController$$ExternalSyntheticLambda1;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Lcom/android/keyguard/BaseSecPasswordTextView;->reset(ZZ)V

    :cond_0
    return-void

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/keyguard/PasswordTextView;->onAppend(CI)V

    iget-object p0, p0, Lcom/android/keyguard/SecPasswordTextView;->mClickCallback:Lcom/android/keyguard/KeyguardSecPinViewController$$ExternalSyntheticLambda1;

    if-eqz p0, :cond_2

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPinViewController$$ExternalSyntheticLambda1;->f$0:Lcom/android/keyguard/KeyguardSecPinViewController;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecPinViewController;->verifyNDigitsPIN()V

    :cond_2
    return-void
.end method

.method public final onFinishInflate()V
    .locals 4

    invoke-super {p0}, Lcom/android/systemui/widget/SystemUIEditText;->onFinishInflate()V

    invoke-virtual {p0}, Landroid/widget/EditText;->getFilters()[Landroid/text/InputFilter;

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/EditText;->getFilters()[Landroid/text/InputFilter;

    move-result-object v2

    aget-object v2, v2, v1

    instance-of v3, v2, Landroid/text/InputFilter$LengthFilter;

    if-eqz v3, :cond_0

    check-cast v2, Landroid/text/InputFilter$LengthFilter;

    invoke-virtual {v2}, Landroid/text/InputFilter$LengthFilter;->getMax()I

    move-result v2

    iput v2, p0, Lcom/android/keyguard/BaseSecPasswordTextView;->mMaxLength:I

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final updateStyle(JLandroid/app/SemWallpaperColors;)V
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "updateStyle : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->getChangeFlagsString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " colors : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SecPasswordTextView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v2, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0, v2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isUltraPowerSavingMode()Z

    move-result v2

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isColorThemeEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    const-wide/16 v3, 0x400

    and-long/2addr v3, p1

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_2

    if-nez v2, :cond_2

    if-eqz p3, :cond_1

    const-wide/16 p1, 0x200

    invoke-virtual {p3, p1, p2}, Landroid/app/SemWallpaperColors;->getColorThemeColor(J)I

    move-result p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo p3, "updateStyle themeColor : #"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/widget/SystemUIEditText;->mDrawPaint:Landroid/graphics/Paint;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/high16 p1, -0x1000000

    :goto_0
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    :cond_1
    const-string/jumbo p0, "updateStyle : colors is null!"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    invoke-super {p0, p1, p2, p3}, Lcom/android/systemui/widget/SystemUIEditText;->updateStyle(JLandroid/app/SemWallpaperColors;)V

    :goto_1
    return-void
.end method
