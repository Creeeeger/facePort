.class public final synthetic Lcom/android/settings/wifi/savedaccesspoints2/SavedAccessPointsPreferenceController2$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/wifi/WifiEntryPreference;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/wifi/WifiEntryPreference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/wifi/savedaccesspoints2/SavedAccessPointsPreferenceController2$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/wifi/WifiEntryPreference;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/settings/wifi/savedaccesspoints2/SavedAccessPointsPreferenceController2$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/wifi/WifiEntryPreference;

    check-cast p1, Lcom/android/wifitrackerlib/WifiEntry;

    invoke-static {p0, p1}, Lcom/android/settings/wifi/savedaccesspoints2/SavedAccessPointsPreferenceController2;->$r8$lambda$3FRD1MstnkiUxIbVx2Vix0sw2l4(Lcom/android/settings/wifi/WifiEntryPreference;Lcom/android/wifitrackerlib/WifiEntry;)Z

    move-result p0

    return p0
.end method
