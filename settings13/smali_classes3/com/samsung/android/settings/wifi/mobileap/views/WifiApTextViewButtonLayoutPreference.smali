.class public Lcom/samsung/android/settings/wifi/mobileap/views/WifiApTextViewButtonLayoutPreference;
.super Landroidx/preference/Preference;
.source "WifiApTextViewButtonLayoutPreference.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field public static final TEXT_VIEW_BUTTON_LAYOUT:I


# instance fields
.field private isEnabled:Z

.field private mContext:Landroid/content/Context;

.field private mDividerAllowedAbove:Z

.field private mDividerAllowedBelow:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    const-class v0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApTextViewButtonLayoutPreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApTextViewButtonLayoutPreference;->TAG:Ljava/lang/String;

    .line 18
    sget v0, Lcom/android/settings/R$layout;->sec_wifi_ap_text_button_layout:I

    sput v0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApTextViewButtonLayoutPreference;->TEXT_VIEW_BUTTON_LAYOUT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 41
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApTextViewButtonLayoutPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x101008e

    .line 37
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApTextViewButtonLayoutPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 33
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApTextViewButtonLayoutPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p2, 0x1

    .line 22
    iput-boolean p2, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApTextViewButtonLayoutPreference;->isEnabled:Z

    const/4 p2, 0x0

    .line 23
    iput-boolean p2, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApTextViewButtonLayoutPreference;->mDividerAllowedAbove:Z

    .line 24
    iput-boolean p2, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApTextViewButtonLayoutPreference;->mDividerAllowedBelow:Z

    .line 28
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApTextViewButtonLayoutPreference;->mContext:Landroid/content/Context;

    .line 29
    sget p1, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApTextViewButtonLayoutPreference;->TEXT_VIEW_BUTTON_LAYOUT:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApTextViewButtonLayoutPreference;-><init>(Landroid/content/Context;)V

    .line 46
    invoke-virtual {p0, p2}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 3

    .line 61
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x1020016

    .line 63
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 64
    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApTextViewButtonLayoutPreference;->mDividerAllowedAbove:Z

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->setDividerAllowedAbove(Z)V

    .line 65
    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApTextViewButtonLayoutPreference;->mDividerAllowedBelow:Z

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->setDividerAllowedBelow(Z)V

    .line 66
    iget-boolean p1, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApTextViewButtonLayoutPreference;->isEnabled:Z

    if-eqz p1, :cond_0

    const/high16 p0, 0x3f800000    # 1.0f

    .line 67
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_0

    .line 69
    :cond_0
    new-instance p1, Landroid/util/TypedValue;

    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    .line 70
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApTextViewButtonLayoutPreference;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    const v1, 0x1010033

    const/4 v2, 0x1

    invoke-virtual {p0, v1, p1, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 71
    invoke-virtual {p1}, Landroid/util/TypedValue;->getFloat()F

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setAlpha(F)V

    :goto_0
    return-void
.end method

.method public setAboveDividerVisibility(Z)V
    .locals 1

    .line 56
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApTextViewButtonLayoutPreference;->mDividerAllowedBelow:Z

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApTextViewButtonLayoutPreference;->setDividerLine(ZZ)V

    return-void
.end method

.method public setDividerLine(ZZ)V
    .locals 0

    .line 50
    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApTextViewButtonLayoutPreference;->mDividerAllowedAbove:Z

    .line 51
    iput-boolean p2, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApTextViewButtonLayoutPreference;->mDividerAllowedBelow:Z

    .line 52
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 77
    invoke-super {p0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 78
    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApTextViewButtonLayoutPreference;->isEnabled:Z

    .line 79
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method
