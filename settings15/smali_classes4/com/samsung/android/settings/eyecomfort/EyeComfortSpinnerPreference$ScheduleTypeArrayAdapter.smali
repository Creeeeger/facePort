.class public final Lcom/samsung/android/settings/eyecomfort/EyeComfortSpinnerPreference$ScheduleTypeArrayAdapter;
.super Landroid/widget/BaseAdapter;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/eyecomfort/EyeComfortSpinnerPreference;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/eyecomfort/EyeComfortSpinnerPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSpinnerPreference$ScheduleTypeArrayAdapter;->this$0:Lcom/samsung/android/settings/eyecomfort/EyeComfortSpinnerPreference;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 0

    const/4 p0, 0x3

    return p0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public final getItemId(I)J
    .locals 0

    int-to-long p0, p1

    return-wide p0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSpinnerPreference$ScheduleTypeArrayAdapter;->this$0:Lcom/samsung/android/settings/eyecomfort/EyeComfortSpinnerPreference;

    iget-object p2, p2, Lcom/samsung/android/settings/eyecomfort/EyeComfortSpinnerPreference;->mInflater:Landroid/view/LayoutInflater;

    const p3, 0x7f0d08a8

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance p3, Lcom/samsung/android/settings/eyecomfort/EyeComfortSpinnerPreference$CustomScheduleHolder;

    iget-object v1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSpinnerPreference$ScheduleTypeArrayAdapter;->this$0:Lcom/samsung/android/settings/eyecomfort/EyeComfortSpinnerPreference;

    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    const v2, 0x7f0a0fe9

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckedTextView;

    iget-object v3, v1, Lcom/samsung/android/settings/eyecomfort/EyeComfortSpinnerPreference;->mBlueLightFilterTypeEntries:[Ljava/lang/CharSequence;

    aget-object v3, v3, p1

    invoke-virtual {v2, v3}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    iget v3, v1, Lcom/samsung/android/settings/eyecomfort/EyeComfortSpinnerPreference;->mScheduleTypeIndex:I

    if-ne p1, v3, :cond_0

    invoke-virtual {v2, v0}, Landroid/widget/CheckedTextView;->setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, v1, Lcom/samsung/android/settings/eyecomfort/EyeComfortSpinnerPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0605f6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/CheckedTextView;->setTextColor(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v2, v0}, Landroid/widget/CheckedTextView;->setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/samsung/android/settings/eyecomfort/EyeComfortSpinnerPreference$CustomScheduleHolder;

    :goto_1
    new-instance p3, Lcom/samsung/android/settings/eyecomfort/EyeComfortSpinnerPreference$ScheduleTypeArrayAdapter$1;

    invoke-direct {p3, p0, p1}, Lcom/samsung/android/settings/eyecomfort/EyeComfortSpinnerPreference$ScheduleTypeArrayAdapter$1;-><init>(Lcom/samsung/android/settings/eyecomfort/EyeComfortSpinnerPreference$ScheduleTypeArrayAdapter;I)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method
