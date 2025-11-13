.class public final Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference$MultiButtonItem;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mButton:Landroid/view/View;

.field public mDot:Landroid/widget/RadioButton;

.field public mImgIcon:Landroid/widget/ImageView;

.field public mSplashView:Landroid/widget/ImageView;

.field public mTextView:Landroid/widget/TextView;

.field public mWaveL:Landroid/widget/ImageView;

.field public mWaveS:Landroid/widget/ImageView;

.field public final synthetic this$0:Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference$MultiButtonItem;->this$0:Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference;

    return-void
.end method


# virtual methods
.method public final bindView(Landroid/view/View;I)V
    .locals 1

    if-eqz p2, :cond_2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const p2, 0x7f0a0759

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference$MultiButtonItem;->mButton:Landroid/view/View;

    const p2, 0x7f0a075f

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference$MultiButtonItem;->mTextView:Landroid/widget/TextView;

    const p2, 0x7f0a0a19

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference$MultiButtonItem;->mImgIcon:Landroid/widget/ImageView;

    const p2, 0x7f0a1119

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference$MultiButtonItem;->mSplashView:Landroid/widget/ImageView;

    const p2, 0x7f0a075a

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    iput-object p1, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference$MultiButtonItem;->mDot:Landroid/widget/RadioButton;

    goto :goto_0

    :cond_1
    const p2, 0x7f0a096d

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference$MultiButtonItem;->mButton:Landroid/view/View;

    const p2, 0x7f0a0973

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference$MultiButtonItem;->mTextView:Landroid/widget/TextView;

    const p2, 0x7f0a10f9

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference$MultiButtonItem;->mImgIcon:Landroid/widget/ImageView;

    const p2, 0x7f0a096e

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    iput-object p1, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference$MultiButtonItem;->mDot:Landroid/widget/RadioButton;

    goto :goto_0

    :cond_2
    const p2, 0x7f0a0907

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference$MultiButtonItem;->mButton:Landroid/view/View;

    new-instance v0, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference$MultiButtonItem$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference$MultiButtonItem$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference$MultiButtonItem;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    const p2, 0x7f0a090d

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference$MultiButtonItem;->mTextView:Landroid/widget/TextView;

    const p2, 0x7f0a1121

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference$MultiButtonItem;->mImgIcon:Landroid/widget/ImageView;

    const p2, 0x7f0a1129

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference$MultiButtonItem;->mWaveS:Landroid/widget/ImageView;

    const p2, 0x7f0a1128

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference$MultiButtonItem;->mWaveL:Landroid/widget/ImageView;

    const p2, 0x7f0a0908

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    iput-object p1, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference$MultiButtonItem;->mDot:Landroid/widget/RadioButton;

    :goto_0
    return-void
.end method

.method public final setEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference$MultiButtonItem;->mButton:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    iget-object p0, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference$MultiButtonItem;->mButton:Landroid/view/View;

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const p1, 0x3ecccccd    # 0.4f

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public final setSelected(Z)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference$MultiButtonItem;->mTextView:Landroid/widget/TextView;

    const-string/jumbo v1, "sec"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    if-eqz p1, :cond_0

    const/16 v3, 0x258

    goto :goto_0

    :cond_0
    const/16 v3, 0x190

    :goto_0
    invoke-static {v1, v3, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference$MultiButtonItem;->mTextView:Landroid/widget/TextView;

    invoke-static {v0, p1}, Lcom/samsung/android/settings/asbase/utils/SelectionColorUpdater;->updateColor(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference$MultiButtonItem;->mImgIcon:Landroid/widget/ImageView;

    invoke-static {v0, p1}, Lcom/samsung/android/settings/asbase/utils/SelectionColorUpdater;->updateColor(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference$MultiButtonItem;->mWaveS:Landroid/widget/ImageView;

    invoke-static {v0, p1}, Lcom/samsung/android/settings/asbase/utils/SelectionColorUpdater;->updateColor(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference$MultiButtonItem;->mWaveL:Landroid/widget/ImageView;

    invoke-static {v0, p1}, Lcom/samsung/android/settings/asbase/utils/SelectionColorUpdater;->updateColor(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference$MultiButtonItem;->mSplashView:Landroid/widget/ImageView;

    invoke-static {v0, p1}, Lcom/samsung/android/settings/asbase/utils/SelectionColorUpdater;->updateColor(Landroid/view/View;Z)V

    iget-object p0, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference$MultiButtonItem;->mDot:Landroid/widget/RadioButton;

    invoke-virtual {p0, p1}, Landroid/widget/RadioButton;->setChecked(Z)V

    return-void
.end method
