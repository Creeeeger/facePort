.class Lcom/samsung/android/settings/eyecomfort/EyeComfortSpinnerPreference$ScheduleTypeArrayAdapter;
.super Landroid/widget/BaseAdapter;
.source "EyeComfortSpinnerPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/eyecomfort/EyeComfortSpinnerPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScheduleTypeArrayAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/samsung/android/settings/eyecomfort/EyeComfortSpinnerPreference;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/eyecomfort/EyeComfortSpinnerPreference;Landroid/content/Context;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSpinnerPreference$ScheduleTypeArrayAdapter;->this$0:Lcom/samsung/android/settings/eyecomfort/EyeComfortSpinnerPreference;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 84
    iput-object p2, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSpinnerPreference$ScheduleTypeArrayAdapter;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 0

    const/4 p0, 0x3

    return p0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    .line 89
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public getItemId(I)J
    .locals 0

    int-to-long p0, p1

    return-wide p0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    if-nez p2, :cond_0

    .line 107
    iget-object p2, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSpinnerPreference$ScheduleTypeArrayAdapter;->this$0:Lcom/samsung/android/settings/eyecomfort/EyeComfortSpinnerPreference;

    invoke-static {p2}, Lcom/samsung/android/settings/eyecomfort/EyeComfortSpinnerPreference;->-$$Nest$fgetmInflater(Lcom/samsung/android/settings/eyecomfort/EyeComfortSpinnerPreference;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget p3, Lcom/android/settings/R$layout;->sec_eye_comfort_spinner_item:I

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 108
    new-instance p3, Lcom/samsung/android/settings/eyecomfort/EyeComfortSpinnerPreference$CustomScheduleHolder;

    iget-object v0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSpinnerPreference$ScheduleTypeArrayAdapter;->this$0:Lcom/samsung/android/settings/eyecomfort/EyeComfortSpinnerPreference;

    invoke-direct {p3, v0, p2, p1}, Lcom/samsung/android/settings/eyecomfort/EyeComfortSpinnerPreference$CustomScheduleHolder;-><init>(Lcom/samsung/android/settings/eyecomfort/EyeComfortSpinnerPreference;Landroid/view/View;I)V

    .line 109
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 111
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/samsung/android/settings/eyecomfort/EyeComfortSpinnerPreference$CustomScheduleHolder;

    .line 114
    :goto_0
    new-instance p3, Lcom/samsung/android/settings/eyecomfort/EyeComfortSpinnerPreference$ScheduleTypeArrayAdapter$1;

    invoke-direct {p3, p0, p1}, Lcom/samsung/android/settings/eyecomfort/EyeComfortSpinnerPreference$ScheduleTypeArrayAdapter$1;-><init>(Lcom/samsung/android/settings/eyecomfort/EyeComfortSpinnerPreference$ScheduleTypeArrayAdapter;I)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method
