.class public final synthetic Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisAvailableWifiEntryListAdapter$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisAvailableWifiEntryListAdapter$$ExternalSyntheticLambda1;->f$0:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisAvailableWifiEntryListAdapter$$ExternalSyntheticLambda1;->f$0:Ljava/util/List;

    check-cast p1, Lcom/android/wifitrackerlib/WifiEntry;

    new-instance v0, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisAvailableWifiEntryListAdapter$SavedWifiEntry;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object p1, v0, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisAvailableWifiEntryListAdapter$SavedWifiEntry;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getTitle()Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
