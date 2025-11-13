.class public final synthetic Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceFragment$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceFragment;I)V
    .locals 0

    iput p2, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceFragment$$ExternalSyntheticLambda5;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceFragment$$ExternalSyntheticLambda5;->f$0:Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 10

    iget p1, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceFragment$$ExternalSyntheticLambda5;->$r8$classId:I

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceFragment$$ExternalSyntheticLambda5;->f$0:Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceFragment;

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceFragment;->mResetCircle:Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceFragment$1;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceFragment;->mResetCircle:Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceFragment$1;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceFragment;->resetCircles()V

    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceFragment;->onBackPressed()V

    sget-object p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->_factory:Lcom/android/settings/overlay/FeatureFactoryImpl;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/overlay/FeatureFactoryImpl;->getA11ySettingsMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object p0

    const/16 p1, 0x1399

    const-string v0, "A11Y5038"

    invoke-virtual {p0, p1, v0}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->clicked(ILjava/lang/String;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "No feature factory configured"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_1
    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/settings/accessibility/SecAccessibilityUtils;->getAccessibilitySharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "ignore_repeated_tutorial"

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-class p1, Lcom/samsung/android/settings/accessibility/dexterity/IgnoreRepeatPreferenceFragment;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const v0, 0x7f1400f8

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;->launchFragment$1(ILjava/lang/String;)V

    sget-object p1, Lcom/android/settings/overlay/FeatureFactoryImpl;->_factory:Lcom/android/settings/overlay/FeatureFactoryImpl;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcom/android/settings/overlay/FeatureFactoryImpl;->getA11ySettingsMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceFragment;->mCircleView1:Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceCircleView;

    iget v0, v0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceCircleView;->mState:I

    const/4 v2, 0x0

    if-nez v0, :cond_2

    move v0, v1

    move v3, v2

    move v2, v0

    goto :goto_1

    :cond_2
    if-ne v0, v1, :cond_3

    move v0, v1

    :goto_0
    move v3, v0

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_0

    :goto_1
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceFragment;->mCircleView2:Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceCircleView;

    iget v4, v4, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceCircleView;->mState:I

    if-nez v4, :cond_4

    add-int/lit8 v2, v2, 0x1

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    if-ne v4, v1, :cond_5

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceFragment;->mCircleView3:Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceCircleView;

    iget p0, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceCircleView;->mState:I

    if-nez p0, :cond_6

    add-int/lit8 v2, v2, 0x1

    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_6
    if-ne p0, v1, :cond_7

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_7
    :goto_5
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    const-string v4, "Trials"

    const-string v6, "Success"

    const-string v8, "Fails"

    invoke-static/range {v4 .. v9}, Ljava/util/Map;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p0

    const/16 v0, 0x1399

    const-string v1, "A11Y5039"

    invoke-virtual {p1, v0, v1, p0}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(ILjava/lang/String;Ljava/util/Map;)V

    return-void

    :cond_8
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "No feature factory configured"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
