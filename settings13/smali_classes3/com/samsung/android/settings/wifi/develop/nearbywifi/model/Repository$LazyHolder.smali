.class Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository$LazyHolder;
.super Ljava/lang/Object;
.source "Repository.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LazyHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository;


# direct methods
.method static bridge synthetic -$$Nest$sfgetINSTANCE()Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository$LazyHolder;->INSTANCE:Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 31
    new-instance v0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository;-><init>(Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository-IA;)V

    sput-object v0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository$LazyHolder;->INSTANCE:Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository;

    return-void
.end method
