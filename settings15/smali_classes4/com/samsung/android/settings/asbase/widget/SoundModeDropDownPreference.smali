.class public Lcom/samsung/android/settings/asbase/widget/SoundModeDropDownPreference;
.super Landroidx/preference/SecListPreference;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mAdapter:Landroid/widget/ArrayAdapter;

.field public final mAudioManager:Landroid/media/AudioManager;

.field public mCancelFlag:Z

.field public final mContext:Landroid/content/Context;

.field public mCustomHourFlag:Z

.field public final mItemSelectedListener:Lcom/samsung/android/settings/asbase/widget/SoundModeDropDownPreference$2;

.field public final mSpinner:Lcom/samsung/android/settings/asbase/widget/SoundModeDropDownPreference$ReselectionSpinner;

.field public mUserClicked:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/settings/asbase/widget/SoundModeDropDownPreference;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/asbase/widget/SoundModeDropDownPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/settings/asbase/widget/SoundModeDropDownPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const p3, 0x1010091

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/settings/asbase/widget/SoundModeDropDownPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    const p3, 0x1010091

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p3, 0x0

    iput-boolean p3, p0, Lcom/samsung/android/settings/asbase/widget/SoundModeDropDownPreference;->mUserClicked:Z

    iput-boolean p3, p0, Lcom/samsung/android/settings/asbase/widget/SoundModeDropDownPreference;->mCancelFlag:Z

    iput-boolean p3, p0, Lcom/samsung/android/settings/asbase/widget/SoundModeDropDownPreference;->mCustomHourFlag:Z

    new-instance p4, Lcom/samsung/android/settings/asbase/widget/SoundModeDropDownPreference$2;

    invoke-direct {p4, p0}, Lcom/samsung/android/settings/asbase/widget/SoundModeDropDownPreference$2;-><init>(Lcom/samsung/android/settings/asbase/widget/SoundModeDropDownPreference;)V

    iput-object p1, p0, Lcom/samsung/android/settings/asbase/widget/SoundModeDropDownPreference;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x7f0d090e

    invoke-direct {v0, p1, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/samsung/android/settings/asbase/widget/SoundModeDropDownPreference;->mAdapter:Landroid/widget/ArrayAdapter;

    new-instance v1, Lcom/samsung/android/settings/asbase/widget/SoundModeDropDownPreference$ReselectionSpinner;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/settings/asbase/widget/SoundModeDropDownPreference$ReselectionSpinner;-><init>(Lcom/samsung/android/settings/asbase/widget/SoundModeDropDownPreference;Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, p0, Lcom/samsung/android/settings/asbase/widget/SoundModeDropDownPreference;->mSpinner:Lcom/samsung/android/settings/asbase/widget/SoundModeDropDownPreference$ReselectionSpinner;

    const/4 p2, 0x4

    invoke-virtual {v1, p2}, Landroid/widget/Spinner;->setVisibility(I)V

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/AppCompatSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    invoke-virtual {v1, p4}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p4, 0x7f070cea

    invoke-virtual {p2, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    invoke-virtual {v1, p2}, Landroidx/appcompat/widget/AppCompatSpinner;->setDropDownHorizontalOffset(I)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p4, 0x7f070ce8

    invoke-virtual {p2, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    invoke-virtual {v1, p2}, Landroidx/appcompat/widget/AppCompatSpinner;->setDropDownVerticalOffset(I)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p4, 0x7f070ce9

    invoke-virtual {p2, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    invoke-virtual {v1, p2, p3, p3, p3}, Landroid/widget/Spinner;->setPadding(IIII)V

    new-instance p2, Lcom/samsung/android/settings/asbase/widget/SoundModeDropDownPreference$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/asbase/widget/SoundModeDropDownPreference$1;-><init>(Lcom/samsung/android/settings/asbase/widget/SoundModeDropDownPreference;)V

    invoke-virtual {p0, p2}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/asbase/widget/SoundModeDropDownPreference;->updateEntries$2()V

    const-string p2, "audio"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/samsung/android/settings/asbase/widget/SoundModeDropDownPreference;->mAudioManager:Landroid/media/AudioManager;

    return-void
.end method


# virtual methods
.method public final notifyChanged()V
    .locals 0

    invoke-super {p0}, Landroidx/preference/Preference;->notifyChanged()V

    iget-object p0, p0, Lcom/samsung/android/settings/asbase/widget/SoundModeDropDownPreference;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public final onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 4

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x101030e

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/settings/asbase/widget/SoundModeDropDownPreference;->mSpinner:Lcom/samsung/android/settings/asbase/widget/SoundModeDropDownPreference$ReselectionSpinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/asbase/widget/SoundModeDropDownPreference;->mSpinner:Lcom/samsung/android/settings/asbase/widget/SoundModeDropDownPreference$ReselectionSpinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/asbase/widget/SoundModeDropDownPreference;->mSpinner:Lcom/samsung/android/settings/asbase/widget/SoundModeDropDownPreference$ReselectionSpinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/samsung/android/settings/asbase/widget/SoundModeDropDownPreference;->mSpinner:Lcom/samsung/android/settings/asbase/widget/SoundModeDropDownPreference$ReselectionSpinner;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/samsung/android/settings/asbase/widget/SoundModeDropDownPreference;->mSpinner:Lcom/samsung/android/settings/asbase/widget/SoundModeDropDownPreference$ReselectionSpinner;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    iget-object p1, p0, Lcom/samsung/android/settings/asbase/widget/SoundModeDropDownPreference;->mSpinner:Lcom/samsung/android/settings/asbase/widget/SoundModeDropDownPreference$ReselectionSpinner;

    invoke-virtual {p1}, Landroid/widget/Spinner;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz p1, :cond_2

    iput v1, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/16 v0, 0x30

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object v0, p0, Lcom/samsung/android/settings/asbase/widget/SoundModeDropDownPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f070387

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v0, p0, Lcom/samsung/android/settings/asbase/widget/SoundModeDropDownPreference;->mSpinner:Lcom/samsung/android/settings/asbase/widget/SoundModeDropDownPreference$ReselectionSpinner;

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/settings/asbase/widget/SoundModeDropDownPreference;->mContext:Landroid/content/Context;

    const-string v0, "customHour"

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "customHourFlag"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/settings/asbase/widget/SoundModeDropDownPreference;->mCustomHourFlag:Z

    if-eqz p1, :cond_3

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/asbase/widget/SoundModeDropDownPreference;->setFocusWithoutExecute(I)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/samsung/android/settings/asbase/widget/SoundModeDropDownPreference;->mSpinner:Lcom/samsung/android/settings/asbase/widget/SoundModeDropDownPreference$ReselectionSpinner;

    iget-object v0, p0, Landroidx/preference/ListPreference;->mValue:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroidx/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/asbase/widget/SoundModeDropDownPreference$ReselectionSpinner;->setSelection(I)V

    :goto_0
    return-void
.end method

.method public final onClick()V
    .locals 0

    return-void
.end method

.method public final setCustomHourFlag(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/samsung/android/settings/asbase/widget/SoundModeDropDownPreference;->mCustomHourFlag:Z

    iget-object p1, p0, Lcom/samsung/android/settings/asbase/widget/SoundModeDropDownPreference;->mContext:Landroid/content/Context;

    const-string v0, "customHour"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "customHourFlag"

    iget-boolean p0, p0, Lcom/samsung/android/settings/asbase/widget/SoundModeDropDownPreference;->mCustomHourFlag:Z

    invoke-interface {p1, v0, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final setEntries([Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Landroidx/preference/ListPreference;->mEntries:[Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/samsung/android/settings/asbase/widget/SoundModeDropDownPreference;->updateEntries$2()V

    return-void
.end method

.method public final setFocusWithoutExecute(I)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/asbase/widget/SoundModeDropDownPreference;->mUserClicked:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/asbase/widget/SoundModeDropDownPreference;->mCancelFlag:Z

    iget-object p0, p0, Lcom/samsung/android/settings/asbase/widget/SoundModeDropDownPreference;->mSpinner:Lcom/samsung/android/settings/asbase/widget/SoundModeDropDownPreference$ReselectionSpinner;

    sub-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/asbase/widget/SoundModeDropDownPreference$ReselectionSpinner;->setSelection(I)V

    return-void
.end method

.method public final setValue(Ljava/lang/String;)V
    .locals 4

    invoke-super {p0, p1}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroidx/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result p1

    iget-object v0, p0, Landroidx/preference/ListPreference;->mEntries:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_6

    const/4 v1, 0x3

    if-ne p1, v1, :cond_5

    iget-object p1, p0, Lcom/samsung/android/settings/asbase/widget/SoundModeDropDownPreference;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p1}, Landroid/media/AudioManager;->getMuteInterval()I

    move-result p1

    div-int/lit8 v0, p1, 0x3c

    rem-int/lit8 p1, p1, 0x3c

    iget-object v1, p0, Lcom/samsung/android/settings/asbase/widget/SoundModeDropDownPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f12001e

    invoke-virtual {v1, v2, v0}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/asbase/widget/SoundModeDropDownPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f12001f

    invoke-virtual {v2, v3, p1}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    if-nez v0, :cond_0

    if-gtz p1, :cond_1

    :cond_0
    if-lez v0, :cond_3

    if-nez p1, :cond_3

    :cond_1
    if-nez v0, :cond_2

    move-object v1, v2

    goto :goto_0

    :cond_2
    if-nez p1, :cond_4

    goto :goto_0

    :cond_3
    if-lez v0, :cond_4

    if-lez p1, :cond_4

    const-string p1, " "

    invoke-static {v1, p1, v2}, Landroidx/apppickerview/features/applabel/AbstractAppLabelMapFactory$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_4
    const-string v1, ""

    :goto_0
    invoke-virtual {p0, v1}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_5
    const/4 v1, -0x1

    if-eq p1, v1, :cond_6

    aget-object p1, v0, p1

    invoke-virtual {p0, p1}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_6
    :goto_1
    return-void
.end method

.method public final setValueIndex(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/asbase/widget/SoundModeDropDownPreference;->mSpinner:Lcom/samsung/android/settings/asbase/widget/SoundModeDropDownPreference$ReselectionSpinner;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/asbase/widget/SoundModeDropDownPreference$ReselectionSpinner;->setSelection(I)V

    iget-object v0, p0, Landroidx/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    aget-object p1, v0, p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/asbase/widget/SoundModeDropDownPreference;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method public final updateEntries$2()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/settings/asbase/widget/SoundModeDropDownPreference;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->clear()V

    iget-object v0, p0, Landroidx/preference/ListPreference;->mEntries:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    iget-object v4, p0, Lcom/samsung/android/settings/asbase/widget/SoundModeDropDownPreference;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
