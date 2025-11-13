.class public Lcom/samsung/android/settings/as/widget/SoundModeDropDownPreference$ReselectionSpinner;
.super Landroidx/appcompat/widget/AppCompatSpinner;
.source "SoundModeDropDownPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/as/widget/SoundModeDropDownPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ReselectionSpinner"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/as/widget/SoundModeDropDownPreference;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/as/widget/SoundModeDropDownPreference;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 286
    iput-object p1, p0, Lcom/samsung/android/settings/as/widget/SoundModeDropDownPreference$ReselectionSpinner;->this$0:Lcom/samsung/android/settings/as/widget/SoundModeDropDownPreference;

    .line 287
    invoke-direct {p0, p2, p3}, Landroidx/appcompat/widget/AppCompatSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p0, 0x0

    .line 288
    invoke-static {p1, p0}, Lcom/samsung/android/settings/as/widget/SoundModeDropDownPreference;->-$$Nest$fputmUserClicked(Lcom/samsung/android/settings/as/widget/SoundModeDropDownPreference;Z)V

    return-void
.end method


# virtual methods
.method public setSelection(I)V
    .locals 1

    .line 293
    iget-object v0, p0, Lcom/samsung/android/settings/as/widget/SoundModeDropDownPreference$ReselectionSpinner;->this$0:Lcom/samsung/android/settings/as/widget/SoundModeDropDownPreference;

    invoke-virtual {v0}, Landroidx/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 297
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 298
    iget-object v0, p0, Lcom/samsung/android/settings/as/widget/SoundModeDropDownPreference$ReselectionSpinner;->this$0:Lcom/samsung/android/settings/as/widget/SoundModeDropDownPreference;

    invoke-static {v0}, Lcom/samsung/android/settings/as/widget/SoundModeDropDownPreference;->-$$Nest$fgetmUserClicked(Lcom/samsung/android/settings/as/widget/SoundModeDropDownPreference;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    if-ltz p1, :cond_2

    .line 302
    iget-object v0, p0, Lcom/samsung/android/settings/as/widget/SoundModeDropDownPreference$ReselectionSpinner;->this$0:Lcom/samsung/android/settings/as/widget/SoundModeDropDownPreference;

    invoke-virtual {v0}, Landroidx/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    aget-object p1, v0, p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 303
    iget-object v0, p0, Lcom/samsung/android/settings/as/widget/SoundModeDropDownPreference$ReselectionSpinner;->this$0:Lcom/samsung/android/settings/as/widget/SoundModeDropDownPreference;

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 304
    iget-object v0, p0, Lcom/samsung/android/settings/as/widget/SoundModeDropDownPreference$ReselectionSpinner;->this$0:Lcom/samsung/android/settings/as/widget/SoundModeDropDownPreference;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/as/widget/SoundModeDropDownPreference;->setValue(Ljava/lang/String;)V

    .line 307
    :cond_2
    iget-object p0, p0, Lcom/samsung/android/settings/as/widget/SoundModeDropDownPreference$ReselectionSpinner;->this$0:Lcom/samsung/android/settings/as/widget/SoundModeDropDownPreference;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/samsung/android/settings/as/widget/SoundModeDropDownPreference;->-$$Nest$fputmUserClicked(Lcom/samsung/android/settings/as/widget/SoundModeDropDownPreference;Z)V

    return-void
.end method
