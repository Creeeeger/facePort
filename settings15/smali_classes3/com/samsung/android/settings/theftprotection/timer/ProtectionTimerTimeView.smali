.class public Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerTimeView;
.super Landroid/widget/LinearLayout;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mBuilder:Ljava/lang/StringBuilder;

.field public mColonMS:Landroid/widget/TextView;

.field public final mContext:Landroid/content/Context;

.field public mMinute:I

.field public mMinuteBackground:Landroid/widget/RelativeLayout;

.field public mMinutePostfix:Landroid/widget/TextView;

.field public mMinutePrefix:Landroid/widget/TextView;

.field public mSecond:I

.field public mSecondBackground:Landroid/widget/RelativeLayout;

.field public mSecondPostfix:Landroid/widget/TextView;

.field public mSecondPrefix:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerTimeView;->mBuilder:Ljava/lang/StringBuilder;

    iput-object p1, p0, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerTimeView;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerTimeView;->mBuilder:Ljava/lang/StringBuilder;

    iput-object p1, p0, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerTimeView;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerTimeView;->mBuilder:Ljava/lang/StringBuilder;

    iput-object p1, p0, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerTimeView;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static scaleFontSizeForLanguage(I)I
    .locals 2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "my"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    int-to-float p0, p0

    const v0, 0x3f4ccccd    # 0.8f

    mul-float/2addr p0, v0

    float-to-int p0, p0

    :cond_0
    return p0
.end method


# virtual methods
.method public final setNumber(ILandroid/widget/TextView;)V
    .locals 3

    if-eqz p2, :cond_0

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerTimeView;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerTimeView;->mBuilder:Ljava/lang/StringBuilder;

    const-string v1, "%d"

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerTimeView;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Exception : "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/ArrayIndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ProtectionTimerTimeView"

    invoke-static {p1, p0}, Lcom/samsung/android/settings/theftprotection/logging/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public final setTimeTextView(J)V
    .locals 6

    const-string v0, "ProtectionTimerTimeView"

    const-string/jumbo v1, "setTimeTextView()"

    invoke-static {v0, v1}, Lcom/samsung/android/settings/theftprotection/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerTimeView;->mContext:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->removeAllViews()V

    const v2, 0x7f0d0565

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const v1, 0x7f0a1033

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    const v1, 0x7f0a102b

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerTimeView;->mMinuteBackground:Landroid/widget/RelativeLayout;

    const v1, 0x7f0a102f

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerTimeView;->mSecondBackground:Landroid/widget/RelativeLayout;

    const v1, 0x7f0a102d

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerTimeView;->mMinutePrefix:Landroid/widget/TextView;

    const v1, 0x7f0a102c

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerTimeView;->mMinutePostfix:Landroid/widget/TextView;

    const v1, 0x7f0a1031

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerTimeView;->mSecondPrefix:Landroid/widget/TextView;

    const v1, 0x7f0a1030

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerTimeView;->mSecondPostfix:Landroid/widget/TextView;

    const v1, 0x7f0a102e

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerTimeView;->mColonMS:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerTimeView;->mContext:Landroid/content/Context;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Hm"

    goto :goto_0

    :cond_0
    const-string v1, "hm"

    :goto_0
    invoke-static {v2, v1}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x48

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    const/16 v2, 0x68

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    :cond_1
    if-ne v2, v3, :cond_2

    const-string v1, ":"

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    const/16 v4, 0x6d

    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    if-ne v4, v3, :cond_3

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_3
    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :goto_1
    iget-object v2, p0, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerTimeView;->mColonMS:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "initTimeView() / remainMillis = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/theftprotection/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-wide v0, Lcom/samsung/android/settings/theftprotection/TheftProtectionConstants;->SECOND_MILLIS:J

    rem-long v2, p1, v0

    long-to-int v2, v2

    const/16 v3, 0xc8

    if-le v2, v3, :cond_4

    int-to-long v2, v2

    sub-long v2, v0, v2

    add-long/2addr p1, v2

    :cond_4
    sget-wide v2, Lcom/samsung/android/settings/theftprotection/TheftProtectionConstants;->MINUTE_MILLIS:J

    div-long v4, p1, v2

    long-to-int v4, v4

    iput v4, p0, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerTimeView;->mMinute:I

    rem-long/2addr p1, v2

    div-long/2addr p1, v0

    long-to-int p1, p1

    iput p1, p0, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerTimeView;->mSecond:I

    iget-object p1, p0, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerTimeView;->mMinutePrefix:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerTimeView;->mMinutePostfix:Landroid/widget/TextView;

    invoke-virtual {p0, p1, v4, p2}, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerTimeView;->setTimeToView(Landroid/widget/TextView;ILandroid/widget/TextView;)V

    iget-object p1, p0, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerTimeView;->mSecondPrefix:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerTimeView;->mSecondPostfix:Landroid/widget/TextView;

    iget v0, p0, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerTimeView;->mSecond:I

    invoke-virtual {p0, p1, v0, p2}, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerTimeView;->setTimeToView(Landroid/widget/TextView;ILandroid/widget/TextView;)V

    iget-object p1, p0, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerTimeView;->mMinuteBackground:Landroid/widget/RelativeLayout;

    const/4 p2, -0x2

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz p1, :cond_5

    iput p2, p1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iput p2, p1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    :cond_5
    iget-object p1, p0, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerTimeView;->mSecondBackground:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz p1, :cond_6

    iput p2, p1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iput p2, p1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    :cond_6
    iget-object p1, p0, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerTimeView;->mColonMS:Landroid/widget/TextView;

    if-eqz p1, :cond_8

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v1, :cond_7

    const v2, 0x7f07083c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iput p2, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    :cond_7
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f07083b

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    invoke-static {p2}, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerTimeView;->scaleFontSizeForLanguage(I)I

    move-result p2

    int-to-float p2, p2

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_8
    invoke-virtual {p0}, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerTimeView;->setTimeViewContentDescription()V

    return-void
.end method

.method public final setTimeToView(Landroid/widget/TextView;ILandroid/widget/TextView;)V
    .locals 3

    const v0, 0x7f07083b

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    div-int/lit8 v2, p2, 0xa

    invoke-virtual {p0, v2, p1}, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerTimeView;->setNumber(ILandroid/widget/TextView;)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-static {v2}, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerTimeView;->scaleFontSizeForLanguage(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_0
    if-eqz p3, :cond_1

    rem-int/lit8 p2, p2, 0xa

    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerTimeView;->setNumber(ILandroid/widget/TextView;)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    invoke-static {p0}, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerTimeView;->scaleFontSizeForLanguage(I)I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p3, v1, p0}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_1
    return-void
.end method

.method public final setTimeViewContentDescription()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerTimeView;->mMinute:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f141dc1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerTimeView;->mSecond:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f141dc4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method
