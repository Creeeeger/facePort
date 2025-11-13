.class public Lcom/samsung/android/settings/wifi/intelligent/WifiWcmUnclickablePreference;
.super Landroidx/preference/SecPreference;
.source "WifiWcmUnclickablePreference.java"


# static fields
.field private static final DBG:Z


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/wifi/intelligent/WifiWcmUnclickablePreference;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 69
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/settings/wifi/intelligent/WifiWcmUnclickablePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 65
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/settings/wifi/intelligent/WifiWcmUnclickablePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .line 38
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/SecPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 40
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiWcmUnclickablePreference;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    .line 41
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSelectable(Z)V

    if-eqz p2, :cond_0

    .line 44
    sget-object v0, Lcom/android/settings/R$styleable;->SecUnclickable:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 45
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 47
    sget-object v0, Lcom/android/settings/R$styleable;->Preference:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p3

    const/4 p4, 0x3

    .line 49
    sget v0, Lcom/android/settings/R$layout;->sec_widget_preference_unclickable:I

    invoke-virtual {p3, p4, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p4

    .line 51
    invoke-virtual {p0, p4}, Landroidx/preference/Preference;->setLayoutResource(I)V

    .line 52
    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V

    .line 54
    sget-object p0, Lcom/android/settings/R$styleable;->SecCategory:[I

    invoke-virtual {p1, p2, p0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p0

    .line 55
    sget p1, Lcom/android/settings/R$styleable;->SecCategory_roundStroke:I

    const/16 p2, 0xf

    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 57
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    .line 59
    :cond_0
    sget p1, Lcom/android/settings/R$layout;->sec_widget_preference_unclickable:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 3

    .line 74
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 75
    sget v0, Lcom/android/settings/R$id;->title:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 76
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiWcmUnclickablePreference;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    .line 77
    invoke-virtual {p0}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 81
    :cond_0
    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->setDividerAllowedAbove(Z)V

    .line 82
    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->setDividerAllowedBelow(Z)V

    return-void
.end method
