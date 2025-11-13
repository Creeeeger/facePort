.class public final Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$getChildAccount$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$getChildAccount$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    const-string v0, ""

    const-string/jumbo v1, "result_message"

    const-string/jumbo v2, "result_code"

    const-string v3, "i5to7wq0er"

    const-string v4, "content://com.samsung.android.samsungaccount.accountmanagerprovider"

    const-string v5, "S.S.N."

    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$getChildAccount$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;

    sget v7, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->$r8$clinit:I

    iget-object v7, v6, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x1

    :try_start_0
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    const-string v11, "isChildAccount"

    invoke-virtual {v7, v10, v11, v3, v8}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v7, :cond_2

    invoke-virtual {v7, v2, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v10

    invoke-virtual {v7, v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v10, :cond_1

    const-string/jumbo v10, "true"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, "This account is a child account."

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v7, Lcom/android/systemui/edgelighting/effect/utils/SalesCode;->isKor:Z

    if-nez v7, :cond_3

    move v7, v9

    goto :goto_1

    :cond_0
    const-string v7, "This account is not a child account."

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v10, "isChildAccount Fail : resultMessage = "

    invoke-static {v10, v7, v5}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v7, "Result bundle is null"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_0
    move-exception v7

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    const-string v10, "Exception Error isChildAccount : "

    invoke-static {v10, v7, v5}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    const/4 v7, 0x0

    :goto_1
    iput-boolean v7, v6, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->isChildAccount:Z

    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$getChildAccount$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;

    iget-boolean v7, v6, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->isChildAccount:Z

    if-eqz v7, :cond_6

    iget-object v7, v6, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const/4 v10, -0x1

    :try_start_1
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const-string v11, "getFamilyServiceInfo"

    invoke-virtual {v7, v4, v11, v3, v8}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v3, :cond_5

    invoke-virtual {v3, v2, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_4

    const-string/jumbo v0, "result_bundle"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v1, "childGraduateAge"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    goto :goto_2

    :cond_4
    invoke-virtual {v3, v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getChildGraduateAge() Fail : resultMessage = "

    invoke-static {v1, v0, v5}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Exception Error getFamilyServiceInfo : "

    invoke-static {v1, v0, v5}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_2
    iput v10, v6, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->childGraduateAge:I

    :cond_6
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$getChildAccount$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->isChildAccount:Z

    const-string v0, "getChildAccount() : isChildAccount "

    invoke-static {v0, v5, p0}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
