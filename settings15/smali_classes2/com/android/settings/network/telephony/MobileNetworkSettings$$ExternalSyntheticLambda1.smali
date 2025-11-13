.class public final synthetic Lcom/android/settings/network/telephony/MobileNetworkSettings$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/network/telephony/MobileNetworkSettings;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/network/telephony/MobileNetworkSettings;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/network/telephony/MobileNetworkSettings;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object p0, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/network/telephony/MobileNetworkSettings;

    iget-object v0, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mMobileNetworkRepository:Lcom/android/settings/network/MobileNetworkRepository;

    iget v1, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget-object v0, v0, Lcom/android/settings/network/MobileNetworkRepository;->mSubscriptionInfoDao:Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoDao_Impl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoDao_Impl$$ExternalSyntheticLambda1;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoDao_Impl$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;I)V

    iget-object v0, v0, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v1, 0x1

    invoke-static {v0, v1, v3, v2}, Landroidx/room/util/DBUtil;->performBlocking(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;

    iput-object v0, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubscriptionInfoEntity:Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;

    iget-object v0, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mMobileNetworkRepository:Lcom/android/settings/network/MobileNetworkRepository;

    iget v2, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iget-object v0, v0, Lcom/android/settings/network/MobileNetworkRepository;->mMobileNetworkInfoDao:Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoDao_Impl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoDao_Impl$$ExternalSyntheticLambda0;

    const/4 v5, 0x0

    invoke-direct {v4, v2, v5}, Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoDao_Impl$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;I)V

    iget-object v0, v0, Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-static {v0, v1, v3, v4}, Landroidx/room/util/DBUtil;->performBlocking(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoEntity;

    iput-object v0, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mMobileNetworkInfoEntity:Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoEntity;

    return-void
.end method
