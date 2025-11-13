.class public Lcom/samsung/android/settings/as/widget/SoundModeDropDownPreference;
.super Landroidx/preference/SecListPreference;
.source "SoundModeDropDownPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/as/widget/SoundModeDropDownPreference$ReselectionSpinner;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAudioManager:Landroid/media/AudioManager;

.field private mCancelFlag:Z

.field private final mContext:Landroid/content/Context;

.field private mCustomHourFlag:Z

.field private final mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mSpinner:Landroidx/appcompat/widget/AppCompatSpinner;

.field private mUserClicked:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmAdapter(Lcom/samsung/android/settings/as/widget/SoundModeDropDownPreference;)Landroid/widget/ArrayAdapter;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/as/widget/SoundModeDropDownPreference;->mAdapter:Landroid/widget/ArrayAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCancelFlag(Lcom/samsung/android/settings/as/widget/SoundModeDropDownPreference;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/settings/as/widget/SoundModeDropDownPreference;->mCancelFlag:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSpinner(Lcom/samsung/android/settings/as/widget/SoundModeDropDownPreference;)Landroidx/appcompat/widget/AppCompatSpinner;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/as/widget/SoundModeDropDownPreference;->mSpinner:Landroidx/appcompat/widget/AppCompatSpinner;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUserClicked(Lcom/samsung/android/settings/as/widget/SoundModeDropDownPreference;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/settings/as/widget/SoundModeDropDownPreference;->mUserClicked:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmCancelFlag(Lcom/samsung/android/settings/as/widget/SoundModeDropDownPreference;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/as/widget/SoundModeDropDownPreference;->mCancelFlag:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmUserClicked(Lcom/samsung/android/settings/as/widget/SoundModeDropDownPreference;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/as/widget/SoundModeDropDownPreference;->mUserClicked:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/as/widget/SoundModeDropDownPreference;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 47
    const-class v0, Lcom/samsung/android/settings/as/widget/SoundModeDropDownPreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/as/widget/SoundModeDropDownPreference;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 64
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/as/widget/SoundModeDropDownPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 68
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/settings/as/widget/SoundModeDropDownPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const p3, 0x1010091

    const/4 v0, 0x0

    .line 72
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/settings/as/widget/SoundModeDropDownPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    const p3, 0x1010091

    .line 77
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/SecListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p3, 0x0

    .line 55
    iput-boolean p3, p0, Lcom/samsung/android/settings/as/widget/SoundModeDropDownPreference;->mUserClicked:Z

    .line 56
    iput-boolean p3, p0, Lcom/samsung/android/settings/as/widget/SoundModeDropDownPreference;->mCancelFlag:Z

    .line 58
    iput-boolean p3, p0, Lcom/samsung/android/settings/as/widget/SoundModeDropDownPreference;->mCustomHourFlag:Z

    .line 261
    new-instance p4, Lcom/samsung/android/settings/as/widget/SoundModeDropDownPreference$2;

    invoke-direct {p4, p0}, Lcom/samsung/android/settings/as/widget/SoundModeDropDownPreference$2;-><init>(Lcom/samsung/android/settings/as/widget/SoundModeDropDownPreference;)V

    iput-object p4, p0, Lcom/samsung/android/settings/as/widget/SoundModeDropDownPreference;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 78
    iput-object p1, p0, Lcom/samsung/android/settings/as/widget/SoundModeDropDownPreference;->mContext:Landroid/content/Context;

    .line 79
    invoke-virtual {p0}, Lcom/samsung/android/settings/as/widget/SoundModeDropDownPreference;->createAdapter()Landroid/widget/ArrayAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/as/widget/SoundModeDropDownPreference;->mAdapter:Landroid/widget/ArrayAdapter;

    .line 81
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/as/widget/SoundModeDropDownPreference;->createSpinner(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatSpinner;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/settings/as/widget/SoundModeDropDownPreference;->mSpinner:Landroidx/appcompat/widget/AppCompatSpinner;

    const/4 v1, 0x4

    .line 82
    invoke-virtual {p2, v1}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 83
    iget-object p2, p0, Lcom/samsung/android/settings/as/widget/SoundModeDropDownPreference;->mSpinner:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/AppCompatSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 84
    iget-object p2, p0, Lcom/samsung/android/settings/as/widget/SoundModeDropDownPreference;->mSpinner:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {p2, p4}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 85
    iget-object p2, p0, Lcom/samsung/android/settings/as/widget/SoundModeDropDownPreference;->mSpinner:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    sget v0, Lcom/android/settings/R$dimen;->sec_sound_settings_temporary_mute_duration_width:I

    invoke-virtual {p4, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    invoke-virtual {p2, p4}, Landroidx/appcompat/widget/AppCompatSpinner;->setDropDownHorizontalOffset(I)V

    .line 87
    iget-object p2, p0, Lcom/samsung/android/settings/as/widget/SoundModeDropDownPreference;->mSpinner:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    sget v0, Lcom/android/settings/R$dimen;->sec_sound_settings_temporary_mute_duration_height:I

    invoke-virtual {p4, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    invoke-virtual {p2, p4}, Landroidx/appcompat/widget/AppCompatSpinner;->setDropDownVerticalOffset(I)V

    .line 89
    iget-object p2, p0, Lcom/samsung/android/settings/as/widget/SoundModeDropDownPreference;->mSpinner:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    sget v0, Lcom/android/settings/R$dimen;->sec_sound_settings_temporary_mute_duration_padding:I

    invoke-virtual {p4, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    invoke-virtual {p2, p4, p3, p3, p3}, Landroid/widget/Spinner;->setPadding(IIII)V

    .line 92
    new-instance p2, Lcom/samsung/android/settings/as/widget/SoundModeDropDownPreference$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/as/widget/SoundModeDropDownPreference$1;-><init>(Lcom/samsung/android/settings/as/widget/SoundModeDropDownPreference;)V

    invoke-virtual {p0, p2}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 108
    invoke-direct {p0}, Lcom/samsung/android/settings/as/widget/SoundModeDropDownPreference;->updateEntries()V

    const-string p2, "audio"

    .line 110
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/samsung/android/settings/as/widget/SoundModeDropDownPreference;->mAudioManager:Landroid/media/AudioManager;

    return-void
.end method

.method private getMuteDurationTime()Ljava/lang/String;
    .locals 7

    .line 188
    iget-object v0, p0, Lcom/samsung/android/settings/as/widget/SoundModeDropDownPreference;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMuteInterval()I

    move-result v0

    .line 190
    div-int/lit8 v1, v0, 0x3c

    .line 191
    rem-int/lit8 v0, v0, 0x3c

    .line 193
    iget-object v2, p0, Lcom/samsung/android/settings/as/widget/SoundModeDropDownPreference;->mContext:Landroid/content/Context;

    .line 194
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$plurals;->lock_timeout_hours:I

    invoke-virtual {v2, v3, v1}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    .line 195
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 193
    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 196
    iget-object p0, p0, Lcom/samsung/android/settings/as/widget/SoundModeDropDownPreference;->mContext:Landroid/content/Context;

    .line 197
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v4, Lcom/android/settings/R$plurals;->lock_timeout_minutes:I

    invoke-virtual {p0, v4, v0}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object p0

    new-array v4, v3, [Ljava/lang/Object;

    .line 198
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    .line 196
    invoke-static {p0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    if-nez v1, :cond_0

    if-gtz v0, :cond_1

    :cond_0
    if-lez v1, :cond_3

    if-nez v0, :cond_3

    :cond_1
    const-string v4, "%s"

    if-nez v1, :cond_2

    new-array v0, v3, [Ljava/lang/Object;

    aput-object p0, v0, v6

    .line 203
    invoke-static {v4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    if-nez v0, :cond_4

    new-array p0, v3, [Ljava/lang/Object;

    aput-object v2, p0, v6

    .line 205
    invoke-static {v4, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_3
    if-lez v1, :cond_4

    if-lez v0, :cond_4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v2, v0, v6

    aput-object p0, v0, v3

    const-string p0, "%s %s"

    .line 208
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_4
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method private updateEntries()V
    .locals 5

    .line 146
    iget-object v0, p0, Lcom/samsung/android/settings/as/widget/SoundModeDropDownPreference;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->clear()V

    .line 147
    invoke-virtual {p0}, Landroidx/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 148
    invoke-virtual {p0}, Landroidx/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 149
    iget-object v4, p0, Lcom/samsung/android/settings/as/widget/SoundModeDropDownPreference;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method protected createAdapter()Landroid/widget/ArrayAdapter;
    .locals 2

    .line 142
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object p0, p0, Lcom/samsung/android/settings/as/widget/SoundModeDropDownPreference;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$layout;->sec_simple_spinner_dropdown_item:I

    invoke-direct {v0, p0, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method protected createSpinner(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatSpinner;
    .locals 1

    .line 125
    new-instance v0, Lcom/samsung/android/settings/as/widget/SoundModeDropDownPreference$ReselectionSpinner;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/settings/as/widget/SoundModeDropDownPreference$ReselectionSpinner;-><init>(Lcom/samsung/android/settings/as/widget/SoundModeDropDownPreference;Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public getCustomHourFlag()Z
    .locals 0

    .line 182
    iget-boolean p0, p0, Lcom/samsung/android/settings/as/widget/SoundModeDropDownPreference;->mCustomHourFlag:Z

    return p0
.end method

.method protected notifyChanged()V
    .locals 0

    .line 222
    invoke-super {p0}, Landroidx/preference/Preference;->notifyChanged()V

    .line 223
    iget-object p0, p0, Lcom/samsung/android/settings/as/widget/SoundModeDropDownPreference;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 4

    .line 228
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 230
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 231
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x101030e

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 233
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 235
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/settings/as/widget/SoundModeDropDownPreference;->mSpinner:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/as/widget/SoundModeDropDownPreference;->mSpinner:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 237
    iget-object v0, p0, Lcom/samsung/android/settings/as/widget/SoundModeDropDownPreference;->mSpinner:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/samsung/android/settings/as/widget/SoundModeDropDownPreference;->mSpinner:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 240
    :cond_1
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Landroid/view/ViewGroup;

    .line 241
    iget-object v0, p0, Lcom/samsung/android/settings/as/widget/SoundModeDropDownPreference;->mSpinner:Landroidx/appcompat/widget/AppCompatSpinner;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 243
    iget-object p1, p0, Lcom/samsung/android/settings/as/widget/SoundModeDropDownPreference;->mSpinner:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {p1}, Landroid/widget/Spinner;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz p1, :cond_2

    .line 245
    iput v1, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/16 v0, 0x30

    .line 246
    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 247
    iget-object v0, p0, Lcom/samsung/android/settings/as/widget/SoundModeDropDownPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/settings/R$dimen;->dropdown_list_item_padding:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 249
    iget-object v0, p0, Lcom/samsung/android/settings/as/widget/SoundModeDropDownPreference;->mSpinner:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 252
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/settings/as/widget/SoundModeDropDownPreference;->mContext:Landroid/content/Context;

    const-string v0, "customHour"

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "customHourFlag"

    .line 253
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/settings/as/widget/SoundModeDropDownPreference;->mCustomHourFlag:Z

    if-eqz p1, :cond_3

    const/4 p1, 0x4

    .line 255
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/as/widget/SoundModeDropDownPreference;->setFocusWithoutExecute(I)V

    goto :goto_0

    .line 257
    :cond_3
    iget-object p1, p0, Lcom/samsung/android/settings/as/widget/SoundModeDropDownPreference;->mSpinner:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {p0}, Landroidx/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/Spinner;->setSelection(I)V

    :goto_0
    return-void
.end method

.method protected onClick()V
    .locals 0

    return-void
.end method

.method public setCustomHourFlag(Z)V
    .locals 2

    .line 174
    iput-boolean p1, p0, Lcom/samsung/android/settings/as/widget/SoundModeDropDownPreference;->mCustomHourFlag:Z

    .line 175
    iget-object p1, p0, Lcom/samsung/android/settings/as/widget/SoundModeDropDownPreference;->mContext:Landroid/content/Context;

    const-string v0, "customHour"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 176
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 177
    iget-boolean p0, p0, Lcom/samsung/android/settings/as/widget/SoundModeDropDownPreference;->mCustomHourFlag:Z

    const-string v0, "customHourFlag"

    invoke-interface {p1, v0, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 178
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public setEntries([Ljava/lang/CharSequence;)V
    .locals 0

    .line 115
    invoke-super {p0, p1}, Landroidx/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 116
    invoke-direct {p0}, Lcom/samsung/android/settings/as/widget/SoundModeDropDownPreference;->updateEntries()V

    return-void
.end method

.method public setFocusWithoutExecute(I)V
    .locals 1

    const/4 v0, 0x0

    .line 168
    iput-boolean v0, p0, Lcom/samsung/android/settings/as/widget/SoundModeDropDownPreference;->mUserClicked:Z

    const/4 v0, 0x1

    .line 169
    iput-boolean v0, p0, Lcom/samsung/android/settings/as/widget/SoundModeDropDownPreference;->mCancelFlag:Z

    .line 170
    iget-object p0, p0, Lcom/samsung/android/settings/as/widget/SoundModeDropDownPreference;->mSpinner:Landroidx/appcompat/widget/AppCompatSpinner;

    sub-int/2addr p1, v0

    invoke-virtual {p0, p1}, Landroid/widget/Spinner;->setSelection(I)V

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 1

    .line 156
    invoke-super {p0, p1}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 157
    invoke-virtual {p0, p1}, Landroidx/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result p1

    .line 158
    invoke-virtual {p0}, Landroidx/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 160
    invoke-direct {p0}, Lcom/samsung/android/settings/as/widget/SoundModeDropDownPreference;->getMuteDurationTime()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    .line 162
    invoke-virtual {p0}, Landroidx/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    aget-object p1, v0, p1

    invoke-virtual {p0, p1}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setValueIndex(I)V
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/samsung/android/settings/as/widget/SoundModeDropDownPreference;->mSpinner:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 217
    invoke-virtual {p0}, Landroidx/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    aget-object p1, v0, p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/as/widget/SoundModeDropDownPreference;->setValue(Ljava/lang/String;)V

    return-void
.end method
