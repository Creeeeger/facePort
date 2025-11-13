.class public final synthetic Lcom/android/wifitrackerlib/StandardWifiEntry$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wifitrackerlib/StandardWifiEntry$$ExternalSyntheticLambda7;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/wifitrackerlib/StandardWifiEntry$$ExternalSyntheticLambda7;->f$0:Ljava/lang/String;

    check-cast p1, Landroid/net/wifi/ScanResult;

    invoke-static {p0, p1}, Lcom/android/wifitrackerlib/StandardWifiEntry;->$r8$lambda$vTFj_pUh9D-moP24TjrzaxX_zes(Ljava/lang/String;Landroid/net/wifi/ScanResult;)Z

    move-result p0

    return p0
.end method
