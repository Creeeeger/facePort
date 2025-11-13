.class public final Lcom/android/settings/wifi/repository/WifiHotspotRepository$LastPasswordListener;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic this$0:Lcom/android/settings/wifi/repository/WifiHotspotRepository;


# direct methods
.method public constructor <init>(Lcom/android/settings/wifi/repository/WifiHotspotRepository;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/wifi/repository/WifiHotspotRepository$LastPasswordListener;->this$0:Lcom/android/settings/wifi/repository/WifiHotspotRepository;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    iget-object p0, p0, Lcom/android/settings/wifi/repository/WifiHotspotRepository$LastPasswordListener;->this$0:Lcom/android/settings/wifi/repository/WifiHotspotRepository;

    iput-object p1, p0, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->mLastPassword:Ljava/lang/String;

    return-void
.end method
