.class Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$AlphaComparator;
.super Ljava/lang/Object;
.source "MobileDataOnlySettings.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AlphaComparator"
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
.field private final sCollator:Ljava/text/Collator;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 503
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 504
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$AlphaComparator;->sCollator:Ljava/text/Collator;

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)I
    .locals 0

    if-eqz p1, :cond_3

    .line 509
    iget-object p1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_2

    .line 512
    iget-object p2, p2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    if-nez p2, :cond_1

    goto :goto_0

    .line 515
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$AlphaComparator;->sCollator:Ljava/text/Collator;

    invoke-virtual {p0, p1, p2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_1
    const/4 p0, -0x1

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 503
    check-cast p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    check-cast p2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$AlphaComparator;->compare(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)I

    move-result p0

    return p0
.end method
