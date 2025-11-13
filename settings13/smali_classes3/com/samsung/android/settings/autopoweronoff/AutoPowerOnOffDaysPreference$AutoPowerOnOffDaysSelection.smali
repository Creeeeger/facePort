.class Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference$AutoPowerOnOffDaysSelection;
.super Landroid/widget/ScrollView;
.source "AutoPowerOnOffDaysPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AutoPowerOnOffDaysSelection"
.end annotation


# instance fields
.field private final DAYS:[I

.field private final mDayList:[Ljava/lang/CharSequence;

.field private mDaysCheckBox:[Landroid/widget/CheckBox;

.field private mDisableListeners:Z

.field private final mLinearLayout:Landroid/widget/LinearLayout;

.field private final mSelectedDays:[Z

.field private mSelectionDaysOfWeek:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;

.field final synthetic this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;


# direct methods
.method static bridge synthetic -$$Nest$fgetDAYS(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference$AutoPowerOnOffDaysSelection;)[I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference$AutoPowerOnOffDaysSelection;->DAYS:[I

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDaysCheckBox(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference$AutoPowerOnOffDaysSelection;)[Landroid/widget/CheckBox;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference$AutoPowerOnOffDaysSelection;->mDaysCheckBox:[Landroid/widget/CheckBox;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDisableListeners(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference$AutoPowerOnOffDaysSelection;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference$AutoPowerOnOffDaysSelection;->mDisableListeners:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSelectionDaysOfWeek(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference$AutoPowerOnOffDaysSelection;)Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference$AutoPowerOnOffDaysSelection;->mSelectionDaysOfWeek:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmDisableListeners(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference$AutoPowerOnOffDaysSelection;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference$AutoPowerOnOffDaysSelection;->mDisableListeners:Z

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;Landroid/content/Context;Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;)V
    .locals 6

    .line 132
    iput-object p1, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference$AutoPowerOnOffDaysSelection;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;

    .line 133
    invoke-direct {p0, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x8

    new-array v1, v0, [I

    .line 118
    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference$AutoPowerOnOffDaysSelection;->DAYS:[I

    new-array v0, v0, [Landroid/widget/CheckBox;

    .line 127
    iput-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference$AutoPowerOnOffDaysSelection;->mDaysCheckBox:[Landroid/widget/CheckBox;

    .line 130
    new-instance v0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference$AutoPowerOnOffDaysSelection;->mSelectionDaysOfWeek:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;

    .line 135
    invoke-virtual {v0, p3}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;->set(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;)V

    .line 136
    new-instance p3, Landroid/widget/LinearLayout;

    invoke-direct {p3, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference$AutoPowerOnOffDaysSelection;->mLinearLayout:Landroid/widget/LinearLayout;

    .line 137
    invoke-virtual {p3, v1, v1, v1, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const/4 v0, 0x1

    .line 138
    invoke-virtual {p3, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 139
    invoke-virtual {p0, p3}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 141
    iget-object p3, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference$AutoPowerOnOffDaysSelection;->mSelectionDaysOfWeek:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;

    invoke-virtual {p3}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;->getBooleanArray()[Z

    move-result-object p3

    iput-object p3, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference$AutoPowerOnOffDaysSelection;->mSelectedDays:[Z

    .line 143
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lcom/android/settings/R$array;->sec_auto_power_repeat_entry:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference$AutoPowerOnOffDaysSelection;->mDayList:[Ljava/lang/CharSequence;

    .line 145
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    move p3, v1

    .line 147
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference$AutoPowerOnOffDaysSelection;->DAYS:[I

    array-length v2, v0

    if-ge p3, v2, :cond_2

    .line 148
    aget v0, v0, p3

    .line 150
    sget v2, Lcom/android/settings/R$layout;->sec_auto_power_on_off_days_item:I

    invoke-virtual {p2, v2, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 151
    sget v3, Lcom/android/settings/R$id;->day_item_checkbox:I

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    .line 153
    sget v4, Lcom/android/settings/R$id;->day_item_layout:I

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 154
    new-instance v5, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference$AutoPowerOnOffDaysSelection$1;

    invoke-direct {v5, p0, p1}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference$AutoPowerOnOffDaysSelection$1;-><init>(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference$AutoPowerOnOffDaysSelection;Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;)V

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz p3, :cond_0

    .line 164
    iget-object v4, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference$AutoPowerOnOffDaysSelection;->mDayList:[Ljava/lang/CharSequence;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 165
    iget-object v4, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference$AutoPowerOnOffDaysSelection;->mSelectedDays:[Z

    aget-boolean v4, v4, v0

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 166
    new-instance v4, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference$AutoPowerOnOffDaysSelection$2;

    invoke-direct {v4, p0, p1, v0}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference$AutoPowerOnOffDaysSelection$2;-><init>(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference$AutoPowerOnOffDaysSelection;Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;I)V

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_1

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference$AutoPowerOnOffDaysSelection;->mDayList:[Ljava/lang/CharSequence;

    aget-object v0, v0, v1

    invoke-virtual {v3, v0}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 183
    iget-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference$AutoPowerOnOffDaysSelection;->mSelectionDaysOfWeek:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;

    invoke-virtual {v0}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;->isAllSelected()Z

    move-result v0

    invoke-virtual {v3, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 184
    new-instance v0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference$AutoPowerOnOffDaysSelection$3;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference$AutoPowerOnOffDaysSelection$3;-><init>(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference$AutoPowerOnOffDaysSelection;Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;)V

    invoke-virtual {v3, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 202
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference$AutoPowerOnOffDaysSelection;->mDaysCheckBox:[Landroid/widget/CheckBox;

    aput-object v3, v0, p3

    .line 203
    iget-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference$AutoPowerOnOffDaysSelection;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    if-nez p3, :cond_1

    .line 205
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->requestFocus()Z

    :cond_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_2
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
    .end array-data
.end method


# virtual methods
.method public getDayOfWeek()Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;
    .locals 0

    .line 211
    iget-object p0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference$AutoPowerOnOffDaysSelection;->mSelectionDaysOfWeek:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;

    return-object p0
.end method
