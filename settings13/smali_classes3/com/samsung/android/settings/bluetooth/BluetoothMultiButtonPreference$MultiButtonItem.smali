.class Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;
.super Ljava/lang/Object;
.source "BluetoothMultiButtonPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MultiButtonItem"
.end annotation


# instance fields
.field private mButton:Landroid/view/View;

.field private mDot:Landroid/widget/RadioButton;

.field private mImgIcon:Landroid/widget/ImageView;

.field private mLottieIcon:Lcom/airbnb/lottie/LottieAnimationView;

.field private mLottieUpdated:Z

.field private mTextView:Landroid/widget/TextView;

.field private final selectedColor:I

.field final synthetic this$0:Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;

.field private final unSelectedColor:I

.field private final unSelectedIconColor:I


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;)V
    .locals 2

    .line 295
    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 290
    iput-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;->mLottieUpdated:Z

    .line 292
    invoke-static {p1}, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/settings/R$color;->sec_widget_multi_button_selected_color:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;->selectedColor:I

    .line 293
    invoke-static {p1}, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/settings/R$color;->sec_widget_multi_button_unselected_color:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;->unSelectedColor:I

    .line 294
    invoke-static {p1}, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;)Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/android/settings/R$color;->sec_widget_multi_button_unselected_icon_color:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;->unSelectedIconColor:I

    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;I)V
    .locals 1

    if-eqz p2, :cond_6

    const/4 v0, 0x1

    if-eq p2, v0, :cond_3

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    goto/16 :goto_3

    .line 343
    :cond_0
    sget p2, Lcom/android/settings/R$id;->high_button:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;->mButton:Landroid/view/View;

    .line 344
    sget p2, Lcom/android/settings/R$id;->high_button_text:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;->mTextView:Landroid/widget/TextView;

    .line 345
    iget-object p2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;

    invoke-static {p2}, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->-$$Nest$fgetmIsLottieButton(Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 346
    sget p2, Lcom/android/settings/R$id;->high_button_icon_lottie:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object p2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;->mLottieIcon:Lcom/airbnb/lottie/LottieAnimationView;

    goto :goto_0

    .line 347
    :cond_1
    iget-object p2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;

    invoke-static {p2}, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->-$$Nest$fgetmIsImgButton(Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 348
    sget p2, Lcom/android/settings/R$id;->high_button_icon_image:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;->mImgIcon:Landroid/widget/ImageView;

    .line 350
    :cond_2
    :goto_0
    sget p2, Lcom/android/settings/R$id;->high_button_dot:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;->mDot:Landroid/widget/RadioButton;

    goto/16 :goto_3

    .line 333
    :cond_3
    sget p2, Lcom/android/settings/R$id;->mid_button:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;->mButton:Landroid/view/View;

    .line 334
    sget p2, Lcom/android/settings/R$id;->mid_button_text:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;->mTextView:Landroid/widget/TextView;

    .line 335
    iget-object p2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;

    invoke-static {p2}, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->-$$Nest$fgetmIsLottieButton(Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 336
    sget p2, Lcom/android/settings/R$id;->mid_button_icon_lottie:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object p2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;->mLottieIcon:Lcom/airbnb/lottie/LottieAnimationView;

    goto :goto_1

    .line 337
    :cond_4
    iget-object p2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;

    invoke-static {p2}, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->-$$Nest$fgetmIsImgButton(Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 338
    sget p2, Lcom/android/settings/R$id;->mid_button_icon_image:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;->mImgIcon:Landroid/widget/ImageView;

    .line 340
    :cond_5
    :goto_1
    sget p2, Lcom/android/settings/R$id;->mid_button_dot:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;->mDot:Landroid/widget/RadioButton;

    goto :goto_3

    .line 322
    :cond_6
    sget p2, Lcom/android/settings/R$id;->low_button:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;->mButton:Landroid/view/View;

    .line 323
    sget p2, Lcom/android/settings/R$id;->low_button_text:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;->mTextView:Landroid/widget/TextView;

    .line 324
    iget-object p2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;

    invoke-static {p2}, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->-$$Nest$fgetmIsLottieButton(Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 325
    sget p2, Lcom/android/settings/R$id;->low_button_icon_lottie:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object p2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;->mLottieIcon:Lcom/airbnb/lottie/LottieAnimationView;

    goto :goto_2

    .line 326
    :cond_7
    iget-object p2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;

    invoke-static {p2}, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->-$$Nest$fgetmIsImgButton(Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 327
    sget p2, Lcom/android/settings/R$id;->low_button_icon_image:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;->mImgIcon:Landroid/widget/ImageView;

    .line 330
    :cond_8
    :goto_2
    sget p2, Lcom/android/settings/R$id;->low_button_dot:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;->mDot:Landroid/widget/RadioButton;

    :goto_3
    return-void
.end method

.method public playAnimation()V
    .locals 0

    .line 377
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;->mLottieIcon:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 315
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;->mButton:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 316
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;->mButton:Landroid/view/View;

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const p1, 0x3ecccccd    # 0.4f

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public setIconImage(I)V
    .locals 1

    .line 364
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;->mImgIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 365
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;->mImgIcon:Landroid/widget/ImageView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public setIconText(Ljava/lang/String;)V
    .locals 0

    .line 360
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;->mImgIcon:Landroid/widget/ImageView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public setLottieRes(Ljava/lang/String;)V
    .locals 1

    .line 369
    iget-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;->mLottieUpdated:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;->mLottieIcon:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_0

    .line 370
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 371
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;->mLottieIcon:Lcom/airbnb/lottie/LottieAnimationView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    const/4 p1, 0x1

    .line 372
    iput-boolean p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;->mLottieUpdated:Z

    :cond_0
    return-void
.end method

.method public setLottieUpdated(Z)V
    .locals 0

    .line 381
    iput-boolean p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;->mLottieUpdated:Z

    return-void
.end method

.method public setSelected(Z)V
    .locals 4

    .line 298
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;->mTextView:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    iget v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;->selectedColor:I

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;->unSelectedColor:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 299
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;->mTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 300
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;

    invoke-static {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->-$$Nest$fgetmIsImgButton(Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 301
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;->mImgIcon:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    iget v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;->selectedColor:I

    goto :goto_1

    :cond_1
    iget v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;->unSelectedIconColor:I

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_3

    .line 302
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;

    invoke-static {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->-$$Nest$fgetmIsLottieButton(Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;->mLottieIcon:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_4

    .line 303
    new-instance v0, Lcom/airbnb/lottie/SimpleColorFilter;

    if-eqz p1, :cond_3

    iget v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;->selectedColor:I

    goto :goto_2

    :cond_3
    iget v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;->unSelectedIconColor:I

    :goto_2
    invoke-direct {v0, v1}, Lcom/airbnb/lottie/SimpleColorFilter;-><init>(I)V

    .line 304
    new-instance v1, Lcom/airbnb/lottie/value/LottieValueCallback;

    invoke-direct {v1, v0}, Lcom/airbnb/lottie/value/LottieValueCallback;-><init>(Ljava/lang/Object;)V

    .line 305
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;->mLottieIcon:Lcom/airbnb/lottie/LottieAnimationView;

    new-instance v2, Lcom/airbnb/lottie/model/KeyPath;

    const-string v3, "**"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/airbnb/lottie/model/KeyPath;-><init>([Ljava/lang/String;)V

    sget-object v3, Lcom/airbnb/lottie/LottieProperty;->COLOR_FILTER:Landroid/graphics/ColorFilter;

    invoke-virtual {v0, v2, v3, v1}, Lcom/airbnb/lottie/LottieAnimationView;->addValueCallback(Lcom/airbnb/lottie/model/KeyPath;Ljava/lang/Object;Lcom/airbnb/lottie/value/LottieValueCallback;)V

    .line 307
    :cond_4
    :goto_3
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;->mDot:Landroid/widget/RadioButton;

    invoke-virtual {p0, p1}, Landroid/widget/RadioButton;->setChecked(Z)V

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    .line 356
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setVisible(I)V
    .locals 0

    .line 311
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;->mButton:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
