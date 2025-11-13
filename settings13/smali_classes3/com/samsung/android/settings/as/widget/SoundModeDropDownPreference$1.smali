.class Lcom/samsung/android/settings/as/widget/SoundModeDropDownPreference$1;
.super Ljava/lang/Object;
.source "SoundModeDropDownPreference.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/as/widget/SoundModeDropDownPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
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

    .line 92
    iput-object p1, p0, Lcom/samsung/android/settings/as/widget/SoundModeDropDownPreference$1;->this$0:Lcom/samsung/android/settings/as/widget/SoundModeDropDownPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 2

    .line 96
    iget-object p1, p0, Lcom/samsung/android/settings/as/widget/SoundModeDropDownPreference$1;->this$0:Lcom/samsung/android/settings/as/widget/SoundModeDropDownPreference;

    invoke-static {p1}, Lcom/samsung/android/settings/as/widget/SoundModeDropDownPreference;->-$$Nest$fgetmSpinner(Lcom/samsung/android/settings/as/widget/SoundModeDropDownPreference;)Landroidx/appcompat/widget/AppCompatSpinner;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/settings/as/widget/SoundModeDropDownPreference$1;->this$0:Lcom/samsung/android/settings/as/widget/SoundModeDropDownPreference;

    invoke-static {p1}, Lcom/samsung/android/settings/as/widget/SoundModeDropDownPreference;->-$$Nest$fgetmAdapter(Lcom/samsung/android/settings/as/widget/SoundModeDropDownPreference;)Landroid/widget/ArrayAdapter;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/settings/as/widget/SoundModeDropDownPreference$1;->this$0:Lcom/samsung/android/settings/as/widget/SoundModeDropDownPreference;

    invoke-static {p1}, Lcom/samsung/android/settings/as/widget/SoundModeDropDownPreference;->-$$Nest$fgetmAdapter(Lcom/samsung/android/settings/as/widget/SoundModeDropDownPreference;)Landroid/widget/ArrayAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result p1

    if-gtz p1, :cond_0

    goto :goto_0

    .line 100
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/as/widget/SoundModeDropDownPreference$1;->this$0:Lcom/samsung/android/settings/as/widget/SoundModeDropDownPreference;

    invoke-static {p1, v0}, Lcom/samsung/android/settings/as/widget/SoundModeDropDownPreference;->-$$Nest$fputmUserClicked(Lcom/samsung/android/settings/as/widget/SoundModeDropDownPreference;Z)V

    .line 101
    iget-object p1, p0, Lcom/samsung/android/settings/as/widget/SoundModeDropDownPreference$1;->this$0:Lcom/samsung/android/settings/as/widget/SoundModeDropDownPreference;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/samsung/android/settings/as/widget/SoundModeDropDownPreference;->-$$Nest$fputmCancelFlag(Lcom/samsung/android/settings/as/widget/SoundModeDropDownPreference;Z)V

    .line 102
    iget-object p1, p0, Lcom/samsung/android/settings/as/widget/SoundModeDropDownPreference$1;->this$0:Lcom/samsung/android/settings/as/widget/SoundModeDropDownPreference;

    invoke-static {p1}, Lcom/samsung/android/settings/as/widget/SoundModeDropDownPreference;->-$$Nest$fgetmSpinner(Lcom/samsung/android/settings/as/widget/SoundModeDropDownPreference;)Landroidx/appcompat/widget/AppCompatSpinner;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/Spinner;->setSoundEffectsEnabled(Z)V

    .line 103
    iget-object p0, p0, Lcom/samsung/android/settings/as/widget/SoundModeDropDownPreference$1;->this$0:Lcom/samsung/android/settings/as/widget/SoundModeDropDownPreference;

    invoke-static {p0}, Lcom/samsung/android/settings/as/widget/SoundModeDropDownPreference;->-$$Nest$fgetmSpinner(Lcom/samsung/android/settings/as/widget/SoundModeDropDownPreference;)Landroidx/appcompat/widget/AppCompatSpinner;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatSpinner;->performClick()Z

    return v0

    .line 97
    :cond_1
    :goto_0
    invoke-static {}, Lcom/samsung/android/settings/as/widget/SoundModeDropDownPreference;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "onClick(): spinner is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method
