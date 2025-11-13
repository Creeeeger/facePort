.class public Lcom/samsung/android/settings/goodsettings/policy/PolicyManager;
.super Ljava/lang/Object;
.source "PolicyManager.java"


# static fields
.field private static mInstance:Lcom/samsung/android/settings/goodsettings/policy/PolicyManager;


# instance fields
.field private mLastUpdated:J

.field private mPolicies:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/settings/goodsettings/policy/PolicyInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPolicyLocale:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$5t7DpBTJ2CUT7jjBdngp7TimfLc(Ljava/lang/String;Lcom/samsung/android/settings/goodsettings/policy/PolicyInfo;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/settings/goodsettings/policy/PolicyManager;->lambda$policyExists$0(Ljava/lang/String;Lcom/samsung/android/settings/goodsettings/policy/PolicyInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$F5z9JZ3joqjOi3QZLxRVX77NpYc(Ljava/lang/String;Lcom/samsung/android/settings/goodsettings/policy/PolicyInfo;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/settings/goodsettings/policy/PolicyManager;->lambda$getPolicy$1(Ljava/lang/String;Lcom/samsung/android/settings/goodsettings/policy/PolicyInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$U4W4zvPJfWXZDw7b5-744RyNKbM(Lcom/samsung/android/settings/goodsettings/policy/PolicyInfo;Lcom/samsung/android/settings/goodsettings/policy/PolicyInfo;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/settings/goodsettings/policy/PolicyManager;->lambda$setPolicy$2(Lcom/samsung/android/settings/goodsettings/policy/PolicyInfo;Lcom/samsung/android/settings/goodsettings/policy/PolicyInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$jg2BEdNDT3NsxEeGmGGd9z3rNq4(Ljava/lang/String;Lcom/samsung/android/settings/goodsettings/policy/PolicyInfo;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/settings/goodsettings/policy/PolicyManager;->lambda$initializePolicy$4(Ljava/lang/String;Lcom/samsung/android/settings/goodsettings/policy/PolicyInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$xByIQ6NBYTgPuShire2qVgDjRJ8(Lcom/samsung/android/settings/goodsettings/policy/PolicyInfo;)Z
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/settings/goodsettings/policy/PolicyManager;->lambda$updatePolicyLocale$3(Lcom/samsung/android/settings/goodsettings/policy/PolicyInfo;)Z

    move-result p0

    return p0
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/goodsettings/policy/PolicyManager;->mPolicies:Ljava/util/ArrayList;

    const-wide/16 v0, 0x0

    .line 29
    iput-wide v0, p0, Lcom/samsung/android/settings/goodsettings/policy/PolicyManager;->mLastUpdated:J

    .line 39
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/goodsettings/policy/PolicyManager;->fillInGoodSettingsPolicies(Landroid/content/Context;)V

    return-void
.end method

.method private fillInGoodSettingsPolicies(Landroid/content/Context;)V
    .locals 6

    .line 44
    invoke-static {p1}, Lcom/samsung/android/settings/goodsettings/policy/PolicyJSONManager;->existsJsonFile(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 45
    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/settings/goodsettings/policy/PolicyManager;->initializePolicy(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 47
    :cond_0
    invoke-static {p1}, Lcom/samsung/android/settings/goodsettings/policy/PolicyJSONManager;->parsePolicy(Landroid/content/Context;)Lcom/samsung/android/settings/goodsettings/policy/PolicyData;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 49
    iget-wide v2, v0, Lcom/samsung/android/settings/goodsettings/policy/PolicyData;->mPolicyVersion:J

    const-wide/16 v4, 0x5

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    goto :goto_0

    .line 52
    :cond_1
    iget-object p1, v0, Lcom/samsung/android/settings/goodsettings/policy/PolicyData;->mPolicies:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/samsung/android/settings/goodsettings/policy/PolicyManager;->mPolicies:Ljava/util/ArrayList;

    .line 53
    iget-object p1, v0, Lcom/samsung/android/settings/goodsettings/policy/PolicyData;->mPolicyLocale:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/settings/goodsettings/policy/PolicyManager;->mPolicyLocale:Ljava/lang/String;

    .line 55
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/settings/goodsettings/policy/PolicyManager;->mLastUpdated:J

    goto :goto_1

    .line 50
    :cond_2
    :goto_0
    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/settings/goodsettings/policy/PolicyManager;->initializePolicy(Landroid/content/Context;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private getDefaultPolicy(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/settings/goodsettings/policy/PolicyInfo;
    .locals 8

    .line 92
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const-string v1, "home_configuration_is_enabled"

    const-string v2, "show_samsung_account_nick_name"

    const/4 v3, 0x1

    const-string v4, "home_configuration_top_level_preferences"

    const-string v5, "hide_samsung_account_email"

    const/4 v6, 0x0

    const/4 v7, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v7, 0x3

    goto :goto_0

    :sswitch_1
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v7, 0x2

    goto :goto_0

    :sswitch_2
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    move v7, v3

    goto :goto_0

    :sswitch_3
    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_0

    :cond_3
    move v7, v6

    :goto_0
    const-string p2, "Boolean"

    packed-switch v7, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 94
    :pswitch_0
    new-instance p0, Lcom/samsung/android/settings/goodsettings/policy/PolicyInfo;

    .line 96
    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p2, p1}, Lcom/samsung/android/settings/goodsettings/policy/PolicyInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    .line 102
    :pswitch_1
    new-instance p0, Lcom/samsung/android/settings/goodsettings/policy/PolicyInfo;

    .line 104
    invoke-static {v6}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v2, p2, p1}, Lcom/samsung/android/settings/goodsettings/policy/PolicyInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    .line 106
    :pswitch_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/settings/goodsettings/policy/PolicyManager;->mPolicyLocale:Ljava/lang/String;

    .line 107
    new-instance p0, Lcom/samsung/android/settings/goodsettings/policy/PolicyInfo;

    .line 108
    invoke-static {p1}, Lcom/samsung/android/settings/goodsettings/GoodSettingsTopLevelPreferenceParser;->getTopLevelPreferencesDump(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "String"

    invoke-direct {p0, v4, p2, p1}, Lcom/samsung/android/settings/goodsettings/policy/PolicyInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    .line 98
    :pswitch_3
    new-instance p0, Lcom/samsung/android/settings/goodsettings/policy/PolicyInfo;

    .line 100
    invoke-static {v6}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v5, p2, p1}, Lcom/samsung/android/settings/goodsettings/policy/PolicyInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x773be7b8 -> :sswitch_3
        -0x24135796 -> :sswitch_2
        0x1f4e528e -> :sswitch_1
        0x20314775 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/goodsettings/policy/PolicyManager;
    .locals 1

    .line 32
    sget-object v0, Lcom/samsung/android/settings/goodsettings/policy/PolicyManager;->mInstance:Lcom/samsung/android/settings/goodsettings/policy/PolicyManager;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Lcom/samsung/android/settings/goodsettings/policy/PolicyManager;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/goodsettings/policy/PolicyManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/android/settings/goodsettings/policy/PolicyManager;->mInstance:Lcom/samsung/android/settings/goodsettings/policy/PolicyManager;

    .line 35
    :cond_0
    sget-object p0, Lcom/samsung/android/settings/goodsettings/policy/PolicyManager;->mInstance:Lcom/samsung/android/settings/goodsettings/policy/PolicyManager;

    return-object p0
.end method

.method private static synthetic lambda$getPolicy$1(Ljava/lang/String;Lcom/samsung/android/settings/goodsettings/policy/PolicyInfo;)Z
    .locals 0

    .line 86
    iget-object p1, p1, Lcom/samsung/android/settings/goodsettings/policy/PolicyInfo;->mKey:Ljava/lang/String;

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$initializePolicy$4(Ljava/lang/String;Lcom/samsung/android/settings/goodsettings/policy/PolicyInfo;)Z
    .locals 0

    if-eqz p0, :cond_1

    .line 156
    iget-object p1, p1, Lcom/samsung/android/settings/goodsettings/policy/PolicyInfo;->mKey:Ljava/lang/String;

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static synthetic lambda$policyExists$0(Ljava/lang/String;Lcom/samsung/android/settings/goodsettings/policy/PolicyInfo;)Z
    .locals 0

    .line 61
    iget-object p1, p1, Lcom/samsung/android/settings/goodsettings/policy/PolicyInfo;->mKey:Ljava/lang/String;

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$setPolicy$2(Lcom/samsung/android/settings/goodsettings/policy/PolicyInfo;Lcom/samsung/android/settings/goodsettings/policy/PolicyInfo;)Z
    .locals 0

    .line 114
    iget-object p1, p1, Lcom/samsung/android/settings/goodsettings/policy/PolicyInfo;->mKey:Ljava/lang/String;

    iget-object p0, p0, Lcom/samsung/android/settings/goodsettings/policy/PolicyInfo;->mKey:Ljava/lang/String;

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$updatePolicyLocale$3(Lcom/samsung/android/settings/goodsettings/policy/PolicyInfo;)Z
    .locals 1

    .line 135
    iget-object p0, p0, Lcom/samsung/android/settings/goodsettings/policy/PolicyInfo;->mKey:Ljava/lang/String;

    const-string v0, "home_configuration_top_level_preferences"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public compareAndMergePolicy(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    :try_start_0
    const-string v0, "home_configuration_top_level_preferences"

    .line 166
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/goodsettings/policy/PolicyManager;->getPolicy(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/settings/goodsettings/policy/PolicyInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/android/settings/goodsettings/policy/PolicyInfo;->mValue:Ljava/lang/String;

    .line 168
    invoke-static {p1, v0}, Lcom/samsung/android/settings/goodsettings/GoodSettingsTopLevelPreferenceParser;->merge(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 169
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 170
    new-instance v0, Lcom/samsung/android/settings/goodsettings/policy/PolicyInfo;

    const-string v2, "String"

    invoke-direct {v0, p2, v2, v1}, Lcom/samsung/android/settings/goodsettings/policy/PolicyInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/settings/goodsettings/policy/PolicyManager;->setPolicy(Landroid/content/Context;Lcom/samsung/android/settings/goodsettings/policy/PolicyInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 175
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string p1, "[GS]PolicyManager"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getLastUpdated()J
    .locals 2

    .line 123
    iget-wide v0, p0, Lcom/samsung/android/settings/goodsettings/policy/PolicyManager;->mLastUpdated:J

    return-wide v0
.end method

.method public getPolicy(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/settings/goodsettings/policy/PolicyInfo;
    .locals 2

    .line 83
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/goodsettings/policy/PolicyManager;->updatePolicyLocale(Landroid/content/Context;)V

    .line 85
    iget-object v0, p0, Lcom/samsung/android/settings/goodsettings/policy/PolicyManager;->mPolicies:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/goodsettings/policy/PolicyManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p2}, Lcom/samsung/android/settings/goodsettings/policy/PolicyManager$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    .line 86
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 87
    invoke-interface {v0}, Ljava/util/stream/Stream;->findAny()Ljava/util/Optional;

    move-result-object v0

    .line 88
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/goodsettings/policy/PolicyManager;->getDefaultPolicy(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/settings/goodsettings/policy/PolicyInfo;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/goodsettings/policy/PolicyInfo;

    return-object p0
.end method

.method public getPolicyTypeBoolean(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    .line 71
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/goodsettings/policy/PolicyManager;->getPolicy(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/settings/goodsettings/policy/PolicyInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 72
    iget-object p1, p0, Lcom/samsung/android/settings/goodsettings/policy/PolicyInfo;->mType:Ljava/lang/String;

    const-string p2, "Boolean"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/goodsettings/policy/PolicyInfo;->mValue:Ljava/lang/String;

    .line 73
    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getPolicyTypeString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 77
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/goodsettings/policy/PolicyManager;->getPolicy(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/settings/goodsettings/policy/PolicyInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 78
    iget-object p1, p0, Lcom/samsung/android/settings/goodsettings/policy/PolicyInfo;->mType:Ljava/lang/String;

    const-string p2, "String"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 79
    iget-object p0, p0, Lcom/samsung/android/settings/goodsettings/policy/PolicyInfo;->mValue:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public initializePolicy(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .line 156
    iget-object v0, p0, Lcom/samsung/android/settings/goodsettings/policy/PolicyManager;->mPolicies:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/settings/goodsettings/policy/PolicyManager$$ExternalSyntheticLambda2;

    invoke-direct {v1, p2}, Lcom/samsung/android/settings/goodsettings/policy/PolicyManager$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 158
    new-instance p2, Lcom/samsung/android/settings/goodsettings/policy/PolicyData;

    iget-object v0, p0, Lcom/samsung/android/settings/goodsettings/policy/PolicyManager;->mPolicyLocale:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/settings/goodsettings/policy/PolicyManager;->mPolicies:Ljava/util/ArrayList;

    const-wide/16 v2, 0x5

    invoke-direct {p2, v2, v3, v0, v1}, Lcom/samsung/android/settings/goodsettings/policy/PolicyData;-><init>(JLjava/lang/String;Ljava/util/ArrayList;)V

    invoke-static {p1, p2}, Lcom/samsung/android/settings/goodsettings/policy/PolicyJSONManager;->writeJson(Landroid/content/Context;Lcom/samsung/android/settings/goodsettings/policy/PolicyData;)V

    .line 161
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/samsung/android/settings/goodsettings/policy/PolicyManager;->mLastUpdated:J

    return-void
.end method

.method public isEnabled(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "home_configuration_is_enabled"

    .line 65
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/settings/goodsettings/policy/PolicyManager;->getPolicy(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/settings/goodsettings/policy/PolicyInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 66
    iget-object p1, p0, Lcom/samsung/android/settings/goodsettings/policy/PolicyInfo;->mType:Ljava/lang/String;

    const-string v0, "Boolean"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/samsung/android/settings/goodsettings/policy/PolicyInfo;->mValue:Ljava/lang/String;

    .line 67
    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public policyExists(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/samsung/android/settings/goodsettings/policy/PolicyManager;->mPolicies:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/samsung/android/settings/goodsettings/policy/PolicyManager$$ExternalSyntheticLambda4;

    invoke-direct {p1, p2}, Lcom/samsung/android/settings/goodsettings/policy/PolicyManager$$ExternalSyntheticLambda4;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public setPolicy(Landroid/content/Context;Lcom/samsung/android/settings/goodsettings/policy/PolicyInfo;)V
    .locals 4

    .line 114
    iget-object v0, p0, Lcom/samsung/android/settings/goodsettings/policy/PolicyManager;->mPolicies:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/settings/goodsettings/policy/PolicyManager$$ExternalSyntheticLambda1;

    invoke-direct {v1, p2}, Lcom/samsung/android/settings/goodsettings/policy/PolicyManager$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/goodsettings/policy/PolicyInfo;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 115
    iget-object v0, p0, Lcom/samsung/android/settings/goodsettings/policy/PolicyManager;->mPolicies:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    new-instance p2, Lcom/samsung/android/settings/goodsettings/policy/PolicyData;

    iget-object v0, p0, Lcom/samsung/android/settings/goodsettings/policy/PolicyManager;->mPolicyLocale:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/settings/goodsettings/policy/PolicyManager;->mPolicies:Ljava/util/ArrayList;

    const-wide/16 v2, 0x5

    invoke-direct {p2, v2, v3, v0, v1}, Lcom/samsung/android/settings/goodsettings/policy/PolicyData;-><init>(JLjava/lang/String;Ljava/util/ArrayList;)V

    invoke-static {p1, p2}, Lcom/samsung/android/settings/goodsettings/policy/PolicyJSONManager;->writeJson(Landroid/content/Context;Lcom/samsung/android/settings/goodsettings/policy/PolicyData;)V

    .line 119
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/samsung/android/settings/goodsettings/policy/PolicyManager;->mLastUpdated:J

    return-void
.end method

.method public updatePolicyLocale(Landroid/content/Context;)V
    .locals 4

    .line 131
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 133
    iget-object v1, p0, Lcom/samsung/android/settings/goodsettings/policy/PolicyManager;->mPolicyLocale:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 134
    iget-object v1, p0, Lcom/samsung/android/settings/goodsettings/policy/PolicyManager;->mPolicies:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/goodsettings/policy/PolicyManager$$ExternalSyntheticLambda3;

    invoke-direct {v2}, Lcom/samsung/android/settings/goodsettings/policy/PolicyManager$$ExternalSyntheticLambda3;-><init>()V

    .line 135
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 136
    invoke-interface {v1}, Ljava/util/stream/Stream;->findAny()Ljava/util/Optional;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/goodsettings/policy/PolicyInfo;

    if-nez v1, :cond_0

    return-void

    .line 142
    :cond_0
    iget-object v2, v1, Lcom/samsung/android/settings/goodsettings/policy/PolicyInfo;->mValue:Ljava/lang/String;

    invoke-static {p1, v2}, Lcom/samsung/android/settings/goodsettings/GoodSettingsTopLevelPreferenceParser;->updateLocale(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 144
    iput-object v0, p0, Lcom/samsung/android/settings/goodsettings/policy/PolicyManager;->mPolicyLocale:Ljava/lang/String;

    .line 145
    new-instance v0, Lcom/samsung/android/settings/goodsettings/policy/PolicyInfo;

    iget-object v3, v1, Lcom/samsung/android/settings/goodsettings/policy/PolicyInfo;->mKey:Ljava/lang/String;

    iget-object v1, v1, Lcom/samsung/android/settings/goodsettings/policy/PolicyInfo;->mType:Ljava/lang/String;

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/settings/goodsettings/policy/PolicyInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/settings/goodsettings/policy/PolicyManager;->setPolicy(Landroid/content/Context;Lcom/samsung/android/settings/goodsettings/policy/PolicyInfo;)V

    :cond_1
    return-void
.end method
