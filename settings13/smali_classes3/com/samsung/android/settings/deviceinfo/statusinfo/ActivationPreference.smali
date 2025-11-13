.class public Lcom/samsung/android/settings/deviceinfo/statusinfo/ActivationPreference;
.super Landroidx/preference/Preference;
.source "ActivationPreference.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private textview:Landroid/widget/TextView;


# direct methods
.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/settings/deviceinfo/statusinfo/ActivationPreference;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/ActivationPreference;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/ActivationPreference;->mContext:Landroid/content/Context;

    .line 48
    sget p1, Lcom/android/settings/R$layout;->sec_activation_preference_layout:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method

.method private makeSummary()V
    .locals 5

    .line 60
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/ActivationPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->activation_summary:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "https://support-cn.samsung.com/supportcn/Imei/default.aspx"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 62
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 63
    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v2, v0, 0x3a

    .line 65
    new-instance v3, Lcom/samsung/android/settings/deviceinfo/statusinfo/ActivationPreference$1;

    invoke-direct {v3, p0, v0, v2}, Lcom/samsung/android/settings/deviceinfo/statusinfo/ActivationPreference$1;-><init>(Lcom/samsung/android/settings/deviceinfo/statusinfo/ActivationPreference;II)V

    const/16 v4, 0x21

    .line 87
    invoke-virtual {v1, v3, v0, v2, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 88
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/ActivationPreference;->textview:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/ActivationPreference;->textview:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 1

    .line 53
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x1020010

    .line 54
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/ActivationPreference;->textview:Landroid/widget/TextView;

    .line 56
    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/ActivationPreference;->makeSummary()V

    return-void
.end method
