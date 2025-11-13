.class public final Lcom/samsung/android/settings/asbase/widget/SoundModeDropDownPreference$2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/asbase/widget/SoundModeDropDownPreference;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/asbase/widget/SoundModeDropDownPreference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/asbase/widget/SoundModeDropDownPreference$2;->this$0:Lcom/samsung/android/settings/asbase/widget/SoundModeDropDownPreference;

    return-void
.end method


# virtual methods
.method public final onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    iget-object p1, p0, Lcom/samsung/android/settings/asbase/widget/SoundModeDropDownPreference$2;->this$0:Lcom/samsung/android/settings/asbase/widget/SoundModeDropDownPreference;

    invoke-virtual {p1}, Landroidx/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/settings/asbase/widget/SoundModeDropDownPreference$2;->this$0:Lcom/samsung/android/settings/asbase/widget/SoundModeDropDownPreference;

    iget-boolean p2, p1, Lcom/samsung/android/settings/asbase/widget/SoundModeDropDownPreference;->mCancelFlag:Z

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    if-ltz p3, :cond_1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/samsung/android/settings/asbase/widget/SoundModeDropDownPreference;->setCustomHourFlag(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/asbase/widget/SoundModeDropDownPreference$2;->this$0:Lcom/samsung/android/settings/asbase/widget/SoundModeDropDownPreference;

    iget-object p1, p1, Landroidx/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    aget-object p1, p1, p3

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/settings/asbase/widget/SoundModeDropDownPreference$2;->this$0:Lcom/samsung/android/settings/asbase/widget/SoundModeDropDownPreference;

    iget-object p2, p2, Landroidx/preference/ListPreference;->mValue:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/samsung/android/settings/asbase/widget/SoundModeDropDownPreference$2;->this$0:Lcom/samsung/android/settings/asbase/widget/SoundModeDropDownPreference;

    invoke-virtual {p2, p1}, Landroidx/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p0, p0, Lcom/samsung/android/settings/asbase/widget/SoundModeDropDownPreference$2;->this$0:Lcom/samsung/android/settings/asbase/widget/SoundModeDropDownPreference;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/asbase/widget/SoundModeDropDownPreference;->setValue(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0

    return-void
.end method
