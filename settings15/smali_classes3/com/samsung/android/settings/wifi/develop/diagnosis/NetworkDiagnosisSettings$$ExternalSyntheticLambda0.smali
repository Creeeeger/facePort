.class public final synthetic Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;I)V
    .locals 0

    iput p2, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 16

    move-object/from16 v0, p0

    const-string v1, "DNS server is not valid. Default Test Server will be used\n"

    const-string v2, "\n"

    const-string v3, "DEFAULT TEST SERVER"

    const-string v4, "DNS : "

    const-string v5, ""

    const/4 v6, 0x1

    const-string v7, "INVALID"

    const-string v8, "NetworkDiagnosisSettings"

    iget v9, v0, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v9, :pswitch_data_0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;

    iget-object v1, v0, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;->mStepView:Landroid/widget/TextView;

    const-string v2, "Start DAD Test\n"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getCurrentNetwork()Landroid/net/Network;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {v0}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/LinkAddress;

    invoke-virtual {v3}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v5

    instance-of v5, v5, Ljava/net/Inet4Address;

    if-eqz v5, :cond_1

    invoke-virtual {v3}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    goto :goto_0

    :cond_2
    move-object v2, v4

    :goto_0
    invoke-virtual {v0}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/RouteInfo;

    invoke-virtual {v5}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v6

    instance-of v6, v6, Ljava/net/Inet4Address;

    if-eqz v6, :cond_3

    invoke-virtual {v5}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "gateway="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    if-eqz v2, :cond_5

    if-eqz v4, :cond_5

    if-eqz v1, :cond_5

    :try_start_0
    new-instance v3, Lcom/samsung/android/settings/wifi/develop/diagnosis/packetUtils/ArpPeer;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    const/4 v4, 0x6

    new-array v4, v4, [B

    fill-array-data v4, :array_0

    iput-object v4, v3, Lcom/samsung/android/settings/wifi/develop/diagnosis/packetUtils/ArpPeer;->L2_BROADCAST:[B

    invoke-virtual {v2}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v2

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v2, v1}, Lcom/samsung/android/settings/wifi/develop/diagnosis/packetUtils/ArpPeer;->sendGArp(Landroid/net/LinkProperties;[BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v1, "Exception: "

    invoke-static {v1, v0, v8}, Landroidx/glance/session/SessionManagerImpl$scope$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :cond_5
    :goto_2
    return-void

    :pswitch_0
    iget-object v0, v0, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;->getCurrentWifiNetwork()Landroid/net/Network;

    move-result-object v9

    if-nez v9, :cond_6

    const-string v0, "[launchDnsTest] network is null\n"

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_6
    iget-object v8, v0, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;->mStepView:Landroid/widget/TextView;

    const-string v10, "Start DNS Test\n"

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v8, v0, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;->mTestInfoAdapter:Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/NetworkDiagnosisInformationAdapter;

    iget-object v8, v8, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/NetworkDiagnosisInformationAdapter;->infoList:[Ljava/lang/String;

    aget-object v8, v8, v6

    invoke-static {v8}, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;->getHttpUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    :try_start_1
    new-instance v10, Ljava/net/URL;

    invoke-direct {v10, v8}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/net/URL;->toURI()Ljava/net/URI;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-object v8, v7

    :goto_3
    iget-object v10, v0, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;->mTestInfoAdapter:Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/NetworkDiagnosisInformationAdapter;

    invoke-virtual {v10, v6}, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/NetworkDiagnosisInformationAdapter;->isNotSet(I)Z

    move-result v6

    if-nez v6, :cond_9

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    iget-object v1, v0, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;->mStepView:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_7

    move-object v3, v8

    :cond_7
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    move-object v5, v8

    goto :goto_4

    :cond_8
    iget-object v2, v0, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;->mStepView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    :cond_9
    :goto_4
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings$$ExternalSyntheticLambda4;

    invoke-direct {v2, v0, v9, v5}, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings$$ExternalSyntheticLambda4;-><init>(Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;Landroid/net/Network;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :goto_5
    return-void

    :pswitch_1
    iget-object v11, v0, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;

    invoke-virtual {v11}, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;->getCurrentWifiNetwork()Landroid/net/Network;

    move-result-object v12

    if-nez v12, :cond_a

    const-string v0, "[launchConnectivityTest] network is null"

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    :cond_a
    iget-object v0, v11, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;->mStepView:Landroid/widget/TextView;

    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setScrollY(I)V

    iget-object v0, v11, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;->mStepView:Landroid/widget/TextView;

    const-string v8, "Start Connectivity Test\n"

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v11, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;->mTestInfoAdapter:Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/NetworkDiagnosisInformationAdapter;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/NetworkDiagnosisInformationAdapter;->infoList:[Ljava/lang/String;

    aget-object v0, v0, v6

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;->getHttpUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v8, v11, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;->mTestInfoAdapter:Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/NetworkDiagnosisInformationAdapter;

    iget-object v8, v8, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/NetworkDiagnosisInformationAdapter;->infoList:[Ljava/lang/String;

    const/4 v9, 0x2

    aget-object v8, v8, v9

    invoke-static {v8}, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;->getHttpUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iget-object v8, v11, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;->mTestInfoAdapter:Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/NetworkDiagnosisInformationAdapter;

    iget-object v8, v8, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/NetworkDiagnosisInformationAdapter;->infoList:[Ljava/lang/String;

    const/4 v10, 0x3

    aget-object v8, v8, v10

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v13

    if-nez v13, :cond_b

    :catch_2
    move-object v15, v5

    goto :goto_6

    :cond_b
    const-string v13, "https://"

    invoke-virtual {v8, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    const-string v10, "http://"

    if-eqz v15, :cond_c

    invoke-virtual {v8, v13, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    :cond_c
    invoke-virtual {v8, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_d

    invoke-virtual {v10, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    :cond_d
    :try_start_2
    new-instance v10, Ljava/net/URL;

    invoke-direct {v10, v8}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/net/URL;->toURI()Ljava/net/URI;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object v15, v8

    :goto_6
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_3
    new-instance v10, Ljava/net/URL;

    invoke-direct {v10, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/net/URL;->toURI()Ljava/net/URI;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_7

    :catch_3
    move-object v0, v7

    :goto_7
    iget-object v10, v11, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;->mTestInfoAdapter:Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/NetworkDiagnosisInformationAdapter;

    invoke-virtual {v10, v6}, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/NetworkDiagnosisInformationAdapter;->isNotSet(I)Z

    move-result v6

    if-nez v6, :cond_10

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_e

    move-object v3, v0

    :cond_e
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v13, v0

    goto :goto_8

    :cond_f
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_10
    move-object v13, v5

    :goto_8
    iget-object v0, v11, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;->mTestInfoAdapter:Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/NetworkDiagnosisInformationAdapter;

    invoke-virtual {v0, v9}, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/NetworkDiagnosisInformationAdapter;->isNotSet(I)Z

    move-result v0

    const-string v1, "DEFAULT TEST URL"

    if-nez v0, :cond_13

    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "HTTP URL : "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_11

    move-object v3, v14

    goto :goto_9

    :cond_11
    move-object v3, v1

    :goto_9
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a

    :cond_12
    const-string v0, "HTTP URL is not valid. Default Test URL will be used\n"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_13
    :goto_a
    iget-object v0, v11, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;->mTestInfoAdapter:Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/NetworkDiagnosisInformationAdapter;

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/NetworkDiagnosisInformationAdapter;->isNotSet(I)Z

    move-result v0

    if-nez v0, :cond_16

    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "HTTPS URL : "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_14

    move-object v1, v15

    :cond_14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b

    :cond_15
    const-string v0, "HTTPS URL is not valid. Default Test URL will be used\n"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_16
    :goto_b
    iget-object v0, v11, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;->mStepView:Landroid/widget/TextView;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings$$ExternalSyntheticLambda3;

    move-object v10, v1

    invoke-direct/range {v10 .. v15}, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;Landroid/net/Network;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :goto_c
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 1
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
    .end array-data
.end method
