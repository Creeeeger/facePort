.class public final synthetic Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;

.field public final synthetic f$1:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter$$ExternalSyntheticLambda7;->f$0:Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter$$ExternalSyntheticLambda7;->f$1:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter$$ExternalSyntheticLambda7;->f$0:Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter$$ExternalSyntheticLambda7;->f$1:Ljava/util/ArrayList;

    check-cast p1, Lcom/android/wifitrackerlib/WifiEntry;

    invoke-static {v0, p0, p1}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;->$r8$lambda$G6UeE6yrRKpFT094LIRBPWy2xX0(Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;Ljava/util/ArrayList;Lcom/android/wifitrackerlib/WifiEntry;)V

    return-void
.end method
