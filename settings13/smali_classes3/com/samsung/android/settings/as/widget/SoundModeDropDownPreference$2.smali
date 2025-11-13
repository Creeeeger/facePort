.class Lcom/samsung/android/settings/as/widget/SoundModeDropDownPreference$2;
.super Ljava/lang/Object;
.source "SoundModeDropDownPreference.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/as/widget/SoundModeDropDownPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/as/widget/SoundModeDropDownPreference;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/as/widget/SoundModeDropDownPreference;)V
    .locals 0

    .line 262
    iput-object p1, p0, Lcom/samsung/android/settings/as/widget/SoundModeDropDownPreference$2;->this$0:Lcom/samsung/android/settings/as/widget/SoundModeDropDownPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 265
    iget-object p1, p0, Lcom/samsung/android/settings/as/widget/SoundModeDropDownPreference$2;->this$0:Lcom/samsung/android/settings/as/widget/SoundModeDropDownPreference;

    invoke-virtual {p1}, Landroidx/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/settings/as/widget/SoundModeDropDownPreference$2;->this$0:Lcom/samsung/android/settings/as/widget/SoundModeDropDownPreference;

    invoke-static {p1}, Lcom/samsung/android/settings/as/widget/SoundModeDropDownPreference;->-$$Nest$fgetmCancelFlag(Lcom/samsung/android/settings/as/widget/SoundModeDropDownPreference;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    if-ltz p3, :cond_1

    .line 269
    iget-object p1, p0, Lcom/samsung/android/settings/as/widget/SoundModeDropDownPreference$2;->this$0:Lcom/samsung/android/settings/as/widget/SoundModeDropDownPreference;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/samsung/android/settings/as/widget/SoundModeDropDownPreference;->setCustomHourFlag(Z)V

    .line 271
    iget-object p1, p0, Lcom/samsung/android/settings/as/widget/SoundModeDropDownPreference$2;->this$0:Lcom/samsung/android/settings/as/widget/SoundModeDropDownPreference;

    invoke-virtual {p1}, Landroidx/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object p1

    aget-object p1, p1, p3

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 272
    iget-object p2, p0, Lcom/samsung/android/settings/as/widget/SoundModeDropDownPreference$2;->this$0:Lcom/samsung/android/settings/as/widget/SoundModeDropDownPreference;

    invoke-virtual {p2}, Landroidx/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/samsung/android/settings/as/widget/SoundModeDropDownPreference$2;->this$0:Lcom/samsung/android/settings/as/widget/SoundModeDropDownPreference;

    invoke-virtual {p2, p1}, Landroidx/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 273
    iget-object p0, p0, Lcom/samsung/android/settings/as/widget/SoundModeDropDownPreference$2;->this$0:Lcom/samsung/android/settings/as/widget/SoundModeDropDownPreference;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/as/widget/SoundModeDropDownPreference;->setValue(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method
