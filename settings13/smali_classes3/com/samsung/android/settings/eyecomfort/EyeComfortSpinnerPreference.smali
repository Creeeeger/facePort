.class public Lcom/samsung/android/settings/eyecomfort/EyeComfortSpinnerPreference;
.super Landroidx/preference/SecDropDownPreference;
.source "EyeComfortSpinnerPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/eyecomfort/EyeComfortSpinnerPreference$CustomScheduleHolder;,
        Lcom/samsung/android/settings/eyecomfort/EyeComfortSpinnerPreference$ScheduleTypeArrayAdapter;,
        Lcom/samsung/android/settings/eyecomfort/EyeComfortSpinnerPreference$onSpinnerItemClickListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAdapter:Landroid/widget/BaseAdapter;

.field mBlueLightFilterTypeEntries:[Ljava/lang/CharSequence;

.field mBlueLightFilterTypeEntryValues:[Ljava/lang/CharSequence;

.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mListener:Lcom/samsung/android/settings/eyecomfort/EyeComfortSpinnerPreference$onSpinnerItemClickListener;

.field mScheduleTypeIndex:I

.field private mSpinner:Landroidx/appcompat/widget/AppCompatSpinner;


# direct methods
.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/settings/eyecomfort/EyeComfortSpinnerPreference;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSpinnerPreference;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmInflater(Lcom/samsung/android/settings/eyecomfort/EyeComfortSpinnerPreference;)Landroid/view/LayoutInflater;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSpinnerPreference;->mInflater:Landroid/view/LayoutInflater;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmListener(Lcom/samsung/android/settings/eyecomfort/EyeComfortSpinnerPreference;)Lcom/samsung/android/settings/eyecomfort/EyeComfortSpinnerPreference$onSpinnerItemClickListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSpinnerPreference;->mListener:Lcom/samsung/android/settings/eyecomfort/EyeComfortSpinnerPreference$onSpinnerItemClickListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSpinner(Lcom/samsung/android/settings/eyecomfort/EyeComfortSpinnerPreference;)Landroidx/appcompat/widget/AppCompatSpinner;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSpinnerPreference;->mSpinner:Landroidx/appcompat/widget/AppCompatSpinner;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 21
    const-class v0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSpinnerPreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSpinnerPreference;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 43
    sget v0, Lcom/android/settings/R$attr;->dropdownPreferenceStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroidx/preference/SecDropDownPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 27
    iput-object p2, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSpinnerPreference;->mListener:Lcom/samsung/android/settings/eyecomfort/EyeComfortSpinnerPreference$onSpinnerItemClickListener;

    const/4 p2, 0x0

    .line 36
    iput p2, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSpinnerPreference;->mScheduleTypeIndex:I

    .line 45
    iput-object p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSpinnerPreference;->mContext:Landroid/content/Context;

    .line 47
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSpinnerPreference;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method getScheduleTypeIndex()I
    .locals 0

    .line 71
    iget p0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSpinnerPreference;->mScheduleTypeIndex:I

    return p0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 1

    .line 55
    invoke-super {p0, p1}, Landroidx/preference/SecDropDownPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 57
    invoke-virtual {p0}, Landroidx/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSpinnerPreference;->mBlueLightFilterTypeEntryValues:[Ljava/lang/CharSequence;

    .line 58
    invoke-virtual {p0}, Landroidx/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSpinnerPreference;->mBlueLightFilterTypeEntries:[Ljava/lang/CharSequence;

    .line 60
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v0, Lcom/android/settings/R$id;->spinner:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatSpinner;

    iput-object p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSpinnerPreference;->mSpinner:Landroidx/appcompat/widget/AppCompatSpinner;

    .line 61
    new-instance p1, Lcom/samsung/android/settings/eyecomfort/EyeComfortSpinnerPreference$ScheduleTypeArrayAdapter;

    iget-object v0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSpinnerPreference;->mContext:Landroid/content/Context;

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/settings/eyecomfort/EyeComfortSpinnerPreference$ScheduleTypeArrayAdapter;-><init>(Lcom/samsung/android/settings/eyecomfort/EyeComfortSpinnerPreference;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSpinnerPreference;->mAdapter:Landroid/widget/BaseAdapter;

    .line 62
    iget-object p0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSpinnerPreference;->mSpinner:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/AppCompatSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    return-void
.end method

.method setOnItemClickListener(Lcom/samsung/android/settings/eyecomfort/EyeComfortSpinnerPreference$onSpinnerItemClickListener;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSpinnerPreference;->mListener:Lcom/samsung/android/settings/eyecomfort/EyeComfortSpinnerPreference$onSpinnerItemClickListener;

    return-void
.end method

.method setScheduleTypeIndex(I)V
    .locals 0

    .line 75
    iput p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSpinnerPreference;->mScheduleTypeIndex:I

    return-void
.end method
