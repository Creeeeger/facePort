.class public Lcom/samsung/android/settings/wifi/mobileap/views/WifiApCalendarRangeSelectorPreference;
.super Landroidx/preference/Preference;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mIsNextButtonEnabled:Z

.field public final mIsNonWhiteBackgroundRequired:Z

.field public mIsPreviousButtonEnabled:Z

.field public mNextButtonClickListener:Landroid/view/View$OnClickListener;

.field public mPreviousButtonClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApCalendarRangeSelectorPreference;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApCalendarRangeSelectorPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApCalendarRangeSelectorPreference;->mIsNonWhiteBackgroundRequired:Z

    iput-boolean p2, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApCalendarRangeSelectorPreference;->mIsPreviousButtonEnabled:Z

    iput-boolean p2, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApCalendarRangeSelectorPreference;->mIsNextButtonEnabled:Z

    const p2, 0x7f0d0a0e

    invoke-virtual {p0, p2}, Landroidx/preference/Preference;->setLayoutResource(I)V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApCalendarRangeSelectorPreference;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 6

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x7f0a0b9c

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    const v1, 0x7f0a0a54

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iget-boolean v2, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApCalendarRangeSelectorPreference;->mIsNonWhiteBackgroundRequired:Z

    if-eqz v2, :cond_0

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApCalendarRangeSelectorPreference;->mContext:Landroid/content/Context;

    const v3, 0x7f0608f3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApCalendarRangeSelectorPreference;->mContext:Landroid/content/Context;

    const v3, 0x7f080ab8

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    iget-boolean p1, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApCalendarRangeSelectorPreference;->mIsNextButtonEnabled:Z

    const v2, 0x3ecccccd    # 0.4f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    goto :goto_1

    :cond_1
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v1, v5}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    :goto_1
    iget-boolean p1, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApCalendarRangeSelectorPreference;->mIsPreviousButtonEnabled:Z

    if-eqz p1, :cond_2

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    goto :goto_2

    :cond_2
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    :goto_2
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApCalendarRangeSelectorPreference;->mPreviousButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApCalendarRangeSelectorPreference;->mNextButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
