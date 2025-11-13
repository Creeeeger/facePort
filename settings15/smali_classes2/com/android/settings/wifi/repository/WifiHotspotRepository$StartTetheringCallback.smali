.class public final Lcom/android/settings/wifi/repository/WifiHotspotRepository$StartTetheringCallback;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/net/TetheringManager$StartTetheringCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/settings/wifi/repository/WifiHotspotRepository;


# direct methods
.method public constructor <init>(Lcom/android/settings/wifi/repository/WifiHotspotRepository;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/wifi/repository/WifiHotspotRepository$StartTetheringCallback;->this$0:Lcom/android/settings/wifi/repository/WifiHotspotRepository;

    return-void
.end method


# virtual methods
.method public final onTetheringFailed(I)V
    .locals 2

    iget-object p0, p0, Lcom/android/settings/wifi/repository/WifiHotspotRepository$StartTetheringCallback;->this$0:Lcom/android/settings/wifi/repository/WifiHotspotRepository;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onTetheringFailed(), error:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->log(Ljava/lang/String;)V

    return-void
.end method

.method public final onTetheringStarted()V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/wifi/repository/WifiHotspotRepository$StartTetheringCallback;->this$0:Lcom/android/settings/wifi/repository/WifiHotspotRepository;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "onTetheringStarted()"

    invoke-static {p0}, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->log(Ljava/lang/String;)V

    return-void
.end method
