.class public Lcom/android/settings/notification/modes/ZenModeNotifVisFragment;
.super Lcom/android/settings/notification/modes/ZenModeFragmentBase;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/notification/modes/ZenModesFragmentBase;-><init>()V

    return-void
.end method


# virtual methods
.method public final createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 14

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Lcom/android/settings/notification/modes/ZenModeNotifVisPreferenceController;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/settings/notification/modes/ZenModesFragmentBase;->mBackend:Lcom/android/settings/notification/modes/ZenModesBackend;

    const-string v3, "zen_effect_intent"

    const/4 v4, 0x0

    move-object v1, v7

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/settings/notification/modes/ZenModeNotifVisPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;I[ILcom/android/settings/notification/modes/ZenModesBackend;)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/settings/notification/modes/ZenModeNotifVisPreferenceController;

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/android/settings/notification/modes/ZenModesFragmentBase;->mBackend:Lcom/android/settings/notification/modes/ZenModesBackend;

    const-string v10, "zen_effect_light"

    const/4 v11, 0x1

    move-object v8, v1

    move-object v9, p1

    invoke-direct/range {v8 .. v13}, Lcom/android/settings/notification/modes/ZenModeNotifVisPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;I[ILcom/android/settings/notification/modes/ZenModesBackend;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/settings/notification/modes/ZenModeNotifVisPreferenceController;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/settings/notification/modes/ZenModesFragmentBase;->mBackend:Lcom/android/settings/notification/modes/ZenModesBackend;

    const-string v4, "zen_effect_peek"

    const/4 v5, 0x2

    move-object v2, v1

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/settings/notification/modes/ZenModeNotifVisPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;I[ILcom/android/settings/notification/modes/ZenModesBackend;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/settings/notification/modes/ZenModeNotifVisPreferenceController;

    const/4 v2, 0x6

    filled-new-array {v2}, [I

    move-result-object v12

    iget-object v13, p0, Lcom/android/settings/notification/modes/ZenModesFragmentBase;->mBackend:Lcom/android/settings/notification/modes/ZenModesBackend;

    const-string v10, "zen_effect_status"

    const/4 v11, 0x3

    move-object v8, v1

    invoke-direct/range {v8 .. v13}, Lcom/android/settings/notification/modes/ZenModeNotifVisPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;I[ILcom/android/settings/notification/modes/ZenModesBackend;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/settings/notification/modes/ZenModeNotifVisPreferenceController;

    iget-object v7, p0, Lcom/android/settings/notification/modes/ZenModesFragmentBase;->mBackend:Lcom/android/settings/notification/modes/ZenModesBackend;

    const-string v4, "zen_effect_badge"

    const/4 v5, 0x4

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/android/settings/notification/modes/ZenModeNotifVisPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;I[ILcom/android/settings/notification/modes/ZenModesBackend;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/settings/notification/modes/ZenModeNotifVisPreferenceController;

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/android/settings/notification/modes/ZenModesFragmentBase;->mBackend:Lcom/android/settings/notification/modes/ZenModesBackend;

    const-string v10, "zen_effect_ambient"

    const/4 v11, 0x5

    move-object v8, v1

    invoke-direct/range {v8 .. v13}, Lcom/android/settings/notification/modes/ZenModeNotifVisPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;I[ILcom/android/settings/notification/modes/ZenModesBackend;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/settings/notification/modes/ZenModeNotifVisPreferenceController;

    iget-object v7, p0, Lcom/android/settings/notification/modes/ZenModesFragmentBase;->mBackend:Lcom/android/settings/notification/modes/ZenModesBackend;

    const-string v4, "zen_effect_list"

    const/4 v5, 0x6

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/android/settings/notification/modes/ZenModeNotifVisPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;I[ILcom/android/settings/notification/modes/ZenModesBackend;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x71f

    return p0
.end method

.method public final getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f1700e8

    return p0
.end method
