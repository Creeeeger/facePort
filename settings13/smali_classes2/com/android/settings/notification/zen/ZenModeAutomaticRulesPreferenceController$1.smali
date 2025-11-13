.class Lcom/android/settings/notification/zen/ZenModeAutomaticRulesPreferenceController$1;
.super Ljava/lang/Object;
.source "ZenModeAutomaticRulesPreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/zen/ZenModeAutomaticRulesPreferenceController;->reloadAllRules([Ljava/util/Map$Entry;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/zen/ZenModeAutomaticRulesPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/zen/ZenModeAutomaticRulesPreferenceController;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/android/settings/notification/zen/ZenModeAutomaticRulesPreferenceController$1;->this$0:Lcom/android/settings/notification/zen/ZenModeAutomaticRulesPreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 6

    .line 146
    check-cast p1, Lcom/android/settings/notification/zen/ZenRulePreference;

    .line 147
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 148
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeAutomaticRulesPreferenceController$1;->this$0:Lcom/android/settings/notification/zen/ZenModeAutomaticRulesPreferenceController;

    invoke-virtual {p0}, Lcom/android/settings/notification/zen/AbstractZenModeAutomaticRulePreferenceController;->getRules()[Ljava/util/Map$Entry;

    move-result-object p0

    const/4 v0, 0x0

    .line 149
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_2

    .line 150
    iget-object v1, p1, Lcom/android/settings/notification/zen/ZenRulePreference;->mId:Ljava/lang/String;

    aget-object v2, p0, v0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x1036

    const/16 v2, 0x1038

    .line 151
    aget-object v3, p0, v0

    .line 153
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz p2, :cond_0

    const-wide/16 v4, 0x3e8

    goto :goto_1

    :cond_0
    const-wide/16 v4, 0x0

    .line 151
    :goto_1
    invoke-static {v1, v2, v3, v4, v5}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IILjava/lang/String;J)V

    .line 155
    aget-object p0, p0, v0

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/AutomaticZenRule;

    .line 156
    invoke-virtual {p0, p2}, Landroid/app/AutomaticZenRule;->setEnabled(Z)V

    .line 157
    invoke-virtual {p1, p0}, Lcom/android/settings/notification/zen/ZenRulePreference;->onCheckChange(Landroid/app/AutomaticZenRule;)V

    goto :goto_2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    const/4 p0, 0x1

    return p0
.end method
