.class public Lcom/samsung/android/settings/wifi/mobileap/views/WifiApStackedProgressBarPreference;
.super Landroidx/preference/Preference;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final PREFERENCE_LAYOUT:I

.field public static final PROGRESS_COLORS:[I

.field public static final TAG:Ljava/lang/String;

.field public static final UNUSED_LIGHT_COLOR:I


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mIsAnimateProgressBarRequired:Z

.field public mIsDisabledProgressBar:Z

.field public mIsNonWhiteBackgroundRequired:Z

.field public final mStackedDataArray:[F

.field public mStackedDataTotalSum:F


# direct methods
.method static constructor <clinit>()V
    .locals 15

    const-string v0, "#FFC0C9D8"

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->convertToColorRGB(Ljava/lang/String;)I

    move-result v14

    const-string v0, "#80E0E0E0"

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->convertToColorRGB(Ljava/lang/String;)I

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->convertToColorRGB(Ljava/lang/String;)I

    const-string v0, "#393939"

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->convertToColorRGB(Ljava/lang/String;)I

    const-string v0, "#FF387AFF"

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->convertToColorRGB(Ljava/lang/String;)I

    move-result v1

    const-string v0, "#FF154050"

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->convertToColorRGB(Ljava/lang/String;)I

    move-result v2

    const-string v0, "#FF0FBE7A"

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->convertToColorRGB(Ljava/lang/String;)I

    move-result v3

    move v4, v14

    move v5, v14

    move v6, v14

    move v7, v14

    move v8, v14

    move v9, v14

    move v10, v14

    move v11, v14

    move v12, v14

    move v13, v14

    filled-new-array/range {v1 .. v14}, [I

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApStackedProgressBarPreference;->PROGRESS_COLORS:[I

    const-class v0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApStackedProgressBarPreference;

    const-string v0, "WifiApStackedProgressBarPreference"

    sput-object v0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApStackedProgressBarPreference;->TAG:Ljava/lang/String;

    const v0, 0x7f0d0a44

    sput v0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApStackedProgressBarPreference;->PREFERENCE_LAYOUT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApStackedProgressBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApStackedProgressBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApStackedProgressBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/16 p2, 0x15

    new-array p3, p2, [F

    iput-object p3, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApStackedProgressBarPreference;->mStackedDataArray:[F

    const/4 p3, 0x0

    iput p3, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApStackedProgressBarPreference;->mStackedDataTotalSum:F

    const/4 p4, 0x1

    iput-boolean p4, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApStackedProgressBarPreference;->mIsAnimateProgressBarRequired:Z

    const/4 p4, 0x0

    iput-boolean p4, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApStackedProgressBarPreference;->mIsNonWhiteBackgroundRequired:Z

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApStackedProgressBarPreference;->mContext:Landroid/content/Context;

    sget p1, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApStackedProgressBarPreference;->PREFERENCE_LAYOUT:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    :goto_0
    if-ge p4, p2, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApStackedProgressBarPreference;->mStackedDataArray:[F

    aput p3, p1, p4

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 6

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x7f0a0ee2

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/StackProgressbar;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v1, "setIsTop3ColorsToBeShown - false"

    const-string v2, "StackProgressbar"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/StackProgressbar;->mIsTop10ColorsToBeShown:Z

    iget-boolean v2, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApStackedProgressBarPreference;->mIsNonWhiteBackgroundRequired:Z

    if-eqz v2, :cond_0

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApStackedProgressBarPreference;->mContext:Landroid/content/Context;

    const v3, 0x7f0608f3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    :cond_0
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const v4, 0x1010130

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget v2, v2, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_0
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApStackedProgressBarPreference;->mStackedDataArray:[F

    iget v2, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApStackedProgressBarPreference;->mStackedDataTotalSum:F

    iget-boolean v3, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApStackedProgressBarPreference;->mIsAnimateProgressBarRequired:Z

    invoke-virtual {v0, p1, v2, v3}, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/StackProgressbar;->setProgressbar([FFZ)V

    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApStackedProgressBarPreference;->mIsAnimateProgressBarRequired:Z

    return-void
.end method
