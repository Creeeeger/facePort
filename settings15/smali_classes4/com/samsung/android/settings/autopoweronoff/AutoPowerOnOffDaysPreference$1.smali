.class public final Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference$1;
.super Landroid/widget/ScrollView;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final DAYS:[I

.field public final mDayList:[Ljava/lang/CharSequence;

.field public final mDaysCheckBox:[Landroid/widget/CheckBox;

.field public mDisableListeners:Z

.field public final mLinearLayout:Landroid/widget/LinearLayout;

.field public final mSelectedDays:[Z

.field public final mSelectionDaysOfWeek:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;

.field public final synthetic this$0$1:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;Landroid/content/Context;Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;)V
    .locals 6

    const/16 v0, 0x8

    const/4 v1, 0x0

    const/4 v2, 0x1

    iput-object p1, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference$1;->this$0$1:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;

    invoke-direct {p0, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    new-array p1, v0, [I

    fill-array-data p1, :array_0

    iput-object p1, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference$1;->DAYS:[I

    new-array p1, v0, [Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference$1;->mDaysCheckBox:[Landroid/widget/CheckBox;

    new-instance p1, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;

    invoke-direct {p1, v1}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;-><init>(I)V

    iput-object p1, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference$1;->mSelectionDaysOfWeek:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;

    iget p3, p3, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;->mDays:I

    iput p3, p1, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;->mDays:I

    new-instance p3, Landroid/widget/LinearLayout;

    invoke-direct {p3, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference$1;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p3, v1, v1, v1, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    invoke-virtual {p3, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {p0, p3}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    new-array p3, v0, [Z

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_1

    iget v4, p1, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;->mDays:I

    shl-int v5, v2, v3

    and-int/2addr v4, v5

    if-lez v4, :cond_0

    move v4, v2

    goto :goto_1

    :cond_0
    move v4, v1

    :goto_1
    aput-boolean v4, p3, v3

    add-int/2addr v3, v2

    goto :goto_0

    :cond_1
    iput-object p3, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference$1;->mSelectedDays:[Z

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x7f030164

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference$1;->mDayList:[Ljava/lang/CharSequence;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    move p2, v1

    :goto_2
    iget-object p3, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference$1;->DAYS:[I

    array-length v0, p3

    if-ge p2, v0, :cond_5

    aget p3, p3, p2

    const v0, 0x7f0d0808

    invoke-virtual {p1, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v3, 0x7f0a04b3

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    const v4, 0x7f0a04b5

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    new-instance v5, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference$AutoPowerOnOffDaysSelection$1;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz p2, :cond_2

    iget-object v4, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference$1;->mDayList:[Ljava/lang/CharSequence;

    aget-object v4, v4, p3

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference$1;->mSelectedDays:[Z

    aget-boolean v4, v4, p3

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    new-instance v4, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference$AutoPowerOnOffDaysSelection$2;

    invoke-direct {v4, p0, p3}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference$AutoPowerOnOffDaysSelection$2;-><init>(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference$1;I)V

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_4

    :cond_2
    iget-object p3, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference$1;->mDayList:[Ljava/lang/CharSequence;

    aget-object p3, p3, v1

    invoke-virtual {v3, p3}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    iget-object p3, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference$1;->mSelectionDaysOfWeek:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;

    iget p3, p3, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;->mDays:I

    const/16 v4, 0xfe

    if-ne p3, v4, :cond_3

    move p3, v2

    goto :goto_3

    :cond_3
    move p3, v1

    :goto_3
    invoke-virtual {v3, p3}, Landroid/widget/CheckBox;->setChecked(Z)V

    new-instance p3, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference$AutoPowerOnOffDaysSelection$3;

    invoke-direct {p3, p0}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference$AutoPowerOnOffDaysSelection$3;-><init>(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference$1;)V

    invoke-virtual {v3, p3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :goto_4
    iget-object p3, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference$1;->mDaysCheckBox:[Landroid/widget/CheckBox;

    aput-object v3, p3, p2

    iget-object p3, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference$1;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    if-nez p2, :cond_4

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestFocus()Z

    :cond_4
    add-int/2addr p2, v2

    goto :goto_2

    :cond_5
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
