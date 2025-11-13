.class public Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;
.super Landroidx/preference/Preference;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static updateMidBarSizeFlag:Z


# instance fields
.field public final m4IconBg:I

.field public mBottomLayout:Landroid/widget/RelativeLayout;

.field public final mBtnDoubleHigh:Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;

.field public final mBtnHigh:Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;

.field public final mBtnLow:Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;

.field public final mBtnMid:Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;

.field public final mContext:Landroid/content/Context;

.field public mCustomView:Landroid/view/View;

.field public mDoubleHigh4Icon:I

.field public mDoubleHigh4Text:Ljava/lang/String;

.field public mDoubleHighEnabled:Z

.field public mDoubleHighVisible:I

.field public mHigh4Icon:I

.field public mHigh4Text:Ljava/lang/String;

.field public mHighEnabled:Z

.field public final mHighVisible:I

.field public mListener:Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController$$ExternalSyntheticLambda0;

.field public mLow4Icon:I

.field public mLow4Text:Ljava/lang/String;

.field public mLowEnabled:Z

.field public final mLowVisible:I

.field public mMid4Icon:I

.field public mMid4Text:Ljava/lang/String;

.field public mMidEnabled:Z

.field public final mMidVisible:I

.field public mOptionVisible:Z

.field public selectedPosition:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const v0, 0x7f0d084a

    const v1, 0x7f0a0229

    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p2, 0x0

    iput p2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mLow4Icon:I

    iput p2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mMid4Icon:I

    iput p2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mHigh4Icon:I

    iput p2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mDoubleHigh4Icon:I

    const v1, 0x7f08088a

    iput v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->m4IconBg:I

    const-string v1, ""

    iput-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mLow4Text:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mMid4Text:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mHigh4Text:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mDoubleHigh4Text:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mLowEnabled:Z

    iput-boolean p2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mMidEnabled:Z

    iput-boolean p2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mHighEnabled:Z

    iput-boolean p2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mDoubleHighEnabled:Z

    iput p2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mLowVisible:I

    iput p2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mMidVisible:I

    iput p2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mHighVisible:I

    const/16 v1, 0x8

    iput v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mDoubleHighVisible:I

    iput-boolean p2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mOptionVisible:Z

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setLayoutResource(I)V

    new-instance p1, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;-><init>(Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;)V

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mBtnLow:Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;

    new-instance p1, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;-><init>(Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;)V

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mBtnMid:Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;

    new-instance p1, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;-><init>(Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;)V

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mBtnHigh:Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;

    new-instance p1, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;-><init>(Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;)V

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mBtnDoubleHigh:Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;

    return-void
.end method


# virtual methods
.method public final onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 5

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mCustomView:Landroid/view/View;

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mBtnLow:Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;->bindView(Landroid/view/View;I)V

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mBtnMid:Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mCustomView:Landroid/view/View;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v2}, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;->bindView(Landroid/view/View;I)V

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mBtnHigh:Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mCustomView:Landroid/view/View;

    const/4 v2, 0x2

    invoke-virtual {p1, v0, v2}, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;->bindView(Landroid/view/View;I)V

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mBtnDoubleHigh:Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mCustomView:Landroid/view/View;

    const/4 v2, 0x3

    invoke-virtual {p1, v0, v2}, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;->bindView(Landroid/view/View;I)V

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mCustomView:Landroid/view/View;

    const v0, 0x7f0a0af3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mOptionVisible:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mOptionVisible:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mCustomView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setClickable(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mCustomView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setFocusable(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mCustomView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mCustomView:Landroid/view/View;

    const v0, 0x7f0a0909

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mCustomView:Landroid/view/View;

    const v2, 0x7f0a096f

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mCustomView:Landroid/view/View;

    const v3, 0x7f0a075b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mCustomView:Landroid/view/View;

    const v4, 0x7f0a0564

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mBtnLow:Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mLow4Text:Ljava/lang/String;

    iget-object p1, p1, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mBtnMid:Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mMid4Text:Ljava/lang/String;

    iget-object p1, p1, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mBtnHigh:Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mHigh4Text:Ljava/lang/String;

    iget-object p1, p1, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mBtnDoubleHigh:Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mDoubleHigh4Text:Ljava/lang/String;

    iget-object p1, p1, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mBtnLow:Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;

    iget-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mLowEnabled:Z

    iget-object p1, p1, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;->mButton:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mBtnMid:Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;

    iget-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mMidEnabled:Z

    iget-object p1, p1, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;->mButton:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mBtnHigh:Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;

    iget-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mHighEnabled:Z

    iget-object p1, p1, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;->mButton:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mBtnDoubleHigh:Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;

    iget-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mDoubleHighEnabled:Z

    iget-object p1, p1, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;->mButton:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mBtnLow:Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;

    iget v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mLowVisible:I

    iget-object p1, p1, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;->mButton:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mBtnMid:Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;

    iget v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mMidVisible:I

    iget-object p1, p1, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;->mButton:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mBtnHigh:Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;

    iget v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mHighVisible:I

    iget-object p1, p1, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;->mButton:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mBtnDoubleHigh:Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;

    iget v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mDoubleHighVisible:I

    iget-object p1, p1, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;->mButton:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mBtnLow:Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;

    iget v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mLow4Icon:I

    iget-object v2, p1, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;->mImgIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p1, p1, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;->mImgIcon:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mBtnMid:Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;

    iget v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mMid4Icon:I

    iget-object v2, p1, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;->mImgIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p1, p1, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;->mImgIcon:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mBtnHigh:Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;

    iget v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mHigh4Icon:I

    iget-object v2, p1, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;->mImgIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p1, p1, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;->mImgIcon:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mBtnDoubleHigh:Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;

    iget v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mDoubleHigh4Icon:I

    iget-object v2, p1, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;->mImgIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p1, p1, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;->mImgIcon:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mCustomView:Landroid/view/View;

    const v0, 0x7f0a06b0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iget-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mLowEnabled:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mMidEnabled:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mHighEnabled:Z

    if-nez v0, :cond_2

    const v0, 0x3e8f5c29    # 0.28f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    goto :goto_1

    :cond_2
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    :goto_1
    iget p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->selectedPosition:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->updateButtonStatus$1(I)V

    new-instance p1, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$1;-><init>(Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;)V

    sget-boolean v0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->updateMidBarSizeFlag:Z

    if-nez v0, :cond_4

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mCustomView:Landroid/view/View;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :cond_4
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a0909

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    iput p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->selectedPosition:I

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a096f

    if-ne v0, v1, :cond_1

    const/4 p1, 0x1

    iput p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->selectedPosition:I

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a075b

    if-ne v0, v1, :cond_2

    const/4 p1, 0x2

    iput p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->selectedPosition:I

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a0564

    if-ne p1, v0, :cond_5

    const/4 p1, 0x3

    iput p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->selectedPosition:I

    :goto_0
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mCustomView:Landroid/view/View;

    if-eqz p1, :cond_3

    iget p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->selectedPosition:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->updateButtonStatus$1(I)V

    :cond_3
    iget p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->selectedPosition:I

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mListener:Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController$$ExternalSyntheticLambda0;

    if-eqz v0, :cond_4

    iget-object v0, v0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;

    invoke-static {v0, p0, p1}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->$r8$lambda$pTwE27nqNxqpge3vtgRTCcvp0vg(Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;I)Z

    :cond_4
    return-void

    :cond_5
    const-string p0, "BluetoothMultiButtonPreference"

    const-string/jumbo p1, "onClick: Invalid id"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final setButtonEnabled(IZ)V
    .locals 1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean p2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mDoubleHighEnabled:Z

    goto :goto_0

    :cond_1
    iput-boolean p2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mHighEnabled:Z

    goto :goto_0

    :cond_2
    iput-boolean p2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mMidEnabled:Z

    goto :goto_0

    :cond_3
    iput-boolean p2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mLowEnabled:Z

    :goto_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method

.method public final setSelectedPosition(I)V
    .locals 1

    iput p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->selectedPosition:I

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mCustomView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->updateButtonStatus$1(I)V

    :cond_0
    return-void
.end method

.method public final updateButtonStatus$1(I)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    if-eq p1, v0, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const/4 v2, 0x3

    if-eq p1, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mBtnLow:Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;

    invoke-virtual {p1, v1}, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;->setSelected(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mBtnMid:Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;

    invoke-virtual {p1, v1}, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;->setSelected(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mBtnHigh:Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;

    invoke-virtual {p1, v1}, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;->setSelected(Z)V

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mBtnDoubleHigh:Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;->setSelected(Z)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mBtnLow:Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;

    invoke-virtual {p1, v1}, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;->setSelected(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mBtnMid:Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;

    invoke-virtual {p1, v1}, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;->setSelected(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mBtnHigh:Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;

    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;->setSelected(Z)V

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mBtnDoubleHigh:Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;->setSelected(Z)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mBtnLow:Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;

    invoke-virtual {p1, v1}, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;->setSelected(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mBtnMid:Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;

    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;->setSelected(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mBtnHigh:Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;

    invoke-virtual {p1, v1}, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;->setSelected(Z)V

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mBtnDoubleHigh:Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;->setSelected(Z)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mBtnLow:Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;

    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;->setSelected(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mBtnMid:Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;

    invoke-virtual {p1, v1}, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;->setSelected(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mBtnHigh:Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;

    invoke-virtual {p1, v1}, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;->setSelected(Z)V

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference;->mBtnDoubleHigh:Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/bluetooth/BluetoothMultiButtonPreference$MultiButtonItem;->setSelected(Z)V

    :goto_0
    return-void
.end method
