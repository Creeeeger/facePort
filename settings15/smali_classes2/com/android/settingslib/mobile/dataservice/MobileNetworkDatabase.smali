.class public abstract Lcom/android/settingslib/mobile/dataservice/MobileNetworkDatabase;
.super Landroidx/room/RoomDatabase;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static sInstance:Lcom/android/settingslib/mobile/dataservice/MobileNetworkDatabase;

.field public static final sLOCK:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/settingslib/mobile/dataservice/MobileNetworkDatabase;->sLOCK:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/room/RoomDatabase;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract mMobileNetworkInfoDao()Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoDao_Impl;
.end method

.method public abstract mSubscriptionInfoDao()Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoDao_Impl;
.end method

.method public abstract mUiccInfoDao()Lcom/android/settingslib/mobile/dataservice/UiccInfoDao_Impl;
.end method
