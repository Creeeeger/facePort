.class public abstract Lcom/samsung/android/settings/eternal/provider/items/RecoverableItemFactory;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final mRecoverableItemMap:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/eternal/provider/items/RecoverableItemFactory;->mRecoverableItemMap:Ljava/util/HashMap;

    return-void
.end method

.method public static getItem(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/settings/eternal/provider/items/Recoverable;
    .locals 4

    sget-object v0, Lcom/samsung/android/settings/eternal/provider/items/RecoverableItemFactory;->mRecoverableItemMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/eternal/provider/items/Recoverable;

    if-nez v1, :cond_c

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v3, "Notifications"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v2, 0xb

    goto/16 :goto_0

    :sswitch_1
    const-string v3, "General"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v2, 0xa

    goto/16 :goto_0

    :sswitch_2
    const-string v3, "Security"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v2, 0x9

    goto/16 :goto_0

    :sswitch_3
    const-string v3, "Accessibility"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v2, 0x8

    goto/16 :goto_0

    :sswitch_4
    const-string v3, "Biometrics"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_0

    :cond_4
    const/4 v2, 0x7

    goto :goto_0

    :sswitch_5
    const-string v3, "Sound"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_0

    :cond_5
    const/4 v2, 0x6

    goto :goto_0

    :sswitch_6
    const-string v3, "Advanced"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    goto :goto_0

    :cond_6
    const/4 v2, 0x5

    goto :goto_0

    :sswitch_7
    const-string v3, "Connections"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    goto :goto_0

    :cond_7
    const/4 v2, 0x4

    goto :goto_0

    :sswitch_8
    const-string v3, "ManageStorage"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    goto :goto_0

    :cond_8
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_9
    const-string v3, "Display"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    goto :goto_0

    :cond_9
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_a
    const-string v3, "LockScreen"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    goto :goto_0

    :cond_a
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_b
    const-string v3, "Accounts"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    goto :goto_0

    :cond_b
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    const-string/jumbo p0, "unknown submodule : "

    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v2, "RecoverableItemFactory"

    invoke-static {v2, p0}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :pswitch_0
    new-instance v1, Lcom/samsung/android/settings/eternal/provider/items/NotificationsItem;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    goto :goto_1

    :pswitch_1
    new-instance v1, Lcom/samsung/android/settings/eternal/provider/items/GeneralItem;

    invoke-direct {v1}, Lcom/samsung/android/settings/eternal/provider/items/GeneralItem;-><init>()V

    goto :goto_1

    :pswitch_2
    new-instance v1, Lcom/samsung/android/settings/eternal/provider/items/SecurityItem;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    goto :goto_1

    :pswitch_3
    new-instance v1, Lcom/samsung/android/settings/eternal/provider/items/AccessibilityItem;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/eternal/provider/items/AccessibilityItem;-><init>(Landroid/content/Context;)V

    goto :goto_1

    :pswitch_4
    new-instance v1, Lcom/samsung/android/settings/eternal/provider/items/BiometricsItem;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    goto :goto_1

    :pswitch_5
    new-instance v1, Lcom/samsung/android/settings/eternal/provider/items/SoundItem;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    goto :goto_1

    :pswitch_6
    new-instance v1, Lcom/samsung/android/settings/eternal/provider/items/AdvancedFeatureItem;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    goto :goto_1

    :pswitch_7
    new-instance v1, Lcom/samsung/android/settings/eternal/provider/items/ConnectionsItem;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    goto :goto_1

    :pswitch_8
    new-instance v1, Lcom/samsung/android/settings/eternal/provider/items/ManageStorageItem;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    goto :goto_1

    :pswitch_9
    new-instance v1, Lcom/samsung/android/settings/eternal/provider/items/DisplayItem;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    goto :goto_1

    :pswitch_a
    new-instance v1, Lcom/samsung/android/settings/eternal/provider/items/LockScreenItem;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v2, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v2, v1, Lcom/samsung/android/settings/eternal/provider/items/LockScreenItem;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    goto :goto_1

    :pswitch_b
    new-instance v1, Lcom/samsung/android/settings/eternal/provider/items/AccountsItem;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    :goto_1
    if-eqz v1, :cond_c

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    return-object v1

    :sswitch_data_0
    .sparse-switch
        -0x7b87dffa -> :sswitch_b
        -0x54ec7e69 -> :sswitch_a
        -0x39224f5e -> :sswitch_9
        -0x37e67eca -> :sswitch_8
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
        :pswitch_b
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
