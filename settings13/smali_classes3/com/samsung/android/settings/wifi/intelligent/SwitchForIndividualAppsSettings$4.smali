.class Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings$4;
.super Ljava/lang/Object;
.source "SwitchForIndividualAppsSettings.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings;->loadAppList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings;)V
    .locals 0

    .line 308
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings$4;->this$0:Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)I
    .locals 1

    .line 311
    iget-object p0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    if-eqz p0, :cond_0

    iget-object v0, p2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 313
    :cond_0
    iget-object p0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    if-eqz p0, :cond_1

    iget-object p1, p2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    if-lez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 308
    check-cast p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    check-cast p2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings$4;->compare(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)I

    move-result p0

    return p0
.end method
