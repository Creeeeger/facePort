.class public final synthetic Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoDao_Impl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoDao_Impl;

.field public final synthetic f$1:[Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoDao_Impl;[Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoDao_Impl$$ExternalSyntheticLambda0;->f$0:Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoDao_Impl;

    iput-object p2, p0, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoDao_Impl$$ExternalSyntheticLambda0;->f$1:[Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Landroidx/sqlite/SQLiteConnection;

    iget-object v0, p0, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoDao_Impl$$ExternalSyntheticLambda0;->f$0:Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoDao_Impl;

    iget-object v0, v0, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoDao_Impl;->__insertAdapterOfSubscriptionInfoEntity:Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoDao_Impl$1;

    iget-object p0, p0, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoDao_Impl$$ExternalSyntheticLambda0;->f$1:[Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;

    invoke-virtual {v0, p1, p0}, Landroidx/room/EntityInsertAdapter;->insert(Landroidx/sqlite/SQLiteConnection;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method
