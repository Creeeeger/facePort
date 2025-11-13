.class Lcom/samsung/android/settings/usefulfeature/controller/TvEdgeHandlerPreferenceController$1;
.super Landroid/database/ContentObserver;
.source "TvEdgeHandlerPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/usefulfeature/controller/TvEdgeHandlerPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/usefulfeature/controller/TvEdgeHandlerPreferenceController;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/usefulfeature/controller/TvEdgeHandlerPreferenceController;Landroid/os/Handler;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/controller/TvEdgeHandlerPreferenceController$1;->this$0:Lcom/samsung/android/settings/usefulfeature/controller/TvEdgeHandlerPreferenceController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/controller/TvEdgeHandlerPreferenceController$1;->this$0:Lcom/samsung/android/settings/usefulfeature/controller/TvEdgeHandlerPreferenceController;

    invoke-static {p0}, Lcom/samsung/android/settings/usefulfeature/controller/TvEdgeHandlerPreferenceController;->-$$Nest$fgetmPreference(Lcom/samsung/android/settings/usefulfeature/controller/TvEdgeHandlerPreferenceController;)Landroidx/preference/SecPreferenceScreen;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/usefulfeature/controller/TvEdgeHandlerPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method
