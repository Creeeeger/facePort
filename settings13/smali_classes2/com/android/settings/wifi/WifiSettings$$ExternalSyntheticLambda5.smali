.class public final synthetic Lcom/android/settings/wifi/WifiSettings$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/wifi/WifiSettings;

.field public final synthetic f$1:Landroid/net/wifi/WifiConfiguration;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/wifi/WifiSettings;Landroid/net/wifi/WifiConfiguration;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings$$ExternalSyntheticLambda5;->f$0:Lcom/android/settings/wifi/WifiSettings;

    iput-object p2, p0, Lcom/android/settings/wifi/WifiSettings$$ExternalSyntheticLambda5;->f$1:Landroid/net/wifi/WifiConfiguration;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings$$ExternalSyntheticLambda5;->f$0:Lcom/android/settings/wifi/WifiSettings;

    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings$$ExternalSyntheticLambda5;->f$1:Landroid/net/wifi/WifiConfiguration;

    check-cast p1, Landroid/net/wifi/ScanResult;

    invoke-static {v0, p0, p1}, Lcom/android/settings/wifi/WifiSettings;->$r8$lambda$sKH3HqZapGQLURKdQE8hEKkmszs(Lcom/android/settings/wifi/WifiSettings;Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/ScanResult;)Z

    move-result p0

    return p0
.end method
