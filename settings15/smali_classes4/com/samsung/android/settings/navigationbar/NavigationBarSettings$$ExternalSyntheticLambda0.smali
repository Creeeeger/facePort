.class public final synthetic Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;I)V
    .locals 0

    iput p2, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 7

    const/4 p1, 0x0

    const/16 v0, 0x1d2e

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x1

    iget-object v5, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;

    iget p0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    sget-object p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    iget-object p2, v5, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string/jumbo v6, "touch_and_hold_to_search"

    invoke-static {p2, v6, p0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object p2, v5, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mCircleToSearch:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {p2, p0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    if-eqz p0, :cond_0

    move-wide v1, v3

    :cond_0
    const p0, 0xb6dcd

    invoke-static {v0, p0, v1, v2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    return p1

    :pswitch_0
    sget-object p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    iget-object p2, v5, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v6, "assist_touch_gesture_enabled"

    invoke-static {p2, v6, p0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object p2, v5, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v6, "assist_long_press_home_enabled"

    invoke-static {p2, v6, p0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object p2, v5, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mSwipeToOpenAssistantApp:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {p2, p0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    if-eqz p0, :cond_1

    move-wide v1, v3

    :cond_1
    const p0, 0xb6dcc

    invoke-static {v0, p0, v1, v2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
