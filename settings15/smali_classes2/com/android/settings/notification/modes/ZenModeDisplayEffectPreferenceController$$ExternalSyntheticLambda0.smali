.class public final synthetic Lcom/android/settings/notification/modes/ZenModeDisplayEffectPreferenceController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/notification/modes/ZenModeDisplayEffectPreferenceController;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/notification/modes/ZenModeDisplayEffectPreferenceController;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/notification/modes/ZenModeDisplayEffectPreferenceController$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/notification/modes/ZenModeDisplayEffectPreferenceController;

    iput-boolean p2, p0, Lcom/android/settings/notification/modes/ZenModeDisplayEffectPreferenceController$$ExternalSyntheticLambda0;->f$1:Z

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/android/settings/notification/modes/ZenModeDisplayEffectPreferenceController$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/notification/modes/ZenModeDisplayEffectPreferenceController;

    iget-boolean p0, p0, Lcom/android/settings/notification/modes/ZenModeDisplayEffectPreferenceController$$ExternalSyntheticLambda0;->f$1:Z

    check-cast p1, Lcom/android/settings/notification/modes/ZenMode;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Landroid/service/notification/ZenDeviceEffects$Builder;

    iget-object v2, p1, Lcom/android/settings/notification/modes/ZenMode;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {v2}, Landroid/app/AutomaticZenRule;->getDeviceEffects()Landroid/service/notification/ZenDeviceEffects;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/android/settings/notification/modes/ZenMode;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {v2}, Landroid/app/AutomaticZenRule;->getDeviceEffects()Landroid/service/notification/ZenDeviceEffects;

    move-result-object v2

    goto :goto_0

    :cond_0
    new-instance v2, Landroid/service/notification/ZenDeviceEffects$Builder;

    invoke-direct {v2}, Landroid/service/notification/ZenDeviceEffects$Builder;-><init>()V

    invoke-virtual {v2}, Landroid/service/notification/ZenDeviceEffects$Builder;->build()Landroid/service/notification/ZenDeviceEffects;

    move-result-object v2

    :goto_0
    invoke-direct {v1, v2}, Landroid/service/notification/ZenDeviceEffects$Builder;-><init>(Landroid/service/notification/ZenDeviceEffects;)V

    iget-object v0, v0, Lcom/android/settings/notification/modes/AbstractZenModePreferenceController;->mKey:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v3, "effect_aod"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x3

    goto :goto_1

    :sswitch_1
    const-string v3, "effect_wallpaper"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x2

    goto :goto_1

    :sswitch_2
    const-string v3, "effect_dark_theme"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x1

    goto :goto_1

    :sswitch_3
    const-string v3, "effect_greyscale"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    :goto_1
    packed-switch v2, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    invoke-virtual {v1, p0}, Landroid/service/notification/ZenDeviceEffects$Builder;->setShouldSuppressAmbientDisplay(Z)Landroid/service/notification/ZenDeviceEffects$Builder;

    goto :goto_2

    :pswitch_1
    invoke-virtual {v1, p0}, Landroid/service/notification/ZenDeviceEffects$Builder;->setShouldDimWallpaper(Z)Landroid/service/notification/ZenDeviceEffects$Builder;

    goto :goto_2

    :pswitch_2
    invoke-virtual {v1, p0}, Landroid/service/notification/ZenDeviceEffects$Builder;->setShouldUseNightMode(Z)Landroid/service/notification/ZenDeviceEffects$Builder;

    goto :goto_2

    :pswitch_3
    invoke-virtual {v1, p0}, Landroid/service/notification/ZenDeviceEffects$Builder;->setShouldDisplayGrayscale(Z)Landroid/service/notification/ZenDeviceEffects$Builder;

    :goto_2
    iget-object p0, p1, Lcom/android/settings/notification/modes/ZenMode;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {v1}, Landroid/service/notification/ZenDeviceEffects$Builder;->build()Landroid/service/notification/ZenDeviceEffects;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/AutomaticZenRule;->setDeviceEffects(Landroid/service/notification/ZenDeviceEffects;)V

    return-object p1

    :sswitch_data_0
    .sparse-switch
        -0x65c0db63 -> :sswitch_3
        0x38e77f2e -> :sswitch_2
        0x5483c0d4 -> :sswitch_1
        0x664a3248 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
