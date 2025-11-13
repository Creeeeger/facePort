.class public final Lcom/android/settingslib/widget/BannerMessagePreference$ButtonInfo;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mButton:Landroid/widget/Button;

.field public mColor:I

.field public final mIsVisible:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settingslib/widget/BannerMessagePreference$ButtonInfo;->mIsVisible:Z

    return-void
.end method


# virtual methods
.method public final setUpButton()V
    .locals 3

    iget-object v0, p0, Lcom/android/settingslib/widget/BannerMessagePreference$ButtonInfo;->mButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settingslib/widget/BannerMessagePreference$ButtonInfo;->mButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/settingslib/widget/BannerMessagePreference$ButtonInfo;->mButton:Landroid/widget/Button;

    iget v2, p0, Lcom/android/settingslib/widget/BannerMessagePreference$ButtonInfo;->mColor:I

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextColor(I)V

    iget-boolean v0, p0, Lcom/android/settingslib/widget/BannerMessagePreference$ButtonInfo;->mIsVisible:Z

    if-eqz v0, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

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
