.class Lcom/samsung/android/settings/wifi/develop/history/model/LogRepository$LazyHolder;
.super Ljava/lang/Object;
.source "LogRepository.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/develop/history/model/LogRepository;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LazyHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/samsung/android/settings/wifi/develop/history/model/LogRepository;


# direct methods
.method static bridge synthetic -$$Nest$sfgetINSTANCE()Lcom/samsung/android/settings/wifi/develop/history/model/LogRepository;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/wifi/develop/history/model/LogRepository$LazyHolder;->INSTANCE:Lcom/samsung/android/settings/wifi/develop/history/model/LogRepository;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 22
    new-instance v0, Lcom/samsung/android/settings/wifi/develop/history/model/LogRepository;

    invoke-direct {v0}, Lcom/samsung/android/settings/wifi/develop/history/model/LogRepository;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/wifi/develop/history/model/LogRepository$LazyHolder;->INSTANCE:Lcom/samsung/android/settings/wifi/develop/history/model/LogRepository;

    return-void
.end method
