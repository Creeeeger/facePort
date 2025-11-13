.class public final Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings$1;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;

    return-void
.end method


# virtual methods
.method public final onScrollStateChanged(ILandroidx/recyclerview/widget/RecyclerView;)V
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->canScrollVertically(I)Z

    move-result p2

    if-nez p2, :cond_6

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;

    iget-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mAdvancedViewExpandablePreference:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApExpandablePreference;

    invoke-virtual {p2}, Landroidx/preference/Preference;->isVisible()Z

    move-result p2

    xor-int/2addr p2, v0

    if-eqz p2, :cond_6

    iget-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mToast:Landroid/widget/Toast;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/widget/Toast;->cancel()V

    :cond_0
    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    iget p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mDeveloperModeCountDown:I

    const/4 p2, 0x0

    if-le p1, v0, :cond_3

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mDeveloperModeCountDown:I

    const/4 v0, 0x5

    if-gt p1, v0, :cond_5

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mToast:Landroid/widget/Toast;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/widget/Toast;->cancel()V

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mContext:Landroidx/fragment/app/FragmentActivity;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "You are "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mDeveloperModeCountDown:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " steps away from enabling Hotspot Labs"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mToast:Landroid/widget/Toast;

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mToast:Landroid/widget/Toast;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/widget/Toast;->cancel()V

    :cond_4
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v1, "wifi_ap_hotspot_labs_is_enabled"

    invoke-static {p1, v1, p2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mContext:Landroidx/fragment/app/FragmentActivity;

    const-string v2, "You are a developer now."

    invoke-static {p1, v2, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mToast:Landroid/widget/Toast;

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings$$ExternalSyntheticLambda0;

    const/4 v0, 0x6

    invoke-direct {p2, p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;I)V

    const-wide/16 v0, 0xa

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_5
    :goto_0
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string p1, "The RecyclerView is not scrolling"

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_6
    :goto_1
    return-void
.end method
