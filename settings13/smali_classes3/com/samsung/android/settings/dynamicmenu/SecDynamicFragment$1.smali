.class Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment$1;
.super Landroid/database/ContentObserver;
.source "SecDynamicFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;Landroid/os/Handler;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment$1;->this$0:Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 3

    if-eqz p2, :cond_1

    .line 89
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    .line 90
    iget-object p2, p0, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment$1;->this$0:Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;

    invoke-static {p2}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->-$$Nest$fgetmSettingsDbPreferenceKeyMap(Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;)Ljava/util/HashMap;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSettingsDBObserver dbKey : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " , preferenceKey : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SecDynamicFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_1

    .line 93
    iget-object v0, p0, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment$1;->this$0:Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;

    invoke-virtual {v0, p2}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    .line 94
    instance-of v0, p2, Landroidx/preference/SwitchPreferenceCompat;

    if-eqz v0, :cond_1

    .line 95
    check-cast p2, Landroidx/preference/SwitchPreferenceCompat;

    .line 97
    iget-object p0, p0, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment$1;->this$0:Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;

    invoke-static {p0}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->access$000(Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;)Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    .line 98
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSettingsDBObserver newValue : "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-virtual {p2}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p1

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-eq p1, v0, :cond_1

    .line 104
    invoke-virtual {p2, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_1
    return-void
.end method
