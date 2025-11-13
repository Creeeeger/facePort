.class public Lcom/samsung/android/settings/wifi/mobileap/views/WifiApStackedProgressBarPreference;
.super Landroidx/preference/Preference;
.source "WifiApStackedProgressBarPreference.java"


# static fields
.field public static final NO_COLOR:I

.field public static final OTHERS_COLOR:I

.field private static final PREFERENCE_LAYOUT:I

.field public static final PROGRESS_COLORS:[I

.field private static final TAG:Ljava/lang/String;

.field public static final UNUSED_DARK_COLOR:I

.field public static final UNUSED_LIGHT_COLOR:I


# instance fields
.field private mAnimateProgressBar:Z

.field private mContext:Landroid/content/Context;

.field private mIsDisabledProgressBar:Z

.field private mIsNonWhiteBackgroundRequired:Z

.field private mStackedDataArray:[F

.field private mStackedDataTotalSum:F

.field private mThisPreference:Landroidx/preference/Preference;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "#FFC0C9D8"

    .line 22
    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->convertToColorRGB(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApStackedProgressBarPreference;->OTHERS_COLOR:I

    const-string v1, "#80E0E0E0"

    .line 23
    invoke-static {v1}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->convertToColorRGB(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApStackedProgressBarPreference;->NO_COLOR:I

    .line 24
    invoke-static {v1}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->convertToColorRGB(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApStackedProgressBarPreference;->UNUSED_LIGHT_COLOR:I

    const-string v1, "#393939"

    .line 25
    invoke-static {v1}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->convertToColorRGB(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApStackedProgressBarPreference;->UNUSED_DARK_COLOR:I

    const/16 v1, 0xe

    new-array v1, v1, [I

    const-string v2, "#FF42A0FE"

    .line 27
    invoke-static {v2}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->convertToColorRGB(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    aput v2, v1, v3

    const-string v2, "#FF154050"

    .line 28
    invoke-static {v2}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->convertToColorRGB(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    aput v2, v1, v3

    const-string v2, "#FF0FBE7A"

    .line 29
    invoke-static {v2}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->convertToColorRGB(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x2

    aput v2, v1, v3

    const/4 v2, 0x3

    aput v0, v1, v2

    const/4 v2, 0x4

    aput v0, v1, v2

    const/4 v2, 0x5

    aput v0, v1, v2

    const/4 v2, 0x6

    aput v0, v1, v2

    const/4 v2, 0x7

    aput v0, v1, v2

    const/16 v2, 0x8

    aput v0, v1, v2

    const/16 v2, 0x9

    aput v0, v1, v2

    const/16 v2, 0xa

    aput v0, v1, v2

    const/16 v2, 0xb

    aput v0, v1, v2

    const/16 v2, 0xc

    aput v0, v1, v2

    const/16 v2, 0xd

    aput v0, v1, v2

    sput-object v1, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApStackedProgressBarPreference;->PROGRESS_COLORS:[I

    .line 50
    const-class v0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApStackedProgressBarPreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApStackedProgressBarPreference;->TAG:Ljava/lang/String;

    .line 51
    sget v0, Lcom/android/settings/R$layout;->sec_wifi_ap_stacked_progress_bar_view_layout:I

    sput v0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApStackedProgressBarPreference;->PREFERENCE_LAYOUT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 76
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApStackedProgressBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 72
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApStackedProgressBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 68
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApStackedProgressBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p2, 0x6

    new-array p2, p2, [F

    .line 54
    iput-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApStackedProgressBarPreference;->mStackedDataArray:[F

    const/4 p2, 0x0

    .line 55
    iput p2, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApStackedProgressBarPreference;->mStackedDataTotalSum:F

    const/4 p2, 0x1

    .line 56
    iput-boolean p2, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApStackedProgressBarPreference;->mAnimateProgressBar:Z

    const/4 p2, 0x0

    .line 57
    iput-boolean p2, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApStackedProgressBarPreference;->mIsDisabledProgressBar:Z

    .line 58
    iput-boolean p2, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApStackedProgressBarPreference;->mIsNonWhiteBackgroundRequired:Z

    .line 62
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApStackedProgressBarPreference;->mContext:Landroid/content/Context;

    .line 63
    iput-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApStackedProgressBarPreference;->mThisPreference:Landroidx/preference/Preference;

    .line 64
    sget p1, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApStackedProgressBarPreference;->PREFERENCE_LAYOUT:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 4

    .line 81
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 82
    sget v0, Lcom/android/settings/R$id;->stacked_progress_bar:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/StackProgressbar;

    .line 83
    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApStackedProgressBarPreference;->mIsNonWhiteBackgroundRequired:Z

    if-eqz v1, :cond_0

    .line 84
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApStackedProgressBarPreference;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$color;->sesl_round_and_bgcolor_light:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 86
    :cond_0
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApStackedProgressBarPreference;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$drawable;->default_preference_background:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 88
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApStackedProgressBarPreference;->mStackedDataArray:[F

    iget v1, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApStackedProgressBarPreference;->mStackedDataTotalSum:F

    iget-boolean v2, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApStackedProgressBarPreference;->mAnimateProgressBar:Z

    iget-boolean v3, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApStackedProgressBarPreference;->mIsDisabledProgressBar:Z

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/StackProgressbar;->setProgressbar([FFZZ)V

    const/4 p1, 0x0

    .line 89
    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApStackedProgressBarPreference;->mAnimateProgressBar:Z

    return-void
.end method

.method public setDisabledProgressBar(Z)V
    .locals 0

    .line 133
    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApStackedProgressBarPreference;->mIsDisabledProgressBar:Z

    .line 134
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method

.method public setIsNonWhiteBackgroundRequired(Z)V
    .locals 0

    .line 139
    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApStackedProgressBarPreference;->mIsNonWhiteBackgroundRequired:Z

    .line 140
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method

.method public setProgressBarEntries(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/StackedProgressBarEntry;",
            ">;)V"
        }
    .end annotation

    .line 97
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x4

    const/4 v4, 0x0

    if-ge v0, v3, :cond_0

    new-array v0, v3, [F

    .line 99
    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApStackedProgressBarPreference;->mStackedDataArray:[F

    aput v4, v0, v2

    const/4 v3, 0x1

    aput v4, v0, v3

    const/4 v3, 0x2

    aput v4, v0, v3

    aput v4, v0, v1

    goto :goto_0

    .line 105
    :cond_0
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApStackedProgressBarPreference;->mStackedDataArray:[F

    .line 109
    :goto_0
    iput v4, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApStackedProgressBarPreference;->mStackedDataTotalSum:F

    .line 111
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApStackedProgressBarPreference;->TAG:Ljava/lang/String;

    const-string v3, "entry iteration start"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/StackedProgressBarEntry;

    .line 113
    sget-object v3, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApStackedProgressBarPreference;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "entry: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/StackedProgressBarEntry;->getProgressEntryValue()F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget v3, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApStackedProgressBarPreference;->mStackedDataTotalSum:F

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/StackedProgressBarEntry;->getProgressEntryValue()F

    move-result v4

    add-float/2addr v3, v4

    iput v3, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApStackedProgressBarPreference;->mStackedDataTotalSum:F

    .line 115
    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/StackedProgressBarEntry;->getProgressEntryName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "unused_data_name"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    if-ge v2, v1, :cond_2

    .line 117
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApStackedProgressBarPreference;->mStackedDataArray:[F

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/StackedProgressBarEntry;->getProgressEntryValue()F

    move-result v0

    aput v0, v3, v2

    move v2, v4

    goto :goto_1

    .line 119
    :cond_2
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApStackedProgressBarPreference;->mStackedDataArray:[F

    aget v4, v3, v2

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/StackedProgressBarEntry;->getProgressEntryValue()F

    move-result v0

    add-float/2addr v4, v0

    aput v4, v3, v2

    goto :goto_1

    .line 124
    :cond_3
    sget-object p1, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApStackedProgressBarPreference;->TAG:Ljava/lang/String;

    const-string v0, "entry iteration end"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method

.method public updateProgressBar()V
    .locals 0

    .line 93
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method
