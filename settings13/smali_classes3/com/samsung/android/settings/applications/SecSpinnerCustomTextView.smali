.class public Lcom/samsung/android/settings/applications/SecSpinnerCustomTextView;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "SecSpinnerCustomTextView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    invoke-static {p1, p0}, Lcom/android/settings/Utils;->setMaxFontScale(Landroid/content/Context;Landroid/widget/TextView;)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 0

    .line 70
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;->onMeasure(II)V

    return-void
.end method
