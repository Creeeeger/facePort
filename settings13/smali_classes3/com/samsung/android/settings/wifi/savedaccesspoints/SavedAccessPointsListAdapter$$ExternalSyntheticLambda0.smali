.class public final synthetic Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;

    check-cast p1, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter$SavedWifiEntry;

    invoke-static {p0, p1}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;->$r8$lambda$vlxxKaXtP4DI2cxUQqN9pKiax4E(Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter$SavedWifiEntry;)Z

    move-result p0

    return p0
.end method
