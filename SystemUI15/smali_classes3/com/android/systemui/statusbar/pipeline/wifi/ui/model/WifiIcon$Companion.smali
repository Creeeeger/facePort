.class public final Lcom/android/systemui/statusbar/pipeline/wifi/ui/model/WifiIcon$Companion;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final synthetic $$INSTANCE:Lcom/android/systemui/statusbar/pipeline/wifi/ui/model/WifiIcon$Companion;

.field public static final NO_INTERNET:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/pipeline/wifi/ui/model/WifiIcon$Companion;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/pipeline/wifi/ui/model/WifiIcon$Companion;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/pipeline/wifi/ui/model/WifiIcon$Companion;->$$INSTANCE:Lcom/android/systemui/statusbar/pipeline/wifi/ui/model/WifiIcon$Companion;

    const v0, 0x7f1304ca

    sput v0, Lcom/android/systemui/statusbar/pipeline/wifi/ui/model/WifiIcon$Companion;->NO_INTERNET:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromModel(Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel;Landroid/content/Context;ZLcom/android/settingslib/SignalIcon$IconGroup;)Lcom/android/systemui/statusbar/pipeline/wifi/ui/model/WifiIcon;
    .locals 5

    instance-of v0, p0, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$Unavailable;

    if-eqz v0, :cond_0

    sget-object p0, Lcom/android/systemui/statusbar/pipeline/wifi/ui/model/WifiIcon$Hidden;->INSTANCE:Lcom/android/systemui/statusbar/pipeline/wifi/ui/model/WifiIcon$Hidden;

    goto/16 :goto_2

    :cond_0
    instance-of v0, p0, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$Invalid;

    if-eqz v0, :cond_1

    sget-object p0, Lcom/android/systemui/statusbar/pipeline/wifi/ui/model/WifiIcon$Hidden;->INSTANCE:Lcom/android/systemui/statusbar/pipeline/wifi/ui/model/WifiIcon$Hidden;

    goto/16 :goto_2

    :cond_1
    instance-of v0, p0, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$CarrierMerged;

    if-eqz v0, :cond_2

    sget-object p0, Lcom/android/systemui/statusbar/pipeline/wifi/ui/model/WifiIcon$Hidden;->INSTANCE:Lcom/android/systemui/statusbar/pipeline/wifi/ui/model/WifiIcon$Hidden;

    goto/16 :goto_2

    :cond_2
    instance-of v0, p0, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$Inactive;

    const-string v1, ","

    sget v2, Lcom/android/systemui/statusbar/pipeline/wifi/ui/model/WifiIcon$Companion;->NO_INTERNET:I

    if-eqz v0, :cond_3

    new-instance p0, Lcom/android/systemui/statusbar/pipeline/wifi/ui/model/WifiIcon$Visible;

    new-instance p2, Lcom/android/systemui/common/shared/model/ContentDescription$Loaded;

    const p3, 0x7f1300f0

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, v1, p1}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/android/systemui/common/shared/model/ContentDescription$Loaded;-><init>(Ljava/lang/String;)V

    const p1, 0x1080608

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/pipeline/wifi/ui/model/WifiIcon$Visible;-><init>(ILcom/android/systemui/common/shared/model/ContentDescription$Loaded;)V

    goto/16 :goto_2

    :cond_3
    instance-of v0, p0, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$Active;

    if-eqz v0, :cond_b

    check-cast p0, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$Active;

    if-eqz p2, :cond_5

    sget-object p2, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$HotspotDeviceType;->NONE:Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$HotspotDeviceType;

    iget-object v0, p0, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$Active;->hotspotDeviceType:Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$HotspotDeviceType;

    if-ne v0, p2, :cond_4

    goto :goto_1

    :cond_4
    sget-object p0, Lcom/android/systemui/statusbar/pipeline/wifi/ui/model/WifiIcon$Companion$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p0, p0, p2

    packed-switch p0, :pswitch_data_0

    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :pswitch_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "NONE checked earlier"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_1
    const p0, 0x7f080962

    goto :goto_0

    :pswitch_2
    const p0, 0x7f080960

    goto :goto_0

    :pswitch_3
    const p0, 0x7f080964

    goto :goto_0

    :pswitch_4
    const p0, 0x7f080961

    goto :goto_0

    :pswitch_5
    const p0, 0x7f080963

    :goto_0
    new-instance p2, Lcom/android/systemui/statusbar/pipeline/wifi/ui/model/WifiIcon$Visible;

    new-instance p3, Lcom/android/systemui/common/shared/model/ContentDescription$Loaded;

    const v0, 0x7f13014f

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/android/systemui/common/shared/model/ContentDescription$Loaded;-><init>(Ljava/lang/String;)V

    invoke-direct {p2, p0, p3}, Lcom/android/systemui/statusbar/pipeline/wifi/ui/model/WifiIcon$Visible;-><init>(ILcom/android/systemui/common/shared/model/ContentDescription$Loaded;)V

    move-object p0, p2

    goto/16 :goto_2

    :cond_5
    :goto_1
    iget p2, p0, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$Active;->level:I

    if-eqz p3, :cond_9

    iget-object v0, p3, Lcom/android/settingslib/SignalIcon$IconGroup;->contentDesc:[I

    aget v0, v0, p2

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget v3, p0, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$Active;->receivedInetCondition:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    iget-object p3, p3, Lcom/android/settingslib/SignalIcon$IconGroup;->sbIcons:[[I

    if-eqz v3, :cond_6

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$Active;->isValidated:Z

    if-nez v3, :cond_7

    :cond_6
    iget p0, p0, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$Active;->receivedInetCondition:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    :cond_7
    new-instance p0, Lcom/android/systemui/statusbar/pipeline/wifi/ui/model/WifiIcon$Visible;

    aget-object p1, p3, v4

    aget p1, p1, p2

    new-instance p2, Lcom/android/systemui/common/shared/model/ContentDescription$Loaded;

    invoke-direct {p2, v0}, Lcom/android/systemui/common/shared/model/ContentDescription$Loaded;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/pipeline/wifi/ui/model/WifiIcon$Visible;-><init>(ILcom/android/systemui/common/shared/model/ContentDescription$Loaded;)V

    goto :goto_2

    :cond_8
    new-instance p0, Lcom/android/systemui/statusbar/pipeline/wifi/ui/model/WifiIcon$Visible;

    const/4 v3, 0x0

    aget-object p3, p3, v3

    aget p2, p3, p2

    new-instance p3, Lcom/android/systemui/common/shared/model/ContentDescription$Loaded;

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/android/systemui/common/shared/model/ContentDescription$Loaded;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p2, p3}, Lcom/android/systemui/statusbar/pipeline/wifi/ui/model/WifiIcon$Visible;-><init>(ILcom/android/systemui/common/shared/model/ContentDescription$Loaded;)V

    goto :goto_2

    :cond_9
    sget-object p3, Lcom/android/settingslib/AccessibilityContentDescriptions;->WIFI_CONNECTION_STRENGTH:[I

    aget p3, p3, p2

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$Active;->isValidated:Z

    if-eqz p0, :cond_a

    new-instance p0, Lcom/android/systemui/statusbar/pipeline/wifi/ui/model/WifiIcon$Visible;

    sget-object p1, Lcom/android/systemui/statusbar/connectivity/WifiIcons;->WIFI_FULL_ICONS:[I

    aget p1, p1, p2

    new-instance p2, Lcom/android/systemui/common/shared/model/ContentDescription$Loaded;

    invoke-direct {p2, p3}, Lcom/android/systemui/common/shared/model/ContentDescription$Loaded;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/pipeline/wifi/ui/model/WifiIcon$Visible;-><init>(ILcom/android/systemui/common/shared/model/ContentDescription$Loaded;)V

    goto :goto_2

    :cond_a
    new-instance p0, Lcom/android/systemui/statusbar/pipeline/wifi/ui/model/WifiIcon$Visible;

    sget-object v0, Lcom/android/systemui/statusbar/connectivity/WifiIcons;->WIFI_NO_INTERNET_ICONS:[I

    aget p2, v0, p2

    new-instance v0, Lcom/android/systemui/common/shared/model/ContentDescription$Loaded;

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, v1, p1}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/systemui/common/shared/model/ContentDescription$Loaded;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p2, v0}, Lcom/android/systemui/statusbar/pipeline/wifi/ui/model/WifiIcon$Visible;-><init>(ILcom/android/systemui/common/shared/model/ContentDescription$Loaded;)V

    :goto_2
    return-object p0

    :cond_b
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic getNO_INTERNET$frameworks__base__packages__SystemUI__android_common__SystemUI_core$annotations()V
    .locals 0

    return-void
.end method
