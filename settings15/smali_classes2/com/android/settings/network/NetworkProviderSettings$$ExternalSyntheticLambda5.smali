.class public final synthetic Lcom/android/settings/network/NetworkProviderSettings$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lcom/android/wifitrackerlib/WifiEntry;

.field public final synthetic f$1:Lcom/android/settings/network/NetworkProviderSettings$WifiEntryConnectCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wifitrackerlib/WifiEntry;Lcom/android/settings/network/NetworkProviderSettings$WifiEntryConnectCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/network/NetworkProviderSettings$$ExternalSyntheticLambda5;->f$0:Lcom/android/wifitrackerlib/WifiEntry;

    iput-object p2, p0, Lcom/android/settings/network/NetworkProviderSettings$$ExternalSyntheticLambda5;->f$1:Lcom/android/settings/network/NetworkProviderSettings$WifiEntryConnectCallback;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/android/settings/network/NetworkProviderSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/network/NetworkProviderSettings$SearchIndexProvider;

    iget-object v0, p0, Lcom/android/settings/network/NetworkProviderSettings$$ExternalSyntheticLambda5;->f$0:Lcom/android/wifitrackerlib/WifiEntry;

    iget-object p0, p0, Lcom/android/settings/network/NetworkProviderSettings$$ExternalSyntheticLambda5;->f$1:Lcom/android/settings/network/NetworkProviderSettings$WifiEntryConnectCallback;

    invoke-virtual {v0, p0}, Lcom/android/wifitrackerlib/WifiEntry;->connect(Lcom/android/wifitrackerlib/WifiEntry$ConnectCallback;)V

    const/4 p0, 0x0

    return-object p0
.end method
