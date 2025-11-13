.class public final Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList$MWIPSPreference$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$1:Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList$MWIPSPreference;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList$MWIPSPreference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList$MWIPSPreference$1;->this$1:Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList$MWIPSPreference;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList$MWIPSPreference$1;->this$1:Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList$MWIPSPreference;

    iget-object p1, p1, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList$MWIPSPreference;->this$0:Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList;

    iget-object p1, p1, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "mac_addr=?"

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList$MWIPSPreference$1;->this$1:Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList$MWIPSPreference;

    invoke-virtual {v1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "allow list delete "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList$MWIPSPreference$1;->this$1:Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList$MWIPSPreference;

    invoke-virtual {v3}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MobileWIPSExceptionList"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    sget-object v2, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList;->exceptionUri:Landroid/net/Uri;

    invoke-virtual {p1, v2, v0, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList$MWIPSPreference$1;->this$1:Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList$MWIPSPreference;

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList$MWIPSPreference;->this$0:Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList;

    iget-object p1, p1, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSExceptionList;->mExceptionList:Landroidx/preference/PreferenceGroup;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->findPreferenceInHierarchy(Ljava/lang/String;)Landroidx/preference/Preference;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "delete & removePreference "

    invoke-static {p1, p0, v3}, Landroidx/glance/session/SessionManagerImpl$scope$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :goto_0
    const-string p0, "WIFI_205"

    const-string p1, "1344"

    invoke-static {p0, p1}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
