.class public final synthetic Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference;->mProgressTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getMax()I

    move-result v2

    const/4 v3, 0x0

    if-nez v1, :cond_1

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    move v0, v3

    goto :goto_1

    :cond_1
    if-ne v1, v2, :cond_2

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_0

    :cond_2
    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v0, v3

    :cond_3
    :goto_1
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    int-to-float v2, v2

    div-float/2addr v3, v2

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference;->mLabels:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    sub-int v1, v2, v1

    :cond_4
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getPaddingLeft()I

    move-result v2

    int-to-float v2, v2

    int-to-float v1, v1

    mul-float/2addr v1, v3

    add-float/2addr v1, v2

    sub-float/2addr v1, v0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference;->mProgressTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setX(F)V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference;->mProgressTextView:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method
