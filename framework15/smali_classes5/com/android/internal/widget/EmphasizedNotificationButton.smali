.class public Lcom/android/internal/widget/EmphasizedNotificationButton;
.super Landroid/widget/Button;
.source "EmphasizedNotificationButton.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/EmphasizedNotificationButton$SpacerSpan;,
        Lcom/android/internal/widget/EmphasizedNotificationButton$CenterBesideImageSpan;
    }
.end annotation


# static fields
.field private static final blacklist FIRST_STRONG_ISOLATE:Ljava/lang/String; = "\u2068"

.field private static final blacklist IMAGE_SPAN_TEXT:Ljava/lang/String; = "\ufffd"

.field private static final blacklist LEFT_TO_RIGHT_ISOLATE:Ljava/lang/String; = "\u2066"

.field private static final blacklist POP_DIRECTIONAL_ISOLATE:Ljava/lang/String; = "\u2069"

.field private static final blacklist RIGHT_TO_LEFT_ISOLATE:Ljava/lang/String; = "\u2067"

.field private static final blacklist SPACER_SPAN_TEXT:Ljava/lang/String; = "\u00a0"

.field private static final blacklist TAG:Ljava/lang/String; = "EmphasizedNotificationButton"


# instance fields
.field private final blacklist mBackground:Landroid/graphics/drawable/GradientDrawable;

.field private blacklist mGluePending:Z

.field private blacklist mGluedLayoutDirection:I

.field private blacklist mIconSize:I

.field private blacklist mIconToGlue:Landroid/graphics/drawable/Drawable;

.field private blacklist mInitialDrawablePadding:I

.field private blacklist mLabelToGlue:Ljava/lang/CharSequence;

.field private blacklist mPriority:Z

.field private final blacklist mRipple:Landroid/graphics/drawable/RippleDrawable;


# direct methods
.method public static synthetic blacklist $r8$lambda$5CE8kCROMxWM-ZwhCWhAl_p0kwM(Lcom/android/internal/widget/EmphasizedNotificationButton;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/widget/EmphasizedNotificationButton;->lambda$glueIconAsync$1(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$KB5uAWLyLcdl5CQPnHr9d_g-4Mg(Lcom/android/internal/widget/EmphasizedNotificationButton;Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/widget/EmphasizedNotificationButton;->lambda$glueLabelAsync$2(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$prwlPqoltwpDgPLx-93RXhAHfC0(Lcom/android/internal/widget/EmphasizedNotificationButton;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/widget/EmphasizedNotificationButton;->lambda$setImageIconAsync$0(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/EmphasizedNotificationButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/widget/EmphasizedNotificationButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/widget/EmphasizedNotificationButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/widget/EmphasizedNotificationButton;->mGluedLayoutDirection:I

    invoke-virtual {p0}, Lcom/android/internal/widget/EmphasizedNotificationButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/RippleDrawable;

    iput-object v0, p0, Lcom/android/internal/widget/EmphasizedNotificationButton;->mRipple:Landroid/graphics/drawable/RippleDrawable;

    iget-object v0, p0, Lcom/android/internal/widget/EmphasizedNotificationButton;->mRipple:Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/RippleDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/android/internal/widget/EmphasizedNotificationButton;->mRipple:Landroid/graphics/drawable/RippleDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/RippleDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/DrawableWrapper;

    invoke-virtual {v0}, Landroid/graphics/drawable/DrawableWrapper;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/GradientDrawable;

    iput-object v2, p0, Lcom/android/internal/widget/EmphasizedNotificationButton;->mBackground:Landroid/graphics/drawable/GradientDrawable;

    iget-object v2, p0, Lcom/android/internal/widget/EmphasizedNotificationButton;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10502da

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/EmphasizedNotificationButton;->mIconSize:I

    sget-object v2, Landroid/R$styleable;->TextView:[I

    invoke-virtual {p1, p2, v2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    const/16 v3, 0x34

    :try_start_0
    invoke-virtual {v2, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/EmphasizedNotificationButton;->mInitialDrawablePadding:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->close()V

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "iconSize = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/EmphasizedNotificationButton;->mIconSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "px, initialDrawablePadding = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/EmphasizedNotificationButton;->mInitialDrawablePadding:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "px"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "EmphasizedNotificationButton"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception v1

    if-eqz v2, :cond_1

    :try_start_1
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v3

    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v1
.end method

.method private blacklist appendSpan(Landroid/text/SpannableStringBuilder;Ljava/lang/CharSequence;Ljava/lang/Object;)V
    .locals 3

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    invoke-virtual {p1, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, p3, v0, v1, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method

.method private blacklist glueIconAndLabel(I)V
    .locals 6

    iget-object v0, p0, Lcom/android/internal/widget/EmphasizedNotificationButton;->mIconToGlue:Landroid/graphics/drawable/Drawable;

    const-string v1, "EmphasizedNotificationButton"

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/EmphasizedNotificationButton;->mLabelToGlue:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    const-string/jumbo v0, "glueIconAndLabel: null icon and label, setting text to empty string"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/EmphasizedNotificationButton;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/EmphasizedNotificationButton;->mIconToGlue:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    const-string/jumbo v0, "glueIconAndLabel: null icon, setting text to label"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/widget/EmphasizedNotificationButton;->mLabelToGlue:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/EmphasizedNotificationButton;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/EmphasizedNotificationButton;->mLabelToGlue:Ljava/lang/CharSequence;

    const/4 v2, 0x2

    const-string/jumbo v3, "\ufffd"

    if-nez v0, :cond_2

    const-string/jumbo v0, "glueIconAndLabel: null label, setting text to ImageSpan with icon"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    new-instance v1, Landroid/text/style/ImageSpan;

    iget-object v4, p0, Lcom/android/internal/widget/EmphasizedNotificationButton;->mIconToGlue:Landroid/graphics/drawable/Drawable;

    invoke-direct {v1, v4, v2}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    invoke-direct {p0, v0, v3, v1}, Lcom/android/internal/widget/EmphasizedNotificationButton;->appendSpan(Landroid/text/SpannableStringBuilder;Ljava/lang/CharSequence;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/EmphasizedNotificationButton;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_2
    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "glueIconAndLabel: icon = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/widget/EmphasizedNotificationButton;->mIconToGlue:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", iconSize = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/widget/EmphasizedNotificationButton;->mIconSize:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "px, initialDrawablePadding = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/widget/EmphasizedNotificationButton;->mInitialDrawablePadding:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "px, labelToGlue.length = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/widget/EmphasizedNotificationButton;->mLabelToGlue:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", rtlLayout = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/internal/widget/EmphasizedNotificationButton;->logIfTextDirectionNotFirstStrong()V

    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    if-eqz v0, :cond_4

    const-string/jumbo v4, "\u2067"

    goto :goto_1

    :cond_4
    const-string/jumbo v4, "\u2066"

    :goto_1
    invoke-virtual {v1, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    new-instance v4, Landroid/text/style/ImageSpan;

    iget-object v5, p0, Lcom/android/internal/widget/EmphasizedNotificationButton;->mIconToGlue:Landroid/graphics/drawable/Drawable;

    invoke-direct {v4, v5, v2}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    invoke-direct {p0, v1, v3, v4}, Lcom/android/internal/widget/EmphasizedNotificationButton;->appendSpan(Landroid/text/SpannableStringBuilder;Ljava/lang/CharSequence;Ljava/lang/Object;)V

    new-instance v2, Lcom/android/internal/widget/EmphasizedNotificationButton$SpacerSpan;

    iget v3, p0, Lcom/android/internal/widget/EmphasizedNotificationButton;->mInitialDrawablePadding:I

    invoke-direct {v2, v3}, Lcom/android/internal/widget/EmphasizedNotificationButton$SpacerSpan;-><init>(I)V

    const-string/jumbo v3, "\u00a0"

    invoke-direct {p0, v1, v3, v2}, Lcom/android/internal/widget/EmphasizedNotificationButton;->appendSpan(Landroid/text/SpannableStringBuilder;Ljava/lang/CharSequence;Ljava/lang/Object;)V

    const-string/jumbo v2, "\u2068"

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    iget-object v2, p0, Lcom/android/internal/widget/EmphasizedNotificationButton;->mLabelToGlue:Ljava/lang/CharSequence;

    new-instance v3, Lcom/android/internal/widget/EmphasizedNotificationButton$CenterBesideImageSpan;

    iget v4, p0, Lcom/android/internal/widget/EmphasizedNotificationButton;->mIconSize:I

    invoke-direct {v3, v4}, Lcom/android/internal/widget/EmphasizedNotificationButton$CenterBesideImageSpan;-><init>(I)V

    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/widget/EmphasizedNotificationButton;->appendSpan(Landroid/text/SpannableStringBuilder;Ljava/lang/CharSequence;Ljava/lang/Object;)V

    const-string/jumbo v2, "\u2069"

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/EmphasizedNotificationButton;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private blacklist glueIconAndLabelIfNeeded()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/internal/widget/EmphasizedNotificationButton;->mGluePending:Z

    const-string v1, "EmphasizedNotificationButton"

    if-nez v0, :cond_0

    const-string/jumbo v0, "glueIconAndLabelIfNeeded: glue not pending; doing nothing"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Landroid/app/Flags;->evenlyDividedCallStyleActionLayout()Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "glueIconAndLabelIfNeeded: new action layout disabled; doing nothing"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/widget/EmphasizedNotificationButton;->isLayoutDirectionResolved()Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "glueIconAndLabelIfNeeded: layout direction not resolved; doing nothing"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/widget/EmphasizedNotificationButton;->getLayoutDirection()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    const-string/jumbo v2, "glueIconAndLabelIfNeeded: resolved layout direction neither LTR nor RTL; doing nothing"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    invoke-direct {p0, v0}, Lcom/android/internal/widget/EmphasizedNotificationButton;->glueIconAndLabel(I)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/widget/EmphasizedNotificationButton;->mGluePending:Z

    iput v0, p0, Lcom/android/internal/widget/EmphasizedNotificationButton;->mGluedLayoutDirection:I

    return-void
.end method

.method private synthetic blacklist lambda$glueIconAsync$1(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/widget/EmphasizedNotificationButton;->setIconToGlue(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private synthetic blacklist lambda$glueLabelAsync$2(Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/widget/EmphasizedNotificationButton;->setLabelToGlue(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private synthetic blacklist lambda$setImageIconAsync$0(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/widget/EmphasizedNotificationButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private blacklist logIfTextDirectionNotFirstStrong()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/internal/widget/EmphasizedNotificationButton;->isTextDirectionResolved()Z

    move-result v0

    const-string v1, "EmphasizedNotificationButton"

    if-nez v0, :cond_0

    const-string/jumbo v0, "glueIconAndLabel: text direction not resolved; letting View assume FIRST STRONG"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/EmphasizedNotificationButton;->getTextDirection()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "glueIconAndLabel: expected text direction TEXT_DIRECTION_FIRST_STRONG but found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; will use a FIRST STRONG ISOLATE regardless"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private blacklist prepareIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/internal/widget/EmphasizedNotificationButton;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    sget-object v0, Landroid/graphics/BlendMode;->SRC_IN:Landroid/graphics/BlendMode;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setTintBlendMode(Landroid/graphics/BlendMode;)V

    iget v0, p0, Lcom/android/internal/widget/EmphasizedNotificationButton;->mIconSize:I

    iget v1, p0, Lcom/android/internal/widget/EmphasizedNotificationButton;->mIconSize:I

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-void
.end method

.method private blacklist setIconToGlue(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    invoke-static {}, Landroid/app/Flags;->evenlyDividedCallStyleActionLayout()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "EmphasizedNotificationButton"

    const-string/jumbo v1, "glueIcon: new action layout disabled; doing nothing"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-eqz p1, :cond_1

    invoke-direct {p0, p1}, Lcom/android/internal/widget/EmphasizedNotificationButton;->prepareIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    iput-object p1, p0, Lcom/android/internal/widget/EmphasizedNotificationButton;->mIconToGlue:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/EmphasizedNotificationButton;->mGluePending:Z

    invoke-direct {p0}, Lcom/android/internal/widget/EmphasizedNotificationButton;->glueIconAndLabelIfNeeded()V

    return-void
.end method

.method private blacklist setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/internal/widget/EmphasizedNotificationButton;->prepareIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0, v0}, Lcom/android/internal/widget/EmphasizedNotificationButton;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private blacklist setLabelToGlue(Ljava/lang/CharSequence;)V
    .locals 2

    invoke-static {}, Landroid/app/Flags;->evenlyDividedCallStyleActionLayout()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "EmphasizedNotificationButton"

    const-string/jumbo v1, "glueLabel: new action layout disabled; doing nothing"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iput-object p1, p0, Lcom/android/internal/widget/EmphasizedNotificationButton;->mLabelToGlue:Ljava/lang/CharSequence;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/EmphasizedNotificationButton;->mGluePending:Z

    invoke-direct {p0}, Lcom/android/internal/widget/EmphasizedNotificationButton;->glueIconAndLabelIfNeeded()V

    return-void
.end method


# virtual methods
.method public blacklist glueIcon(Landroid/graphics/drawable/Icon;)V
    .locals 1
    .annotation runtime Landroid/view/RemotableViewMethod;
        asyncImpl = "glueIconAsync"
    .end annotation

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/EmphasizedNotificationButton;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/internal/widget/EmphasizedNotificationButton;->setIconToGlue(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public blacklist glueIconAsync(Landroid/graphics/drawable/Icon;)Ljava/lang/Runnable;
    .locals 2
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/EmphasizedNotificationButton;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    new-instance v1, Lcom/android/internal/widget/EmphasizedNotificationButton$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, v0}, Lcom/android/internal/widget/EmphasizedNotificationButton$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/widget/EmphasizedNotificationButton;Landroid/graphics/drawable/Drawable;)V

    return-object v1
.end method

.method public blacklist glueLabel(Ljava/lang/CharSequence;)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
        asyncImpl = "glueLabelAsync"
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/internal/widget/EmphasizedNotificationButton;->setLabelToGlue(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public blacklist glueLabelAsync(Ljava/lang/CharSequence;)Ljava/lang/Runnable;
    .locals 1
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    new-instance v0, Lcom/android/internal/widget/EmphasizedNotificationButton$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/widget/EmphasizedNotificationButton$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/widget/EmphasizedNotificationButton;Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public blacklist isPriority()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/widget/EmphasizedNotificationButton;->mPriority:Z

    return v0
.end method

.method public whitelist onRtlPropertiesChanged(I)V
    .locals 4

    invoke-super {p0, p1}, Landroid/widget/Button;->onRtlPropertiesChanged(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onRtlPropertiesChanged: layoutDirection = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", gluedLayoutDirection = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/EmphasizedNotificationButton;->mGluedLayoutDirection:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EmphasizedNotificationButton"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/internal/widget/EmphasizedNotificationButton;->mGluedLayoutDirection:I

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eq v0, v2, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget v2, p0, Lcom/android/internal/widget/EmphasizedNotificationButton;->mGluedLayoutDirection:I

    if-eq p1, v2, :cond_1

    const-string/jumbo v2, "onRtlPropertiesChanged: layout direction changed; regluing"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v3, p0, Lcom/android/internal/widget/EmphasizedNotificationButton;->mGluePending:Z

    :cond_1
    invoke-direct {p0}, Lcom/android/internal/widget/EmphasizedNotificationButton;->glueIconAndLabelIfNeeded()V

    return-void
.end method

.method public blacklist setButtonBackground(Landroid/content/res/ColorStateList;)V
    .locals 1
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iget-object v0, p0, Lcom/android/internal/widget/EmphasizedNotificationButton;->mBackground:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p0}, Lcom/android/internal/widget/EmphasizedNotificationButton;->invalidate()V

    return-void
.end method

.method public blacklist setImageIcon(Landroid/graphics/drawable/Icon;)V
    .locals 1
    .annotation runtime Landroid/view/RemotableViewMethod;
        asyncImpl = "setImageIconAsync"
    .end annotation

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/EmphasizedNotificationButton;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/internal/widget/EmphasizedNotificationButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public blacklist setImageIconAsync(Landroid/graphics/drawable/Icon;)Ljava/lang/Runnable;
    .locals 2
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/EmphasizedNotificationButton;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    new-instance v1, Lcom/android/internal/widget/EmphasizedNotificationButton$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Lcom/android/internal/widget/EmphasizedNotificationButton$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/widget/EmphasizedNotificationButton;Landroid/graphics/drawable/Drawable;)V

    return-object v1
.end method

.method public blacklist setIsPriority(Z)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput-boolean p1, p0, Lcom/android/internal/widget/EmphasizedNotificationButton;->mPriority:Z

    return-void
.end method

.method public blacklist setRippleColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iget-object v0, p0, Lcom/android/internal/widget/EmphasizedNotificationButton;->mRipple:Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p0}, Lcom/android/internal/widget/EmphasizedNotificationButton;->invalidate()V

    return-void
.end method
