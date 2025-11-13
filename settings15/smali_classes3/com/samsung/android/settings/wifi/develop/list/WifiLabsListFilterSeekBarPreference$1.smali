.class public final Lcom/samsung/android/settings/wifi/develop/list/WifiLabsListFilterSeekBarPreference$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/wifi/develop/list/WifiLabsListFilterSeekBarPreference;

.field public final synthetic val$currentLevel:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/wifi/develop/list/WifiLabsListFilterSeekBarPreference;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/list/WifiLabsListFilterSeekBarPreference$1;->this$0:Lcom/samsung/android/settings/wifi/develop/list/WifiLabsListFilterSeekBarPreference;

    iput p2, p0, Lcom/samsung/android/settings/wifi/develop/list/WifiLabsListFilterSeekBarPreference$1;->val$currentLevel:I

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/list/WifiLabsListFilterSeekBarPreference$1;->this$0:Lcom/samsung/android/settings/wifi/develop/list/WifiLabsListFilterSeekBarPreference;

    iput p2, p0, Lcom/samsung/android/settings/wifi/develop/list/WifiLabsListFilterSeekBarPreference;->mSelectedLevel:I

    return-void
.end method

.method public final onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/list/WifiLabsListFilterSeekBarPreference$1;->this$0:Lcom/samsung/android/settings/wifi/develop/list/WifiLabsListFilterSeekBarPreference;

    iget p0, p0, Lcom/samsung/android/settings/wifi/develop/list/WifiLabsListFilterSeekBarPreference$1;->val$currentLevel:I

    iput p0, p1, Lcom/samsung/android/settings/wifi/develop/list/WifiLabsListFilterSeekBarPreference;->mSelectedLevel:I

    return-void
.end method

.method public final onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/list/WifiLabsListFilterSeekBarPreference$1;->this$0:Lcom/samsung/android/settings/wifi/develop/list/WifiLabsListFilterSeekBarPreference;

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/list/WifiLabsListFilterSeekBarPreference;->mContext:Landroid/content/Context;

    iget p0, p0, Lcom/samsung/android/settings/wifi/develop/list/WifiLabsListFilterSeekBarPreference;->mSelectedLevel:I

    sget-object v0, Lcom/samsung/android/wifitrackerlib/SemWifiUtils;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v0, "sec_wifi_developer_rssi_level"

    invoke-static {p1, v0, p0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method
