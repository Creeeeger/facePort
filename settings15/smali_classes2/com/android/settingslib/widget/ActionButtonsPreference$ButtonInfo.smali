.class public final Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mButton:Landroid/widget/Button;

.field public mIcon:Landroid/graphics/drawable/Drawable;

.field public mIsEnabled:Z

.field public mIsVisible:Z

.field public mListener:Landroid/view/View$OnClickListener;

.field public mText:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;->mIsEnabled:Z

    iput-boolean v0, p0, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;->mIsVisible:Z

    return-void
.end method


# virtual methods
.method public final isVisible()Z
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;->mButton:Landroid/widget/Button;

    invoke-virtual {p0}, Landroid/widget/Button;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final setUpButton()V
    .locals 3

    iget-object v0, p0, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;->mButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;->mButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;->mListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;->mButton:Landroid/widget/Button;

    iget-boolean v1, p0, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;->mIsEnabled:Z

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;->mButton:Landroid/widget/Button;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v2, v1, v1}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-boolean v0, p0, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;->mIsVisible:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;->mText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;->mButton:Landroid/widget/Button;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/settingslib/widget/ActionButtonsPreference$ButtonInfo;->mButton:Landroid/widget/Button;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setVisibility(I)V

    :goto_0
    return-void
.end method
