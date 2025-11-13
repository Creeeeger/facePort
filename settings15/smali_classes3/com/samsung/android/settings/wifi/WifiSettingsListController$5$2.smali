.class public final Lcom/samsung/android/settings/wifi/WifiSettingsListController$5$2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$1:Lcom/samsung/android/settings/wifi/WifiSettingsListController$2;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/wifi/WifiSettingsListController$2;I)V
    .locals 0

    iput p2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController$5$2;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController$5$2;->this$1:Lcom/samsung/android/settings/wifi/WifiSettingsListController$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    iget p1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController$5$2;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController$5$2;->this$1:Lcom/samsung/android/settings/wifi/WifiSettingsListController$2;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController$2;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsListController;

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->checkedBackup:[Z

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->checked:[Z

    array-length p2, p1

    const/4 v0, 0x0

    invoke-static {p1, v0, p0, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController$5$2;->this$1:Lcom/samsung/android/settings/wifi/WifiSettingsListController$2;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController$2;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsListController;

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mFilter:Lcom/samsung/android/settings/wifi/WifiEntriesFilter;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p2, "isChecked"

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->checked:[Z

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p1, Lcom/samsung/android/settings/wifi/WifiEntriesFilter;->multiChoiceFilter:Lcom/samsung/android/settings/wifi/WifiMultiChoiceFilter;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-boolean v4, p0, v3

    if-eqz v4, :cond_0

    packed-switch v3, :pswitch_data_1

    goto :goto_1

    :pswitch_1
    sget-object v4, Lcom/samsung/android/settings/wifi/WifiMultiChoiceFilter$MultiChoiceFilter;->WIFI_7:Lcom/samsung/android/settings/wifi/WifiMultiChoiceFilter$MultiChoiceFilter;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_2
    sget-object v4, Lcom/samsung/android/settings/wifi/WifiMultiChoiceFilter$MultiChoiceFilter;->WIFI_6:Lcom/samsung/android/settings/wifi/WifiMultiChoiceFilter$MultiChoiceFilter;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_3
    sget-object v4, Lcom/samsung/android/settings/wifi/WifiMultiChoiceFilter$MultiChoiceFilter;->WIFI_5:Lcom/samsung/android/settings/wifi/WifiMultiChoiceFilter$MultiChoiceFilter;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_4
    sget-object v4, Lcom/samsung/android/settings/wifi/WifiMultiChoiceFilter$MultiChoiceFilter;->FREQUENCY_6:Lcom/samsung/android/settings/wifi/WifiMultiChoiceFilter$MultiChoiceFilter;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_5
    sget-object v4, Lcom/samsung/android/settings/wifi/WifiMultiChoiceFilter$MultiChoiceFilter;->FREQUENCY_5:Lcom/samsung/android/settings/wifi/WifiMultiChoiceFilter$MultiChoiceFilter;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_6
    sget-object v4, Lcom/samsung/android/settings/wifi/WifiMultiChoiceFilter$MultiChoiceFilter;->FREQUENCY_2_4:Lcom/samsung/android/settings/wifi/WifiMultiChoiceFilter$MultiChoiceFilter;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_7
    sget-object v4, Lcom/samsung/android/settings/wifi/WifiMultiChoiceFilter$MultiChoiceFilter;->SECURED:Lcom/samsung/android/settings/wifi/WifiMultiChoiceFilter$MultiChoiceFilter;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_8
    sget-object v4, Lcom/samsung/android/settings/wifi/WifiMultiChoiceFilter$MultiChoiceFilter;->OPEN:Lcom/samsung/android/settings/wifi/WifiMultiChoiceFilter$MultiChoiceFilter;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object p0, p2, Lcom/samsung/android/settings/wifi/WifiMultiChoiceFilter;->filters:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    iget-object p0, p2, Lcom/samsung/android/settings/wifi/WifiMultiChoiceFilter;->filters:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object p0, p1, Lcom/samsung/android/settings/wifi/WifiEntriesFilter;->listener:Lcom/samsung/android/settings/wifi/WifiEntriesFilter$OnFilterChangedListener;

    if-eqz p0, :cond_2

    check-cast p0, Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiSettings;->updateWifiEntryPreferences(Z)V

    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
