.class public final synthetic Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;

.field public final synthetic f$1:Lcom/android/wifitrackerlib/WifiEntry;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;Lcom/android/wifitrackerlib/WifiEntry;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter$$ExternalSyntheticLambda3;->f$0:Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter$$ExternalSyntheticLambda3;->f$1:Lcom/android/wifitrackerlib/WifiEntry;

    iput p3, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter$$ExternalSyntheticLambda3;->f$2:I

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter$$ExternalSyntheticLambda3;->f$0:Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter$$ExternalSyntheticLambda3;->f$1:Lcom/android/wifitrackerlib/WifiEntry;

    iget p0, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter$$ExternalSyntheticLambda3;->f$2:I

    invoke-static {v0, v1, p0, p1}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;->$r8$lambda$bKsr74yO4xKtDjb4PW2qpzG-VEQ(Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;Lcom/android/wifitrackerlib/WifiEntry;ILandroid/view/View;)Z

    move-result p0

    return p0
.end method
