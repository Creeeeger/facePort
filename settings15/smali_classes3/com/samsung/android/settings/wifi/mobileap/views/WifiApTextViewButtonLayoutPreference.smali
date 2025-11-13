.class public Lcom/samsung/android/settings/wifi/mobileap/views/WifiApTextViewButtonLayoutPreference;
.super Landroidx/preference/Preference;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public isEnabled:Z

.field public isPaddingSet:Z

.field public final mContext:Landroid/content/Context;

.field public mDividerAllowedAbove:Z

.field public mDividerAllowedBelow:Z

.field public mPaddingBottomInDp:I

.field public mPaddingLeftInDp:I

.field public mPaddingRightInDp:I

.field public mPaddingTopInDp:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApTextViewButtonLayoutPreference;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApTextViewButtonLayoutPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x101008e

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApTextViewButtonLayoutPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApTextViewButtonLayoutPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApTextViewButtonLayoutPreference;->isEnabled:Z

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApTextViewButtonLayoutPreference;->mDividerAllowedAbove:Z

    iput-boolean p2, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApTextViewButtonLayoutPreference;->mDividerAllowedBelow:Z

    iput p2, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApTextViewButtonLayoutPreference;->mPaddingTopInDp:I

    iput p2, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApTextViewButtonLayoutPreference;->mPaddingBottomInDp:I

    iput p2, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApTextViewButtonLayoutPreference;->mPaddingLeftInDp:I

    iput p2, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApTextViewButtonLayoutPreference;->mPaddingRightInDp:I

    iput-boolean p2, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApTextViewButtonLayoutPreference;->isPaddingSet:Z

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApTextViewButtonLayoutPreference;->mContext:Landroid/content/Context;

    const p1, 0x7f0d0a47

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApTextViewButtonLayoutPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p2}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public final onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 5

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x1020016

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApTextViewButtonLayoutPreference;->mDividerAllowedAbove:Z

    iput-boolean v1, p1, Landroidx/preference/PreferenceViewHolder;->mDividerAllowedAbove:Z

    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApTextViewButtonLayoutPreference;->mDividerAllowedBelow:Z

    iput-boolean v1, p1, Landroidx/preference/PreferenceViewHolder;->mDividerAllowedBelow:Z

    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApTextViewButtonLayoutPreference;->isEnabled:Z

    if-eqz v1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApTextViewButtonLayoutPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x1010033

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    invoke-virtual {v1}, Landroid/util/TypedValue;->getFloat()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    :goto_0
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApTextViewButtonLayoutPreference;->isPaddingSet:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApTextViewButtonLayoutPreference;->mPaddingTopInDp:I

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->convertDpToPixel(Landroid/content/Context;I)I

    move-result v0

    iget v1, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApTextViewButtonLayoutPreference;->mPaddingBottomInDp:I

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->convertDpToPixel(Landroid/content/Context;I)I

    move-result v1

    iget v2, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApTextViewButtonLayoutPreference;->mPaddingLeftInDp:I

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->convertDpToPixel(Landroid/content/Context;I)I

    move-result v2

    iget v3, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApTextViewButtonLayoutPreference;->mPaddingRightInDp:I

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->convertDpToPixel(Landroid/content/Context;I)I

    move-result v3

    iget-object v4, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v4, v2, v0, v3, v1}, Landroid/view/View;->setPadding(IIII)V

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/16 v0, 0x18

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->convertDpToPixel(Landroid/content/Context;I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setMinimumHeight(I)V

    :cond_1
    return-void
.end method

.method public final setEnabled(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApTextViewButtonLayoutPreference;->isEnabled:Z

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method
