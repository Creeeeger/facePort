.class public final Lcom/samsung/android/settings/wifi/WifiEntriesFilter$getFilteredWifiEntries$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/wifi/WifiEntriesFilter;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/wifi/WifiEntriesFilter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiEntriesFilter$getFilteredWifiEntries$1;->this$0:Lcom/samsung/android/settings/wifi/WifiEntriesFilter;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 5

    check-cast p1, Lcom/android/wifitrackerlib/WifiEntry;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiEntriesFilter$getFilteredWifiEntries$1;->this$0:Lcom/samsung/android/settings/wifi/WifiEntriesFilter;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiEntriesFilter;->ssidFilter:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getSsid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiEntriesFilter;->ssidFilter:Ljava/lang/String;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v0, v3, v1}, Lkotlin/text/StringsKt___StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-eqz v0, :cond_7

    :goto_0
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiEntriesFilter;->multiChoiceFilter:Lcom/samsung/android/settings/wifi/WifiMultiChoiceFilter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiMultiChoiceFilter;->filters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    :goto_1
    move p0, v1

    goto/16 :goto_5

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiMultiChoiceFilter;->filters:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/wifi/WifiMultiChoiceFilter$MultiChoiceFilter;

    if-nez v0, :cond_3

    const/4 v3, -0x1

    goto :goto_2

    :cond_3
    sget-object v3, Lcom/samsung/android/settings/wifi/WifiMultiChoiceFilter$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    :goto_2
    iget-object v4, p1, Lcom/android/wifitrackerlib/WifiEntry;->mSemFlags:Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;

    packed-switch v3, :pswitch_data_0

    :goto_3
    move v0, v1

    goto :goto_4

    :pswitch_0
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_4
    move v0, v2

    goto :goto_4

    :pswitch_1
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->semIsWifi6Network()Z

    move-result v0

    goto :goto_4

    :pswitch_2
    iget-object v0, p1, Lcom/android/wifitrackerlib/WifiEntry;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    const/4 v3, 0x5

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getWifiStandard()I

    move-result v0

    if-ne v0, v3, :cond_4

    goto :goto_3

    :cond_5
    iget v0, v4, Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;->wifiStandard:I

    if-lt v0, v3, :cond_4

    goto :goto_3

    :pswitch_3
    invoke-static {v0, p1}, Lcom/samsung/android/settings/wifi/WifiMultiChoiceFilter;->isBandMatching(Lcom/samsung/android/settings/wifi/WifiMultiChoiceFilter$MultiChoiceFilter;Lcom/android/wifitrackerlib/WifiEntry;)Z

    move-result v0

    goto :goto_4

    :pswitch_4
    invoke-static {v0, p1}, Lcom/samsung/android/settings/wifi/WifiMultiChoiceFilter;->isBandMatching(Lcom/samsung/android/settings/wifi/WifiMultiChoiceFilter$MultiChoiceFilter;Lcom/android/wifitrackerlib/WifiEntry;)Z

    move-result v0

    goto :goto_4

    :pswitch_5
    invoke-static {v0, p1}, Lcom/samsung/android/settings/wifi/WifiMultiChoiceFilter;->isBandMatching(Lcom/samsung/android/settings/wifi/WifiMultiChoiceFilter$MultiChoiceFilter;Lcom/android/wifitrackerlib/WifiEntry;)Z

    move-result v0

    goto :goto_4

    :pswitch_6
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getSecurity$1()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/wifitrackerlib/SemWifiUtils;->isSecured(I)Z

    move-result v0

    goto :goto_4

    :pswitch_7
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getSecurity$1()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/wifitrackerlib/SemWifiUtils;->isSecured(I)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_3

    :goto_4
    if-eqz v0, :cond_2

    goto :goto_1

    :cond_6
    move p0, v2

    :goto_5
    if-eqz p0, :cond_7

    goto :goto_6

    :cond_7
    move v1, v2

    :goto_6
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
