.class public Lcom/samsung/android/settings/eyecomfort/EyeComfortSpinnerPreference;
.super Landroidx/preference/SecDropDownPreference;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mAdapter:Lcom/samsung/android/settings/eyecomfort/EyeComfortSpinnerPreference$ScheduleTypeArrayAdapter;

.field public mBlueLightFilterTypeEntries:[Ljava/lang/CharSequence;

.field public final mContext:Landroid/content/Context;

.field public final mInflater:Landroid/view/LayoutInflater;

.field public mListener:Lcom/samsung/android/settings/eyecomfort/EyeComfortSpinnerPreference$onSpinnerItemClickListener;

.field public mScheduleTypeIndex:I

.field public mSpinner:Landroidx/appcompat/widget/AppCompatSpinner;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSpinnerPreference;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const v0, 0x7f04021c

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/preference/SecDropDownPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSpinnerPreference;->mListener:Lcom/samsung/android/settings/eyecomfort/EyeComfortSpinnerPreference$onSpinnerItemClickListener;

    iput v1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSpinnerPreference;->mScheduleTypeIndex:I

    iput-object p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSpinnerPreference;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSpinnerPreference;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public final onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/preference/SecDropDownPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    iget-object v0, p0, Landroidx/preference/ListPreference;->mEntries:[Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSpinnerPreference;->mBlueLightFilterTypeEntries:[Ljava/lang/CharSequence;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v0, 0x7f0a0ec6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatSpinner;

    iput-object p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSpinnerPreference;->mSpinner:Landroidx/appcompat/widget/AppCompatSpinner;

    new-instance p1, Lcom/samsung/android/settings/eyecomfort/EyeComfortSpinnerPreference$ScheduleTypeArrayAdapter;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/eyecomfort/EyeComfortSpinnerPreference$ScheduleTypeArrayAdapter;-><init>(Lcom/samsung/android/settings/eyecomfort/EyeComfortSpinnerPreference;)V

    iget-object p0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSpinnerPreference;->mSpinner:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/AppCompatSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    return-void
.end method
