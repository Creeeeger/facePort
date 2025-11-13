.class public final synthetic Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelSettings$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelSettings;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelSettings;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelSettings$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelSettings;

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelSettings$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelSettings;

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelSettings;->mScrollWheelPreference:Landroidx/preference/SecDropDownPreference;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelSettings;->mScrollWheelPreference:Landroidx/preference/SecDropDownPreference;

    invoke-virtual {p0, p2}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "flex_mode_scroll_wheel_pos"

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 p0, 0x0

    return p0
.end method
