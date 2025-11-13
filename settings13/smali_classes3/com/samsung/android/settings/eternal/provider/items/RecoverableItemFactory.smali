.class public Lcom/samsung/android/settings/eternal/provider/items/RecoverableItemFactory;
.super Ljava/lang/Object;
.source "RecoverableItemFactory.java"


# static fields
.field private static mRecoverableItemMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/settings/eternal/provider/items/Recoverable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/eternal/provider/items/RecoverableItemFactory;->mRecoverableItemMap:Ljava/util/HashMap;

    return-void
.end method

.method public static getItem(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/settings/eternal/provider/items/Recoverable;
    .locals 3

    .line 59
    sget-object v0, Lcom/samsung/android/settings/eternal/provider/items/RecoverableItemFactory;->mRecoverableItemMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/eternal/provider/items/Recoverable;

    if-nez v0, :cond_b

    .line 62
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v2, "Notifications"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v1, 0xa

    goto/16 :goto_0

    :sswitch_1
    const-string v2, "General"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v1, 0x9

    goto/16 :goto_0

    :sswitch_2
    const-string v2, "Security"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v1, 0x8

    goto/16 :goto_0

    :sswitch_3
    const-string v2, "Accessibility"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x7

    goto :goto_0

    :sswitch_4
    const-string v2, "Biometrics"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_5
    const-string v2, "Sound"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_6
    const-string v2, "Advanced"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_0

    :cond_6
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_7
    const-string v2, "Connections"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_0

    :cond_7
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_8
    const-string v2, "Display"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    goto :goto_0

    :cond_8
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_9
    const-string v2, "LockScreen"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    goto :goto_0

    :cond_9
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_a
    const-string v2, "Accounts"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    goto :goto_0

    :cond_a
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 107
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown submodule : "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "RecoverableItemFactory"

    invoke-static {v1, p0}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 88
    :pswitch_0
    new-instance v0, Lcom/samsung/android/settings/eternal/provider/items/NotificationsItem;

    invoke-direct {v0}, Lcom/samsung/android/settings/eternal/provider/items/NotificationsItem;-><init>()V

    goto :goto_1

    .line 95
    :pswitch_1
    new-instance v0, Lcom/samsung/android/settings/eternal/provider/items/GeneralItem;

    invoke-direct {v0}, Lcom/samsung/android/settings/eternal/provider/items/GeneralItem;-><init>()V

    goto :goto_1

    .line 76
    :pswitch_2
    new-instance v0, Lcom/samsung/android/settings/eternal/provider/items/SecurityItem;

    invoke-direct {v0}, Lcom/samsung/android/settings/eternal/provider/items/SecurityItem;-><init>()V

    goto :goto_1

    .line 92
    :pswitch_3
    new-instance v0, Lcom/samsung/android/settings/eternal/provider/items/AccessibilityItem;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/eternal/provider/items/AccessibilityItem;-><init>(Landroid/content/Context;)V

    goto :goto_1

    .line 103
    :pswitch_4
    new-instance v0, Lcom/samsung/android/settings/eternal/provider/items/BiometricsItem;

    invoke-direct {v0}, Lcom/samsung/android/settings/eternal/provider/items/BiometricsItem;-><init>()V

    goto :goto_1

    .line 68
    :pswitch_5
    new-instance v0, Lcom/samsung/android/settings/eternal/provider/items/SoundItem;

    invoke-direct {v0}, Lcom/samsung/android/settings/eternal/provider/items/SoundItem;-><init>()V

    goto :goto_1

    .line 80
    :pswitch_6
    new-instance v0, Lcom/samsung/android/settings/eternal/provider/items/AdvancedFeatureItem;

    invoke-direct {v0}, Lcom/samsung/android/settings/eternal/provider/items/AdvancedFeatureItem;-><init>()V

    goto :goto_1

    .line 84
    :pswitch_7
    new-instance v0, Lcom/samsung/android/settings/eternal/provider/items/ConnectionsItem;

    invoke-direct {v0}, Lcom/samsung/android/settings/eternal/provider/items/ConnectionsItem;-><init>()V

    goto :goto_1

    .line 64
    :pswitch_8
    new-instance v0, Lcom/samsung/android/settings/eternal/provider/items/DisplayItem;

    invoke-direct {v0}, Lcom/samsung/android/settings/eternal/provider/items/DisplayItem;-><init>()V

    goto :goto_1

    .line 72
    :pswitch_9
    new-instance v0, Lcom/samsung/android/settings/eternal/provider/items/LockScreenItem;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/eternal/provider/items/LockScreenItem;-><init>(Landroid/content/Context;)V

    goto :goto_1

    .line 99
    :pswitch_a
    new-instance v0, Lcom/samsung/android/settings/eternal/provider/items/AccountsItem;

    invoke-direct {v0}, Lcom/samsung/android/settings/eternal/provider/items/AccountsItem;-><init>()V

    :goto_1
    if-eqz v0, :cond_b

    .line 112
    sget-object p0, Lcom/samsung/android/settings/eternal/provider/items/RecoverableItemFactory;->mRecoverableItemMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7b87dffa -> :sswitch_a
        -0x54ec7e69 -> :sswitch_9
        -0x39224f5e -> :sswitch_8
        -0x35cafacb -> :sswitch_7
        -0x26fe33be -> :sswitch_6
        0x4c5d8ef -> :sswitch_5
        0xe9be6db -> :sswitch_4
        0x22eaf12e -> :sswitch_3
        0x3c6cdb60 -> :sswitch_2
        0x5e71a0c8 -> :sswitch_1
        0x7b75c4c8 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
