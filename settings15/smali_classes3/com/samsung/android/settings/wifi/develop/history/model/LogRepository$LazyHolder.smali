.class public abstract Lcom/samsung/android/settings/wifi/develop/history/model/LogRepository$LazyHolder;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final INSTANCE:Lcom/samsung/android/settings/wifi/develop/history/model/LogRepository;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/settings/wifi/develop/history/model/LogRepository;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/samsung/android/settings/wifi/develop/history/model/LogRepository;->mSupportConnectivityLog:Z

    sput-object v0, Lcom/samsung/android/settings/wifi/develop/history/model/LogRepository$LazyHolder;->INSTANCE:Lcom/samsung/android/settings/wifi/develop/history/model/LogRepository;

    return-void
.end method
