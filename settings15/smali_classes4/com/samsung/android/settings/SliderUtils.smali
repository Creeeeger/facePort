.class public abstract Lcom/samsung/android/settings/SliderUtils;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static mCachedLocale:Ljava/util/Locale;

.field public static mPercentFormat:Landroid/icu/text/NumberFormat;


# direct methods
.method public static formatStateDescription(Landroid/content/Context;Landroidx/appcompat/widget/SeslSeekBar;)Ljava/lang/CharSequence;
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/settings/SliderUtils;->mCachedLocale:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sput-object p0, Lcom/samsung/android/settings/SliderUtils;->mCachedLocale:Ljava/util/Locale;

    invoke-static {p0}, Landroid/icu/text/NumberFormat;->getPercentInstance(Ljava/util/Locale;)Landroid/icu/text/NumberFormat;

    move-result-object p0

    sput-object p0, Lcom/samsung/android/settings/SliderUtils;->mPercentFormat:Landroid/icu/text/NumberFormat;

    :cond_0
    sget-object p0, Lcom/samsung/android/settings/SliderUtils;->mPercentFormat:Landroid/icu/text/NumberFormat;

    invoke-virtual {p1}, Landroidx/appcompat/widget/SeslAbsSeekBar;->getMax()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroidx/appcompat/widget/SeslAbsSeekBar;->getMin()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroidx/appcompat/widget/SeslAbsSeekBar;->getProgress()I

    move-result p1

    int-to-float p1, p1

    invoke-static {v1, v0, p1}, Landroid/util/MathUtils;->lerpInv(FFF)F

    move-result p1

    invoke-static {p1}, Landroid/util/MathUtils;->saturate(F)F

    move-result p1

    float-to-double v0, p1

    invoke-virtual {p0, v0, v1}, Landroid/icu/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
