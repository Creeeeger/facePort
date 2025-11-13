.class public final Lcom/android/settingslib/mobile/dataservice/UiccInfoDao_Impl;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final __db:Landroidx/room/RoomDatabase;

.field public final __insertAdapterOfUiccInfoEntity:Lcom/android/settingslib/mobile/dataservice/UiccInfoDao_Impl$1;


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/mobile/dataservice/UiccInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance p1, Lcom/android/settingslib/mobile/dataservice/UiccInfoDao_Impl$1;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/mobile/dataservice/UiccInfoDao_Impl;->__insertAdapterOfUiccInfoEntity:Lcom/android/settingslib/mobile/dataservice/UiccInfoDao_Impl$1;

    return-void
.end method
