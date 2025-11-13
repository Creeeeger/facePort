.class public final Lcom/android/settingslib/widget/BannerMessagePreference$ButtonInfo;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mButton:Landroid/widget/Button;

.field public mColor:I

.field public mListener:Landroid/view/View$OnClickListener;

.field public mText:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final setUpButton()V
    .locals 2

    iget-object v0, p0, Lcom/android/settingslib/widget/BannerMessagePreference$ButtonInfo;->mButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settingslib/widget/BannerMessagePreference$ButtonInfo;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settingslib/widget/BannerMessagePreference$ButtonInfo;->mButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settingslib/widget/BannerMessagePreference$ButtonInfo;->mListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/settingslib/widget/BannerMessagePreference$ButtonInfo;->mButton:Landroid/widget/Button;

    iget v1, p0, Lcom/android/settingslib/widget/BannerMessagePreference$ButtonInfo;->mColor:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v0, p0, Lcom/android/settingslib/widget/BannerMessagePreference$ButtonInfo;->mText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settingslib/widget/BannerMessagePreference$ButtonInfo;->mButton:Landroid/widget/Button;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/widget/BannerMessagePreference$ButtonInfo;->mButton:Landroid/widget/Button;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setVisibility(I)V

    :goto_0
    return-void
.end method
