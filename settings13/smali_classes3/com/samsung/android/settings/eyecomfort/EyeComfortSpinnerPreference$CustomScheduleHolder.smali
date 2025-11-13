.class Lcom/samsung/android/settings/eyecomfort/EyeComfortSpinnerPreference$CustomScheduleHolder;
.super Ljava/lang/Object;
.source "EyeComfortSpinnerPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/eyecomfort/EyeComfortSpinnerPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CustomScheduleHolder"
.end annotation


# instance fields
.field private mCheckedTextView:Landroid/widget/CheckedTextView;

.field final synthetic this$0:Lcom/samsung/android/settings/eyecomfort/EyeComfortSpinnerPreference;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/eyecomfort/EyeComfortSpinnerPreference;Landroid/view/View;I)V
    .locals 2

    .line 132
    iput-object p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSpinnerPreference$CustomScheduleHolder;->this$0:Lcom/samsung/android/settings/eyecomfort/EyeComfortSpinnerPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 130
    iput-object v0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSpinnerPreference$CustomScheduleHolder;->mCheckedTextView:Landroid/widget/CheckedTextView;

    .line 133
    sget v1, Lcom/android/settings/R$id;->textView:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/CheckedTextView;

    iput-object p2, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSpinnerPreference$CustomScheduleHolder;->mCheckedTextView:Landroid/widget/CheckedTextView;

    .line 134
    iget-object v1, p1, Lcom/samsung/android/settings/eyecomfort/EyeComfortSpinnerPreference;->mBlueLightFilterTypeEntries:[Ljava/lang/CharSequence;

    aget-object v1, v1, p3

    invoke-virtual {p2, v1}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    invoke-virtual {p1}, Lcom/samsung/android/settings/eyecomfort/EyeComfortSpinnerPreference;->getScheduleTypeIndex()I

    move-result p2

    if-ne p3, p2, :cond_0

    .line 137
    iget-object p2, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSpinnerPreference$CustomScheduleHolder;->mCheckedTextView:Landroid/widget/CheckedTextView;

    invoke-virtual {p2, v0}, Landroid/widget/CheckedTextView;->setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 138
    iget-object p0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSpinnerPreference$CustomScheduleHolder;->mCheckedTextView:Landroid/widget/CheckedTextView;

    invoke-static {p1}, Lcom/samsung/android/settings/eyecomfort/EyeComfortSpinnerPreference;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/eyecomfort/EyeComfortSpinnerPreference;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/settings/R$color;->sec_eye_comfort_spinner_dropdown_selected_color:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/CheckedTextView;->setTextColor(I)V

    goto :goto_0

    .line 140
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSpinnerPreference$CustomScheduleHolder;->mCheckedTextView:Landroid/widget/CheckedTextView;

    invoke-virtual {p0, v0}, Landroid/widget/CheckedTextView;->setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method
