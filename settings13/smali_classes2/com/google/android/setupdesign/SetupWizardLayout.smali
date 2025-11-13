.class public Lcom/google/android/setupdesign/SetupWizardLayout;
.super Lcom/google/android/setupcompat/internal/TemplateLayout;
.source "SetupWizardLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/setupdesign/SetupWizardLayout$SavedState;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 57
    invoke-direct {p0, p1, v0, v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;-><init>(Landroid/content/Context;II)V

    .line 58
    sget p1, Lcom/google/android/setupdesign/R$attr;->sudLayoutTheme:I

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/google/android/setupdesign/SetupWizardLayout;->init(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 0

    .line 66
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/setupcompat/internal/TemplateLayout;-><init>(Landroid/content/Context;II)V

    .line 67
    sget p1, Lcom/google/android/setupdesign/R$attr;->sudLayoutTheme:I

    const/4 p2, 0x0

    invoke-direct {p0, p2, p1}, Lcom/google/android/setupdesign/SetupWizardLayout;->init(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 71
    invoke-direct {p0, p1, p2}, Lcom/google/android/setupcompat/internal/TemplateLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 72
    sget p1, Lcom/google/android/setupdesign/R$attr;->sudLayoutTheme:I

    invoke-direct {p0, p2, p1}, Lcom/google/android/setupdesign/SetupWizardLayout;->init(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .line 77
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/setupcompat/internal/TemplateLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 78
    invoke-direct {p0, p2, p3}, Lcom/google/android/setupdesign/SetupWizardLayout;->init(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private getIllustration(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RtlHardcoded"
        }
    .end annotation

    .line 342
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 343
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/google/android/setupdesign/R$bool;->sudUseTabletLayout:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_2

    .line 345
    instance-of p0, p2, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz p0, :cond_0

    .line 346
    move-object p0, p2

    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    sget-object v1, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeX(Landroid/graphics/Shader$TileMode;)V

    const/16 v1, 0x30

    .line 347
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setGravity(I)V

    .line 349
    :cond_0
    instance-of p0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz p0, :cond_1

    .line 351
    move-object p0, p1

    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    const/16 v1, 0x33

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setGravity(I)V

    .line 353
    :cond_1
    new-instance p0, Landroid/graphics/drawable/LayerDrawable;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    aput-object p1, v1, v0

    invoke-direct {p0, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 355
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/LayerDrawable;->setAutoMirrored(Z)V

    return-object p0

    .line 361
    :cond_2
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    return-object p1
.end method

.method private init(Landroid/util/AttributeSet;I)V
    .locals 3

    .line 84
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 88
    :cond_0
    const-class v0, Lcom/google/android/setupcompat/template/SystemNavBarMixin;

    new-instance v1, Lcom/google/android/setupcompat/template/SystemNavBarMixin;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/setupcompat/template/SystemNavBarMixin;-><init>(Lcom/google/android/setupcompat/internal/TemplateLayout;Landroid/view/Window;)V

    invoke-virtual {p0, v0, v1}, Lcom/google/android/setupcompat/internal/TemplateLayout;->registerMixin(Ljava/lang/Class;Lcom/google/android/setupcompat/template/Mixin;)V

    .line 89
    const-class v0, Lcom/google/android/setupdesign/template/HeaderMixin;

    new-instance v1, Lcom/google/android/setupdesign/template/HeaderMixin;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/setupdesign/template/HeaderMixin;-><init>(Lcom/google/android/setupcompat/internal/TemplateLayout;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0, v0, v1}, Lcom/google/android/setupcompat/internal/TemplateLayout;->registerMixin(Ljava/lang/Class;Lcom/google/android/setupcompat/template/Mixin;)V

    .line 92
    const-class v0, Lcom/google/android/setupdesign/template/DescriptionMixin;

    new-instance v1, Lcom/google/android/setupdesign/template/DescriptionMixin;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/setupdesign/template/DescriptionMixin;-><init>(Lcom/google/android/setupcompat/internal/TemplateLayout;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0, v0, v1}, Lcom/google/android/setupcompat/internal/TemplateLayout;->registerMixin(Ljava/lang/Class;Lcom/google/android/setupcompat/template/Mixin;)V

    .line 93
    const-class v0, Lcom/google/android/setupdesign/template/ProgressBarMixin;

    new-instance v1, Lcom/google/android/setupdesign/template/ProgressBarMixin;

    invoke-direct {v1, p0}, Lcom/google/android/setupdesign/template/ProgressBarMixin;-><init>(Lcom/google/android/setupcompat/internal/TemplateLayout;)V

    invoke-virtual {p0, v0, v1}, Lcom/google/android/setupcompat/internal/TemplateLayout;->registerMixin(Ljava/lang/Class;Lcom/google/android/setupcompat/template/Mixin;)V

    .line 94
    const-class v0, Lcom/google/android/setupdesign/template/NavigationBarMixin;

    new-instance v1, Lcom/google/android/setupdesign/template/NavigationBarMixin;

    invoke-direct {v1, p0}, Lcom/google/android/setupdesign/template/NavigationBarMixin;-><init>(Lcom/google/android/setupcompat/internal/TemplateLayout;)V

    invoke-virtual {p0, v0, v1}, Lcom/google/android/setupcompat/internal/TemplateLayout;->registerMixin(Ljava/lang/Class;Lcom/google/android/setupcompat/template/Mixin;)V

    .line 95
    new-instance v0, Lcom/google/android/setupdesign/template/RequireScrollMixin;

    invoke-direct {v0, p0}, Lcom/google/android/setupdesign/template/RequireScrollMixin;-><init>(Lcom/google/android/setupcompat/internal/TemplateLayout;)V

    .line 96
    const-class v1, Lcom/google/android/setupdesign/template/RequireScrollMixin;

    invoke-virtual {p0, v1, v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->registerMixin(Ljava/lang/Class;Lcom/google/android/setupcompat/template/Mixin;)V

    .line 98
    invoke-virtual {p0}, Lcom/google/android/setupdesign/SetupWizardLayout;->getScrollView()Landroid/widget/ScrollView;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 100
    new-instance v2, Lcom/google/android/setupdesign/template/ScrollViewScrollHandlingDelegate;

    invoke-direct {v2, v0, v1}, Lcom/google/android/setupdesign/template/ScrollViewScrollHandlingDelegate;-><init>(Lcom/google/android/setupdesign/template/RequireScrollMixin;Landroid/widget/ScrollView;)V

    invoke-virtual {v0, v2}, Lcom/google/android/setupdesign/template/RequireScrollMixin;->setScrollHandlingDelegate(Lcom/google/android/setupdesign/template/RequireScrollMixin$ScrollHandlingDelegate;)V

    .line 105
    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/google/android/setupdesign/R$styleable;->SudSetupWizardLayout:[I

    const/4 v2, 0x0

    .line 106
    invoke-virtual {v0, p1, v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 109
    sget p2, Lcom/google/android/setupdesign/R$styleable;->SudSetupWizardLayout_sudBackground:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 111
    invoke-virtual {p0, p2}, Lcom/google/android/setupdesign/SetupWizardLayout;->setLayoutBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 113
    :cond_2
    sget p2, Lcom/google/android/setupdesign/R$styleable;->SudSetupWizardLayout_sudBackgroundTile:I

    .line 114
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 116
    invoke-direct {p0, p2}, Lcom/google/android/setupdesign/SetupWizardLayout;->setBackgroundTile(Landroid/graphics/drawable/Drawable;)V

    .line 121
    :cond_3
    :goto_0
    sget p2, Lcom/google/android/setupdesign/R$styleable;->SudSetupWizardLayout_sudIllustration:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 123
    invoke-virtual {p0, p2}, Lcom/google/android/setupdesign/SetupWizardLayout;->setIllustration(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 125
    :cond_4
    sget p2, Lcom/google/android/setupdesign/R$styleable;->SudSetupWizardLayout_sudIllustrationImage:I

    .line 126
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 127
    sget v0, Lcom/google/android/setupdesign/R$styleable;->SudSetupWizardLayout_sudIllustrationHorizontalTile:I

    .line 128
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz p2, :cond_5

    if-eqz v0, :cond_5

    .line 130
    invoke-direct {p0, p2, v0}, Lcom/google/android/setupdesign/SetupWizardLayout;->setIllustration(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 135
    :cond_5
    :goto_1
    sget p2, Lcom/google/android/setupdesign/R$styleable;->SudSetupWizardLayout_sudDecorPaddingTop:I

    const/4 v0, -0x1

    .line 136
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    if-ne p2, v0, :cond_6

    .line 138
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/google/android/setupdesign/R$dimen;->sud_decor_padding_top:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    .line 140
    :cond_6
    invoke-virtual {p0, p2}, Lcom/google/android/setupdesign/SetupWizardLayout;->setDecorPaddingTop(I)V

    .line 144
    sget p2, Lcom/google/android/setupdesign/R$styleable;->SudSetupWizardLayout_sudIllustrationAspectRatio:I

    const/high16 v0, -0x40800000    # -1.0f

    .line 145
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    cmpl-float v0, p2, v0

    if-nez v0, :cond_7

    .line 147
    new-instance p2, Landroid/util/TypedValue;

    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    .line 148
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/setupdesign/R$dimen;->sud_illustration_aspect_ratio:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p2, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 149
    invoke-virtual {p2}, Landroid/util/TypedValue;->getFloat()F

    move-result p2

    .line 151
    :cond_7
    invoke-virtual {p0, p2}, Lcom/google/android/setupdesign/SetupWizardLayout;->setIllustrationAspectRatio(F)V

    .line 153
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private setBackgroundTile(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 327
    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 328
    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    sget-object v1, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-virtual {v0, v1, v1}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 330
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/setupdesign/SetupWizardLayout;->setLayoutBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private setIllustration(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 264
    sget v0, Lcom/google/android/setupdesign/R$id;->sud_layout_decor:I

    invoke-virtual {p0, v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->findManagedViewById(I)Landroid/view/View;

    move-result-object v0

    .line 265
    instance-of v1, v0, Lcom/google/android/setupdesign/view/Illustration;

    if-eqz v1, :cond_0

    .line 266
    check-cast v0, Lcom/google/android/setupdesign/view/Illustration;

    .line 267
    invoke-direct {p0, p1, p2}, Lcom/google/android/setupdesign/SetupWizardLayout;->getIllustration(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 268
    invoke-virtual {v0, p0}, Lcom/google/android/setupdesign/view/Illustration;->setIllustration(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected findContainer(I)Landroid/view/ViewGroup;
    .locals 0

    if-nez p1, :cond_0

    .line 189
    sget p1, Lcom/google/android/setupdesign/R$id;->sud_layout_content:I

    .line 191
    :cond_0
    invoke-super {p0, p1}, Lcom/google/android/setupcompat/internal/TemplateLayout;->findContainer(I)Landroid/view/ViewGroup;

    move-result-object p0

    return-object p0
.end method

.method public getHeaderText()Ljava/lang/CharSequence;
    .locals 1

    .line 222
    const-class v0, Lcom/google/android/setupdesign/template/HeaderMixin;

    invoke-virtual {p0, v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    move-result-object p0

    check-cast p0, Lcom/google/android/setupdesign/template/HeaderMixin;

    invoke-virtual {p0}, Lcom/google/android/setupdesign/template/HeaderMixin;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public getHeaderTextView()Landroid/widget/TextView;
    .locals 1

    .line 226
    const-class v0, Lcom/google/android/setupdesign/template/HeaderMixin;

    invoke-virtual {p0, v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    move-result-object p0

    check-cast p0, Lcom/google/android/setupdesign/template/HeaderMixin;

    invoke-virtual {p0}, Lcom/google/android/setupdesign/template/HeaderMixin;->getTextView()Landroid/widget/TextView;

    move-result-object p0

    return-object p0
.end method

.method public getNavigationBar()Lcom/google/android/setupdesign/view/NavigationBar;
    .locals 1

    .line 195
    const-class v0, Lcom/google/android/setupdesign/template/NavigationBarMixin;

    invoke-virtual {p0, v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    move-result-object p0

    check-cast p0, Lcom/google/android/setupdesign/template/NavigationBarMixin;

    invoke-virtual {p0}, Lcom/google/android/setupdesign/template/NavigationBarMixin;->getNavigationBar()Lcom/google/android/setupdesign/view/NavigationBar;

    move-result-object p0

    return-object p0
.end method

.method public getProgressBarColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 397
    const-class v0, Lcom/google/android/setupdesign/template/ProgressBarMixin;

    invoke-virtual {p0, v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    move-result-object p0

    check-cast p0, Lcom/google/android/setupdesign/template/ProgressBarMixin;

    invoke-virtual {p0}, Lcom/google/android/setupdesign/template/ProgressBarMixin;->getColor()Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method public getScrollView()Landroid/widget/ScrollView;
    .locals 1

    .line 199
    sget v0, Lcom/google/android/setupdesign/R$id;->sud_bottom_scroll_view:I

    invoke-virtual {p0, v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->findManagedViewById(I)Landroid/view/View;

    move-result-object p0

    .line 200
    instance-of v0, p0, Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/widget/ScrollView;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public isProgressBarShown()Z
    .locals 1

    .line 368
    const-class v0, Lcom/google/android/setupdesign/template/ProgressBarMixin;

    invoke-virtual {p0, v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    move-result-object p0

    check-cast p0, Lcom/google/android/setupdesign/template/ProgressBarMixin;

    invoke-virtual {p0}, Lcom/google/android/setupdesign/template/ProgressBarMixin;->isShown()Z

    move-result p0

    return p0
.end method

.method protected onInflateTemplate(Landroid/view/LayoutInflater;I)Landroid/view/View;
    .locals 1

    if-nez p2, :cond_0

    .line 181
    sget p2, Lcom/google/android/setupdesign/R$layout;->sud_template:I

    .line 183
    :cond_0
    sget v0, Lcom/google/android/setupdesign/R$style;->SudThemeMaterial_Light:I

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/setupcompat/internal/TemplateLayout;->inflateTemplate(Landroid/view/LayoutInflater;II)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .line 166
    instance-of v0, p1, Lcom/google/android/setupdesign/SetupWizardLayout$SavedState;

    if-nez v0, :cond_0

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignoring restore instance state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SetupWizardLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 172
    :cond_0
    check-cast p1, Lcom/google/android/setupdesign/SetupWizardLayout$SavedState;

    .line 173
    invoke-virtual {p1}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 174
    iget-boolean p1, p1, Lcom/google/android/setupdesign/SetupWizardLayout$SavedState;->isProgressBarShown:Z

    .line 175
    invoke-virtual {p0, p1}, Lcom/google/android/setupdesign/SetupWizardLayout;->setProgressBarShown(Z)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 158
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 159
    new-instance v1, Lcom/google/android/setupdesign/SetupWizardLayout$SavedState;

    invoke-direct {v1, v0}, Lcom/google/android/setupdesign/SetupWizardLayout$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 160
    invoke-virtual {p0}, Lcom/google/android/setupdesign/SetupWizardLayout;->isProgressBarShown()Z

    move-result p0

    iput-boolean p0, v1, Lcom/google/android/setupdesign/SetupWizardLayout$SavedState;->isProgressBarShown:Z

    return-object v1
.end method

.method public setBackgroundTile(I)V
    .locals 1

    .line 322
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 323
    invoke-direct {p0, p1}, Lcom/google/android/setupdesign/SetupWizardLayout;->setBackgroundTile(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setDecorPaddingTop(I)V
    .locals 3

    .line 298
    sget v0, Lcom/google/android/setupdesign/R$id;->sud_layout_decor:I

    invoke-virtual {p0, v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->findManagedViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 301
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    .line 300
    invoke-virtual {p0, v0, p1, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    :cond_0
    return-void
.end method

.method public setHeaderText(I)V
    .locals 1

    .line 214
    const-class v0, Lcom/google/android/setupdesign/template/HeaderMixin;

    invoke-virtual {p0, v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    move-result-object p0

    check-cast p0, Lcom/google/android/setupdesign/template/HeaderMixin;

    invoke-virtual {p0, p1}, Lcom/google/android/setupdesign/template/HeaderMixin;->setText(I)V

    return-void
.end method

.method public setHeaderText(Ljava/lang/CharSequence;)V
    .locals 1

    .line 218
    const-class v0, Lcom/google/android/setupdesign/template/HeaderMixin;

    invoke-virtual {p0, v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    move-result-object p0

    check-cast p0, Lcom/google/android/setupdesign/template/HeaderMixin;

    invoke-virtual {p0, p1}, Lcom/google/android/setupdesign/template/HeaderMixin;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setIllustration(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 238
    sget v0, Lcom/google/android/setupdesign/R$id;->sud_layout_decor:I

    invoke-virtual {p0, v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->findManagedViewById(I)Landroid/view/View;

    move-result-object p0

    .line 239
    instance-of v0, p0, Lcom/google/android/setupdesign/view/Illustration;

    if-eqz v0, :cond_0

    .line 240
    check-cast p0, Lcom/google/android/setupdesign/view/Illustration;

    .line 241
    invoke-virtual {p0, p1}, Lcom/google/android/setupdesign/view/Illustration;->setIllustration(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setIllustrationAspectRatio(F)V
    .locals 1

    .line 280
    sget v0, Lcom/google/android/setupdesign/R$id;->sud_layout_decor:I

    invoke-virtual {p0, v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->findManagedViewById(I)Landroid/view/View;

    move-result-object p0

    .line 281
    instance-of v0, p0, Lcom/google/android/setupdesign/view/Illustration;

    if-eqz v0, :cond_0

    .line 282
    check-cast p0, Lcom/google/android/setupdesign/view/Illustration;

    .line 283
    invoke-virtual {p0, p1}, Lcom/google/android/setupdesign/view/Illustration;->setAspectRatio(F)V

    :cond_0
    return-void
.end method

.method public setLayoutBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 310
    sget v0, Lcom/google/android/setupdesign/R$id;->sud_layout_decor:I

    invoke-virtual {p0, v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->findManagedViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 313
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setProgressBarColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 393
    const-class v0, Lcom/google/android/setupdesign/template/ProgressBarMixin;

    invoke-virtual {p0, v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    move-result-object p0

    check-cast p0, Lcom/google/android/setupdesign/template/ProgressBarMixin;

    invoke-virtual {p0, p1}, Lcom/google/android/setupdesign/template/ProgressBarMixin;->setColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setProgressBarShown(Z)V
    .locals 1

    .line 377
    const-class v0, Lcom/google/android/setupdesign/template/ProgressBarMixin;

    invoke-virtual {p0, v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    move-result-object p0

    check-cast p0, Lcom/google/android/setupdesign/template/ProgressBarMixin;

    invoke-virtual {p0, p1}, Lcom/google/android/setupdesign/template/ProgressBarMixin;->setShown(Z)V

    return-void
.end method
