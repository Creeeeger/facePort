.class Lcom/samsung/android/settings/widget/SecActionButtonsPreference$ButtonInfo;
.super Ljava/lang/Object;
.source "SecActionButtonsPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/widget/SecActionButtonsPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ButtonInfo"
.end annotation


# instance fields
.field private mIsEnabled:Z

.field private mIsPositive:Z

.field private mIsVisible:Z

.field private mListener:Landroid/view/View$OnClickListener;

.field private mNegativeButton:Lcom/samsung/android/settings/widget/SecRoundButtonView;

.field private mPositiveButton:Lcom/samsung/android/settings/widget/SecRoundButtonView;

.field private mText:Ljava/lang/CharSequence;


# direct methods
.method static bridge synthetic -$$Nest$fgetmIsEnabled(Lcom/samsung/android/settings/widget/SecActionButtonsPreference$ButtonInfo;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/settings/widget/SecActionButtonsPreference$ButtonInfo;->mIsEnabled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmListener(Lcom/samsung/android/settings/widget/SecActionButtonsPreference$ButtonInfo;)Landroid/view/View$OnClickListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/widget/SecActionButtonsPreference$ButtonInfo;->mListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPositiveButton(Lcom/samsung/android/settings/widget/SecActionButtonsPreference$ButtonInfo;)Lcom/samsung/android/settings/widget/SecRoundButtonView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/widget/SecActionButtonsPreference$ButtonInfo;->mPositiveButton:Lcom/samsung/android/settings/widget/SecRoundButtonView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmText(Lcom/samsung/android/settings/widget/SecActionButtonsPreference$ButtonInfo;)Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/widget/SecActionButtonsPreference$ButtonInfo;->mText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmIsEnabled(Lcom/samsung/android/settings/widget/SecActionButtonsPreference$ButtonInfo;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/widget/SecActionButtonsPreference$ButtonInfo;->mIsEnabled:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmListener(Lcom/samsung/android/settings/widget/SecActionButtonsPreference$ButtonInfo;Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/widget/SecActionButtonsPreference$ButtonInfo;->mListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmNegativeButton(Lcom/samsung/android/settings/widget/SecActionButtonsPreference$ButtonInfo;Lcom/samsung/android/settings/widget/SecRoundButtonView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/widget/SecActionButtonsPreference$ButtonInfo;->mNegativeButton:Lcom/samsung/android/settings/widget/SecRoundButtonView;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPositiveButton(Lcom/samsung/android/settings/widget/SecActionButtonsPreference$ButtonInfo;Lcom/samsung/android/settings/widget/SecRoundButtonView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/widget/SecActionButtonsPreference$ButtonInfo;->mPositiveButton:Lcom/samsung/android/settings/widget/SecRoundButtonView;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmText(Lcom/samsung/android/settings/widget/SecActionButtonsPreference$ButtonInfo;Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/widget/SecActionButtonsPreference$ButtonInfo;->mText:Ljava/lang/CharSequence;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 182
    iput-boolean v0, p0, Lcom/samsung/android/settings/widget/SecActionButtonsPreference$ButtonInfo;->mIsPositive:Z

    .line 183
    iput-boolean v0, p0, Lcom/samsung/android/settings/widget/SecActionButtonsPreference$ButtonInfo;->mIsEnabled:Z

    .line 184
    iput-boolean v0, p0, Lcom/samsung/android/settings/widget/SecActionButtonsPreference$ButtonInfo;->mIsVisible:Z

    return-void
.end method

.method private setUpButton(Landroid/widget/Button;)V
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecActionButtonsPreference$ButtonInfo;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 203
    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecActionButtonsPreference$ButtonInfo;->mListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    iget-boolean p0, p0, Lcom/samsung/android/settings/widget/SecActionButtonsPreference$ButtonInfo;->mIsEnabled:Z

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method


# virtual methods
.method setUpButton()V
    .locals 3

    .line 187
    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecActionButtonsPreference$ButtonInfo;->mPositiveButton:Lcom/samsung/android/settings/widget/SecRoundButtonView;

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/widget/SecActionButtonsPreference$ButtonInfo;->setUpButton(Landroid/widget/Button;)V

    .line 188
    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecActionButtonsPreference$ButtonInfo;->mNegativeButton:Lcom/samsung/android/settings/widget/SecRoundButtonView;

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/widget/SecActionButtonsPreference$ButtonInfo;->setUpButton(Landroid/widget/Button;)V

    .line 189
    iget-boolean v0, p0, Lcom/samsung/android/settings/widget/SecActionButtonsPreference$ButtonInfo;->mIsVisible:Z

    const/4 v1, 0x4

    if-nez v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecActionButtonsPreference$ButtonInfo;->mPositiveButton:Lcom/samsung/android/settings/widget/SecRoundButtonView;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 191
    iget-object p0, p0, Lcom/samsung/android/settings/widget/SecActionButtonsPreference$ButtonInfo;->mNegativeButton:Lcom/samsung/android/settings/widget/SecRoundButtonView;

    invoke-virtual {p0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 192
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/settings/widget/SecActionButtonsPreference$ButtonInfo;->mIsPositive:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 193
    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecActionButtonsPreference$ButtonInfo;->mPositiveButton:Lcom/samsung/android/settings/widget/SecRoundButtonView;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 194
    iget-object p0, p0, Lcom/samsung/android/settings/widget/SecActionButtonsPreference$ButtonInfo;->mNegativeButton:Lcom/samsung/android/settings/widget/SecRoundButtonView;

    invoke-virtual {p0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 196
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecActionButtonsPreference$ButtonInfo;->mPositiveButton:Lcom/samsung/android/settings/widget/SecRoundButtonView;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 197
    iget-object p0, p0, Lcom/samsung/android/settings/widget/SecActionButtonsPreference$ButtonInfo;->mNegativeButton:Lcom/samsung/android/settings/widget/SecRoundButtonView;

    invoke-virtual {p0, v2}, Landroid/widget/Button;->setVisibility(I)V

    :goto_0
    return-void
.end method
