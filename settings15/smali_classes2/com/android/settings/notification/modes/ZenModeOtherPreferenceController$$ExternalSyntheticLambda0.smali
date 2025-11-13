.class public final synthetic Lcom/android/settings/notification/modes/ZenModeOtherPreferenceController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/notification/modes/ZenModeOtherPreferenceController;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/notification/modes/ZenModeOtherPreferenceController;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/notification/modes/ZenModeOtherPreferenceController$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/notification/modes/ZenModeOtherPreferenceController;

    iput-boolean p2, p0, Lcom/android/settings/notification/modes/ZenModeOtherPreferenceController$$ExternalSyntheticLambda0;->f$1:Z

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    iget-object v3, p0, Lcom/android/settings/notification/modes/ZenModeOtherPreferenceController$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/notification/modes/ZenModeOtherPreferenceController;

    iget-boolean p0, p0, Lcom/android/settings/notification/modes/ZenModeOtherPreferenceController$$ExternalSyntheticLambda0;->f$1:Z

    check-cast p1, Landroid/service/notification/ZenPolicy$Builder;

    iget-object v3, v3, Lcom/android/settings/notification/modes/AbstractZenModePreferenceController;->mKey:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :goto_0
    move v3, v2

    goto :goto_1

    :sswitch_0
    const-string v4, "modes_category_system"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x4

    goto :goto_1

    :sswitch_1
    const-string v4, "modes_category_events"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x3

    goto :goto_1

    :sswitch_2
    const-string v4, "modes_category_reminders"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x2

    goto :goto_1

    :sswitch_3
    const-string v4, "modes_category_media"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    move v3, v0

    goto :goto_1

    :sswitch_4
    const-string v4, "modes_category_alarm"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_0

    :cond_4
    move v3, v1

    :goto_1
    packed-switch v3, :pswitch_data_0

    move v0, v2

    goto :goto_2

    :pswitch_0
    const/4 v0, 0x7

    goto :goto_2

    :pswitch_1
    move v0, v1

    goto :goto_2

    :pswitch_2
    const/4 v0, 0x6

    goto :goto_2

    :pswitch_3
    const/4 v0, 0x5

    :goto_2
    :pswitch_4
    invoke-virtual {p1, v0, p0}, Landroid/service/notification/ZenPolicy$Builder;->allowCategory(IZ)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object p0

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x7928ef41 -> :sswitch_4
        -0x7882f9ae -> :sswitch_3
        -0x639e0251 -> :sswitch_2
        0x5b6d186b -> :sswitch_1
        0x7381a981 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_0
    .end packed-switch
.end method
