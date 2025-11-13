.class public Lcom/samsung/android/settings/wifi/mobileap/views/WifiApRoundButtonPreferenceSmall;
.super Landroidx/preference/Preference;
.source "WifiApRoundButtonPreferenceSmall.java"


# static fields
.field private static final PREFERENCE_LAYOUT:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mOnButtonClickListener:Landroid/view/View$OnClickListener;

.field private mOnPreferenceClickListener:Landroidx/preference/Preference$OnPreferenceClickListener;

.field private mText:Ljava/lang/String;

.field private mThisPreference:Landroidx/preference/Preference;


# direct methods
.method static bridge synthetic -$$Nest$fgetmOnPreferenceClickListener(Lcom/samsung/android/settings/wifi/mobileap/views/WifiApRoundButtonPreferenceSmall;)Landroidx/preference/Preference$OnPreferenceClickListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApRoundButtonPreferenceSmall;->mOnPreferenceClickListener:Landroidx/preference/Preference$OnPreferenceClickListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmThisPreference(Lcom/samsung/android/settings/wifi/mobileap/views/WifiApRoundButtonPreferenceSmall;)Landroidx/preference/Preference;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApRoundButtonPreferenceSmall;->mThisPreference:Landroidx/preference/Preference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApRoundButtonPreferenceSmall;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 17
    const-class v0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApRoundButtonPreferenceSmall;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApRoundButtonPreferenceSmall;->TAG:Ljava/lang/String;

    .line 18
    sget v0, Lcom/android/settings/R$layout;->sec_wifi_ap_round_button_layout_small:I

    sput v0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApRoundButtonPreferenceSmall;->PREFERENCE_LAYOUT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 47
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApRoundButtonPreferenceSmall;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApRoundButtonPreferenceSmall;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApRoundButtonPreferenceSmall;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 23
    new-instance p2, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApRoundButtonPreferenceSmall$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApRoundButtonPreferenceSmall$1;-><init>(Lcom/samsung/android/settings/wifi/mobileap/views/WifiApRoundButtonPreferenceSmall;)V

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApRoundButtonPreferenceSmall;->mOnButtonClickListener:Landroid/view/View$OnClickListener;

    .line 33
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApRoundButtonPreferenceSmall;->mContext:Landroid/content/Context;

    .line 34
    iput-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApRoundButtonPreferenceSmall;->mThisPreference:Landroidx/preference/Preference;

    .line 35
    sget p1, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApRoundButtonPreferenceSmall;->PREFERENCE_LAYOUT:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 1

    .line 52
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 53
    sget v0, Lcom/android/settings/R$id;->button:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 54
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApRoundButtonPreferenceSmall;->mText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 55
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApRoundButtonPreferenceSmall;->mOnButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V
    .locals 0

    .line 79
    invoke-super {p0, p1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 80
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApRoundButtonPreferenceSmall;->mOnPreferenceClickListener:Landroidx/preference/Preference$OnPreferenceClickListener;

    return-void
.end method

.method public setText(I)V
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApRoundButtonPreferenceSmall;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApRoundButtonPreferenceSmall;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 0

    .line 63
    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApRoundButtonPreferenceSmall;->mText:Ljava/lang/String;

    .line 64
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method

.method public setTitle(I)V
    .locals 0

    .line 74
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApRoundButtonPreferenceSmall;->setText(I)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    .line 69
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApRoundButtonPreferenceSmall;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
