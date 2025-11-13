.class public final synthetic Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/wifitrackerlib/WifiEntry$ForgetCallback;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;

.field public final synthetic f$1:Lcom/android/wifitrackerlib/WifiEntry;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;Lcom/android/wifitrackerlib/WifiEntry;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter$$ExternalSyntheticLambda9;->f$0:Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter$$ExternalSyntheticLambda9;->f$1:Lcom/android/wifitrackerlib/WifiEntry;

    return-void
.end method


# virtual methods
.method public final onForgetResult(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter$$ExternalSyntheticLambda9;->f$0:Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter$$ExternalSyntheticLambda9;->f$1:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-static {v0, p0, p1}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;->$r8$lambda$trfDa3OVK9qJkT_8WwYeLDf-9zg(Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;Lcom/android/wifitrackerlib/WifiEntry;I)V

    return-void
.end method
