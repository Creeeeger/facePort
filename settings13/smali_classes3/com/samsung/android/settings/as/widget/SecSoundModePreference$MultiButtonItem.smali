.class Lcom/samsung/android/settings/as/widget/SecSoundModePreference$MultiButtonItem;
.super Ljava/lang/Object;
.source "SecSoundModePreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/as/widget/SecSoundModePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MultiButtonItem"
.end annotation


# instance fields
.field private mButton:Landroid/view/View;

.field private mDot:Landroid/widget/RadioButton;

.field private mImgIcon:Landroid/widget/ImageView;

.field private mSplashView:Landroid/widget/ImageView;

.field private mTextView:Landroid/widget/TextView;

.field private mWaveL:Landroid/widget/ImageView;

.field private mWaveS:Landroid/widget/ImageView;

.field private final selectedColor:I

.field final synthetic this$0:Lcom/samsung/android/settings/as/widget/SecSoundModePreference;

.field private final unSelectedColor:I

.field private final unSelectedIconColor:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmDot(Lcom/samsung/android/settings/as/widget/SecSoundModePreference$MultiButtonItem;)Landroid/widget/RadioButton;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/as/widget/SecSoundModePreference$MultiButtonItem;->mDot:Landroid/widget/RadioButton;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmImgIcon(Lcom/samsung/android/settings/as/widget/SecSoundModePreference$MultiButtonItem;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/as/widget/SecSoundModePreference$MultiButtonItem;->mImgIcon:Landroid/widget/ImageView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSplashView(Lcom/samsung/android/settings/as/widget/SecSoundModePreference$MultiButtonItem;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/as/widget/SecSoundModePreference$MultiButtonItem;->mSplashView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWaveL(Lcom/samsung/android/settings/as/widget/SecSoundModePreference$MultiButtonItem;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/as/widget/SecSoundModePreference$MultiButtonItem;->mWaveL:Landroid/widget/ImageView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWaveS(Lcom/samsung/android/settings/as/widget/SecSoundModePreference$MultiButtonItem;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/as/widget/SecSoundModePreference$MultiButtonItem;->mWaveS:Landroid/widget/ImageView;

    return-object p0
.end method

.method constructor <init>(Lcom/samsung/android/settings/as/widget/SecSoundModePreference;)V
    .locals 2

    .line 273
    iput-object p1, p0, Lcom/samsung/android/settings/as/widget/SecSoundModePreference$MultiButtonItem;->this$0:Lcom/samsung/android/settings/as/widget/SecSoundModePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 270
    invoke-static {p1}, Lcom/samsung/android/settings/as/widget/SecSoundModePreference;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/as/widget/SecSoundModePreference;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/settings/R$color;->sec_widget_multi_button_selected_color:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/as/widget/SecSoundModePreference$MultiButtonItem;->selectedColor:I

    .line 271
    invoke-static {p1}, Lcom/samsung/android/settings/as/widget/SecSoundModePreference;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/as/widget/SecSoundModePreference;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/settings/R$color;->sec_widget_multi_button_unselected_color:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/as/widget/SecSoundModePreference$MultiButtonItem;->unSelectedColor:I

    .line 272
    invoke-static {p1}, Lcom/samsung/android/settings/as/widget/SecSoundModePreference;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/as/widget/SecSoundModePreference;)Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/android/settings/R$color;->sec_widget_multi_button_unselected_icon_color:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/settings/as/widget/SecSoundModePreference$MultiButtonItem;->unSelectedIconColor:I

    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;I)V
    .locals 1

    if-eqz p2, :cond_2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    goto/16 :goto_0

    .line 315
    :cond_0
    sget p2, Lcom/android/settings/R$id;->high_button:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/settings/as/widget/SecSoundModePreference$MultiButtonItem;->mButton:Landroid/view/View;

    .line 316
    sget p2, Lcom/android/settings/R$id;->high_button_text:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/samsung/android/settings/as/widget/SecSoundModePreference$MultiButtonItem;->mTextView:Landroid/widget/TextView;

    .line 317
    sget p2, Lcom/android/settings/R$id;->mute_image_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/samsung/android/settings/as/widget/SecSoundModePreference$MultiButtonItem;->mImgIcon:Landroid/widget/ImageView;

    .line 318
    sget p2, Lcom/android/settings/R$id;->volume_icon_mute_splash:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/samsung/android/settings/as/widget/SecSoundModePreference$MultiButtonItem;->mSplashView:Landroid/widget/ImageView;

    .line 319
    sget p2, Lcom/android/settings/R$id;->high_button_dot:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    iput-object p1, p0, Lcom/samsung/android/settings/as/widget/SecSoundModePreference$MultiButtonItem;->mDot:Landroid/widget/RadioButton;

    goto :goto_0

    .line 309
    :cond_1
    sget p2, Lcom/android/settings/R$id;->mid_button:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/settings/as/widget/SecSoundModePreference$MultiButtonItem;->mButton:Landroid/view/View;

    .line 310
    sget p2, Lcom/android/settings/R$id;->mid_button_text:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/samsung/android/settings/as/widget/SecSoundModePreference$MultiButtonItem;->mTextView:Landroid/widget/TextView;

    .line 311
    sget p2, Lcom/android/settings/R$id;->vibrate_image_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/samsung/android/settings/as/widget/SecSoundModePreference$MultiButtonItem;->mImgIcon:Landroid/widget/ImageView;

    .line 312
    sget p2, Lcom/android/settings/R$id;->mid_button_dot:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    iput-object p1, p0, Lcom/samsung/android/settings/as/widget/SecSoundModePreference$MultiButtonItem;->mDot:Landroid/widget/RadioButton;

    goto :goto_0

    .line 301
    :cond_2
    sget p2, Lcom/android/settings/R$id;->low_button:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/settings/as/widget/SecSoundModePreference$MultiButtonItem;->mButton:Landroid/view/View;

    .line 302
    sget p2, Lcom/android/settings/R$id;->low_button_text:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/samsung/android/settings/as/widget/SecSoundModePreference$MultiButtonItem;->mTextView:Landroid/widget/TextView;

    .line 303
    sget p2, Lcom/android/settings/R$id;->volume_normal_icon:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/samsung/android/settings/as/widget/SecSoundModePreference$MultiButtonItem;->mImgIcon:Landroid/widget/ImageView;

    .line 304
    sget p2, Lcom/android/settings/R$id;->volume_sound_icon_wave_s:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/samsung/android/settings/as/widget/SecSoundModePreference$MultiButtonItem;->mWaveS:Landroid/widget/ImageView;

    .line 305
    sget p2, Lcom/android/settings/R$id;->volume_sound_icon_wave_l:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/samsung/android/settings/as/widget/SecSoundModePreference$MultiButtonItem;->mWaveL:Landroid/widget/ImageView;

    .line 306
    sget p2, Lcom/android/settings/R$id;->low_button_dot:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    iput-object p1, p0, Lcom/samsung/android/settings/as/widget/SecSoundModePreference$MultiButtonItem;->mDot:Landroid/widget/RadioButton;

    :goto_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 294
    iget-object v0, p0, Lcom/samsung/android/settings/as/widget/SecSoundModePreference$MultiButtonItem;->mButton:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 295
    iget-object p0, p0, Lcom/samsung/android/settings/as/widget/SecSoundModePreference$MultiButtonItem;->mButton:Landroid/view/View;

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const p1, 0x3ecccccd    # 0.4f

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public setSelected(Z)V
    .locals 2

    .line 276
    iget-object v0, p0, Lcom/samsung/android/settings/as/widget/SecSoundModePreference$MultiButtonItem;->mTextView:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    iget v1, p0, Lcom/samsung/android/settings/as/widget/SecSoundModePreference$MultiButtonItem;->selectedColor:I

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/samsung/android/settings/as/widget/SecSoundModePreference$MultiButtonItem;->unSelectedColor:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 277
    iget-object v0, p0, Lcom/samsung/android/settings/as/widget/SecSoundModePreference$MultiButtonItem;->mTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 278
    iget-object v0, p0, Lcom/samsung/android/settings/as/widget/SecSoundModePreference$MultiButtonItem;->mImgIcon:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    iget v1, p0, Lcom/samsung/android/settings/as/widget/SecSoundModePreference$MultiButtonItem;->selectedColor:I

    goto :goto_1

    :cond_1
    iget v1, p0, Lcom/samsung/android/settings/as/widget/SecSoundModePreference$MultiButtonItem;->unSelectedIconColor:I

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 279
    iget-object v0, p0, Lcom/samsung/android/settings/as/widget/SecSoundModePreference$MultiButtonItem;->mWaveS:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    if-eqz p1, :cond_2

    .line 280
    iget v1, p0, Lcom/samsung/android/settings/as/widget/SecSoundModePreference$MultiButtonItem;->selectedColor:I

    goto :goto_2

    :cond_2
    iget v1, p0, Lcom/samsung/android/settings/as/widget/SecSoundModePreference$MultiButtonItem;->unSelectedIconColor:I

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 281
    iget-object v0, p0, Lcom/samsung/android/settings/as/widget/SecSoundModePreference$MultiButtonItem;->mWaveL:Landroid/widget/ImageView;

    if-eqz p1, :cond_3

    iget v1, p0, Lcom/samsung/android/settings/as/widget/SecSoundModePreference$MultiButtonItem;->selectedColor:I

    goto :goto_3

    :cond_3
    iget v1, p0, Lcom/samsung/android/settings/as/widget/SecSoundModePreference$MultiButtonItem;->unSelectedIconColor:I

    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 283
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/as/widget/SecSoundModePreference$MultiButtonItem;->mSplashView:Landroid/widget/ImageView;

    if-eqz v0, :cond_6

    if-eqz p1, :cond_5

    .line 284
    iget v1, p0, Lcom/samsung/android/settings/as/widget/SecSoundModePreference$MultiButtonItem;->selectedColor:I

    goto :goto_4

    :cond_5
    iget v1, p0, Lcom/samsung/android/settings/as/widget/SecSoundModePreference$MultiButtonItem;->unSelectedIconColor:I

    :goto_4
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 286
    :cond_6
    iget-object p0, p0, Lcom/samsung/android/settings/as/widget/SecSoundModePreference$MultiButtonItem;->mDot:Landroid/widget/RadioButton;

    invoke-virtual {p0, p1}, Landroid/widget/RadioButton;->setChecked(Z)V

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    .line 324
    iget-object p0, p0, Lcom/samsung/android/settings/as/widget/SecSoundModePreference$MultiButtonItem;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setVisible(I)V
    .locals 0

    .line 290
    iget-object p0, p0, Lcom/samsung/android/settings/as/widget/SecSoundModePreference$MultiButtonItem;->mButton:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
