.class Lcom/samsung/android/settings/eyecomfort/EyeComfortSpinnerPreference$ScheduleTypeArrayAdapter$1;
.super Ljava/lang/Object;
.source "EyeComfortSpinnerPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/eyecomfort/EyeComfortSpinnerPreference$ScheduleTypeArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/settings/eyecomfort/EyeComfortSpinnerPreference$ScheduleTypeArrayAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/eyecomfort/EyeComfortSpinnerPreference$ScheduleTypeArrayAdapter;I)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSpinnerPreference$ScheduleTypeArrayAdapter$1;->this$1:Lcom/samsung/android/settings/eyecomfort/EyeComfortSpinnerPreference$ScheduleTypeArrayAdapter;

    iput p2, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSpinnerPreference$ScheduleTypeArrayAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 118
    iget-object p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSpinnerPreference$ScheduleTypeArrayAdapter$1;->this$1:Lcom/samsung/android/settings/eyecomfort/EyeComfortSpinnerPreference$ScheduleTypeArrayAdapter;

    iget-object p1, p1, Lcom/samsung/android/settings/eyecomfort/EyeComfortSpinnerPreference$ScheduleTypeArrayAdapter;->this$0:Lcom/samsung/android/settings/eyecomfort/EyeComfortSpinnerPreference;

    invoke-static {p1}, Lcom/samsung/android/settings/eyecomfort/EyeComfortSpinnerPreference;->-$$Nest$fgetmListener(Lcom/samsung/android/settings/eyecomfort/EyeComfortSpinnerPreference;)Lcom/samsung/android/settings/eyecomfort/EyeComfortSpinnerPreference$onSpinnerItemClickListener;

    move-result-object p1

    iget v0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSpinnerPreference$ScheduleTypeArrayAdapter$1;->val$position:I

    invoke-interface {p1, v0}, Lcom/samsung/android/settings/eyecomfort/EyeComfortSpinnerPreference$onSpinnerItemClickListener;->onCustomScheduleSpinnerItemClick(I)V

    .line 119
    iget-object p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSpinnerPreference$ScheduleTypeArrayAdapter$1;->this$1:Lcom/samsung/android/settings/eyecomfort/EyeComfortSpinnerPreference$ScheduleTypeArrayAdapter;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 120
    iget-object p0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSpinnerPreference$ScheduleTypeArrayAdapter$1;->this$1:Lcom/samsung/android/settings/eyecomfort/EyeComfortSpinnerPreference$ScheduleTypeArrayAdapter;

    iget-object p0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSpinnerPreference$ScheduleTypeArrayAdapter;->this$0:Lcom/samsung/android/settings/eyecomfort/EyeComfortSpinnerPreference;

    invoke-static {p0}, Lcom/samsung/android/settings/eyecomfort/EyeComfortSpinnerPreference;->-$$Nest$fgetmSpinner(Lcom/samsung/android/settings/eyecomfort/EyeComfortSpinnerPreference;)Landroidx/appcompat/widget/AppCompatSpinner;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatSpinner;->seslDismissPopup()V

    return-void
.end method
