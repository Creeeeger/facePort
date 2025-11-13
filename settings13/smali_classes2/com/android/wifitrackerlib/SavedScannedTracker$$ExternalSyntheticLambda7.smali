.class public final synthetic Lcom/android/wifitrackerlib/SavedScannedTracker$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wifitrackerlib/SavedScannedTracker$$ExternalSyntheticLambda7;->f$0:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/wifitrackerlib/SavedScannedTracker$$ExternalSyntheticLambda7;->f$0:Ljava/util/Map;

    check-cast p1, Lcom/android/wifitrackerlib/StandardWifiEntry;

    invoke-static {p0, p1}, Lcom/android/wifitrackerlib/SavedScannedTracker;->$r8$lambda$T75ay-0MrGG_tUFuCU47NM12XtY(Ljava/util/Map;Lcom/android/wifitrackerlib/StandardWifiEntry;)V

    return-void
.end method
