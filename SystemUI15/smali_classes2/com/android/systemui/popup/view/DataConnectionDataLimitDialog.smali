.class public Lcom/android/systemui/popup/view/DataConnectionDataLimitDialog;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/popup/view/PopupUIAlertDialog;


# static fields
.field private static final TAG:Ljava/lang/String; = "DataConnectionDataLimitDialog"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/basic/util/LogWrapper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/popup/view/DataConnectionDataLimitDialog;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/popup/view/DataConnectionDataLimitDialog;->mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 0

    return-void
.end method

.method public isShowing()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public show()V
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/popup/view/DataConnectionDataLimitDialog;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "DataConnectionDataLimitDialog"

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/popup/view/DataConnectionDataLimitDialog;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkPolicyManager;->getNetworkPolicies()[Landroid/net/NetworkPolicy;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    array-length v5, v1

    move v6, v3

    :goto_0
    if-ge v6, v5, :cond_1

    aget-object v4, v1, v6

    iget-object v4, v4, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v4}, Landroid/net/NetworkTemplate;->getSubscriberIds()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz v3, :cond_2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.systemui"

    const-string v3, "com.android.systemui.net.NetworkOverLimitActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "android.net.NETWORK_TEMPLATE"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/popup/view/DataConnectionDataLimitDialog;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :cond_2
    iget-object p0, p0, Lcom/android/systemui/popup/view/DataConnectionDataLimitDialog;->mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    const-string/jumbo v0, "showDataConnectionNotifications() : hasPolicy is false"

    invoke-virtual {p0, v2, v0}, Lcom/android/systemui/basic/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    iget-object p0, p0, Lcom/android/systemui/popup/view/DataConnectionDataLimitDialog;->mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    const-string/jumbo v0, "showDataConnectionNotifications() : Failed TelephonyManager.getSubscriberId"

    invoke-virtual {p0, v2, v0}, Lcom/android/systemui/basic/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method
