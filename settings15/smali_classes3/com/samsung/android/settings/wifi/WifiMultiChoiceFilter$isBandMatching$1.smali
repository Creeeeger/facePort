.class public final Lcom/samsung/android/settings/wifi/WifiMultiChoiceFilter$isBandMatching$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final INSTANCE:Lcom/samsung/android/settings/wifi/WifiMultiChoiceFilter$isBandMatching$1;

.field public static final INSTANCE$1:Lcom/samsung/android/settings/wifi/WifiMultiChoiceFilter$isBandMatching$1;

.field public static final INSTANCE$2:Lcom/samsung/android/settings/wifi/WifiMultiChoiceFilter$isBandMatching$1;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/settings/wifi/WifiMultiChoiceFilter$isBandMatching$1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/wifi/WifiMultiChoiceFilter$isBandMatching$1;-><init>(I)V

    sput-object v0, Lcom/samsung/android/settings/wifi/WifiMultiChoiceFilter$isBandMatching$1;->INSTANCE:Lcom/samsung/android/settings/wifi/WifiMultiChoiceFilter$isBandMatching$1;

    new-instance v0, Lcom/samsung/android/settings/wifi/WifiMultiChoiceFilter$isBandMatching$1;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/wifi/WifiMultiChoiceFilter$isBandMatching$1;-><init>(I)V

    sput-object v0, Lcom/samsung/android/settings/wifi/WifiMultiChoiceFilter$isBandMatching$1;->INSTANCE$1:Lcom/samsung/android/settings/wifi/WifiMultiChoiceFilter$isBandMatching$1;

    new-instance v0, Lcom/samsung/android/settings/wifi/WifiMultiChoiceFilter$isBandMatching$1;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/wifi/WifiMultiChoiceFilter$isBandMatching$1;-><init>(I)V

    sput-object v0, Lcom/samsung/android/settings/wifi/WifiMultiChoiceFilter$isBandMatching$1;->INSTANCE$2:Lcom/samsung/android/settings/wifi/WifiMultiChoiceFilter$isBandMatching$1;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/wifi/WifiMultiChoiceFilter$isBandMatching$1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget p0, p0, Lcom/samsung/android/settings/wifi/WifiMultiChoiceFilter$isBandMatching$1;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Landroid/net/wifi/ScanResult;

    iget p0, p1, Landroid/net/wifi/ScanResult;->frequency:I

    sget-object p1, Lcom/samsung/android/wifitrackerlib/SemWifiUtils;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    const/16 p1, 0x1725

    if-lt p0, p1, :cond_0

    const/16 p1, 0x1bd5

    if-gt p0, p1, :cond_0

    move v0, v1

    :cond_0
    return v0

    :pswitch_0
    check-cast p1, Landroid/net/wifi/ScanResult;

    iget p0, p1, Landroid/net/wifi/ScanResult;->frequency:I

    sget-object p1, Lcom/samsung/android/wifitrackerlib/SemWifiUtils;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    const/16 p1, 0x1324

    if-lt p0, p1, :cond_1

    const/16 p1, 0x170c

    if-gt p0, p1, :cond_1

    move v0, v1

    :cond_1
    return v0

    :pswitch_1
    check-cast p1, Landroid/net/wifi/ScanResult;

    iget p0, p1, Landroid/net/wifi/ScanResult;->frequency:I

    sget-object p1, Lcom/samsung/android/wifitrackerlib/SemWifiUtils;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    const/16 p1, 0x960

    if-lt p0, p1, :cond_2

    const/16 p1, 0x9c4

    if-gt p0, p1, :cond_2

    move v0, v1

    :cond_2
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
